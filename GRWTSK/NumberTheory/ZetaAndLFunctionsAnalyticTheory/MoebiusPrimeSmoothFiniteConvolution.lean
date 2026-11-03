/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusBalancedTwoSidedPNTDense
import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.Divisors
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators zeta

/-!
# Exact finite prime-smooth convolution for the original Möbius rough/matched tags

The equality is arithmetic, not a PNT- or RH-strength hypothesis:

  mu(n) * 1_(no selected prime divides n)
    = sum_(d|n, all prime factors of d selected) mu(n/d).

For finite ORIGINAL cutoff N this implies
  sum_(n<=N, rough) mu(n)
    = sum_(d<=N, selected-prime-smooth) M(floor(N/d)).

We keep n=1, repeated prime powers, squareful zero coefficients,
and the genuine firstSelectedDivisor zero/nonzero tag. The Lean
script is a source proof candidate: no local Lean/Lake compiler
or transitive axiom audit was available at publication.

The proof uses pinned Mathlib's isMultiplicative/prime-power
extensionality, moebius_mul_coe_zeta, Nat.sum_divisors_prime_pow
and ArithmeticFunction.sum_Ioc_mul_eq_sum_sum. It does NOT
introduce a research axiom or an altered arithmetic coefficient.
-/

namespace GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleSignedBuchstabTypeII
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense

/-- The selected-prime-smooth monoid: all prime factors lie in the
actual bank. One belongs automatically; zero is excluded by
the arithmetic-function carrier, not by changing the source. -/
def bankSmooth (P : Finset ℕ) (n : ℕ) : Prop :=
  ∀ q : ℕ, q.Prime → q ∣ n → q ∈ P

/-- The actual zero least-selected-divisor class. -/
def bankRough (P : Finset ℕ) (n : ℕ) : Prop :=
  ∀ p ∈ P, ¬p ∣ n

private theorem bankSmooth_one (P : Finset ℕ) : bankSmooth P 1 := by
  intro q hq hq1
  exact (hq.ne_one (Nat.dvd_one.mp hq1)).elim

private theorem bankRough_one (B : PrimeBand) : bankRough B.primes 1 := by
  intro p hp hdiv
  exact ((B.prime_mem p hp).ne_one (Nat.dvd_one.mp hdiv)).elim

private theorem bankSmooth_mul_iff (P : Finset ℕ) (m n : ℕ) :
    bankSmooth P (m * n) ↔ bankSmooth P m ∧ bankSmooth P n := by
  constructor
  · intro h
    constructor
    · intro q hq hqm
      exact h q hq (dvd_mul_of_dvd_left hqm n)
    · intro q hq hqn
      exact h q hq (dvd_mul_of_dvd_right hqn m)
  · rintro ⟨hm, hn⟩ q hq hqmn
    rcases hq.dvd_mul.mp hqmn with hqm | hqn
    · exact hm q hq hqm
    · exact hn q hq hqn

private theorem bankRough_mul_iff (B : PrimeBand) (m n : ℕ) :
    bankRough B.primes (m * n) ↔
      bankRough B.primes m ∧ bankRough B.primes n := by
  constructor
  · intro h
    constructor
    · intro p hp hpm
      exact (h p hp) (dvd_mul_of_dvd_left hpm n)
    · intro p hp hpn
      exact (h p hp) (dvd_mul_of_dvd_right hpn m)
  · rintro ⟨hm, hn⟩ p hp hpmn
    rcases (B.prime_mem p hp).dvd_mul.mp hpmn with hpm | hpn
    · exact hm p hp hpm
    · exact hn p hp hpn

/-- Indicator of the P-smooth positive integers, zero at index zero
as required by Mathlib's ArithmeticFunction. -/
def smoothIndicator (B : PrimeBand) : ArithmeticFunction ℤ :=
  ⟨fun n => if n = 0 then 0 else if bankSmooth B.primes n then 1 else 0,
    by simp⟩

