import Lean

/- Probe descriptor numbers only; never print environment or descriptor data. -/
#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import pathlib\nextra=[p.name for p in pathlib.Path('/proc/self/fd').iterdir() if p.name not in ('0','1','2') and p.exists()]\nassert not extra"]
  }
  if result.exitCode != 0 then
    throw (IO.userError "synthetic unexpected-descriptor probe failed")
