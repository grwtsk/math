import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

/-!
# The rate needed to recover an additive signed bound

These scalar controls distinguish convergence after exponential normalization
from an additive bound for a complete signed sum. They are implication
countermodels, not the actual arithmetic source or counterexamples to RH.

Research direction, selection, corrections and evaluation: grwtsk contributors.
Scalar adapter and proof construction: OpenAI Codex.
-/

set_option autoImplicit false

noncomputable section

namespace FormalResearch.RiemannHypothesis.NormalizedRateGate

open Filter
open scoped Topology

/-- The quotient form of the actual positive normalization when `E = exp A`. -/
def normalization (A E : ℝ) : ℝ := A ^ 9 / E

/-- A negative scalar shell on the same scale as the recorded arithmetic shell. -/
def modelShell (k A E : ℝ) : ℝ := -k * E / A ^ 9

/-- A scalar complement retaining a positive `1 / A` normalized surplus. -/
def modelComplement (k A E : ℝ) : ℝ := (k + 1 / A) * E / A ^ 9

/-- The complete signed scalar sum; no term is discarded before cancellation. -/
def modelResidual (k A E : ℝ) : ℝ := modelShell k A E + modelComplement k A E

/-- The otherwise identical complement with exact cancellation. -/
def balancedComplement (k A E : ℝ) : ℝ := k * E / A ^ 9

theorem normalization_pos {A E : ℝ} (hA : 0 < A) (hE : 0 < E) :
    0 < normalization A E := by
  unfold normalization
  positivity

/-- An additive cap requires this specific normalized rate, including its anchor. -/
theorem normalized_cap_iff {A E r anchor D : ℝ} (hA : 0 < A) (hE : 0 < E) :
    normalization A E * r ≤ normalization A E * (anchor / 2 + D) ↔
      r - anchor / 2 ≤ D := by
  rw [mul_le_mul_iff_right₀ (normalization_pos hA hE)]
  constructor <;> intro h <;> linarith

/-- Exact all-real cancellation away from the zero denominator. -/
theorem modelResidual_eq {k A E : ℝ} (hA : A ≠ 0) :
    modelResidual k A E = E / A ^ 10 := by
  unfold modelResidual modelShell modelComplement
  field_simp [hA]
  ring

/-- The normalized complete sum is precisely `1 / A`. -/
theorem normalized_modelResidual_eq {k A E : ℝ} (hA : A ≠ 0) (hE : E ≠ 0) :
    normalization A E * modelResidual k A E = 1 / A := by
  rw [modelResidual_eq hA]
  unfold normalization
  field_simp [hA, hE]

/-- The same negative shell admits exact cancellation by a different complement. -/
theorem balanced_residual_eq (k A E : ℝ) :
    modelShell k A E + balancedComplement k A E = 0 := by
  unfold modelShell balancedComplement
  ring

theorem normalized_balanced_residual_eq (k A E : ℝ) :
    normalization A E * (modelShell k A E + balancedComplement k A E) = 0 := by
  rw [balanced_residual_eq, mul_zero]

/-- Match the quotient normalization to the published exponential convention. -/
theorem normalization_exp_eq (A : ℝ) :
    normalization A (Real.exp A) = A ^ 9 * Real.exp (-A) := by
  unfold normalization
  rw [Real.exp_neg, div_eq_mul_inv]

/-- The bad scalar control has exactly the known normalized limiting behavior. -/
theorem normalized_modelResidual_tendsto_zero (k : ℝ) :
    Tendsto (fun A : ℝ => normalization A (Real.exp A) *
      modelResidual k A (Real.exp A)) atTop (𝓝 0) := by
  apply (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0)).congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hAp : 0 < A := by linarith
  simpa only [one_div] using
    (normalized_modelResidual_eq hAp.ne' (Real.exp_pos A).ne').symm

/-- A single positive exponential-series term gives an explicit growth lower bound. -/
theorem exp_div_tenth_power_lower {A : ℝ} (hA : 0 < A) :
    A / 39916800 ≤ Real.exp A / A ^ 10 := by
  have hexp := Real.pow_div_factorial_le_exp A hA.le 11
  norm_num [Nat.factorial] at hexp
  calc
    A / 39916800 = (A ^ 11 / 39916800) / A ^ 10 := by
      field_simp [hA.ne']
    _ ≤ Real.exp A / A ^ 10 := div_le_div_of_nonneg_right hexp (by positivity)

/-- At every proposed radius and cap the normalized-to-zero control exceeds the cap. -/
theorem modelResidual_exceeds_any_cap (k D R : ℝ) :
    ∃ A : ℝ, 0 < A ∧ R ≤ A ∧ D < modelResidual k A (Real.exp A) := by
  let A : ℝ := max 1 (max R (39916800 * (D + 1)))
  have hA1 : (1 : ℝ) ≤ A := le_max_left _ _
  have hA : 0 < A := by linarith
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hcost : 39916800 * (D + 1) ≤ A :=
    (le_max_right _ _).trans (le_max_right _ _)
  refine ⟨A, hA, hR, ?_⟩
  rw [modelResidual_eq hA.ne']
  calc
    D < D + 1 := by linarith
    _ ≤ A / 39916800 := (le_div_iff₀ (by norm_num : (0 : ℝ) < 39916800)).mpr
      (by nlinarith)
    _ ≤ Real.exp A / A ^ 10 := exp_div_tenth_power_lower hA

/-- Normalized convergence cannot supply an eventual all-real additive upper cap. -/
theorem modelResidual_has_no_eventual_upper_bound (k : ℝ) :
    ¬ ∃ D R : ℝ, ∀ A : ℝ, R ≤ A → modelResidual k A (Real.exp A) ≤ D := by
  rintro ⟨D, R, hbound⟩
  obtain ⟨A, _, hR, hD⟩ := modelResidual_exceeds_any_cap k D R
  exact (not_le_of_gt hD) (hbound A hR)

end FormalResearch.RiemannHypothesis.NormalizedRateGate