/-- Indicator of the original rough positive integer indices. -/
def roughIndicator (B : PrimeBand) : ArithmeticFunction ℤ :=
  ⟨fun n => if n = 0 then 0 else if bankRough B.primes n then 1 else 0,
    by simp⟩

/-- Actual Möbius coefficients, masked by the original rough bank.
This is the *pointwise* product, not Dirichlet convolution. -/
def roughMobius (B : PrimeBand) : ArithmeticFunction ℤ :=
  (ArithmeticFunction.moebius).pmul (roughIndicator B)

private theorem smoothIndicator_multiplicative (B : PrimeBand) :
    ArithmeticFunction.IsMultiplicative (smoothIndicator B) := by
  apply ArithmeticFunction.IsMultiplicative.iff_ne_zero.mpr
  constructor
  · simp [smoothIndicator, bankSmooth_one]
  · intro m n hm hn hmn
    by_cases hsm : bankSmooth B.primes m <;>
      by_cases hsn : bankSmooth B.primes n <;>
      simp [smoothIndicator, hm, hn, mul_ne_zero hm hn,
        bankSmooth_mul_iff, hsm, hsn]

private theorem roughIndicator_multiplicative (B : PrimeBand) :
    ArithmeticFunction.IsMultiplicative (roughIndicator B) := by
  apply ArithmeticFunction.IsMultiplicative.iff_ne_zero.mpr
  constructor
  · simp [roughIndicator, bankRough_one]
  · intro m n hm hn hmn
    by_cases hrm : bankRough B.primes m <;>
      by_cases hrn : bankRough B.primes n <;>
      simp [roughIndicator, hm, hn, mul_ne_zero hm hn,
        bankRough_mul_iff B, hrm, hrn]

private theorem roughMobius_multiplicative (B : PrimeBand) :
    ArithmeticFunction.IsMultiplicative (roughMobius B) := by
  exact ArithmeticFunction.isMultiplicative_moebius.pmul
    (roughIndicator_multiplicative B)

private theorem prime_divides_own_positive_power {p k : ℕ}
    (hk : k ≠ 0) : p ∣ p ^ k := by
  cases k with
  | zero => exact (hk rfl).elim
  | succ j =>
      refine ⟨p ^ j, ?_⟩
      simp [pow_succ, mul_comm]

