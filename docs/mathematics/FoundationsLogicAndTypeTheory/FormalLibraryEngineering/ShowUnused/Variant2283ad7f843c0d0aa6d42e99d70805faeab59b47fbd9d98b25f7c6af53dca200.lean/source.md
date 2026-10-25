# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShowUnused.Variant2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a58568e2fb9a27cf3037ac6646f5d8e5b339e6d` · SHA-256 `2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.ShowUnused

def foo := 1
def baz := 2
def bar := foo

/--
warning: #show_unused (line 14) says:
baz is not used transitively by [bar]
---
warning: unused definitions in this file:
baz
-/
#guard_msgs in #show_unused bar
```
