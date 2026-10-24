/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPowerGrowth
import Mathlib.Data.Nat.Log

/-!
# Binary logarithmic cutoff for eligible proper-power exponents

The exact pinned Mathlib log2 characterization requires N≠0.
An eligible p^k≤N with p≥2 supplies that nonzero premise.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCutoff

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPowerGrowth

/-- A base-two power cutoff implies the corresponding log2 cutoff. -/
theorem exponent_le_log2 (N k : ℕ) (hN : N ≠ 0)
    (hk : 2 ^ k ≤ N) : k ≤ Nat.log2 N := by
  exact (Nat.le_log2 hN).2 hk

/-- Every eligible exponent of a base at least two is at most log2 N. -/
theorem eligible_exponent_le_log2 (p N k : ℕ)
    (hp : 2 ≤ p) (hk : p ^ k ≤ N) :
    k ≤ Nat.log2 N := by
  have hpow : 2 ^ k ≤ N := two_pow_le_of_eligible p N k hp hk
  have hN : N ≠ 0 := by
    intro h
    subst N
    have hpos : 0 < 2 ^ k := pow_pos (by omega) _
    omega
  exact exponent_le_log2 N k hN hpow

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogCutoff
