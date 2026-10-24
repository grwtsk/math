/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPowerUniqueness
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPowerGrowth
import Mathlib.Tactic

/-!
# Finite summation range membership for proper prime powers

For prime p and exponent k≥2, n=p^k contains p in range(n+1)
and k in Icc 2 n. This supplies range membership only, not
the value of the nested properPrimePowerWeight sum.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPowerRange

/-- A prime base belongs to the inclusive base range of its power. -/
theorem prime_base_mem_range (p k : ℕ) (hp : Nat.Prime p)
    (hk : 2 ≤ k) :
    p ∈ Finset.range (p ^ k + 1) := by
  apply Finset.mem_range.mpr
  have hpk : p ≤ p ^ k := Nat.le_self_pow (by omega) p
  omega

/-- A proper exponent belongs to the inclusive exponent interval. -/
theorem exponent_mem_Icc (p k : ℕ) (hp : Nat.Prime p)
    (hk : 2 ≤ k) :
    k ∈ Finset.Icc 2 (p ^ k) := by
  apply Finset.mem_Icc.mpr
  constructor
  · exact hk
  · have hpow : 2 ^ k ≤ p ^ k :=
      GRWTSK.NumberTheory.Primes.GoldbachProperPowerPowerGrowth.two_pow_le_pow
        p k hp.two_le
    have hkpow : k ≤ 2 ^ k := Nat.le_self_pow (by omega) 2
    exact hkpow.trans hpow

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPowerRange
