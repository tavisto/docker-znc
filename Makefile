all: clean build run
clean:
	@echo Removing images
	-docker rmi tavisto/znc

build:
	@echo Building images
	docker build -t tavisto/znc .

run:
	docker run --rm tavisto/znc -v
