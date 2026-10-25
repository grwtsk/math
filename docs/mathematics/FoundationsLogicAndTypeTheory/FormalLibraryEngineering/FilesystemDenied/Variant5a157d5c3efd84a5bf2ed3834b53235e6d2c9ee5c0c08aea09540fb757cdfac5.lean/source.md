# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilesystemDenied.Variant5a157d5c3efd84a5bf2ed3834b53235e6d2c9ee5c0c08aea09540fb757cdfac5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a515629ff81f785cad38dbca66121b0c1d7022cc` · SHA-256 `5a157d5c3efd84a5bf2ed3834b53235e6d2c9ee5c0c08aea09540fb757cdfac5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
