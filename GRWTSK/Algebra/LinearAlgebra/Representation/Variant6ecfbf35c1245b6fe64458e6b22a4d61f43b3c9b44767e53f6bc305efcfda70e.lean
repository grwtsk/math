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
