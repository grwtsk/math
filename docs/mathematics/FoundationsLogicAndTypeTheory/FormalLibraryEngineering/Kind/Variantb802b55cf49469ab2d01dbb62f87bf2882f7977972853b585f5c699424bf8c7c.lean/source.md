# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variantb802b55cf49469ab2d01dbb62f87bf2882f7977972853b585f5c699424bf8c7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6e83dbb969da22d984ea39e5899bafaed30a1a2` · SHA-256 `b802b55cf49469ab2d01dbb62f87bf2882f7977972853b585f5c699424bf8c7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity

/-! # Oracle progression kinds -/

namespace Mathematics.Progression

inductive StateKind
  | prompt
  | oracleQuery
  | oracleResult
  | modelProposal
  | agreement
  | validation
  | acceptedEffect
  deriving DecidableEq, Repr

end Mathematics.Progression
```
