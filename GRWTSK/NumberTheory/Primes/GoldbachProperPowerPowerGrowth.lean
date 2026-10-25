/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
import Mathlib.Tactic

/-!
# Power-growth cutoff for proper-power exponents

A base p≥2 dominates the base-two power at every natural exponent.
No logarithmic estimates or asymptotic claims are introduced.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPowerGrowth

/-- Base-two powers are bounded by powers of any base at least two. -/
theorem two_pow_le_pow (p k : ℕ) (hp : 2 ≤ p) :
    2 ^ k ≤ p ^ k := by
  induction k with
  | zero => simp
  | succ k ih =>
      rw [pow_succ, pow_succ]
      exact Nat.mul_le_mul ih hp

/-- Every eligible exponent satisfies the base-two power cutoff. -/
theorem two_pow_le_of_eligible (p N k : ℕ)
    (hp : 2 ≤ p) (hk : p ^ k ≤ N) :
    2 ^ k ≤ N := by
  exact (two_pow_le_pow p k hp).trans hk

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPowerGrowth
