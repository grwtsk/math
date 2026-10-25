/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachAbelDiscrepancy
import Mathlib.Tactic

/-!
# Conditional cumulative-to-residue error transfer

This module consumes an explicit cumulative discrepancy bound. It proves no
cancellation estimate, prime distribution theorem, or Goldbach theorem.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachAbelErrorBudget

open scoped BigOperators
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.FiniteAbelTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachAbelDiscrepancy

noncomputable section

/-- A pointwise cumulative discrepancy budget implies a finite
frequency-dependent bound for the exact Goldbach residue discrepancy. -/
theorem norm_discrepancy_le_of_prefix_bounds
    (N q r : ℕ) (β : ℝ) (E : ℕ → ℝ)
    (hE : ∀ n ∈ Finset.range (N + 1),
      ‖prefix (residueCoefficient q r) n‖ ≤ E n) :
    ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
      E N * ‖unitCharacter (N : ℤ) β‖ +
        ∑ n ∈ Finset.range N,
          E n * ‖unitCharacter (n : ℤ) β -
            unitCharacter ((n + 1 : ℕ) : ℤ) β‖ := by
  have h := norm_discrepancy_le_prefix_variation N q r β
  apply le_trans h
  apply add_le_add
  · exact mul_le_mul_of_nonneg_right
      (hE N (Finset.mem_range.mpr (Nat.lt_succ_self N))) (norm_nonneg _)
  · apply Finset.sum_le_sum
    intro n hn
    exact mul_le_mul_of_nonneg_right
      (hE n (Finset.mem_range.mpr
        (Nat.lt_succ_of_lt (Finset.mem_range.mp hn)))) (norm_nonneg _)

end
end GRWTSK.NumberTheory.Primes.GoldbachAbelErrorBudget
