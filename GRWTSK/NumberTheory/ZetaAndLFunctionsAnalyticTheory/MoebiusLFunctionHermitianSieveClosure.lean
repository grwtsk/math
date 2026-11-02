/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionComplexGramClosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLowGcdSieveTargetClosures
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Closing the universal Hermitian family gcd-sieve by finite inversion

The maintained classical real gcd-sieve coefficients
  c_D(d)=sum_(k|d,k<=D)mu_classical(d/k)
are independent of the complex family b(n)=mu_L(n).

For the ACTUAL original causal Gram
 K_T(m,n)=integral_0^T pickupResponse(m,u)*pickupResponse(n,u)du,
the exact finite full low-gcd Hermitian source is
  sum_(d<=N)c_D(d)*real(part of full d-divisor complex Gram).
Using the new complexFiniteHermitianGram source proof candidate,
each divisor full Gram is the NONNEGATIVE actual energy E_(L,d).

The ORIGINAL off-diagonal source removes the diagonal only where
n<=D, with exact |mu_L(n)|^2*K_T(n,n) coefficient.

This proves the source-specific prior
FamilyHermitianDivisorSieveTarget as an authored Lean proof BODY,
without assuming GRH, Mertens cancellation, any Euler product, or
a fabricated Gram positivity premise.

The higher-divisor signed sum remains an exact reconstruction
of the negative FULL high-gcd Hermitian Gram (including diagonal);
it cannot by its signs alone settle the original low-gcd source.

Compilation, elaboration/expected types, fresh kernel replay and
transitive dependency axiom audit have NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionHermitianSieveClosure

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge
open GRWTSK.NumberTheory.Moebius.LFunctionComplexGramClosure
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
  exact sum_re S (f m)

/-- Real-valued complete low-gcd HERMITIAN source, including
the original diagonal with n<=D. -/
def familyLowGcdFullGram
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if Nat.gcd m n ≤ D
    then (familyHermitianKernel F T m n).re else 0

private theorem hermitian_diagonal_re
    (F : NormalizedCoefficients) (T : ℝ) (n : ℕ) :
    (familyHermitianKernel F T n n).re =
      ‖F.mobius n‖^2*pickupResponseGram T n n := by
  have hnorm :
      F.mobius n * star (F.mobius n) =
        ((‖F.mobius n‖^2 : ℝ) : ℂ) := by
    simp only [Complex.star_def, Complex.mul_conj,
      Complex.normSq_eq_norm_sq]
  unfold familyHermitianKernel
  rw [← mul_assoc, hnorm]
  simp

private theorem familyLowGcdCross_eq_real_sum
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) :
    familyLowGcdCross F D T =
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        if m ≠ n ∧ Nat.gcd m n ≤ D
        then (familyHermitianKernel F T m n).re else 0 := by
  unfold familyLowGcdCross
  rw [sum_sum_re]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  split_ifs <;> simp

