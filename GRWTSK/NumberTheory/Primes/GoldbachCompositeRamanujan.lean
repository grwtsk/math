/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.Primorial
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Composite Ramanujan sums for the Goldbach progression model

This module identifies the finite reduced-residue phase sum already used by
the Goldbach progression model with the classical integer Ramanujan sum.

For positive `q`, the integer source is written in the divisor form

`c_q(N) = sum_{d | gcd(q,N)} d * μ(q/d)`.

The same source is packaged as a multiplicative arithmetic function of the
modulus.  For a numerator coprime to the modulus, the reduced phase sum is
exactly `μ(q)`.  These are finite identities; no prime-distribution estimate,
infinite singular series, or Goldbach theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan

open scoped BigOperators Real ArithmeticFunction.Moebius
open Finset Nat
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge

noncomputable section

/-- The multiplicative divisor weight `d` when `d ∣ N`, and zero otherwise. -/
def goldbachRamanujanDivisorWeight
    (N : ℕ) : ArithmeticFunction ℤ :=
  ⟨fun d => if d ∣ N then (d : ℤ) else 0, by simp⟩

@[simp]
theorem goldbachRamanujanDivisorWeight_apply
    (N d : ℕ) :
    goldbachRamanujanDivisorWeight N d =
      if d ∣ N then (d : ℤ) else 0 := by
  rfl

/-- The fixed-target divisor weight is multiplicative in the modulus. -/
theorem isMultiplicative_goldbachRamanujanDivisorWeight
    (N : ℕ) :
    (goldbachRamanujanDivisorWeight N).IsMultiplicative := by
  rw [ArithmeticFunction.IsMultiplicative.iff_ne_zero]
  refine ⟨by simp [goldbachRamanujanDivisorWeight], ?_⟩
  intro a b ha hb hab
  simp only [goldbachRamanujanDivisorWeight,
    ArithmeticFunction.coe_mk]
  by_cases haN : a ∣ N
  · by_cases hbN : b ∣ N
    · have habN : a * b ∣ N :=
        hab.mul_dvd_of_dvd_of_dvd haN hbN
      rw [if_pos haN, if_pos hbN, if_pos habN]
      push_cast
      ring
    · have habN : ¬ a * b ∣ N := by
        intro h
        exact hbN (dvd_trans (dvd_mul_left b a) h)
      rw [if_pos haN, if_neg hbN, if_neg habN,
        mul_zero]
  · have habN : ¬ a * b ∣ N := by
      intro h
      exact haN (dvd_trans (dvd_mul_right a b) h)
    rw [if_neg haN, if_neg habN, zero_mul]

/-- The Ramanujan source as a Dirichlet convolution `μ * (d 1_{d|N})`. -/
def goldbachRamanujanArithmeticFunction
    (N : ℕ) : ArithmeticFunction ℤ :=
  (ArithmeticFunction.moebius : ArithmeticFunction ℤ) *
    goldbachRamanujanDivisorWeight N

/-- Integer-valued Ramanujan sum at modulus `q` and target `N`. -/
def goldbachRamanujanInteger
    (q N : ℕ) : ℤ :=
  goldbachRamanujanArithmeticFunction N q

/-- The Ramanujan arithmetic function is multiplicative in the modulus. -/
theorem isMultiplicative_goldbachRamanujanArithmeticFunction
    (N : ℕ) :
    (goldbachRamanujanArithmeticFunction N).IsMultiplicative := by
  unfold goldbachRamanujanArithmeticFunction
  exact ArithmeticFunction.isMultiplicative_moebius.mul
    (isMultiplicative_goldbachRamanujanDivisorWeight N)

