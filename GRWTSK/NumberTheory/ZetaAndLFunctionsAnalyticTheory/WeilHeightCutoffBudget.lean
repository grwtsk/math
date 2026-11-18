/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveCofinalStageCriterion
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Necessary margins for the dyadic height budget

In `DirichletStageChain.smallConductorStages_iff_finiteHeightBounds`, the error
budget is `C * (J + 2) * (1 / 2) ^ J`, where `C` retains the window radius,
zero-count constants and squared derivative cost. The admissible pair obeys
`2 ^ J ≤ 1 + H`. These lemmas bound the budget from below at that height and
rule out arbitrarily accurate certificates for a head that starts nonpositive
and has a uniform negative margin above a fixed height. They apply to any
head with those bounds. The sign bounds for an arithmetic head are separate
hypotheses and must be proved from the actual source.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay (derivativeL1Cost)

/-- A fixed height imposes a lower bound on the dyadic error budget. -/
theorem dyadicHeightTailBudget_lower_of_cutoff {C H : ℝ} (hC : 0 ≤ C)
    (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    2 * C / (1 + H) ≤ C * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J := by
  have hrecip : (1 + H)⁻¹ ≤ (1 / 2 : ℝ) ^ J := by
    simpa only [one_div, inv_pow] using
      one_div_le_one_div_of_le (by positivity : 0 < (2 : ℝ) ^ J) hJ
  have hfactor : 2 * C ≤ C * ((J : ℝ) + 2) := by
    rw [mul_comm 2 C]
    apply mul_le_mul_of_nonneg_left _ hC
    linarith [Nat.cast_nonneg (α := ℝ) J]
  calc
    2 * C / (1 + H) = 2 * C * (1 + H)⁻¹ := div_eq_mul_inv _ _
    _ ≤ 2 * C * (1 / 2 : ℝ) ^ J := mul_le_mul_of_nonneg_left hrecip (by positivity)
    _ ≤ C * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J :=
      mul_le_mul_of_nonneg_right hfactor (by positivity)

/-- The lower bound retains the original coefficient of the primitive stage budget. -/
theorem primitiveHeightTailBudget_lower_of_cutoff {D L T H : ℝ} (f : ℝ → ℂ)
    (hD : 0 ≤ D) (hL : 0 ≤ L) (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    2 * (4 * Real.exp T * D * (L + 1) * derivativeL1Cost f 1 ^ 2) / (1 + H) ≤
      primitiveHeightTailBudget D L f T J := by
  apply dyadicHeightTailBudget_lower_of_cutoff _ J hJ
  positivity

/-- A nonpositive head below a fixed height and a uniform negative margin above
it are incompatible with arbitrarily accurate dyadic height certificates. -/
theorem exists_tolerance_rejecting_dyadicHeightCertificates
    (head : ℝ → ℝ) {C b δ : ℝ} (hC : 0 < C) (hb : 0 ≤ b) (hδ : 0 < δ)
    (hbelow : ∀ H ≤ b, head H ≤ 0) (habove : ∀ H > b, head H ≤ -δ) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ (J : ℕ) (H : ℝ), (2 : ℝ) ^ J ≤ 1 + H →
      head H - C * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J < -ε := by
  let ε := min (2 * C / (1 + b)) δ / 2
  have hmin : 0 < min (2 * C / (1 + b)) δ := lt_min (by positivity) hδ
  have hεsmall : ε < 2 * C / (1 + b) := by
    dsimp [ε]
    linarith [min_le_left (2 * C / (1 + b)) δ]
  have hεδ : ε < δ := by
    dsimp [ε]
    linarith [min_le_right (2 * C / (1 + b)) δ]
  refine ⟨ε, by dsimp [ε]; positivity, ?_⟩
  intro J H hJ
  by_cases hH : H ≤ b
  · have hHpos := (show 0 < (2 : ℝ) ^ J by positivity).trans_le hJ
    have hshift : 1 + H ≤ 1 + b := by linarith
    have hrecip := one_div_le_one_div_of_le hHpos hshift
    have hbudget := dyadicHeightTailBudget_lower_of_cutoff hC.le J hJ
    have hcomparison : 2 * C / (1 + b) ≤ 2 * C / (1 + H) := by
      simpa only [div_eq_mul_inv, one_div, one_mul] using
        mul_le_mul_of_nonneg_left hrecip (by positivity : 0 ≤ 2 * C)
    linarith [hbelow H hH, hcomparison.trans hbudget]
  · have hbudget : 0 ≤ C * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J := by positivity
    linarith [habove H (lt_of_not_ge hH)]

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
