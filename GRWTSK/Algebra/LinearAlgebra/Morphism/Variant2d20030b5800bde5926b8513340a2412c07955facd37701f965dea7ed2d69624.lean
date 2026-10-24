import Surface.Legacy.BinaryLogicMatrix.Core
import Surface.Legacy.BinaryLogicMatrixFlow.Core

namespace Surface.Legacy


structure BinaryLogicMatrixMorphism
    (sourceRows sourceCols targetRows targetCols : Nat) where
  map :
    BinaryLogicMatrix sourceRows sourceCols ->
    BinaryLogicMatrix targetRows targetCols
  claimBoundary : String

abbrev BinaryLogicMatrixEndomorphism (rows cols : Nat) :=
  BinaryLogicMatrixMorphism rows cols rows cols

theorem nonbijective_adapter_not_flow
    (M : BinaryLogicMatrixEndomorphism rows cols) :
    ¬ Function.Bijective M.map ->
      ¬ ∃ F : BinaryLogicMatrixFlow rows cols, F.forward = M.map := by
  intro hnot h
  rcases h with ⟨F, hF⟩
  apply hnot
  rw [← hF]
  exact BinaryLogicMatrixFlow.blmFlow_forward_bijective F

theorem morphism_boundary_visible
    (M : BinaryLogicMatrixMorphism sourceRows sourceCols targetRows targetCols) :
    M.claimBoundary = M.claimBoundary := by
  rfl

end Surface.Legacy
