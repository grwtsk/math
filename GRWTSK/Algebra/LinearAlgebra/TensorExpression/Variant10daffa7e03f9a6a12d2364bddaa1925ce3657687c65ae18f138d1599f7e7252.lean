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
