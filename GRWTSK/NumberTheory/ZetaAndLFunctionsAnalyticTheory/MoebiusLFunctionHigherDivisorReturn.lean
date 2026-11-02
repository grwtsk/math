/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionHermitianSieveClosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionComplexGramClosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLowGcdSieveTargetClosures
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The complete higher-divisor Hermitian signed energy is an ORIGINAL
# FULL high-gcd Gram with opposite sign

The universal classical gcd sieve c_D(d) satisfies
  c_D(1)=1; c_D(d)=0 for 2<=d<=D; D>=1.
The preceding complex Hermitian family sieve proof candidate has
  FullLow_(F,D)(T) = sum_(d<=N)c_D(d)*E_(F,d)(T).
The unrestricted full Hermitian family Gram is E_(F,1)(T),
which includes the true diagonal. The complement of the full
low-gcd Gram is the FULL original gcd>D Hermitian packet.

Consequently, for ALL normalized coefficient families and
D>=1,T>=0, the exact identity is
  sum_(D<d<=N)c_D(d)*E_(F,d)(T) =
    - familyHighGcdFullGram(F,D,T).
This is finite arithmetic and source-specific complex integral
algebra; no signed cancellation, no Euler source and no RH/GRH.

The FULL high-gcd source includes indices m=n>D. It must NOT
be replaced by the previous offdiagonal familyHighGcdCross,
even if the original real zeta source had a small diagonal.

For actual Dirichlet χ, the positive divisor cover for the
original causal K_T and |mu(n)chi(n)|<=1 ALSO pays this FULL
high-gcd sum (the cover itself counts all diagonals).
The inherited positive divisor cover source is a Lean PROOF
CANDIDATE until freshly compiled with its dependencies.

All declarations in this file remain SOURCE PROOF CANDIDATES;
compiler, expected types, kernel replay and axiom audit NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionHigherDivisorReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge
open GRWTSK.NumberTheory.Moebius.LFunctionComplexGramClosure
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianSieveClosure
open GRWTSK.NumberTheory.Moebius.LowGcdSieveSquareEnergy
open GRWTSK.NumberTheory.Moebius.LowGcdSieveTargetClosures

classical

private theorem sum_re (S : Finset ℕ) (f : ℕ → ℂ) :
    (∑ n ∈ S, f n).re = ∑ n ∈ S, (f n).re := by
  induction S using Finset.induction_on with
  | empty => simp
  | @insert n S hn ih =>
      simp only [Finset.sum_insert hn, Complex.add_re, ih]

private theorem sum_sum_re (S : Finset ℕ) (f : ℕ → ℕ → ℂ) :
    (∑ m ∈ S, ∑ n ∈ S, f m n).re =
      ∑ m ∈ S, ∑ n ∈ S, (f m n).re := by
  rw [sum_re]
  apply Finset.sum_congr rfl
  intro m hm
  exact sum_re S _

/-- The FULL family Hermitian Gram (including all diagonals)
is exactly the low-gcd FULL plus the high-gcd FULL packet. -/
theorem familyFullGram_eq_lowGcdFull_add_high
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) :
    (familyFullGram F T).re =
      familyLowGcdFullGram F D T +
        familyHighGcdFullGram F D T := by
  let S : Finset ℕ := endpointIndex T
  have hpart :
      (∑ m ∈ S, ∑ n ∈ S,
        familyHermitianKernel F T m n) =
      (∑ m ∈ S, ∑ n ∈ S,
        if Nat.gcd m n ≤ D
        then familyHermitianKernel F T m n else 0) +
      (∑ m ∈ S, ∑ n ∈ S,
        if D < Nat.gcd m n
        then familyHermitianKernel F T m n else 0) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro m hm
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    by_cases h : Nat.gcd m n ≤ D
    · have hn : ¬ D < Nat.gcd m n := not_lt.mpr h
      simp [h, hn]
    · have hgt : D < Nat.gcd m n := lt_of_not_ge h
      simp [h, hgt]
  have hr := congrArg Complex.re hpart
  unfold familyFullGram familyHighGcdFullGram
  rw [Complex.add_re] at hr
  have hl :
      (∑ m ∈ S, ∑ n ∈ S,
        if Nat.gcd m n ≤ D
        then familyHermitianKernel F T m n else 0).re =
        familyLowGcdFullGram F D T := by
    unfold familyLowGcdFullGram
    rw [sum_sum_re]
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    split_ifs <;> simp
  simpa only [hl] using hr

