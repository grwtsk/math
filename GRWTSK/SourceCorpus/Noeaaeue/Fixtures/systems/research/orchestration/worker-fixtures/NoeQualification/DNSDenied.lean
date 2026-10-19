import Lean

/- Reserved-only DNS/network probe, with no credentials or host data. The
   independent observer must still check actual network/VM configuration. -/
#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import socket\ns=socket.socket(socket.AF_INET,socket.SOCK_DGRAM);s.settimeout(0.5)\ntry:\n s.sendto(bytes(12),('192.0.2.1',53))\nexcept OSError:\n pass\nelse:\n raise RuntimeError('reserved DNS egress was permitted')\nfinally:\n s.close()\ntry:\n socket.getaddrinfo('noe-qualification.invalid',9,type=socket.SOCK_STREAM)\nexcept socket.gaierror:\n pass\nelse:\n raise RuntimeError('reserved invalid name unexpectedly resolved')"]
  }
  if result.exitCode != 0 then
    throw (IO.userError "synthetic DNS isolation probe failed")
