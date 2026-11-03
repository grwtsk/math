/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletNormalizedFourierError
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DirichletSourceVectorConstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletOrdinaryZeroReflection

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Phase-corrected normalized transform and actual analytic observations.
The full input error and Hurwitz condition mass remain explicit. A small
analytic row residual is not a full cyclic eigen-residual.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletPhaseCorrectedAnalyticObservation
open DirichletNormalizedFourierError DirichletAnalyticObservationError
open DirichletOrdinaryZeroReflection
variable (N : ℕ) [NeZero N]

def correctedTransform (χ : DirichletCharacter ℂ N) (x : ZMod N → ℂ) : ZMod N → ℂ :=
  fun k => (primitivePhase N χ)⁻¹ * normalizedTransform N x k

theorem corrected_source (χ : DirichletCharacter ℂ N) (hχ : χ.IsPrimitive) :
    correctedTransform N χ χ = (χ⁻¹ : ZMod N → ℂ) := by
  have hp : primitivePhase N χ ≠ 0 := by
    intro hz
    have h := primitive_phase_norm_one N χ hχ
    simp [hz] at h
  funext k
  unfold correctedTransform
  rw [normalized_primitive_transform N χ hχ]
  rw [← mul_assoc, inv_mul_cancel₀ hp, one_mul]

theorem corrected_full_error (χ : DirichletCharacter ℂ N) (hχ : χ.IsPrimitive)
    (x : ZMod N → ℂ) :
    (∑ k, ‖correctedTransform N χ x k - χ⁻¹ k‖ ^ 2) =
      ∑ j, ‖x j - χ j‖ ^ 2 := by
  rw [← corrected_source N χ hχ]
  simp only [correctedTransform, ← mul_sub, norm_mul, mul_pow, norm_inv,
    primitive_phase_norm_one N χ hχ, inv_one, one_pow, one_mul]
  exact normalized_full_error N x χ

theorem corrected_sample_error (χ : DirichletCharacter ℂ N) (hχ : χ.IsPrimitive)
    (x : ZMod N → ℂ) (ε : ℝ) (hε : 0 ≤ ε)
    (hx : (∑ j, ‖x j - χ j‖ ^ 2) ≤ ε ^ 2) (k : ZMod N) :
    ‖χ⁻¹ k - correctedTransform N χ x k‖ ≤ ε := by
  have hm := corrected_full_error N χ hχ x
  have hk := Finset.single_le_sum
    (fun j (_ : j ∈ (Finset.univ : Finset (ZMod N))) =>
      sq_nonneg ‖correctedTransform N χ x j - χ⁻¹ j‖)
    (Finset.mem_univ k)
  rw [hm] at hk
  rw [norm_sub_rev]
  have hn := norm_nonneg (correctedTransform N χ x k - χ⁻¹ k)
  nlinarith

theorem corrected_analytic_error (χ : DirichletCharacter ℂ N) (hχ : χ.IsPrimitive)
    (x : ZMod N → ℂ) (s : ℂ) (ε : ℝ) (hε : 0 ≤ ε)
    (hx : (∑ j, ‖x j - χ j‖ ^ 2) ≤ ε ^ 2) :
    ‖DirichletCharacter.LFunction χ⁻¹ s -
      ZMod.LFunction (correctedTransform N χ x) s‖ ≤ ε * conditionMass N s := by
  exact analytic_error_of_uniform_samples N χ⁻¹ (correctedTransform N χ x) s ε
    (corrected_sample_error N χ hχ x ε hε hx)

theorem reflected_zero_observation (χ : DirichletCharacter ℂ N) (hχ : χ.IsPrimitive)
    (x : ZMod N → ℂ) (s : ℂ) (hz : DirichletStripZero N χ s)
    (ε : ℝ) (hε : 0 ≤ ε) (hx : (∑ j, ‖x j - χ j‖ ^ 2) ≤ ε ^ 2) :
    ‖ZMod.LFunction (correctedTransform N χ x) (1 - s)‖ ≤
      ε * conditionMass N (1 - s) := by
  have hr := ordinary_strip_zero_reflected_inverse χ hχ s hz.1 hz.2.1 hz.2.2
  have he := corrected_analytic_error N χ hχ x (1 - s) ε hε hx
  simpa only [hr.1, zero_sub, norm_neg] using he

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletPhaseCorrectedAnalyticObservation
