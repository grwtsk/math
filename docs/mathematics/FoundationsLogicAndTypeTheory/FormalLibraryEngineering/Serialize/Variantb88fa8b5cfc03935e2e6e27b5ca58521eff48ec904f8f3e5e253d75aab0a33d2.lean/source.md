# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Serialize.Variantb88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a65aa4677ace30e9ab5ab4e210959d3fbdcf4dac` · SHA-256 `b88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import tools.LeanSource.Frontend

public section

/-! # Canonical raw trace serialization -/

open Lean

namespace MathematicsLeanSource

def writeTrace (path : System.FilePath) (trace : RawTrace) : IO Unit := do
  if let some parent := path.parent then
    IO.FS.createDirAll parent
  IO.FS.writeFile path ((toJson trace).compress ++ "\n")

end MathematicsLeanSource
```
