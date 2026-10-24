# Complete source: GRWTSK.NumberTheory.Moebius.SquareDivisorMobiusNonsquarefreeCancellation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d` · SHA-256 `1b9e30cb07fb636c92cc5786c8ae8d22406c312b0425c281f606233c46d253b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #546. Direct stacked parent: draft PR #544 at
`1f3308b249a843a7a9b08d347769e3230b6a9223`.
-/
import GRWTSK.NumberTheory.Moebius.SquareDivisorMobiusSquarefreeHalf
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Nonsquarefree cancellation in the divisor-square Möbius sum

For positive nonsquarefree `m`, choose a prime `p` with `p^2 | m`.
After discarding nonsquarefree divisors, whose Möbius value is zero, the
remaining square-divisor support is paired by toggling the prime `p`:

* if `p | d`, send `d` to `d / p`;
* if `p ∤ d`, send `d` to `p * d`.

Squarefreeness makes the toggle involutive and fixed-point free.  Coprimality
and multiplicativity of Möbius make paired terms have opposite signs.
`Finset.sum_involution` therefore gives exact cancellation.

This closes the elementary squarefree/divisor-square identity at source level.
No analytic correlation estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Squarefree divisors whose squares divide the positive integer `m`.
These are exactly the potentially nonzero terms in `squareDivisorMobiusSum`. -/
def squareDivisorMobiusSupport (m : ℕ) : Finset ℕ :=
  m.divisors.filter (fun d => d * d ∣ m ∧ Squarefree d)

-- Retain the published positivity parameter in the public interface.
set_option linter.unusedVariables false in
/-- Terms outside the squarefree square-divisor support vanish, so the original
finite sum is exactly the Möbius sum over this support. -/
theorem squareDivisorMobiusSum_eq_supportSum
    {m : ℕ} (hm : 0 < m) :
    squareDivisorMobiusSum m =
      ∑ d ∈ squareDivisorMobiusSupport m, moebiusReal d := by
  classical
  unfold squareDivisorMobiusSum squareDivisorMobiusSupport
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro d _hd
  by_cases hdd : d * d ∣ m
  · by_cases hsq : Squarefree d
    · simp [hdd, hsq]
    · have hmu : moebiusReal d = 0 := by
        unfold moebiusReal
        rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hsq]
        norm_num
      simp [hdd, hsq, hmu]
  · simp [hdd]

/-- Nonsquarefreeness is witnessed by one prime square divisor. -/
theorem exists_prime_square_dvd_of_not_squarefree
    {m : ℕ} (hnsq : ¬ Squarefree m) :
    ∃ p : ℕ, p.Prime ∧ p * p ∣ m := by
  rw [Nat.squarefree_iff_prime_squarefree] at hnsq
  push Not at hnsq
  exact hnsq

/-- Toggle one fixed prime in a squarefree divisor. -/
def squareDivisorPrimeToggle (p d : ℕ) : ℕ :=
  if p ∣ d then d / p else p * d

/-- If a prime divides a squarefree integer, it does not divide the quotient by
that prime. -/
theorem prime_not_dvd_div_of_squarefree
    {p d : ℕ} (hp : p.Prime) (hsq : Squarefree d)
    (hpd : p ∣ d) :
    ¬ p ∣ d / p := by
  intro hq
  have hpp : p * p ∣ d := by
    exact (Nat.dvd_div_iff_mul_dvd hpd).1 hq
  have hu : IsUnit p := hsq p hpp
  exact hp.ne_one (Nat.isUnit_iff.mp hu)

