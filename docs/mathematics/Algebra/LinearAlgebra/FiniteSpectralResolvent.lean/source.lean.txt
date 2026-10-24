import GRWTSK.LinearAlgebra.FiniteSpectralHeat

noncomputable section

namespace GRWTSK.LinearAlgebra.FiniteSpectralHeat

open GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

universe u v

variable {ι : Type u} [Fintype ι]
variable {E : Type v} [AddCommGroup E] [Module ℝ E]

namespace Model

/-- The shifted finite operator `D - z I`. -/
def shiftedOperator (M : Model ι E) (z : ℝ) : E →ₗ[ℝ] E :=
  M.operator - z • LinearMap.id

/-- Coordinate resolvent multiplier away from the selected finite spectrum. -/
def coordinateResolvent (M : Model ι E) (z : ℝ) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  diagonal fun i => (M.eigenvalue i - z)⁻¹

/-- Exact finite resolvent transported through the selected spectral frame. -/
def resolvent (M : Model ι E) (z : ℝ) : E →ₗ[ℝ] E :=
  M.frame.symm.toLinearMap.comp
    ((M.coordinateResolvent z).comp M.frame.toLinearMap)

/-- Coordinate formula for the shifted operator. -/
theorem shiftedOperator_coordinates (M : Model ι E) (z : ℝ) (x : E) :
    M.frame (M.shiftedOperator z x) =
      diagonal (fun i => M.eigenvalue i - z) (M.frame x) := by
  funext i
  simp [shiftedOperator, LinearMap.sub_apply, LinearMap.smul_apply,
    M.operator_coordinates, spectralOperator, diagonal]
  ring

/-- Coordinate formula for the exact finite resolvent. -/
theorem resolvent_coordinates (M : Model ι E) (z : ℝ) (x : E) :
    M.frame (M.resolvent z x) = M.coordinateResolvent z (M.frame x) := by
  simp [resolvent, LinearMap.comp_apply]

/-- Away from every listed eigenvalue, the resolvent is a right inverse of `D-zI`. -/
theorem shiftedOperator_comp_resolvent
    (M : Model ι E) (z : ℝ) (hz : ∀ i, M.eigenvalue i ≠ z) :
    (M.shiftedOperator z).comp (M.resolvent z) = LinearMap.id := by
  ext x
  apply M.frame.injective
  funext i
  simp only [LinearMap.comp_apply, LinearMap.id_apply]
  rw [M.shiftedOperator_coordinates, M.resolvent_coordinates]
  change
    (M.eigenvalue i - z) *
        ((M.eigenvalue i - z)⁻¹ * M.frame x i) = M.frame x i
  have hne : M.eigenvalue i - z ≠ 0 := sub_ne_zero.mpr (hz i)
  rw [← mul_assoc, mul_inv_cancel₀ hne, one_mul]

/-- Away from every listed eigenvalue, the resolvent is also a left inverse of `D-zI`. -/
theorem resolvent_comp_shiftedOperator
    (M : Model ι E) (z : ℝ) (hz : ∀ i, M.eigenvalue i ≠ z) :
    (M.resolvent z).comp (M.shiftedOperator z) = LinearMap.id := by
  ext x
  apply M.frame.injective
  funext i
  simp only [LinearMap.comp_apply, LinearMap.id_apply]
  rw [M.resolvent_coordinates, M.shiftedOperator_coordinates]
  change
    (M.eigenvalue i - z)⁻¹ *
        ((M.eigenvalue i - z) * M.frame x i) = M.frame x i
  have hne : M.eigenvalue i - z ≠ 0 := sub_ne_zero.mpr (hz i)
  rw [← mul_assoc, inv_mul_cancel₀ hne, one_mul]

/-- The exact finite resolvent commutes with the diagonalized operator. -/
theorem resolvent_operator_comm
    (M : Model ι E) (z : ℝ) :
    (M.resolvent z).comp M.operator = M.operator.comp (M.resolvent z) := by
  ext x
  apply M.frame.injective
  funext i
  simp only [LinearMap.comp_apply]
  rw [M.resolvent_coordinates, M.operator_coordinates,
    M.operator_coordinates, M.resolvent_coordinates]
  change
    (M.eigenvalue i - z)⁻¹ *
        (M.eigenvalue i * M.frame x i) =
      M.eigenvalue i *
        ((M.eigenvalue i - z)⁻¹ * M.frame x i)
  ring

end Model

end GRWTSK.LinearAlgebra.FiniteSpectralHeat
