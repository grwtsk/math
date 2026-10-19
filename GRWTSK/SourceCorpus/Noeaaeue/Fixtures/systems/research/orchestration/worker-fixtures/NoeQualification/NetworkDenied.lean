/- Synthetic documentation-address probe; never sends secrets or live payloads. -/
import Lean

#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import socket,sys; s=socket.socket(); s.settimeout(1);\ntry: s.connect(('192.0.2.1',9))\nexcept OSError: sys.exit(0)\nsys.exit(17)"] }
  unless result.exitCode == 0 do
    throw (IO.userError "qualification network boundary failed")