/-- Divisor-restricted amplitude at divisor 1 is literally
the original full finite family amplitude, since 1|n. -/
theorem familyDivisorEnergy_one
    (F : NormalizedCoefficients) (T : ℝ) :
    familyDivisorRestrictedEnergy F 1 T =
      familyFiniteResponseEnergy F T := by
  simp [familyDivisorRestrictedEnergy,
    familyFiniteResponseEnergy,
    familyDivisorRestrictedResponse, familyFiniteResponse]

/-- Complete FULL original Hermitian Gram equals the
d=1 divisor energy. No conclusion about zeros follows. -/
theorem familyFullGram_eq_energy_one
    (F : NormalizedCoefficients) {T : ℝ} (hT : 0 ≤ T) :
    (familyFullGram F T).re =
      familyDivisorRestrictedEnergy F 1 T := by
  rw [familyDivisorEnergy_one]
  exact familyHermitianFiniteGram_proof F T hT

/-- Existing family low-gcd sieve and exact truncated
source diagonal give the full low-gcd positive-energy sum. -/
theorem familyLowGcdFull_eq_divisorEnergy
    (F : NormalizedCoefficients) (D : ℕ)
    {T : ℝ} (hT : 0 ≤ T) :
    familyLowGcdFullGram F D T =
      ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        lowGcdSieveWeight D d *
          familyDivisorRestrictedEnergy F d T := by
  have hc := familyHermitianDivisorSieve_proof F D T hT
  have hd := familyLowGcdFullGram_eq_cross_add_diagonal F D T
  linarith

/-- The d=1 coefficient is 1, and ALL 2<=d<=D
coefficients vanish; the remaining higher-divisor packet
is kept literally signed without an artificial positivity. -/
theorem familyLowGcdFull_eq_energy_one_add_higher
    (F : NormalizedCoefficients)
    (D : ℕ) (hD : 1 ≤ D) {T : ℝ} (hT : 0 ≤ T) :
    familyLowGcdFullGram F D T =
      familyDivisorRestrictedEnergy F 1 T +
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if D < d then
          lowGcdSieveWeight D d *
            familyDivisorRestrictedEnergy F d T
        else 0) := by
  rw [familyLowGcdFull_eq_divisorEnergy F D hT]
  let S : Finset ℕ := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hOne : (1 : ℕ) ∈ S := by
    have hN := floor_exp_ge_one hT
    exact Finset.mem_Icc.mpr ⟨le_refl _, hN⟩
  calc
    (∑ d ∈ S, lowGcdSieveWeight D d *
      familyDivisorRestrictedEnergy F d T) =
      ∑ d ∈ S,
        ((if d = 1 then familyDivisorRestrictedEnergy F d T else 0) +
        (if D < d then lowGcdSieveWeight D d *
          familyDivisorRestrictedEnergy F d T else 0)) := by
      apply Finset.sum_congr rfl
      intro d hd
      have hd0 : 0 < d := (Finset.mem_Icc.mp hd).1
      by_cases h1 : d = 1
      · subst d
        have hcoeff := lowGcdSieveWeight_small D 1 (by norm_num) hD
        simp [hcoeff, hD]
      · by_cases hgt : D < d
        · simp [h1, hgt]
        · have hdD : d ≤ D := by omega
          have hd2 : 2 ≤ d := by omega
          have hz := lowGcdSieveWeight_zero_of_between D d hd2 hdD
          simp [h1,hgt,hz]
    _ = (∑ d ∈ S,
          if d = 1 then familyDivisorRestrictedEnergy F d T else 0) +
        (∑ d ∈ S,
          if D < d then lowGcdSieveWeight D d *
            familyDivisorRestrictedEnergy F d T else 0) := by
      rw [Finset.sum_add_distrib]
    _ = familyDivisorRestrictedEnergy F 1 T +
        (∑ d ∈ S,
          if D < d then lowGcdSieveWeight D d *
            familyDivisorRestrictedEnergy F d T else 0) := by
      simp [hOne]

/-- Close the EXISTING target:
the ENTIRE higher-divisor signed square-energy packet is
the NEGATIVE of the ORIGINAL high-gcd FULL Hermitian Gram.
The diagonal n>D remains inside the right-hand source. -/
theorem familyHigherDivisorHermitianReturn_proof :
    FamilyHigherDivisorHermitianReturnTarget := by
  intro F D T hD hT
  have hpart := familyFullGram_eq_lowGcdFull_add_high F D T
  have hOne := familyFullGram_eq_energy_one F hT
  have hlow := familyLowGcdFull_eq_energy_one_add_higher F D hD hT
  rw [hOne, hlow] at hpart
  linarith

end GRWTSK.NumberTheory.Moebius.LFunctionHigherDivisorReturn
