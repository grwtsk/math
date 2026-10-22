/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget
import GRWTSK.NumberTheory.Primes.Checks.GoldbachPrefixControls
import Mathlib.Tactic

set_option autoImplicit false

/-! # Source-only controls for the frequency envelope

No declaration in this file has been executed or kernel audited.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachFrequencyEnvelopeControls

open GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy
open GRWTSK.NumberTheory.Primes.GoldbachPrefixFrequencyEnvelope
open GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget

/-- The chord loss at the center is exactly one, for every target length. -/
theorem chord_loss_at_zero (N : ℕ) : goldbachPrefixChordLoss N 0 = 1 := by
  simp [goldbachPrefixChordLoss, unitCharacter_argument_zero]

/-- A zero model can leave a nonzero quadratic residual. Omitting the square
of the discrepancy would incorrectly claim an upper bound of zero. -/
theorem zero_model_requires_quadratic_error :
    ‖(((0 : ℂ) + 1) ^ 2 - 0 ^ 2)‖ = 1 ∧
      ¬ ‖(((0 : ℂ) + 1) ^ 2 - 0 ^ 2)‖ ≤ 2 * ‖(0 : ℂ)‖ * 1 := by
  norm_num

/-- The retained quadratic expression correctly bounds that hostile case. -/
theorem zero_model_quadratic_budget :
    ‖(((0 : ℂ) + 1) ^ 2 - 0 ^ 2)‖ ≤
      (1 : ℝ) * (2 * ‖(0 : ℂ)‖ + 1) := by
  norm_num

/-- The outer cap cannot make the pointwise bound larger than its old cap. -/
theorem envelope_cap_control (C P : ℝ) : min C P ≤ C := min_le_left _ _

/-- The frequency envelope is unchanged by crossing the unit endpoint. -/
theorem wrapped_envelope_control
    (N a q : ℕ) (B : ℕ → ℕ → ℝ) (β : ℝ) :
    goldbachPrefixFrequencyEnvelope N a q B (β + 1) =
      goldbachPrefixFrequencyEnvelope N a q B β := by
  simpa using goldbachPrefixFrequencyEnvelope_add_int N a q B β 1

/-- The non-reduced correction remains positive at the hostile prime-two case. -/
theorem nonreduced_frequency_budget_at_two
    (B : ℕ → ℕ → ℝ) (β : ℝ) :
    goldbachPrefixFrequencyResidueBudget 2 2 0 B β = Real.log 2 := by
  norm_num [goldbachPrefixFrequencyResidueBudget, goldbachResiduePrimeLogTotal,
    GRWTSK.NumberTheory.Primes.GoldbachWeighted.primeLogWeight,
    Finset.sum_filter, Finset.sum_range_succ]

/-- Improving the major budget does not delete the minor allowance. -/
theorem major_only_margin_does_not_pay_minor :
    (1 : ℝ) < 2 ∧ ¬ (1 : ℝ) + 2 < 2 := by
  norm_num

end GRWTSK.NumberTheory.Primes.Checks.GoldbachFrequencyEnvelopeControls
