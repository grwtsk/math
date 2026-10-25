# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DNSDenied.Variant5a2334ffaf754272de74495f906bc88fe75601fae3109101a8188ed51805add4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3501e423c0ceaf79b2d3cbc4dd956324d76af65` · SHA-256 `5a2334ffaf754272de74495f906bc88fe75601fae3109101a8188ed51805add4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