/-- Exact off-diagonal plus TRUNCATED diagonal identity,
using actual norm-square complex coefficients. -/
theorem familyLowGcdFullGram_eq_cross_add_diagonal
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) :
    familyLowGcdFullGram F D T =
      familyLowGcdCross F D T +
        familyLowGcdSourceDiagonal F D T := by
  let S : Finset ℕ := endpointIndex T
  rw [familyLowGcdCross_eq_real_sum]
  have hdiag :
      familyLowGcdSourceDiagonal F D T =
        ∑ m ∈ S,
          if m ≤ D then
            (familyHermitianKernel F T m m).re
          else 0 := by
    unfold familyLowGcdSourceDiagonal
    apply Finset.sum_congr rfl
    intro m hm
    by_cases hd : m ≤ D
    · simp [hd, hermitian_diagonal_re]
    · simp [hd]
  rw [hdiag]
  change (∑ m ∈ S, ∑ n ∈ S,
      if Nat.gcd m n ≤ D
      then (familyHermitianKernel F T m n).re else 0) =
    (∑ m ∈ S, ∑ n ∈ S,
      if m ≠ n ∧ Nat.gcd m n ≤ D
      then (familyHermitianKernel F T m n).re else 0) +
    (∑ m ∈ S,
      if m ≤ D then (familyHermitianKernel F T m m).re else 0)
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hself :
      (if m ≤ D then (familyHermitianKernel F T m m).re else 0) =
        ∑ n ∈ S,
          if m = n ∧ Nat.gcd m n ≤ D
          then (familyHermitianKernel F T m n).re else 0 := by
    simp [hm, Nat.gcd_self]
  rw [hself, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · subst n
    by_cases hd : m ≤ D <;> simp [hd]
  · by_cases hd : Nat.gcd m n ≤ D <;> simp [hmn, hd]

/-- Exact FINITE common-divisor reindex for ANY complex family;
only the arithmetic gcd indicator uses classical Möbius. -/
theorem familyLowGcdFullGram_eq_divisorGram
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) :
    familyLowGcdFullGram F D T =
      ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        lowGcdSieveWeight D d *
          familyDivisorRestrictedFullGram F d T := by
  let S : Finset ℕ := endpointIndex T
  let E : Finset ℕ := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hdiv (d : ℕ) :
      lowGcdSieveWeight D d *
        familyDivisorRestrictedFullGram F d T =
      ∑ m ∈ S, ∑ n ∈ S,
        if d ∣ m ∧ d ∣ n
        then lowGcdSieveWeight D d *
          (familyHermitianKernel F T m n).re else 0 := by
    unfold familyDivisorRestrictedFullGram
    rw [sum_sum_re]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m hm
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    by_cases h : d ∣ m ∧ d ∣ n <;> simp [h]
  calc
    familyLowGcdFullGram F D T =
      ∑ m ∈ S, ∑ n ∈ S, ∑ d ∈ E,
        if d ∣ m ∧ d ∣ n
        then lowGcdSieveWeight D d *
          (familyHermitianKernel F T m n).re else 0 := by
      unfold familyLowGcdFullGram
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      have hmI := Finset.mem_Icc.mp hm
      have hnI := Finset.mem_Icc.mp hn
      have hc := gcd_le_indicator_eq_sieve_Icc D
        ⌊Real.exp T⌋₊ m n hmI.1 hmI.2 hnI.1 hnI.2
      calc
        (if Nat.gcd m n ≤ D
          then (familyHermitianKernel F T m n).re else 0) =
          (if Nat.gcd m n ≤ D then (1 : ℝ) else 0) *
            (familyHermitianKernel F T m n).re := by
              split_ifs <;> ring
        _ = (∑ d ∈ E,
          if d ∣ m ∧ d ∣ n then lowGcdSieveWeight D d else 0) *
            (familyHermitianKernel F T m n).re := by
              rw [hc]
        _ = ∑ d ∈ E,
          if d ∣ m ∧ d ∣ n
          then lowGcdSieveWeight D d *
            (familyHermitianKernel F T m n).re else 0 := by
              rw [Finset.sum_mul]
              apply Finset.sum_congr rfl
              intro d hd
              by_cases h : d ∣ m ∧ d ∣ n <;> simp [h]
    _ = ∑ m ∈ S, ∑ d ∈ E, ∑ n ∈ S,
        if d ∣ m ∧ d ∣ n
        then lowGcdSieveWeight D d *
          (familyHermitianKernel F T m n).re else 0 := by
      apply Finset.sum_congr rfl
      intro m hm
      exact Finset.sum_comm
    _ = ∑ d ∈ E, ∑ m ∈ S, ∑ n ∈ S,
        if d ∣ m ∧ d ∣ n
        then lowGcdSieveWeight D d *
          (familyHermitianKernel F T m n).re else 0 := by
      exact Finset.sum_comm
    _ = ∑ d ∈ E,
        lowGcdSieveWeight D d *
          familyDivisorRestrictedFullGram F d T := by
      apply Finset.sum_congr rfl
      intro d hd
      exact (hdiv d).symm

/-- Discharge the earlier exact complex family sieve TARGET
using the original causal finite Gram, source-specific diagonal
and the universal previously authored classical gcd weights. -/
theorem familyHermitianDivisorSieve_proof :
    FamilyHermitianDivisorSieveTarget := by
  intro F D T hT
  have hs := familyLowGcdFullGram_eq_divisorGram F D T
  have hd := familyLowGcdFullGram_eq_cross_add_diagonal F D T
  have he :
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        lowGcdSieveWeight D d *
          familyDivisorRestrictedFullGram F d T) =
      ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        lowGcdSieveWeight D d *
          familyDivisorRestrictedEnergy F d T := by
    apply Finset.sum_congr rfl
    intro d hd
    rw [familyDivisorRestrictedFullGram_eq_energy]
  linarith

end GRWTSK.NumberTheory.Moebius.LFunctionHermitianSieveClosure