/-- Toggling a prime whose square divides `m` preserves the squarefree
square-divisor support. -/
theorem squareDivisorPrimeToggle_mem_support
    {m p d : ℕ} (hm : 0 < m) (hp : p.Prime)
    (hp2 : p * p ∣ m)
    (hd : d ∈ squareDivisorMobiusSupport m) :
    squareDivisorPrimeToggle p d ∈ squareDivisorMobiusSupport m := by
  classical
  unfold squareDivisorMobiusSupport at hd ⊢
  have hm0 : m ≠ 0 := ne_of_gt hm
  rcases Finset.mem_filter.mp hd with ⟨hddiv, hdd, hsq⟩
  have hd_dvd_m : d ∣ m := Nat.dvd_of_mem_divisors hddiv
  unfold squareDivisorPrimeToggle
  by_cases hpd : p ∣ d
  · let q := d / p
    have hq_dvd_d : q ∣ d := by
      dsimp [q]
      exact Nat.div_dvd_of_dvd hpd
    have hq_dvd_m : q ∣ m := hq_dvd_d.trans hd_dvd_m
    have hq2_dvd_d2 : q * q ∣ d * d :=
      Nat.mul_dvd_mul hq_dvd_d hq_dvd_d
    have hq2_dvd_m : q * q ∣ m := hq2_dvd_d2.trans hdd
    have hq_sqfree : Squarefree q :=
      Squarefree.squarefree_of_dvd hq_dvd_d hsq
    rw [if_pos hpd]
    exact Finset.mem_filter.mpr
      ⟨Nat.mem_divisors.mpr ⟨hq_dvd_m, hm0⟩,
        hq2_dvd_m, hq_sqfree⟩
  · have hcop : p.Coprime d :=
      (hp.coprime_iff_not_dvd).2 hpd
    have hcop2 : (p * p).Coprime (d * d) := by
      simpa [pow_two] using Nat.Coprime.pow 2 2 hcop
    have hsqprod_raw : (p * p) * (d * d) ∣ m :=
      hcop2.mul_dvd_of_dvd_of_dvd hp2 hdd
    have hsqprod : (p * d) * (p * d) ∣ m := by
      simpa [mul_assoc, mul_left_comm, mul_comm] using hsqprod_raw
    have hpd_dvd_m : p * d ∣ m :=
      (dvd_mul_right (p * d) (p * d)).trans hsqprod
    have hpd_sqfree : Squarefree (p * d) :=
      (Nat.squarefree_mul hcop).2 ⟨hp.squarefree, hsq⟩
    rw [if_neg hpd]
    exact Finset.mem_filter.mpr
      ⟨Nat.mem_divisors.mpr ⟨hpd_dvd_m, hm0⟩,
        hsqprod, hpd_sqfree⟩

/-- The prime toggle is an involution on the squarefree square-divisor support. -/
theorem squareDivisorPrimeToggle_involutive_on_support
    {m p d : ℕ} (hp : p.Prime)
    (hd : d ∈ squareDivisorMobiusSupport m) :
    squareDivisorPrimeToggle p
      (squareDivisorPrimeToggle p d) = d := by
  classical
  unfold squareDivisorMobiusSupport at hd
  rcases Finset.mem_filter.mp hd with ⟨hddiv, _hdd, hsq⟩
  have hdpos : 0 < d := Nat.pos_of_mem_divisors hddiv
  unfold squareDivisorPrimeToggle
  by_cases hpd : p ∣ d
  · have hqnot : ¬ p ∣ d / p :=
      prime_not_dvd_div_of_squarefree hp hsq hpd
    rw [if_pos hpd, if_neg hqnot]
    exact Nat.mul_div_cancel' hpd
  · have hp_pd : p ∣ p * d := dvd_mul_right p d
    rw [if_neg hpd, if_pos hp_pd]
    simp [hp.ne_zero]

/-- The prime toggle has no fixed points on the support. -/
theorem squareDivisorPrimeToggle_ne_self_on_support
    {m p d : ℕ} (hp : p.Prime)
    (hd : d ∈ squareDivisorMobiusSupport m) :
    squareDivisorPrimeToggle p d ≠ d := by
  classical
  unfold squareDivisorMobiusSupport at hd
  rcases Finset.mem_filter.mp hd with ⟨hddiv, _hdd, _hsq⟩
  have hdpos : 0 < d := Nat.pos_of_mem_divisors hddiv
  unfold squareDivisorPrimeToggle
  by_cases hpd : p ∣ d
  · rw [if_pos hpd]
    exact ne_of_lt (Nat.div_lt_self hdpos hp.one_lt)
  · rw [if_neg hpd]
    have hlt := Nat.mul_lt_mul_of_pos_right hp.one_lt hdpos
    exact ne_of_gt (by simpa using hlt)

