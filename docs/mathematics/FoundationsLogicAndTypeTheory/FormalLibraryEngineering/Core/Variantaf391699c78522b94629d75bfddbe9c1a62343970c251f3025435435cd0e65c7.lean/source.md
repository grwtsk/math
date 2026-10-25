# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantaf391699c78522b94629d75bfddbe9c1a62343970c251f3025435435cd0e65c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12ffcfa411074c55de87158cc898dd0ce8bb1a37` · SHA-256 `af391699c78522b94629d75bfddbe9c1a62343970c251f3025435435cd0e65c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity

/-! # Operators, spectra, and harmonic channels -/

namespace Mathematics.Operator

universe u

structure Operator (State : Type u) where
  id : StableId
  apply : State → State

structure SpectralChannel where
  id : ChannelId
  eigenvalueLabel : String
  multiplicity : Nat
  deriving DecidableEq, Repr

end Mathematics.Operator
```
