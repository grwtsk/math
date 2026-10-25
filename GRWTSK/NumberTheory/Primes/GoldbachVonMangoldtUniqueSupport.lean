/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPowerRange
import Mathlib.Tactic

/-!
# Unique supported proper-prime-power summand

For n=p^k with prime p and k≥2, the nested finite packet
has exactly one supported index pair (p,k). This is a support
identity only; the weighted sum is handled separately.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtUniqueSupport

open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPowerUniqueness
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPowerRange

/-- The supported pairs in the original finite packet are exactly
the singleton containing the prescribed prime-power representation. -/
theorem proper_power_support_eq_singleton
    (p k : ℕ) (hp : Nat.Prime p) (hk : 2 ≤ k) :
    ((Finset.range (p ^ k + 1)).product (Finset.Icc 2 (p ^ k))).filter
      (fun pk => Nat.Prime pk.1 ∧ pk.1 ^ pk.2 = p ^ k) =
      {(p, k)} := by
  classical
  ext pk
  constructor
  · intro h
    have hs := Finset.mem_filter.mp h
    have hprime : Nat.Prime pk.1 := hs.2.1
    have hbound : 2 ≤ pk.2 := (Finset.mem_Icc.mp (Finset.mem_product.mp hs.1).2).1
    have heq := prime_power_representation_unique pk.1 p pk.2 k
      hprime hp hbound hk hs.2.2
    have hpk : pk = (p, k) := Prod.ext heq.1 heq.2
    simpa [hpk]
  · intro h
    have hpk : pk = (p, k) := by simpa using h
    subst pk
    simp [prime_base_mem_range p k hp hk,
      exponent_mem_Icc p k hp hk, hp]

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtUniqueSupport
