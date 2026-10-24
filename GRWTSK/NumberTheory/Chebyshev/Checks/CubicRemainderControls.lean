/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CubicRemainderHolomorphic

set_option autoImplicit false

/-! Pure source controls. None has been executed by Lean. No zeta sample is used. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.CubicRemainderControls

open scoped BigOperators
open GRWTSK.Analysis.RealAnalysis.PowerCellMajorant
open GRWTSK.RiemannHypothesis.CubicPowerSummation
open GRWTSK.RiemannHypothesis.CubicRemainder
open GRWTSK.RiemannHypothesis.CubicRemainderHolomorphic

noncomputable section

/-- Empty included data retains the full remainder budget, not a zero tail. -/
theorem empty_prefix_retains_budget (s : ℂ) (hs : -1 ≤ s.re) :
    ‖cubicRemainder s - ∑ k ∈ Finset.range 0, cellRemainder ((k : ℝ) + 1) (-s)‖ ≤
      (1 / 48 : ℝ) := by simpa using norm_sub_prefix_le_inverse s hs 0

/-- After one included cell the first omitted left endpoint is two. -/
theorem one_cell_tail_bound (s : ℂ) (hs : -1 ≤ s.re) :
    ‖cubicRemainder s - cellRemainder 1 (-s)‖ ≤ (1 / 96 : ℝ) := by
  simpa using norm_sub_prefix_le_inverse s hs 1

/-- The remainder is analytic at one even though the separate zeta expression has a pole there. -/
theorem remainder_analytic_at_one : AnalyticAt ℂ cubicRemainder 1 :=
  analyticOnNhd_cubicRemainder 1 (by norm_num)

theorem remainder_bound_at_one : ‖cubicRemainder 1‖ ≤ (1 / 144 : ℝ) := by
  simpa using norm_cubicRemainder_le 1 (by norm_num)

/-- The totalized p=0 quotient is not the positive integral represented for p>0. -/
theorem zero_margin_totalizes (q : ℝ) : powerCell q 0 = 0 := by simp [powerCell]

/-- Negative-exponent order reverses below one, outside the half-plane-majorant cell domain. -/
theorem below_one_reverses_exponent_bound :
    (1 / (1 / 2 : ℝ) ^ 3) < 1 / (1 / 2 : ℝ) ^ 4 := by norm_num

/-- At a zero cubic prefactor, multiplication cannot recover the remainder. -/
theorem zero_prefactor_does_not_identify_remainder :
    ((-1 : ℂ) * (-1 + 1) * (-1 + 2)) * 0 =
      ((-1 : ℂ) * (-1 + 1) * (-1 + 2)) * 1 ∧ (0 : ℂ) ≠ 1 := by norm_num

/-- Analytic bounds alone do not identify the arithmetic source. -/
theorem same_bound_distinct_constants :
    ‖(0 : ℂ)‖ ≤ (1 / 48 : ℝ) ∧ ‖(1 / 96 : ℂ)‖ ≤ (1 / 48 : ℝ) ∧
      (0 : ℂ) ≠ 1 / 96 := by norm_num

end
end GRWTSK.NumberTheory.Chebyshev.Checks.CubicRemainderControls
