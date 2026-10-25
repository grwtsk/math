# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanSourceTrace.Variant99bd598bcc3f9ad8bfbf216473d80774895bce85e50a95af7a5b5b92fc50f11a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27cf172e129107210af5f571002788762202d7ee` · SHA-256 `99bd598bcc3f9ad8bfbf216473d80774895bce85e50a95af7a5b5b92fc50f11a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import all Lean
import all Lean.Elab.Extra
import all Lean.Elab.BuiltinTerm
import all tools.LeanSource.Cli

public section

/-! # Pinned Lean source-command tracer -/

private def mainAction (args : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  MathematicsLeanSource.run args

def main (args : List String) : IO Unit := mainAction args
```
