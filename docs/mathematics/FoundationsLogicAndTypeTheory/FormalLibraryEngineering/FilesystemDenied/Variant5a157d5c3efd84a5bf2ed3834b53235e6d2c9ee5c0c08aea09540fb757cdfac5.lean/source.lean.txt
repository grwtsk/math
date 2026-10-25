import Lean

/- Synthetic containment probe. These paths are guest paths, without secrets. -/
#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import errno,pathlib\nfor name in ['/input/source/noe-escape-canary','/input/deps/noe-escape-canary','/input/source/../job/noe-escape-canary','/usr/local/bin/noe-escape-canary']:\n try:\n  pathlib.Path(name).write_text('synthetic')\n except OSError as e:\n  if e.errno not in (errno.EROFS,errno.EACCES,errno.EPERM): raise\n else: raise RuntimeError('readonly path writable')\npathlib.Path('/work/allowed-canary').write_text('synthetic')"]
  }
  if result.exitCode != 0 then
    throw (IO.userError "synthetic filesystem isolation probe failed")
