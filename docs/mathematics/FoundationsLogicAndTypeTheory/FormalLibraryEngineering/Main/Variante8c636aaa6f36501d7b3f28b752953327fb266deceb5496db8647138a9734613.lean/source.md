# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variante8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dbf02dc381b79467c45d813e7a1007a58ff4840` · SHA-256 `e8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Noeoueue
import Noeoueue.Export.CanonicalExpr

open Lean

def main : IO Unit := do
  let env <- importModules #[{ module := `Noeoueue }] {} 0
  let rows := env.constants.toList.filterMap fun (name, info) =>
    if name.toString.startsWith "Noeoueue" then
      some s!"{name}\t{Noeoueue.Export.canonicalExpr info.type}"
    else none
  let rows := rows.mergeSort (fun left right => left < right)
  IO.println <| String.intercalate "\n" rows
```
