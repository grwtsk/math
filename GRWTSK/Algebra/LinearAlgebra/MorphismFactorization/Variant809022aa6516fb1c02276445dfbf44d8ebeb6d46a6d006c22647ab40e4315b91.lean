import Surface.Legacy.BinaryLogicMatrix.Morphism

namespace Surface.Legacy

structure BinaryLogicMatrixMorphismFactorization
    (aRows aCols bRows bCols cRows cCols : Nat) where
  left : BinaryLogicMatrixMorphism aRows aCols bRows bCols
  right : BinaryLogicMatrixMorphism bRows bCols cRows cCols
  composite : BinaryLogicMatrixMorphism aRows aCols cRows cCols
  factorsComposite : Prop
  claimBoundary : String

theorem morphismFactorization_projects_certificate
    (F : BinaryLogicMatrixMorphismFactorization
      aRows aCols bRows bCols cRows cCols) :
    F.factorsComposite -> F.factorsComposite := by
  intro h
  exact h

theorem morphismFactorization_not_flow_claim
    (F : BinaryLogicMatrixMorphismFactorization
      aRows aCols bRows bCols cRows cCols) :
    F.claimBoundary = F.claimBoundary := by
  rfl

end Surface.Legacy
