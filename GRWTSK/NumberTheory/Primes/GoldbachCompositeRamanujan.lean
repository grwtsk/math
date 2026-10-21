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
    · rw [if_pos hdN]
      congr 2
      exact Nat.eq_div_of_mul_eq_right
        (pos_of_mem_divisorsAntidiagonal hxy).2 hprod
    · rw [if_neg hdN, mul_zero]
  · intro xy₁ h₁ xy₂ h₂ heq
    have hp₁ := mem_divisorsAntidiagonal.mp h₁
    have hp₂ := mem_divisorsAntidiagonal.mp h₂
    apply Prod.ext
    · calc
        xy₁.1 = q / xy₁.2 := by
          exact Nat.eq_div_of_mul_eq_right
            (pos_of_mem_divisorsAntidiagonal h₁).2 hp₁
        _ = q / xy₂.2 := by rw [heq]
        _ = xy₂.1 := by
          symm
          exact Nat.eq_div_of_mul_eq_right
            (pos_of_mem_divisorsAntidiagonal h₂).2 hp₂
    · exact heq
  · intro d hd
    have hdq := (mem_divisors.mp hd).2
    refine ⟨(q / d, d), ?_, rfl⟩
    exact mem_divisorsAntidiagonal.mpr
      (Nat.div_mul_cancel hdq)

/-- Classical gcd-divisor formula for the integer Ramanujan sum. -/
theorem goldbachRamanujanInteger_eq_gcd_divisorSum
    {q N : ℕ} (hq : q ≠ 0) :
    goldbachRamanujanInteger q N =
      ∑ d ∈ (q.gcd N).divisors,
        (d : ℤ) * ArithmeticFunction.moebius (q / d) := by
  rw [goldbachRamanujanInteger_eq_sum_divisors hq]
  apply Finset.sum_subset
  · intro d hd
    have hdq := (mem_divisors.mp hd).2
    have hdN :=
      (mem_divisors.mp
        (show d ∈ (q.gcd N).divisors from hd)).2
    exact mem_divisors.mpr
      ⟨hq, dvd_trans hdN (gcd_dvd_left q N)⟩
  · intro d hdq hnot
    by_cases hdN : d ∣ N
    · exfalso
      apply hnot
      apply mem_divisors.mpr
      refine ⟨gcd_ne_zero_left hq, dvd_gcd ?_ hdN⟩
      exact (mem_divisors.mp hdq).2
    · simp [hdN]

/-- Coprime target and modulus leave only the Möbius value. -/
theorem goldbachRamanujanInteger_of_coprime
    {q N : ℕ} (hq : q ≠ 0)
    (hcop : q.Coprime N) :
    goldbachRamanujanInteger q N =
      ArithmeticFunction.moebius q := by
  rw [goldbachRamanujanInteger_eq_gcd_divisorSum hq,
    hcop.gcd_eq_one]
  simp

/-- Prime-modulus specialization of the general Ramanujan formula. -/
theorem goldbachRamanujanInteger_prime
    {p N : ℕ} (hp : p.Prime) :
    goldbachRamanujanInteger p N =
      if p ∣ N then (p - 1 : ℤ) else -1 := by
  by_cases hdiv : p ∣ N
  · rw [if_pos hdiv]
    have hgcd : p.gcd N = p := gcd_eq_left_iff_dvd.mpr hdiv
    rw [goldbachRamanujanInteger_eq_gcd_divisorSum hp.ne_zero,
      hgcd, divisors_prime hp]
    simp [ArithmeticFunction.moebius_apply_prime hp]
  · rw [if_neg hdiv]
    have hcop : p.Coprime N :=
      (hp.coprime_iff_not_dvd).2 hdiv
    rw [goldbachRamanujanInteger_of_coprime hp.ne_zero hcop,
      ArithmeticFunction.moebius_apply_prime hp]

/-- Multiplicativity in coprime positive moduli. -/
theorem goldbachRamanujanInteger_mul_of_coprime
    {a b N : ℕ} (ha : a ≠ 0) (hb : b ≠ 0)
    (hab : a.Coprime b) :
    goldbachRamanujanInteger (a * b) N =
      goldbachRamanujanInteger a N *
        goldbachRamanujanInteger b N := by
  exact (isMultiplicative_goldbachRamanujanArithmeticFunction N).map_mul_of_coprime hab

/-- Reflection of a divisor across a positive modulus. -/
def goldbachDivisorReflection
    (q d : ℕ) : ℕ := q / d

/-- Möbius inclusion-exclusion coefficient for coprimality. -/
def goldbachMoebiusCoprimeIndicator
    (q a : ℕ) : ℤ :=
  ∑ d ∈ q.divisors,
    if d ∣ a then ArithmeticFunction.moebius d else 0

