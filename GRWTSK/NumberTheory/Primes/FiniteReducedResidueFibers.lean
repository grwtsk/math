/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.FiniteModularResidueFibers
import Mathlib.Tactic

/-!
# Finite reduced and nonreduced residue contributions

This is a finite arithmetic partition, not a character theorem.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.FiniteReducedResidueFibers

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteModularResidueFibers

noncomputable section

/-- Exact finite weight supported on unit residue classes modulo q. -/
def reducedResidueWeight (q N : ℕ) (weight : ℕ → ℂ) : ℂ :=
  ∑ n ∈ Finset.range (N + 1) with IsUnit (n : ZMod q), weight n

/-- Exact finite weight supported on nonunit residue classes modulo q. -/
def nonunitResidueWeight (q N : ℕ) (weight : ℕ → ℂ) : ℂ :=
  ∑ n ∈ Finset.range (N + 1) with ¬ IsUnit (n : ZMod q), weight n

/-- The full finite sum is the sum of its unit and nonunit parts. -/
theorem total_eq_reduced_add_nonunit
    (q N : ℕ) (weight : ℕ → ℂ) :
    (∑ n ∈ Finset.range (N + 1), weight n) =
      reducedResidueWeight q N weight +
        nonunitResidueWeight q N weight := by
  classical
  unfold reducedResidueWeight nonunitResidueWeight
  rw [← Finset.sum_filter_add_sum_filter_not]

end
end GRWTSK.NumberTheory.Primes.FiniteReducedResidueFibers