/-- Convolution form over divisors of the modulus. -/
theorem goldbachRamanujanInteger_eq_sum_divisors
    {q N : ℕ} (hq : q ≠ 0) :
    goldbachRamanujanInteger q N =
      ∑ d ∈ q.divisors,
        if d ∣ N then
          (d : ℤ) * ArithmeticFunction.moebius (q / d)
        else 0 := by
  classical
  unfold goldbachRamanujanInteger
    goldbachRamanujanArithmeticFunction
  rw [ArithmeticFunction.mul_apply]
  apply Finset.sum_bij
    (fun xy hxy => xy.2)
  · intro xy hxy
    have hprod : xy.1 * xy.2 = q :=
      (mem_divisorsAntidiagonal.mp hxy)
    exact mem_divisors.mpr
      ⟨hq, ⟨xy.1, by simpa [mul_comm] using hprod.symm⟩⟩
  · intro xy hxy
    have hprod : xy.1 * xy.2 = q :=
      mem_divisorsAntidiagonal.mp hxy
    simp only [goldbachRamanujanDivisorWeight_apply]
    by_cases hdN : xy.2 ∣ N
    · rw [if_pos hdN, if_pos hdN]
      have hdiv : q / xy.2 = xy.1 := by
        exact Nat.div_eq_of_eq_mul_left
          (pos_of_mem_divisorsAntidiagonal hxy).2 hprod.symm
      rw [hdiv]
      ring
    · rw [if_neg hdN, if_neg hdN, mul_zero]
  · intro x hx y hy hxy
    have hxprod : x.1 * x.2 = q :=
      mem_divisorsAntidiagonal.mp hx
    have hyprod : y.1 * y.2 = q :=
      mem_divisorsAntidiagonal.mp hy
    apply Prod.ext
    · rw [← Nat.mul_left_cancel_iff_of_pos
        (pos_of_mem_divisorsAntidiagonal hx).2]
      simpa [hxy, hxprod, hyprod]
    · exact hxy
  · intro d hd
    have hdq : d ∣ q := (mem_divisors.mp hd).2
    refine ⟨(q / d, d), ?_, rfl⟩
    exact mem_divisorsAntidiagonal.mpr
      (Nat.div_mul_cancel hdq)
  · intro xy hxy
    rfl

