# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Blueprint.Variant3c80bf49dc8b5ab257b1f35651e313fd0c2f198f8d02e81c8343a311921c0fdc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc5794b03194f9e70ab23f1d6d7742f7810cfbe1` · SHA-256 `3c80bf49dc8b5ab257b1f35651e313fd0c2f198f8d02e81c8343a311921c0fdc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Source

/-! # Informal blueprints and mathematical plans -/

namespace Mathematics.Ingestion

structure BlueprintRecord where
  blueprintId : StableId
  source : SourceUnit
  sectionPath : List String
  statementDigest : Digest
  linkedDeclarationNames : List String
  proposalOnly : Bool := true
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```