/-- Möbius values on a toggled support pair have opposite signs. -/
theorem moebiusReal_add_toggle_eq_zero
    {m p d : ℕ} (hp : p.Prime)
    (hd : d ∈ squareDivisorMobiusSupport m) :
    moebiusReal d +
      moebiusReal (squareDivisorPrimeToggle p d) = 0 := by
  classical
  unfold squareDivisorMobiusSupport at hd
  rcases Finset.mem_filter.mp hd with ⟨_hddiv, _hdd, hsq⟩
  unfold squareDivisorPrimeToggle
  by_cases hpd : p ∣ d
  · have hqnot : ¬ p ∣ d / p :=
      prime_not_dvd_div_of_squarefree hp hsq hpd
    have hcop : p.Coprime (d / p) :=
      (hp.coprime_iff_not_dvd).2 hqnot
    have hdecomp : p * (d / p) = d := Nat.mul_div_cancel' hpd
    rw [if_pos hpd]
    nth_rw 1 [← hdecomp]
    unfold moebiusReal
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
      ArithmeticFunction.moebius_apply_prime hp]
    norm_num
  · have hcop : p.Coprime d :=
      (hp.coprime_iff_not_dvd).2 hpd
    rw [if_neg hpd]
    unfold moebiusReal
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
      ArithmeticFunction.moebius_apply_prime hp]
    norm_num

/-- A prime square divisor forces exact cancellation of the complete squarefree
square-divisor Möbius support. -/
theorem sum_squareDivisorMobiusSupport_eq_zero_of_prime_square_dvd
    {m p : ℕ} (hm : 0 < m) (hp : p.Prime)
    (hp2 : p * p ∣ m) :
    (∑ d ∈ squareDivisorMobiusSupport m, moebiusReal d) = 0 := by
  classical
  exact Finset.sum_involution
    (fun d hd => squareDivisorPrimeToggle p d)
    (fun d hd => moebiusReal_add_toggle_eq_zero hp hd)
    (fun d hd _hmu =>
      squareDivisorPrimeToggle_ne_self_on_support hp hd)
    (fun d hd =>
      squareDivisorPrimeToggle_mem_support hm hp hp2 hd)
    (fun d hd =>
      squareDivisorPrimeToggle_involutive_on_support hp hd)

/-- Complete nonsquarefree cancellation in the parent divisor-square Möbius
sum. -/
theorem squareDivisorMobiusSum_eq_zero_of_not_squarefree
    {m : ℕ} (hm : 0 < m) (hnsq : ¬ Squarefree m) :
    squareDivisorMobiusSum m = 0 := by
  obtain ⟨p, hp, hp2⟩ :=
    exists_prime_square_dvd_of_not_squarefree hnsq
  rw [squareDivisorMobiusSum_eq_supportSum hm]
  exact
    sum_squareDivisorMobiusSupport_eq_zero_of_prime_square_dvd
      hm hp hp2

/-- Constructed value of the previously open nonsquarefree cancellation
certificate. -/
def nonSquarefreeSquareDivisorMobiusCancellation :
    NonSquarefreeSquareDivisorMobiusCancellation where
  cancellation := by
    intro m hm hnsq
    exact squareDivisorMobiusSum_eq_zero_of_not_squarefree hm hnsq

/-- Constructed source-level value of the complete divisor-square Möbius
identity supplier from PR #539. -/
def squarefreeDivisorSquareMobiusIdentity :
    SquarefreeDivisorSquareMobiusIdentity :=
  squarefreeDivisorSquareMobiusIdentity_of_nonsquarefreeCancellation
    nonSquarefreeSquareDivisorMobiusCancellation

/-- The full squarefree indicator / divisor-square identity now has a direct
source-level theorem wrapper. -/
theorem squarefreeIndicatorReal_eq_squareDivisorMobiusSum
    {m : ℕ} (hm : 0 < m) :
    squarefreeIndicatorReal m = squareDivisorMobiusSum m :=
  squarefreeDivisorSquareMobiusIdentity.identity m hm

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.squareDivisorMobiusSum_eq_zero_of_not_squarefree
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.squarefreeDivisorSquareMobiusIdentity
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.squarefreeIndicatorReal_eq_squareDivisorMobiusSum
```
