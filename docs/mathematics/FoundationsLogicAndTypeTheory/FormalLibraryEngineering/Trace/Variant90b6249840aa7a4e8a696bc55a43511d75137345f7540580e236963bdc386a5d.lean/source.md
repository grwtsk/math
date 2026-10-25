# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trace.Variant90b6249840aa7a4e8a696bc55a43511d75137345f7540580e236963bdc386a5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09a9353088abccda6d866b00181c3e5a3519bbe6` · SHA-256 `90b6249840aa7a4e8a696bc55a43511d75137345f7540580e236963bdc386a5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Trace

example : True := by
  trace 2 + 2 + 3
  trivial

example : True := by
  trace "hello" ++ " world"
  trivial
```
