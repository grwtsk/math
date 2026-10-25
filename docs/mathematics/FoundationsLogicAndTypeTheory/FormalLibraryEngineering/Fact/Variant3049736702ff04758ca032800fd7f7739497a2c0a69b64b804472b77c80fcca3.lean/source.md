# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fact.Variant3049736702ff04758ca032800fd7f7739497a2c0a69b64b804472b77c80fcca3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f855dc39737475f829b04bf8e708680744be3c04` · SHA-256 `3049736702ff04758ca032800fd7f7739497a2c0a69b64b804472b77c80fcca3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Gist

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure TimeScope where
  validAt? : Option String
  invalidAt? : Option String
  createdAt? : Option String
  expiredAt? : Option String
deriving DecidableEq, Repr

structure TimeScopedFact where
  subject : String
  predicate : String
  object : String
  vertex : MemoryVertex
  scope : TimeScope
  confidence : Nat
  factVertex : vertex.kind = MemoryKind.fact

def TimeScopedFact.tripleKey (f : TimeScopedFact) : String :=
  f.subject ++ "|" ++ f.predicate ++ "|" ++ f.object

end Think.RadoProjectedModularHeatflow.MemoryCore
```
