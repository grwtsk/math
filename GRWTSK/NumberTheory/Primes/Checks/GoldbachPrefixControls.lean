/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer
import GRWTSK.NumberTheory.Primes.Checks.GoldbachProgressionModelControls
import Mathlib.Tactic

set_option autoImplicit false

/-! # Source-only controls for prefix discrepancy transfer

These declarations have not been executed or kernel audited.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachPrefixControls

open scoped BigOperators Real
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy
open GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer
open GRWTSK.NumberTheory.Primes.Checks.GoldbachProgressionModelControls

/-- The complete integer baseline gives a nonzero initial prefix. -/
theorem denominator_one_initial_prefix :
    goldbachResiduePrefixDiscrepancy 0 1 0 = -1 := by
  norm_num [goldbachResiduePrefixDiscrepancy,
    goldbachResidueDiscrepancyCoefficient, primeLogWeight]

/-- Any supplier including the initial prefix must charge its unit endpoint. -/
theorem denominator_one_prefix_budget_at_least_one
    {N : ℕ} {B : ℝ}
    (h : ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k 1 0‖ ≤ B) :
    1 ≤ B := by
  have hzero := h 0 (Nat.zero_le N)
  simpa [denominator_one_initial_prefix] using hzero

/-- Zero terminal sum does not control an oscillatory sum: all prefixes matter. -/
theorem terminal_prefix_only_counterexample :
    (∑ n ∈ Finset.range 2, (if n = 0 then (1 : ℂ) else -1)) = 0 ∧
      (∑ n ∈ Finset.range 2,
        (if n = 0 then (1 : ℂ) else -1) * (-1 : ℂ) ^ n) = 2 := by
  norm_num [Finset.sum_range_succ]

/-- The zero-length Abel sum still retains its frequency-zero endpoint. -/
theorem abel_zero_endpoint (c w : ℕ → ℂ) :
    (∑ n ∈ Finset.range (0 + 1), c n * w n) = c 0 * w 0 := by
  simp

/-- Non-reduced residue budgets retain the concrete prime-two correction. -/
theorem nonreduced_budget_at_two (Q : ℕ) (B : ℕ → ℕ → ℝ) :
    goldbachPrefixResidueBudget Q 2 B (1, 2) 0 = Real.log 2 := by
  norm_num [goldbachPrefixResidueBudget, goldbachResiduePrimeLogTotal,
    primeLogWeight, Finset.sum_filter, Finset.sum_range_succ]

/-- The inherited zero-budget rejection remains attached to the actual primes. -/
theorem nonreduced_zero_budget_rejected :
    ¬ ‖goldbachResidueProgressionDiscrepancy 2 2 0 0‖ ≤ 0 :=
  zero_residue_error_rejected

/-- A wrapped offset must be reduced by a full period before using its radius. -/
theorem wrapped_discrepancy_control (N q r : ℕ) (β : ℝ) :
    goldbachResidueProgressionDiscrepancy N q r (β + 1) =
      goldbachResidueProgressionDiscrepancy N q r β := by
  simpa using goldbachResidueProgressionDiscrepancy_add_int N q r β 1

/-- Equality of all charged error with the lower bound does not pass. -/
theorem strict_margin_equality_rejected (E T : ℝ) : ¬ E + T < E + T :=
  lt_irrefl _

end GRWTSK.NumberTheory.Primes.Checks.GoldbachPrefixControls
