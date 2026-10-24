/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerBridge
import Mathlib.Tactic

/-!
# Proper prime-power correction vanishes on prime inputs

A prime cannot be represented as r^k for prime r and k>=2.
Thus the finite proper-power correction at a prime is zero.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeCorrectionZero

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection

/-- At a prime input, no proper-prime-power packet summand survives. -/
theorem properPrimePowerWeight_prime_eq_zero (p : ℕ)
    (hp : Nat.Prime p) :
    properPrimePowerWeight p = 0 := by
  classical
  unfold properPrimePowerWeight
  apply Finset.sum_eq_zero
  intro r hr
  apply Finset.sum_eq_zero
  intro k hk
  have hk2 : 2 ≤ k := (Finset.mem_Icc.mp hk).1
  have hnot : ¬ Nat.Prime r ∧ r ^ k = p := by
    intro h
    have hnp : ¬ Nat.Prime (r ^ k) := Nat.Prime.not_prime_pow hk2
    exact hnp (h.2 ▸ hp)
  simp [hnot]

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeCorrectionZero
