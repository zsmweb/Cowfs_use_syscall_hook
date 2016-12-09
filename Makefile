
main_cowfs := hello_world1
obj-m += $(main_cowfs).o
$(main_cowfs)-objs += cowfs.o kprobe_hook.o handlers.o

all: clean
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean