/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol

/-!
# Exceptional primes in the marked quadratic-character sum

The arithmetic hypotheses are fields of `UpperTheory.Top.WinPair` in
Alpöge's `ExistsPageN.lean`, revision 40e56bab026552e089d7afcfeff08d2defb9c005.
The marked coefficient is the one in Part II, equations (II.11) and
(II.28)–(II.29) of the explanatory draft dated 22 November 2026.
-/

namespace GRWTSK.NumberTheory.AlpogeExceptionalPrimePowers

open scoped ArithmeticFunction

private theorem legendre_at_d_of_dvd_succ {p d : ℕ} [Fact p.Prime]
    (hp : p ≠ 2) (hpd : p ∣ d + 1) : legendreSym p d = ZMod.χ₄ p := by
  have h : (d : ZMod p) + 1 = 0 := by
    simpa using (ZMod.natCast_eq_zero_iff (d + 1) p).mpr hpd
  have hc : (d : ZMod p) = -1 := eq_neg_of_add_eq_zero_left h
  calc
    legendreSym p d = legendreSym p (-1) := by simp [legendreSym, hc]
    _ = ZMod.χ₄ p := legendreSym.at_neg_one hp

/-- Every odd prime divisor of `d + 1` splits for the quadratic character of
a prime `d ≡ 3 mod 4`. This covers the entire small-prime field of WinPair. -/
theorem split_of_dvd_succ {d p : ℕ} [Fact d.Prime] [Fact p.Prime]
    (hd : d % 4 = 3) (hp : p ≠ 2) (hpd : p ∣ d + 1) : jacobiSym p d = 1 := by
  rw [← jacobiSym.legendreSym.to_jacobiSym]
  have ho := (Nat.Prime.mod_two_eq_one_iff_ne_two (Fact.out : p.Prime)).mpr hp
  rcases (show p % 4 = 1 ∨ p % 4 = 3 by omega) with h | h
  · rw [legendreSym.quadratic_reciprocity_one_mod_four h (by omega : d ≠ 2),
      legendre_at_d_of_dvd_succ hp hpd, ZMod.χ₄_nat_one_mod_four h]
  · rw [legendreSym.quadratic_reciprocity_three_mod_four h hd,
      legendre_at_d_of_dvd_succ hp hpd, ZMod.χ₄_nat_three_mod_four h]
    decide

/-- Both omitted base primes have zero `1 - χ_d` weight in every degree. -/
theorem omitted_prime_power_weight {q d p : ℕ} [Fact q.Prime] [Fact d.Prime]
    (hq : q % 8 = 3) (hd : d % 16 = 7) (hqd : q ∣ d + 1)
    (hp : p = 2 ∨ p = q) (h : ℕ) : 1 - jacobiSym ((p : ℤ) ^ h) d = 0 := by
  have hsplit : jacobiSym p d = 1 := by
    rcases hp with rfl | rfl
    · rw [← jacobiSym.legendreSym.to_jacobiSym, Nat.cast_ofNat, legendreSym.at_two (by omega : d ≠ 2),
        ZMod.χ₈_nat_mod_eight, show d % 8 = 7 by omega]
      rfl
    · exact split_of_dvd_succ (by omega) (by omega) hqd
  simp [jacobiSym.pow_left, hsplit]

/-- The signed marked sum is unchanged by restriction to integers coprime to
`2*q`. Any real-valued smoothing, including the original ramp, is allowed. -/
theorem marked_sum_restrict {q d : ℕ} [Fact q.Prime] [Fact d.Prime]
    (hq : q % 8 = 3) (hd : d % 16 = 7) (hqd : q ∣ d + 1)
    (s : Finset ℕ) (w : ℕ → ℝ) :
    (∑ r ∈ s.filter (fun r => r.Coprime (2 * q)),
      (((1 + jacobiSym r q) * (1 - jacobiSym r d) : ℤ) : ℝ) * Λ r * w r) =
    ∑ r ∈ s, (((1 + jacobiSym r q) * (1 - jacobiSym r d) : ℤ) : ℝ) * Λ r * w r := by
  apply Finset.sum_subset (Finset.filter_subset _ _)
  intro r hrs hr
  have hbad : ¬r.Coprime (2 * q) := fun h => hr (Finset.mem_filter.mpr ⟨hrs, h⟩)
  by_cases hz : Λ r = 0
  · simp [hz]
  obtain ⟨p, k, hp, hk, rfl⟩ := (isPrimePow_nat_iff _).mp
    (ArithmeticFunction.vonMangoldt_ne_zero_iff.mp hz)
  have hex : p = 2 ∨ p = q := by
    by_contra! hn
    exact hbad ((Nat.coprime_pow_left_iff hk _ _).mpr (Nat.coprime_mul_iff_right.mpr
      ⟨(Nat.coprime_primes hp Nat.prime_two).mpr hn.1, (Nat.coprime_primes hp Fact.out).mpr hn.2⟩))
  rw [Nat.cast_pow, omitted_prime_power_weight hq hd hqd hex k]
  simp

/-- At the retained prime `d` the marked integer multiplier is zero in
odd degree and two in positive even degree. -/
theorem ramified_prime_power_multiplier {q d : ℕ} [Fact q.Prime] [Fact d.Prime]
    (hq : q % 8 = 3) (hqd : q ∣ d + 1) {h : ℕ} (hh : 0 < h) :
    (1 + jacobiSym ((d : ℤ) ^ h) q) * (1 - jacobiSym ((d : ℤ) ^ h) d) =
      1 + (-1 : ℤ) ^ h := by
  have hq' : jacobiSym d q = -1 := by
    rw [← jacobiSym.legendreSym.to_jacobiSym, legendre_at_d_of_dvd_succ (by omega : q ≠ 2) hqd,
      ZMod.χ₄_nat_three_mod_four (by omega)]
  have hd' : jacobiSym d d = 0 := by
    rw [← jacobiSym.legendreSym.to_jacobiSym, legendreSym.eq_zero_iff]
    simp
  simp [jacobiSym.pow_left, hq', hd', zero_pow hh.ne']

end GRWTSK.NumberTheory.AlpogeExceptionalPrimePowers