/-- Möbius inclusion-exclusion is the exact coprimality indicator. -/
theorem goldbachMoebiusCoprimeIndicator_eq
    {q a : ℕ} (hq : q ≠ 0) :
    goldbachMoebiusCoprimeIndicator q a =
      if q.Coprime a then 1 else 0 := by
  unfold goldbachMoebiusCoprimeIndicator
  have hrewrite :
      (∑ d ∈ q.divisors,
        if d ∣ a then ArithmeticFunction.moebius d else 0) =
      ∑ d ∈ (q.gcd a).divisors,
        ArithmeticFunction.moebius d := by
    apply Finset.sum_subset
    · intro d hd
      exact mem_divisors.mpr
        ⟨hq, dvd_trans (mem_divisors.mp hd).2
          (gcd_dvd_left q a)⟩
    · intro d hdq hnot
      by_cases hda : d ∣ a
      · exfalso
        apply hnot
        exact mem_divisors.mpr
          ⟨gcd_ne_zero_left hq,
            dvd_gcd (mem_divisors.mp hdq).2 hda⟩
      · simp [hda]
  rw [hrewrite]
  have hconv := congrArg (fun f : ArithmeticFunction ℤ => f (q.gcd a))
    ArithmeticFunction.moebius_mul_coe_zeta
  simp only [ArithmeticFunction.mul_apply,
    ArithmeticFunction.one_apply] at hconv
  rw [ArithmeticFunction.sum_divisorsAntidiagonal'] at hconv
  by_cases hcop : q.Coprime a
  · rw [if_pos hcop, hcop.gcd_eq_one]
    simp
  · rw [if_neg hcop]
    have hgcd_ne_one : q.gcd a ≠ 1 := by
      intro h
      exact hcop (coprime_iff_gcd_eq_one.mpr h)
    simpa [hgcd_ne_one] using hconv

/-- Multiples of `d` in the complete residue interval. -/
def goldbachMultiplePhaseFiber
    (q d : ℕ) : Finset ℕ :=
  (Finset.range q).filter (fun a => d ∣ a)

/-- Reduced-residue phase sum expanded by Möbius inclusion-exclusion. -/
theorem goldbachReducedIntegerPhaseSum_eq_moebiusExpansion
    {q : ℕ} (hq : 0 < q) (m : ℤ) :
    goldbachReducedIntegerPhaseSum q m =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          goldbachFullIntegerPhaseSum (q / d) m := by
  classical
  unfold goldbachReducedIntegerPhaseSum
    goldbachCoprimeResidues
  calc
    (∑ a ∈ Finset.range q with q.Coprime a,
        unitCharacter m (goldbachRationalArcCenter a q)) =
      ∑ a ∈ Finset.range q,
        (goldbachMoebiusCoprimeIndicator q a : ℂ) *
          unitCharacter m (goldbachRationalArcCenter a q) := by
            apply Finset.sum_congr rfl
            intro a ha
            rw [goldbachMoebiusCoprimeIndicator_eq hq.ne']
            by_cases hcop : q.Coprime a <;>
              simp [hcop]
    _ =
      ∑ a ∈ Finset.range q,
        (∑ d ∈ q.divisors,
          if d ∣ a then
            (ArithmeticFunction.moebius d : ℂ)
          else 0) *
          unitCharacter m (goldbachRationalArcCenter a q) := by
            apply Finset.sum_congr rfl
            intro a ha
            unfold goldbachMoebiusCoprimeIndicator
            push_cast
            rfl
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          (∑ a ∈ goldbachMultiplePhaseFiber q d,
            unitCharacter m
              (goldbachRationalArcCenter a q)) := by
            simp_rw [Finset.sum_mul]
            rw [Finset.sum_comm]
            apply Finset.sum_congr rfl
            intro d hd
            rw [Finset.mul_sum]
            apply congrArg
              (fun z : ℂ =>
                (ArithmeticFunction.moebius d : ℂ) * z)
            unfold goldbachMultiplePhaseFiber
            rw [Finset.sum_filter]
            apply Finset.sum_congr rfl
            intro a ha
            by_cases hda : d ∣ a <;>
              simp [hda]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          goldbachFullIntegerPhaseSum (q / d) m := by
            apply Finset.sum_congr rfl
            intro d hd
            apply congrArg
              (fun z : ℂ =>
                (ArithmeticFunction.moebius d : ℂ) * z)
            have hdq : d ∣ q :=
              (mem_divisors.mp hd).2
            unfold goldbachMultiplePhaseFiber
              goldbachFullIntegerPhaseSum
            apply Finset.sum_bij
              (fun a ha => a / d)
            · intro a ha
              have haq : a < q :=
                Finset.mem_range.mp (Finset.mem_filter.mp ha).1
              have hda : d ∣ a :=
                (Finset.mem_filter.mp ha).2
              rw [Finset.mem_range]
              exact Nat.div_lt_div_right
                (pos_of_mem_divisors hd) haq
            · intro a ha
              have hda : d ∣ a :=
                (Finset.mem_filter.mp ha).2
              have hqd : q / d ≠ 0 :=
                Nat.div_pos (Nat.le_of_dvd (by omega) hdq) |>.ne'
              have hqR : (q : ℝ) ≠ 0 := by exact_mod_cast hq.ne'
              have hdR : (d : ℝ) ≠ 0 := by
                exact_mod_cast (pos_of_mem_divisors hd).ne'
              simp only [goldbachRationalArcCenter]
              rw [Nat.div_eq_of_lt_le] <;> try omega
              congr 1
              push_cast
              field_simp [hqR, hdR]
              exact Nat.div_mul_cancel hda
            · intro a₁ h₁ a₂ h₂ heq
              have hd₁ : d ∣ a₁ :=
                (Finset.mem_filter.mp h₁).2
              have hd₂ : d ∣ a₂ :=
                (Finset.mem_filter.mp h₂).2
              exact Nat.eq_of_div_eq_div_right hd₁ hd₂ heq
            · intro b hb
              refine ⟨b * d, ?_, by simp [Nat.mul_div_cancel_left]⟩
              rw [Finset.mem_filter, Finset.mem_range]
              refine ⟨?_, dvd_mul_left d b⟩
              have hbq : b < q / d := Finset.mem_range.mp hb
              exact (Nat.mul_lt_mul_right (pos_of_mem_divisors hd)).mp
                (by simpa [Nat.div_mul_cancel hdq, mul_comm] using
                  Nat.mul_lt_mul_right (pos_of_mem_divisors hd) hbq)

/-- The reduced phase sum is the integer Ramanujan sum. -/
theorem goldbachReducedIntegerPhaseSum_eq_ramanujanInteger
    {q : ℕ} (hq : 0 < q) (m : ℤ) :
    goldbachReducedIntegerPhaseSum q m =
      (goldbachRamanujanInteger q m.natAbs : ℂ) := by
  rw [goldbachReducedIntegerPhaseSum_eq_moebiusExpansion hq]
  have hqNZ : q ≠ 0 := hq.ne'
  rw [goldbachRamanujanInteger_eq_sum_divisors hqNZ]
  apply Finset.sum_congr rfl
  intro d hd
  letI : NeZero (q / d) :=
    ⟨Nat.div_ne_of_lt (Nat.lt_of_lt_of_le zero_lt_one
      (Nat.le_of_dvd hq hd |> Nat.le_trans))⟩
  rw [goldbachFullIntegerPhaseSum_formula]
  have hzero :
      (m : ZMod (q / d)) = 0 ↔ q / d ∣ m.natAbs := by
    rw [← ZMod.intCast_eq_zero_iff]
    simp
  by_cases hdiv : q / d ∣ m.natAbs
  · rw [if_pos (hzero.2 hdiv), if_pos hdiv]
    have hcast :
        ((q / d : ℕ) : ℂ) =
          (q / d : ℤ) := by norm_num
    push_cast
    ring
  · rw [if_neg (fun h => hdiv (hzero.1 h)), if_neg hdiv]
    ring

/-- Ramanujan sums are even in the integer target. -/
theorem goldbachReducedIntegerPhaseSum_neg_nat
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (-(N : ℤ)) =
      goldbachReducedIntegerPhaseSum q (N : ℤ) := by
  rw [goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq,
    goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq]
  simp

/-- Negative Goldbach target phase equals the integer Ramanujan source. -/
theorem goldbachReducedIntegerPhaseSum_neg_target_eq_ramanujanInteger
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (-(N : ℤ)) =
      (goldbachRamanujanInteger q N : ℂ) := by
  rw [goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq]
  simp

/-- Coprime numerator gives the Möbius value after totient normalization. -/
theorem goldbachNormalizedRamanujanCoefficient_of_coprime
    {q a : ℕ} (hq : 0 < q)
    (hcop : q.Coprime a) :
    goldbachNormalizedRamanujanCoefficient a q =
      (((ArithmeticFunction.moebius q : ℤ) : ℂ) /
        (Nat.totient q : ℂ)) := by
  unfold goldbachNormalizedRamanujanCoefficient
  rw [goldbachCoprimePhaseSum_eq_reducedIntegerPhaseSum,
    goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq,
    goldbachRamanujanInteger_of_coprime hq.ne' hcop]
  ring

end
end GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan
