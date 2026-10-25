/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeFullBridge
import Mathlib.Algebra.IsPrimePow
import Mathlib.Tactic

/-!
# Proper-prime-power correction vanishes off prime-power support

The non-prime-power condition includes zero and one. The statement
uses the global IsPrimePow predicate from pinned Mathlib.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerZero

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection

/-- The finite proper-power packet vanishes outside prime-power support. -/
theorem properPrimePowerWeight_eq_zero_of_not_prime_pow
    (n : ℕ) (hn : ¬ IsPrimePow n) :
    properPrimePowerWeight n = 0 := by
  classical
  unfold properPrimePowerWeight
  apply Finset.sum_eq_zero
  intro p hp
  apply Finset.sum_eq_zero
  intro k hk
  have hk2 : 2 ≤ k := (Finset.mem_Icc.mp hk).1
  have hnot : ¬ (Nat.Prime p ∧ p ^ k = n) := by
    intro h
    apply hn
    exact (isPrimePow_nat_iff n).2 ⟨p, k, h.1, by omega, h.2⟩
  simp [hnot]

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerZero
