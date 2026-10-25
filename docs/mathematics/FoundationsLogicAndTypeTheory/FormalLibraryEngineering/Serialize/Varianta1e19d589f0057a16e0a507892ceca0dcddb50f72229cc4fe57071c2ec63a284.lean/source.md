# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Serialize.Varianta1e19d589f0057a16e0a507892ceca0dcddb50f72229cc4fe57071c2ec63a284

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `227ddf4c8aa28b813451a07de9509bd40bcfc316` · SHA-256 `a1e19d589f0057a16e0a507892ceca0dcddb50f72229cc4fe57071c2ec63a284`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import tools.LeanSource.Frontend

public section

/-! # Canonical raw trace serialization -/

open Lean

namespace MathDiscoveryLeanSource

def writeTrace (path : System.FilePath) (trace : RawTrace) : IO Unit := do
  if let some parent := path.parent then
    IO.FS.createDirAll parent
  IO.FS.writeFile path ((toJson trace).compress ++ "\n")

end MathDiscoveryLeanSource
```
