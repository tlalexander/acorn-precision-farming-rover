gst-launch-1.0 v4l2src device=/dev/video$1 ! "video/x-raw, format=(string)UYVY, width=(int)4096, height=(int)2160" ! nvvidconv ! "video/x-raw(memory:NVMM), format=(string)I420, width=(int)1920, height=(int)1080" ! omxh264enc ! rtph264pay mtu=60000 ! udpsink clients=192.168.1.170:12345 sync=false
