install:
	yarn install

build: docs/dist

clean:
	rm -rf docs/dist

docs/dist:
	rm -rf $@ && mkdir -p $@
	make docs/dist/select2
	make docs/dist/jquery

docs/dist/select2:
	cp -r node_modules/select2/dist docs/dist/select2

docs/dist/jquery:
	cp -r node_modules/jquery/dist docs/dist/jquery

