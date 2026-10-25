/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

/-!
# Elementary positive-exponent divisibility supplier

This lemma isolates the arithmetic fact needed for reducing
prime-power support to prime-base support. It does not assume a
ZMod unit criterion or the target support equivalence.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPowerDivisibility

/-- Every positive power of p is divisible by p. -/
theorem base_dvd_positive_power (p k : ℕ) (hk : 0 < k) :
    p ∣ p ^ k := by
  cases k with
  | zero => omega
  | succ j =>
      exact ⟨p ^ j, by simp [pow_succ, Nat.mul_comm]⟩

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPowerDivisibility
