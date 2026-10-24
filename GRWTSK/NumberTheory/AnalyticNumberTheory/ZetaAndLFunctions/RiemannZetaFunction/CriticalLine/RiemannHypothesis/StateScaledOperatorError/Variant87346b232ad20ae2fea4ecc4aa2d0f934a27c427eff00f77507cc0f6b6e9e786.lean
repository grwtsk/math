import Mathlib.Analysis.InnerProductSpace.Continuous
import Mathlib.Analysis.Normed.Operator.Basic

/-!
# Operator errors on the actual changing state

A bounded operator difference contributes its norm times the squared norm of
the state. Applying this interface requires a proved bounded difference and a
bound on the actual arithmetic state; an unrestricted gauge supplies neither.
The scalar fixture retains the failure of a vanishing operator error to give a
bounded quadratic error on growing states.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.StateScaledOperatorError

open scoped InnerProductSpace

noncomputable section

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- The signed quadratic value, before any estimate is applied. -/
def signedQuadraticValue (K : E →L[ℝ] E) (v : E) : ℝ := ⟪v, K v⟫_ℝ

/-- Exact subtraction retains the same state in both operator values. -/
theorem signedQuadraticValue_sub (K L : E →L[ℝ] E) (v : E) :
    signedQuadraticValue K v - signedQuadraticValue L v =
      signedQuadraticValue (K - L) v := by
  simp only [signedQuadraticValue, sub_apply, inner_sub_right]

/-- The state norm is indispensable in the quadratic operator error. -/
theorem quadratic_difference_abs_le (K L : E →L[ℝ] E) (v : E) :
    |signedQuadraticValue K v - signedQuadraticValue L v| ≤ ‖K - L‖ * ‖v‖ ^ 2 := by
  rw [signedQuadraticValue_sub]
  calc
    |signedQuadraticValue (K - L) v| ≤ ‖v‖ * ‖(K - L) v‖ :=
      abs_real_inner_le_norm v ((K - L) v)
    _ ≤ ‖v‖ * (‖K - L‖ * ‖v‖) :=
      mul_le_mul_of_nonneg_left ((K - L).le_opNorm v) (norm_nonneg v)
    _ = ‖K - L‖ * ‖v‖ ^ 2 := by ring

/-- A quantitative deformation budget acts on the actual squared state norm. -/
theorem quadratic_difference_abs_le_of_norm_le (K L : E →L[ℝ] E) (v : E)
    {δ : ℝ} (hδ : ‖K - L‖ ≤ δ) :
    |signedQuadraticValue K v - signedQuadraticValue L v| ≤ δ * ‖v‖ ^ 2 :=
  (quadratic_difference_abs_le K L v).trans
    (mul_le_mul_of_nonneg_right hδ (sq_nonneg ‖v‖))

/-- A separate inventory norm bound can discharge the state cost. -/
theorem quadratic_difference_abs_le_of_state_bound (K L : E →L[ℝ] E) (v : E)
    {δ B : ℝ} (hδ : ‖K - L‖ ≤ δ) (hB : ‖v‖ ^ 2 ≤ B) :
    |signedQuadraticValue K v - signedQuadraticValue L v| ≤ δ * B := by
  have hδ0 := (norm_nonneg (K - L)).trans hδ
  exact (quadratic_difference_abs_le_of_norm_le K L v hδ).trans
    (mul_le_mul_of_nonneg_left hB hδ0)

/-- The signed plus/minus quadratic interaction of two literal states. -/
def polarizedQuadraticValue (K : E →L[ℝ] E) (f g : E) : ℝ :=
  (signedQuadraticValue K (f + g) - signedQuadraticValue K (f - g)) / 4

