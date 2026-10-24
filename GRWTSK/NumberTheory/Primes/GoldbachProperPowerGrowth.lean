/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport
import Mathlib.Tactic

/-!
# Elementary power growth for prime bases

Finite arithmetic only. These inequalities discharge the auxiliary
power-growth hypotheses in the rectangular-to-original support map.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerGrowth

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport

/-- For a prime base, every nonzero power dominates the base. -/
theorem prime_le_pow (p k : ℕ) (hp : Nat.Prime p) (hk : 0 < k) :
    p ≤ p ^ k := by
  obtain ⟨j, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hk)
  rw [pow_succ]
  have hpos : 1 ≤ p ^ j := pow_pos hp.pos _
  nlinarith

/-- For a prime base, every exponent is at most the corresponding power. -/
theorem exponent_le_prime_pow (p k : ℕ) (hp : Nat.Prime p) :
    k ≤ p ^ k := by
  have hp2 : 2 ≤ p := hp.two_le
  induction k with
  | zero => simp
  | succ k ih =>
      rw [pow_succ]
      have hpow : 1 ≤ p ^ k := pow_pos hp.pos _
      nlinarith

/-- Rectangular prime-power support now implies original support,
without supplying auxiliary base/exponent inequalities. -/
theorem rectangular_implies_original_prime
    (N p k : ℕ) (h : RectangularSupport N p k) :
    OriginalSupport N p k (p ^ k) := by
  have hp : Nat.Prime p := h.2.2.2.1
  have hk : 0 < k := by omega
  exact rectangular_implies_original N p k h
    (prime_le_pow p k hp hk)
    (exponent_le_prime_pow p k hp)

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerGrowth
