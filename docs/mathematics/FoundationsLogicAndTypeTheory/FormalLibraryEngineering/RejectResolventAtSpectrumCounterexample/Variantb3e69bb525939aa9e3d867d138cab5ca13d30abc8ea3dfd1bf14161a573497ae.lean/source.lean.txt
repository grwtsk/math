import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FiniteSpectralHeat
open GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat
def zeroSpectralModel : Model (Fin 1) (Fin 1 → ℝ) where
  frame := LinearEquiv.refl ℝ (Fin 1 → ℝ)
  operator := 0
  eigenvalue := fun _ => 0
  eigenvalue_nonneg := fun _ => le_refl 0
  diagonalizes := by ext x i; simp [spectralOperator, diagonal]
-- At the selected eigenvalue, the displayed multiplier is zero and cannot invert D-zI.
example : ¬ ((zeroSpectralModel.shiftedOperator 0).comp
    (zeroSpectralModel.resolvent 0) = LinearMap.id) := by
  intro h
  have he := congrArg (fun f : (Fin 1 → ℝ) →ₗ[ℝ] (Fin 1 → ℝ) =>
    f (fun _ => 1) 0) h
  norm_num [Model.shiftedOperator, Model.resolvent, Model.coordinateResolvent,
    zeroSpectralModel, diagonal, LinearMap.comp_apply] at he