/-- Polarization of the identity retains the signed real interaction. -/
theorem polarizedQuadraticValue_id (f g : E) :
    polarizedQuadraticValue (ContinuousLinearMap.id ℝ E) f g = ⟪f, g⟫_ℝ := by
  simp only [polarizedQuadraticValue, signedQuadraticValue, ContinuousLinearMap.id_apply,
    inner_add_left, inner_add_right, inner_sub_left, inner_sub_right, real_inner_comm g f]
  ring

/-- The two changing state norms control a polarized interaction error. -/
theorem polarized_difference_abs_le (K L : E →L[ℝ] E) (f g : E)
    {δ : ℝ} (hδ : ‖K - L‖ ≤ δ) :
    |polarizedQuadraticValue K f g - polarizedQuadraticValue L f g| ≤
      δ / 2 * (‖f‖ ^ 2 + ‖g‖ ^ 2) := by
  let a := signedQuadraticValue K (f + g) - signedQuadraticValue L (f + g)
  let b := signedQuadraticValue K (f - g) - signedQuadraticValue L (f - g)
  have hp : |a| ≤ δ * ‖f + g‖ ^ 2 :=
    quadratic_difference_abs_le_of_norm_le K L (f + g) hδ
  have hm : |b| ≤ δ * ‖f - g‖ ^ 2 :=
    quadratic_difference_abs_le_of_norm_le K L (f - g) hδ
  have hs : |a| + |b| ≤ δ * (‖f + g‖ ^ 2 + ‖f - g‖ ^ 2) := by linarith
  have he : polarizedQuadraticValue K f g - polarizedQuadraticValue L f g =
      (a - b) / 4 := by dsimp [polarizedQuadraticValue, a, b]; ring
  rw [he, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
  calc
    |a - b| / 4 ≤ (|a| + |b|) / 4 := by gcongr; exact abs_sub a b
    _ ≤ δ * (‖f + g‖ ^ 2 + ‖f - g‖ ^ 2) / 4 := by gcongr
    _ = δ / 2 * (‖f‖ ^ 2 + ‖g‖ ^ 2) := by
      rw [parallelogram_law_with_norm ℝ f g]
      ring

/-- A vanishing scalar operator error on a growing scalar state. -/
def shrinkingScalarError (A : ℝ) : ℝ →L[ℝ] ℝ :=
  (1 / A) • ContinuousLinearMap.id ℝ ℝ

/-- The fixture's operator norm is exactly the inverse scale. -/
theorem shrinkingScalarError_norm {A : ℝ} (hA : 1 ≤ A) :
    ‖shrinkingScalarError A‖ = 1 / A := by
  have hA0 : 0 ≤ 1 / A := by positivity
  simp only [shrinkingScalarError, norm_smul, ContinuousLinearMap.norm_id,
    mul_one, Real.norm_eq_abs]
  exact abs_of_nonneg hA0

/-- Its quadratic error grows linearly, despite the inverse operator scale. -/
theorem shrinkingScalarError_on_growing_state {A : ℝ} (hA : 1 ≤ A) :
    signedQuadraticValue (shrinkingScalarError A) A = A := by
  have hA0 : A ≠ 0 := ne_of_gt (lt_of_lt_of_le (by norm_num) hA)
  simp only [signedQuadraticValue, shrinkingScalarError, smul_apply,
    ContinuousLinearMap.id_apply, smul_eq_mul, Real.inner_apply]
  field_simp

/-- No eventual uniform quadratic budget follows from this shrinking operator norm. -/
theorem shrinkingScalarError_exceeds_any_budget (D R : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ R ≤ A ∧ D < signedQuadraticValue (shrinkingScalarError A) A := by
  let A := max 1 (max R (D + 1))
  have hA : 1 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left R (D + 1)).trans (le_max_right _ _)
  have hD : D + 1 ≤ A := (le_max_right R (D + 1)).trans (le_max_right _ _)
  refine ⟨A, hA, hR, ?_⟩
  rw [shrinkingScalarError_on_growing_state hA]
  linarith

end
end FormalResearch.RiemannHypothesis.StateScaledOperatorError