private theorem bankSmooth_prime_pow_iff (B : PrimeBand)
    {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    bankSmooth B.primes (p ^ k) ↔ p ∈ B.primes := by
  constructor
  · intro h
    exact h p hp (prime_divides_own_positive_power hk)
  · intro hpB q hq hqp
    have hqeq : q = p :=
      Nat.prime_eq_prime_of_dvd_pow hq hp hqp
    simpa only [hqeq] using hpB

private theorem bankRough_prime_pow_iff (B : PrimeBand)
    {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    bankRough B.primes (p ^ k) ↔ p ∉ B.primes := by
  constructor
  · intro h hpB
    exact h p hpB (prime_divides_own_positive_power hk)
  · intro hpNot q hq hqp
    have hqeq : q = p :=
      Nat.prime_eq_prime_of_dvd_pow (B.prime_mem q hq) hp hqp
    exact hpNot (hqeq ▸ hq)

private theorem smoothIndicator_prime_pow (B : PrimeBand)
    {p k : ℕ} (hp : p.Prime) :
    smoothIndicator B (p ^ k) =
      if k = 0 then 1 else if p ∈ B.primes then 1 else 0 := by
  by_cases hk : k = 0
  · subst k
    simp [smoothIndicator, bankSmooth_one]
  · have hp0 : p ^ k ≠ 0 := pow_ne_zero _ hp.ne_zero
    simp [smoothIndicator, hp0, hk,
      (bankSmooth_prime_pow_iff B hp hk)]

private theorem roughMobius_one (B : PrimeBand) :
    roughMobius B 1 = 1 := by
  simp [roughMobius, roughIndicator, bankRough_one,
    ArithmeticFunction.moebius_apply_one]

private theorem roughMobius_prime (B : PrimeBand)
    {p : ℕ} (hp : p.Prime) :
    roughMobius B p = if p ∈ B.primes then 0 else -1 := by
  have hiff : bankRough B.primes p ↔ p ∉ B.primes := by
    simpa only [pow_one] using
      (bankRough_prime_pow_iff B hp (by decide : (1 : ℕ) ≠ 0))
  by_cases hpB : p ∈ B.primes
  · have hn : ¬bankRough B.primes p := by
      intro hr
      exact (hiff.mp hr) hpB
    simp [roughMobius, roughIndicator, hp.ne_zero, hpB, hn]
  · have hr : bankRough B.primes p := hiff.mpr hpB
    simp [roughMobius, roughIndicator, hp.ne_zero, hpB, hr,
      ArithmeticFunction.moebius_apply_prime hp]

private theorem roughMobius_prime_pow_ge_two (B : PrimeBand)
    {p k : ℕ} (hp : p.Prime) (hk : 2 ≤ k) :
    roughMobius B (p ^ k) = 0 := by
  have hk0 : k ≠ 0 := by omega
  have hk1 : k ≠ 1 := by omega
  have hm : ArithmeticFunction.moebius (p ^ k) = 0 := by
    rw [ArithmeticFunction.moebius_apply_prime_pow hp hk0]
    simp [hk1]
  simp [roughMobius, hm]

/-- Only the first two prime-power Möbius values can contribute
to the divisor prefix. Every exponent >=2 is exactly zero. -/
private theorem sum_range_of_zero_from_two (f : ℕ → ℤ)
    (hzero : ∀ j : ℕ, 2 ≤ j → f j = 0) (k : ℕ) :
    (∑ j ∈ Finset.range (k + 1), f j) =
      if k = 0 then f 0 else f 0 + f 1 := by
  induction k with
  | zero => simp
  | succ k ih =>
      by_cases hk : k = 0
      · subst k
        simp [Finset.sum_range_succ]
      · have hk2 : 2 ≤ k + 1 := by omega
        rw [Finset.sum_range_succ, hzero _ hk2]
        simpa [hk] using ih

private theorem roughMobius_prime_power_sum (B : PrimeBand)
    {p : ℕ} (hp : p.Prime) (k : ℕ) :
    (∑ j ∈ Finset.range (k + 1), roughMobius B (p ^ j)) =
      smoothIndicator B (p ^ k) := by
  have hsum := sum_range_of_zero_from_two
    (fun j => roughMobius B (p ^ j))
    (fun j hj => roughMobius_prime_pow_ge_two B hp hj) k
  rw [hsum, smoothIndicator_prime_pow B hp]
  have hzero : roughMobius B (p ^ 0) = 1 := by
    simpa only [pow_zero] using roughMobius_one B
  have hone : roughMobius B (p ^ 1) =
      if p ∈ B.primes then 0 else -1 := by
    simpa only [pow_one] using roughMobius_prime B hp
  by_cases hk : k = 0 <;>
    by_cases hpB : p ∈ B.primes <;>
      simp [hk, hpB, hzero, hone]

/-- Smooth indicator equals the divisor sum of original rough Möbius,
checked from the genuine prime powers and multiplicativity.
This identity includes all repeated prime-power and n=1 cases. -/
theorem smoothIndicator_eq_zeta_mul_roughMobius (B : PrimeBand) :
    smoothIndicator B =
      (ζ : ArithmeticFunction ℤ) * roughMobius B := by
  have hmult :
      ArithmeticFunction.IsMultiplicative
        ((ζ : ArithmeticFunction ℤ) * roughMobius B) :=
    (ArithmeticFunction.isMultiplicative_zeta.natCast).mul
      (roughMobius_multiplicative B)
  apply (ArithmeticFunction.IsMultiplicative.eq_iff_eq_on_prime_powers
    (smoothIndicator B) (smoothIndicator_multiplicative B)
    ((ζ : ArithmeticFunction ℤ) * roughMobius B) hmult).2
  intro p k hp
  rw [ArithmeticFunction.coe_zeta_mul_apply,
    Nat.sum_divisors_prime_pow hp]
  exact (roughMobius_prime_power_sum B hp k).symm

/-- The actual pointwise rough Möbius coefficient is precisely
Möbius convolved with the selected-prime-smooth indicator.
No independent arithmetic cancellation hypothesis is present. -/
theorem mobius_mul_smoothIndicator_eq_roughMobius (B : PrimeBand) :
    ArithmeticFunction.moebius * smoothIndicator B = roughMobius B := by
  rw [smoothIndicator_eq_zeta_mul_roughMobius B, ← mul_assoc,
    ArithmeticFunction.moebius_mul_coe_zeta, one_mul]

/-- Exact original divisor expression, with every P-smooth divisor
and the ORIGINAL quotient coefficient mu(n/d).
This statement is valid also at n=0, where both sides vanish. -/
theorem roughMobius_eq_primeSmooth_divisor_sum (B : PrimeBand) (n : ℕ) :
    roughMobius B n =
      ∑ d ∈ n.divisors,
        if bankSmooth B.primes d then ArithmeticFunction.moebius (n / d)
        else 0 := by
  calc
    roughMobius B n =
        (ArithmeticFunction.moebius * smoothIndicator B) n := by
      rw [mobius_mul_smoothIndicator_eq_roughMobius]
    _ = ∑ d ∈ n.divisors,
          if bankSmooth B.primes d then ArithmeticFunction.moebius (n / d)
          else 0 := by
      rw [ArithmeticFunction.mul_apply,
        Nat.sum_divisorsAntidiagonal']
      apply Finset.sum_congr rfl
      intro d hd
      have hd0 : d ≠ 0 := (Nat.pos_of_mem_divisors hd).ne'
      by_cases hs : bankSmooth B.primes d <;>
        simp [smoothIndicator, hd0, hs]

/-- The literal firstSelectedDivisor returns zero exactly when
there is no selected prime divisor. Zero cannot be a selected
prime, so the Nat.find witness is nonzero. -/
theorem firstSelectedDivisor_eq_zero_iff_bankRough
    (B : PrimeBand) (n : ℕ) :
    firstSelectedDivisor B.primes n = 0 ↔
      bankRough B.primes n := by
  by_cases h : ∃ p : ℕ, p ∈ B.primes ∧ p ∣ n
  · have hmem : Nat.find h ∈ B.primes := (Nat.find_spec h).1
    have hne : Nat.find h ≠ 0 := (B.prime_mem _ hmem).ne_zero
    have hnrough : ¬bankRough B.primes n := by
      intro hr
      rcases h with ⟨p, hp, hpn⟩
      exact hr p hp hpn
    simp [firstSelectedDivisor, h, hne, hnrough]
  · have hrough : bankRough B.primes n := by
      intro p hp hpn
      exact h ⟨p, hp, hpn⟩
    simp [firstSelectedDivisor, h, hrough]

/-- Original source coefficient correspondence: the INT arithmetic
function used to calculate divisors casts to the unchanged REAL
taggedMoebius with the same positive natural integer index. -/
theorem roughMobius_cast_eq_original_tag (B : PrimeBand) (n : ℕ) :
    ((roughMobius B n : ℤ) : ℝ) =
      taggedMoebius B.primes true n := by
  by_cases hn0 : n = 0
  · subst n
    simp [roughMobius, taggedMoebius, moebiusReal]
  · have ht := firstSelectedDivisor_eq_zero_iff_bankRough B n
    by_cases hr : bankRough B.primes n
    · have htag : firstSelectedDivisor B.primes n = 0 := ht.mpr hr
      simp [roughMobius, roughIndicator, taggedMoebius,
        hn0, hr, htag, moebiusReal]
    · have htag : firstSelectedDivisor B.primes n ≠ 0 := by
        intro hzero
        exact hr (ht.mp hzero)
      simp [roughMobius, roughIndicator, taggedMoebius,
        hn0, hr, htag, moebiusReal]

private theorem ioc_zero_eq_icc_one (N : ℕ) :
    Finset.Ioc 0 N = Finset.Icc 1 N := by
  ext n
  simp only [Finset.mem_Ioc, Finset.mem_Icc]
  omega

/-- Exact FINITE rough prefix, in the native integer coefficient
ring. Uses the pinned Mathlib sum_Ioc_mul_eq_sum_sum, which keeps
the original quotient N/d and every boundary atom. -/
theorem roughMobius_prefix_eq_primeSmooth_Mertens
    (B : PrimeBand) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, roughMobius B n) =
      ∑ d ∈ Finset.Icc 1 N,
        if bankSmooth B.primes d then
          (∑ k ∈ Finset.Icc 1 (N / d), ArithmeticFunction.moebius k)
        else 0 := by
  have hc := ArithmeticFunction.sum_Ioc_mul_eq_sum_sum
    (smoothIndicator B) ArithmeticFunction.moebius N
  have hcomm : smoothIndicator B * ArithmeticFunction.moebius =
      roughMobius B := by
    rw [mul_comm]
    exact mobius_mul_smoothIndicator_eq_roughMobius B
  rw [hcomm] at hc
  simp only [ioc_zero_eq_icc_one] at hc
  calc
    (∑ n ∈ Finset.Icc 1 N, roughMobius B n) =
      ∑ d ∈ Finset.Icc 1 N,
        smoothIndicator B d *
          (∑ k ∈ Finset.Icc 1 (N / d), ArithmeticFunction.moebius k) :=
      hc
    _ = ∑ d ∈ Finset.Icc 1 N,
          if bankSmooth B.primes d then
            (∑ k ∈ Finset.Icc 1 (N / d), ArithmeticFunction.moebius k)
          else 0 := by
      apply Finset.sum_congr rfl
      intro d hd
      have hd0 : d ≠ 0 := (Finset.mem_Icc.mp hd).1.ne'
      by_cases hs : bankSmooth B.primes d <;>
        simp [smoothIndicator, hd0, hs]

/-- Identical finite identity for the actual ORIGINAL REAL
rough-tagged coefficients. Zero and squareful cases are unchanged. -/
theorem original_rough_prefix_eq_primeSmooth_Mertens
    (B : PrimeBand) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes true n) =
      ∑ d ∈ Finset.Icc 1 N,
        if bankSmooth B.primes d then
          (∑ k ∈ Finset.Icc 1 (N / d), moebiusReal k)
        else 0 := by
  have h := congrArg (fun z : ℤ => (z : ℝ))
    (roughMobius_prefix_eq_primeSmooth_Mertens B N)
  simpa only [Int.cast_sum, Int.cast_ite, Int.cast_zero,
    roughMobius_cast_eq_original_tag, moebiusReal] using h

/-- The original matched prefix is the complete ORIGINAL Möbius
prefix minus the exact selected-prime-smooth rough prefix. -/
theorem original_matched_prefix_eq_total_sub_primeSmooth
    (B : PrimeBand) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes false n) =
      (∑ n ∈ Finset.Icc 1 N, moebiusReal n) -
        ∑ d ∈ Finset.Icc 1 N,
          if bankSmooth B.primes d then
            (∑ k ∈ Finset.Icc 1 (N / d), moebiusReal k)
          else 0 := by
  calc
    (∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes false n) =
        (∑ n ∈ Finset.Icc 1 N, moebiusReal n) -
          ∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes true n := by
      rw [← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro n hn
      have ht := taggedMoebius_sum B.primes n
      linarith
    _ = _ := by
      rw [original_rough_prefix_eq_primeSmooth_Mertens B N]

end GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
