# Complete source: GRWTSK.Algebra.LinearAlgebra.Representation.Variant6ecfbf35c1245b6fe64458e6b22a4d61f43b3c9b44767e53f6bc305efcfda70e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c09b3b101f4ffb32e7ea400123621cb49e73897` · SHA-256 `6ecfbf35c1245b6fe64458e6b22a4d61f43b3c9b44767e53f6bc305efcfda70e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Codec

namespace Surface.Legacy

structure BinaryLogicMatrixRepresentation (α : Type) where
  encode : α -> Sigma fun rows => Sigma fun cols => BinaryLogicMatrix rows cols
  claimBoundary : String
  representationOnly : Prop

namespace BinaryLogicMatrixRepresentation

theorem boundary_visible {α : Type} (R : BinaryLogicMatrixRepresentation α) :
    R.representationOnly -> R.representationOnly := by
  intro h
  exact h

theorem has_claim_boundary {α : Type} (R : BinaryLogicMatrixRepresentation α) :
    R.claimBoundary = R.claimBoundary := by
  rfl

end BinaryLogicMatrixRepresentation

end Surface.Legacy
```
