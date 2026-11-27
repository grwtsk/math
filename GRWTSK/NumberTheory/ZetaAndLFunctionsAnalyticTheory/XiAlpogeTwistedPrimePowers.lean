/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.NumberTheory.LegendreSymbol.Basic
import Mathlib.Basic.Real.Basic
import Mathlib.Data.Nat.ModEq

/-!
# Which even prime powers survive a quadratic twist

In the readable rewriting of Alpöge's proof, the twisted prime weight is
`Λ(n) (1 - (n/d))` on the progression `n ≡ 1 (mod q₀)`.
We compute its quadratic factor using Mathlib's Legendre symbol. For every
positive even exponent, the finite sum over primes collapses to the ramified
prime, including the progression condition at the conductor-one choice
`q₀ = 18480`. These are identities of the arithmetic weights before any
estimate on the zeta zeros.

Upstream statement: Luke Sernau's readable edition of Alpöge's proof,
`lsernau/grh-lean@72fead102f663d5c7a407964a13dc0cf9d977207`,
`grh/src/New/Reduction/OneSidedBound.lean`, declaration
`New.eventually_primeRemainder_le_rpow`. Its remainder includes a logarithm
and a constant in addition to the weighted prime sum. This module concerns
the local coefficients, not the full remainder estimate.
-/

namespace GRWTSK.XiAlpogeTwistedPrimePowers

/-- Integer multiplier in the twisted prime-power coefficient. -/
def twistFactor (d : ℕ) [Fact d.Prime] (n : ℕ) : ℤ := 1 - legendreSym d n

private theorem symbol_pow (d n k : ℕ) [Fact d.Prime] :
    legendreSym d (↑(n ^ k) : ℤ) = (legendreSym d n) ^ k := by
  push_cast
  exact (legendreSym.hom d).map_pow _ _

/-- Every positive power of the ramified prime has quadratic factor one. -/
theorem ramified_power (d k : ℕ) [Fact d.Prime] (hk : 0 < k) :
    twistFactor d (d^k) = 1 := by
  have h : legendreSym d (d : ℤ) = 0 := (legendreSym.eq_zero_iff _ _).2 (by simp)
  rw [twistFactor, symbol_pow, h, zero_pow hk.ne', sub_zero]

/-- All odd powers have the same factor as the base, including at ramified bases. -/
theorem odd_power (d n k : ℕ) [Fact d.Prime] :
    twistFactor d (n^(2*k+1)) = twistFactor d n := by
  unfold twistFactor
  rw [symbol_pow, pow_succ, pow_mul]
  by_cases hz : ((n : ℤ) : ZMod d) = 0
  · rw [(legendreSym.eq_zero_iff d _).2 hz]
    simp
  · rw [legendreSym.sq_one d hz]
    simp

/-- For a prime base the even powers have coefficient one exactly at d. -/
theorem even_prime_power (d p k : ℕ) [hd : Fact d.Prime] (hp : p.Prime) :
    twistFactor d (p^(2*(k+1))) = if p = d then 1 else 0 := by
  split_ifs with h
  · subst p
    exact ramified_power _ _ (by positivity)
  · have hz : ((p : ℤ) : ZMod d) ≠ 0 := by
      simp only [Int.cast_natCast, ne_eq, ZMod.natCast_eq_zero_iff]
      exact fun hdiv => h ((Nat.dvd_prime_two_le hp hd.out.two_le).mp hdiv).symm
    rw [twistFactor, symbol_pow, pow_mul, legendreSym.sq_one d hz]
    simp

/-- All positive even powers of an admissible ramified prime lie in the
progression for the ordinary-zeta specialization. -/
theorem ramified_even_modEq {d : ℕ} (hd : d ≡ 9239 [MOD 18480]) (k : ℕ) :
    d^(2*(k+1)) ≡ 1 [MOD 18480] := by
  have hs : d^2 ≡ 1 [MOD 18480] := (hd.pow 2).trans (by decide)
  simpa [pow_mul] using hs.pow (k+1)

/-- On the conductor-one specialization's progression, an arbitrary finite
weighted sum over the even powers of primes has at most the ramified term.
The weight can include the von Mangoldt factor and the block test. -/
theorem even_progression_sum {d : ℕ} [Fact d.Prime] (hd : d ≡ 9239 [MOD 18480])
    (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) (w : ℕ → ℝ) (k : ℕ) :
    (∑ p ∈ P, if p^(2*(k+1)) ≡ 1 [MOD 18480] then
       (twistFactor d (p^(2*(k+1))) : ℝ) * w p else 0) =
       if d ∈ P then w d else 0 := by
  classical
  calc
    _ = ∑ p ∈ P, if d = p then w d else 0 := by
      apply Finset.sum_congr rfl
      intro p hp
      rw [even_prime_power d p k (hP p hp)]
      by_cases h : p = d
      · subst p
        simp [ramified_even_modEq hd]
      · simp [h, Ne.symm h]
    _ = _ := by simp

end GRWTSK.XiAlpogeTwistedPrimePowers