/-- Classical divisor formula using divisors of `gcd(q,N)`. -/
theorem goldbachRamanujanInteger_eq_gcd_divisorSum
    {q N : ℕ} (hq : 0 < q) :
    goldbachRamanujanInteger q N =
      ∑ d ∈ (Nat.gcd q N).divisors,
        (d : ℤ) * ArithmeticFunction.moebius (q / d) := by
  classical
  rw [goldbachRamanujanInteger_eq_sum_divisors hq.ne']
  apply Finset.sum_subset
  · intro d hd
    have hdg : d ∣ Nat.gcd q N :=
      (mem_divisors.mp hd).2
    have hdq : d ∣ q :=
      dvd_trans hdg (gcd_dvd_left q N)
    have hdN : d ∣ N :=
      dvd_trans hdg (gcd_dvd_right q N)
    exact mem_divisors.mpr
      ⟨hq.ne', hdq⟩
  · intro d hdq hdnot
    by_cases hdN : d ∣ N
    · exfalso
      apply hdnot
      exact mem_divisors.mpr
        ⟨Nat.gcd_pos_of_pos_left N hq,
          dvd_gcd (mem_divisors.mp hdq).2 hdN⟩
    · simp [hdN]

/-- On a coprime target, the Ramanujan integer is the Möbius value. -/
theorem goldbachRamanujanInteger_of_coprime
    {q N : ℕ} (hq : 0 < q)
    (hcop : q.Coprime N) :
    goldbachRamanujanInteger q N =
      ArithmeticFunction.moebius q := by
  rw [goldbachRamanujanInteger_eq_gcd_divisorSum hq,
    hcop.gcd_eq_one]
  simp

/-- Prime-modulus Ramanujan sum. -/
theorem goldbachRamanujanInteger_prime
    {p N : ℕ} (hp : p.Prime) :
    goldbachRamanujanInteger p N =
      if p ∣ N then (p : ℤ) - 1 else -1 := by
  by_cases hdiv : p ∣ N
  · have hgcd : Nat.gcd p N = p :=
      Nat.gcd_eq_left_iff_dvd.mpr hdiv
    rw [goldbachRamanujanInteger_eq_gcd_divisorSum hp.pos,
      hgcd, if_pos hdiv]
    simp [hp.divisors, ArithmeticFunction.moebius_apply_prime hp]
  · have hcop : p.Coprime N :=
      (hp.coprime_iff_not_dvd).2 hdiv
    rw [goldbachRamanujanInteger_of_coprime hp.pos hcop,
      ArithmeticFunction.moebius_apply_prime hp,
      if_neg hdiv]

/-- Multiplicativity of the integer Ramanujan source in coprime moduli. -/
theorem goldbachRamanujanInteger_mul_of_coprime
    {q r N : ℕ}
    (hq : q ≠ 0) (hr : r ≠ 0)
    (hqr : q.Coprime r) :
    goldbachRamanujanInteger (q * r) N =
      goldbachRamanujanInteger q N *
        goldbachRamanujanInteger r N := by
  exact
    (isMultiplicative_goldbachRamanujanArithmeticFunction N).map_mul_of_coprime
      hqr hq hr

/-- Divisor reflection `d ↦ q / d` is an involution on positive divisors. -/
theorem goldbachDivisorReflection
    {q d : ℕ} (hq : 0 < q)
    (hd : d ∈ q.divisors) :
    q / d ∈ q.divisors ∧ q / (q / d) = d := by
  have hd0 : 0 < d := pos_of_mem_divisors hd
  rcases (mem_divisors.mp hd).2 with ⟨k, rfl⟩
  have hk0 : 0 < k := by
    by_contra hk
    have hkz : k = 0 := Nat.eq_zero_of_not_pos hk
    subst k
    simp at hq
  constructor
  · apply mem_divisors.mpr
    constructor
    · exact (mul_pos hd0 hk0).ne'
    · refine ⟨d, ?_⟩
      simp [hd0.ne', mul_comm]
  · simp [hd0.ne', hk0.ne', mul_comm]

/-- Möbius divisor indicator for coprimality. -/
def goldbachMoebiusCoprimeIndicator
    (q a : ℕ) : ℤ :=
  ∑ d ∈ (Nat.gcd q a).divisors,
    ArithmeticFunction.moebius d

/-- The Möbius divisor indicator is one exactly on reduced residues. -/
theorem goldbachMoebiusCoprimeIndicator_eq
    {q a : ℕ} (hq : 0 < q) :
    goldbachMoebiusCoprimeIndicator q a =
      if q.Coprime a then 1 else 0 := by
  classical
  have hgcd : 0 < Nat.gcd q a :=
    Nat.gcd_pos_of_pos_left a hq
  have hconv := congrArg
    (fun f : ArithmeticFunction ℤ => f (Nat.gcd q a))
    ArithmeticFunction.coe_zeta_mul_moebius
  unfold goldbachMoebiusCoprimeIndicator
  rw [ArithmeticFunction.one_apply] at hconv
  simpa [ArithmeticFunction.mul_apply,
    sum_divisorsAntidiagonal,
    Nat.coprime_iff_gcd_eq_one, hgcd.ne'] using hconv

/-- Multiples of one positive divisor in a complete residue interval are
reindexed by the quotient modulus. -/
theorem goldbachMultiplePhaseFiber
    {q d N : ℕ} (hq : 0 < q)
    (hd : d ∈ q.divisors) :
    (∑ a ∈ Finset.range q with d ∣ a,
        unitCharacter (N : ℤ)
          (goldbachRationalArcCenter a q)) =
      goldbachFullIntegerPhaseSum (q / d) (N : ℤ) := by
  classical
  have hd0 : 0 < d := pos_of_mem_divisors hd
  have hdq : d ∣ q := (mem_divisors.mp hd).2
  unfold goldbachFullIntegerPhaseSum
  apply Finset.sum_bij
    (fun a ha => a / d)
  · intro a ha
    have ha0 : a < q := mem_range.mp (mem_filter.mp ha).1
    have hda : d ∣ a := (mem_filter.mp ha).2
    rw [mem_range]
    exact (Nat.div_lt_div_iff_of_pos_right hd0).2
      (by simpa [Nat.div_mul_cancel hdq,
        Nat.div_mul_cancel hda] using ha0)
  · intro a ha
    have hda : d ∣ a := (mem_filter.mp ha).2
    have hcenter :
        goldbachRationalArcCenter a q =
          goldbachRationalArcCenter (a / d) (q / d) := by
      unfold goldbachRationalArcCenter
      rw [← Nat.cast_div hda, ← Nat.cast_div hdq]
      field_simp
      ring
    rw [hcenter]
  · intro a₁ h₁ a₂ h₂ hdiv
    have hd₁ : d ∣ a₁ := (mem_filter.mp h₁).2
    have hd₂ : d ∣ a₂ := (mem_filter.mp h₂).2
    exact Nat.eq_of_div_eq_div_left hd₁ hd₂ hdiv
  · intro b hb
    refine ⟨d * b, ?_, ?_⟩
    · rw [mem_filter, mem_range]
      constructor
      · have hbq : b < q / d := mem_range.mp hb
        simpa [Nat.div_mul_cancel hdq, mul_comm] using
          Nat.mul_lt_mul_left d hbq
      · exact dvd_mul_right d b
    · rw [Nat.mul_div_cancel_left]
  · intro a ha
    rfl

/-- Correct finite Möbius expansion of the reduced phase sum. -/
theorem goldbachReducedIntegerPhaseSum_eq_moebiusExpansion
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (N : ℤ) =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius (q / d) : ℂ) *
          (if d ∣ N then (d : ℂ) else 0) := by
  classical
  unfold goldbachReducedIntegerPhaseSum
    goldbachCoprimeResidues
  rw [← Finset.sum_filter]
  calc
    (∑ a ∈ Finset.range q,
        if q.Coprime a then
          unitCharacter (N : ℤ)
            (goldbachRationalArcCenter a q)
        else 0) =
      ∑ a ∈ Finset.range q,
        (goldbachMoebiusCoprimeIndicator q a : ℂ) *
          unitCharacter (N : ℤ)
            (goldbachRationalArcCenter a q) := by
              apply Finset.sum_congr rfl
              intro a ha
              rw [goldbachMoebiusCoprimeIndicator_eq hq]
              by_cases hcop : q.Coprime a
              · rw [if_pos hcop]
                simp
              · rw [if_neg hcop]
                simp
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          (∑ a ∈ Finset.range q with d ∣ a,
            unitCharacter (N : ℤ)
              (goldbachRationalArcCenter a q)) := by
              unfold goldbachMoebiusCoprimeIndicator
              simp_rw [Nat.mem_divisors,
                dvd_gcd_iff, and_assoc]
              rw [Finset.sum_comm]
              apply Finset.sum_congr rfl
              intro d hd
              rw [Finset.mul_sum]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          goldbachFullIntegerPhaseSum (q / d) (N : ℤ) := by
              apply Finset.sum_congr rfl
              intro d hd
              rw [goldbachMultiplePhaseFiber hq hd]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          (if q / d ∣ N then ((q / d : ℕ) : ℂ) else 0) := by
              apply Finset.sum_congr rfl
              intro d hd
              have hquot0 : 0 < q / d :=
                Nat.div_pos (Nat.le_of_dvd hq
                  (mem_divisors.mp hd).2)
              letI : NeZero (q / d) := ⟨hquot0.ne'⟩
              rw [goldbachFullIntegerPhaseSum_formula]
              have hzero :
                  ((N : ℤ) : ZMod (q / d)) = 0 ↔
                    q / d ∣ N := by
                simpa using
                  ZMod.natCast_eq_zero_iff N (q / d)
              by_cases hdiv : q / d ∣ N
              · rw [if_pos (hzero.2 hdiv), if_pos hdiv]
              · rw [if_neg (fun hz => hdiv (hzero.1 hz)),
                  if_neg hdiv, mul_zero]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius (q / d) : ℂ) *
          (if d ∣ N then (d : ℂ) else 0) := by
-- Reflect the divisor set by the involution `d ↦ q / d`.
apply Finset.sum_bij
  (fun d hd => q / d)
· intro d hd
  exact (goldbachDivisorReflection hq hd).1
· intro d hd
  have hdd : q / (q / d) = d :=
    (goldbachDivisorReflection hq hd).2
  rw [hdd]
  by_cases hdN : d ∣ N
  · rw [if_pos hdN, if_pos hdN]
    ring
  · rw [if_neg hdN, if_neg hdN]
    simp
· intro d₁ h₁ d₂ h₂ hdiv
  calc
    d₁ = q / (q / d₁) :=
      (goldbachDivisorReflection hq h₁).2.symm
    _ = q / (q / d₂) := by rw [hdiv]
    _ = d₂ :=
      (goldbachDivisorReflection hq h₂).2
· intro d hd
  refine ⟨q / d,
    (goldbachDivisorReflection hq hd).1, ?_⟩
  exact (goldbachDivisorReflection hq hd).2
· intro d hd
  rfl

/-- The reduced-residue phase sum is exactly the integer Ramanujan sum. -/
theorem goldbachReducedIntegerPhaseSum_eq_ramanujanInteger
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (N : ℤ) =
      (goldbachRamanujanInteger q N : ℂ) := by
  rw [goldbachReducedIntegerPhaseSum_eq_moebiusExpansion hq,
    goldbachRamanujanInteger_eq_sum_divisors hq.ne']
  apply Finset.sum_congr rfl
  intro d hd
  by_cases hdN : d ∣ N
  · rw [if_pos hdN, if_pos hdN]
    push_cast
    ring
  · rw [if_neg hdN, if_neg hdN]
    simp

/-- The reduced phase sum is even in its integer frequency. -/
theorem goldbachReducedIntegerPhaseSum_neg_nat
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (-(N : ℤ)) =
      goldbachReducedIntegerPhaseSum q (N : ℤ) := by
  rw [goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq]
  unfold goldbachReducedIntegerPhaseSum
  calc
    (∑ a ∈ goldbachCoprimeResidues q,
        unitCharacter (-(N : ℤ))
          (goldbachRationalArcCenter a q)) =
      starRingEnd ℂ
        (∑ a ∈ goldbachCoprimeResidues q,
          unitCharacter (N : ℤ)
            (goldbachRationalArcCenter a q)) := by
              rw [map_sum, map_sum]
              apply Finset.sum_congr rfl
              intro a ha
              simp [unitCharacter, fourier_neg]
    _ = starRingEnd ℂ (goldbachRamanujanInteger q N : ℂ) := by
      rw [goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq]
    _ = (goldbachRamanujanInteger q N : ℂ) := by
      simp

/-- Negative-target specialization used by the Goldbach denominator
coefficient. -/
theorem goldbachReducedIntegerPhaseSum_neg_target_eq_ramanujanInteger
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (-(N : ℤ)) =
      (goldbachRamanujanInteger q N : ℂ) := by
  rw [goldbachReducedIntegerPhaseSum_neg_nat hq,
    goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq]

/-- For every reduced numerator, the normalized coefficient is
`μ(q) / φ(q)`. -/
theorem goldbachNormalizedRamanujanCoefficient_of_coprime
    {q a : ℕ} (hq : 0 < q)
    (ha : q.Coprime a) :
    goldbachNormalizedRamanujanCoefficient a q =
      (ArithmeticFunction.moebius q : ℂ) /
        (Nat.totient q : ℂ) := by
  unfold goldbachNormalizedRamanujanCoefficient
  rw [goldbachCoprimePhaseSum_eq_reducedIntegerPhaseSum,
    goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq,
    goldbachRamanujanInteger_of_coprime hq ha]
  ring

end
end GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan
