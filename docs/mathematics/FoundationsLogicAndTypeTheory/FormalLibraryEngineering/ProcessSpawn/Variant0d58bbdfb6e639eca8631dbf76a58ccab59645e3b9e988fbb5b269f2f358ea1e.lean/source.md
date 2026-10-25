# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProcessSpawn.Variant0d58bbdfb6e639eca8631dbf76a58ccab59645e3b9e988fbb5b269f2f358ea1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6a93d3e145246814a6de9e5b08c509fe2f76191` · SHA-256 `0d58bbdfb6e639eca8631dbf76a58ccab59645e3b9e988fbb5b269f2f358ea1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/- A detached guest descendant must disappear when the whole VM is stopped.
   Compiler exit alone does not establish this qualification outcome. -/
#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import pathlib,subprocess\np=subprocess.Popen(['/usr/local/bin/python3','-I','-B','-c','import time;time.sleep(900)'],stdin=subprocess.DEVNULL,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,start_new_session=True)\npathlib.Path('/work/detached-guest-pid').write_text(str(p.pid))"]
  }
  if result.exitCode != 0 then
    throw (IO.userError "synthetic detached-descendant setup failed")
```
