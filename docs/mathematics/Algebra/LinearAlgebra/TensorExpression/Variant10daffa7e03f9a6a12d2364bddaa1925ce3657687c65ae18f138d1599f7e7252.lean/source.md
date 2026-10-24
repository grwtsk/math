# Complete source: GRWTSK.Algebra.LinearAlgebra.TensorExpression.Variant10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a27aedf3b714442e100bb43ca2cb526da411a8d0` · SHA-256 `10daffa7e03f9a6a12d2364bddaa1925ce3657687c65ae18f138d1599f7e7252`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.PascalTree.Core
import Surface.Legacy.BinaryLogicMatrix.EMLCircuit

namespace Surface
namespace Legacy
namespace PascalTree

inductive TensorFactorRole
| source
| target
| shared
| distinct
| determinant
| spectral
| obstruction
| boundary
deriving DecidableEq, Repr

structure BinaryLogicMatrixTensorFactor where
  rows : Nat
  cols : Nat
  value : BinaryLogicMatrix rows cols
  role : TensorFactorRole
  claimBoundary : AffineTopos.AffineClaimBoundary

inductive BinaryLogicMatrixTensorExpression where
| factor : BinaryLogicMatrixTensorFactor → BinaryLogicMatrixTensorExpression
| tensor :
    BinaryLogicMatrixTensorExpression →
    BinaryLogicMatrixTensorExpression →
    AffineTopos.AffineClaimBoundary →
    BinaryLogicMatrixTensorExpression
| emlSyntax :
    {k : Nat} →
    EMLTree k →
    AffineTopos.AffineClaimBoundary →
    BinaryLogicMatrixTensorExpression

structure TensorContractionDescriptor where
  source : String
  target : String
  result : String
  claimBoundary : AffineTopos.AffineClaimBoundary

inductive DeterminantDescriptorKind
| actualSquare
| boundedSurrogate
| rejected
deriving DecidableEq, Repr

structure DeterminantDescriptor where
  rows : Nat
  cols : Nat
  kind : DeterminantDescriptorKind
  squareCertified :
    kind = DeterminantDescriptorKind.actualSquare → rows = cols
  boundedSurrogate? : Option Nat
  rejectedReason? : Option String
  claimBoundary : AffineTopos.AffineClaimBoundary

def DeterminantDescriptor.admissible
    (D : DeterminantDescriptor) : Prop :=
  D.kind = DeterminantDescriptorKind.actualSquare ∨
    D.kind = DeterminantDescriptorKind.boundedSurrogate

theorem tensorExpression_factor_boundary_visible
    (factor : BinaryLogicMatrixTensorFactor) :
    factor.claimBoundary = factor.claimBoundary := by
  rfl

theorem determinantDescriptor_actualSquare_is_square
    (D : DeterminantDescriptor)
    (h : D.kind = DeterminantDescriptorKind.actualSquare) :
    D.rows = D.cols := by
  exact D.squareCertified h

end PascalTree
end Legacy
end Surface
```
