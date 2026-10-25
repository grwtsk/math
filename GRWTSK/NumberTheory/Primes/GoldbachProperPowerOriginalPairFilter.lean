/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalSwap
import Mathlib.Tactic

/-!
# Fixed-n proper-power support as an explicit finite pair filter

This introduces the exact finite pair support and proves its
membership characterization. No unproved sum normalization is
asserted. SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairFilter

open scoped BigOperators

/-- Prime-base/exponent support at a represented integer n. -/
def pairSupportAt (n : ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.range (n + 1)).product (Finset.Icc 2 n)).filter
    (fun t => Nat.Prime t.1 ∧ t.1 ^ t.2 = n)

/-- Exact membership conditions for the dependent pair support. -/
theorem mem_pairSupportAt_iff (n p k : ℕ) :
    (p, k) ∈ pairSupportAt n ↔
      p ≤ n ∧ 2 ≤ k ∧ k ≤ n ∧ Nat.Prime p ∧ p ^ k = n := by
  classical
  simp [pairSupportAt, Finset.mem_product, Finset.mem_Icc,
    Finset.mem_range, Nat.lt_succ_iff, and_assoc]

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairFilter
