VERSION ?= v6.4.1-v5.5.0-1.1.0
CACHE ?= --no-cache=1
.PHONY: docker build-docker publish-docker
docker: build-docker publish-docker
build-docker:
	docker build -t femtopixel/google-lighthouse-puppeteer -t femtopixel/google-lighthouse-puppeteer:${VERSION} --build-arg VERSION=${VERSION} ${CACHE} .
publish-docker:
	docker push femtopixel/google-lighthouse-puppeteer
