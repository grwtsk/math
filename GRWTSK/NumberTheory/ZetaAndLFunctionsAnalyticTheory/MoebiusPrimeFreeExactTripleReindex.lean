/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Lean formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCanonicalFiniteGcdBijection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLowGcdPrimeFreePrimitiveBridge
import Mathlib

/-!
# Original prime-free low-gcd Möbius source: exact primitive gcd reindex

This file attempts to close the EXACT previously named
LowGcdPrimeFreePrimitiveBridge.ExactPrimeFreeTripleReindexTarget,
without assuming that target as an input. The proof composes:
1. the independent canonical finite ordered positive-index
   gcd-to-coprime-triple bijection, with two original orientations;
2. the ORIGINAL index and prime-free low-gcd dense pair predicate;
3. squareful zero handling: if gcd(g,a)>1 or gcd(g,b)>1 then
   mu(g*a)=0 or mu(g*b)=0, so omitting that triple loses ZERO source;
4. the independently established actual causal Gram time shift
   at T-log(g) and exact coprime Möbius multiplication.

All original arithmetic coefficients, including squareful zeros,
and both ordered off-diagonal orientations remain unchanged.
No RH-strength signed estimate is deduced from the reindex, and the
separate PrimitivePrimeFreeEveryRateOn good-scale premise remains OPEN.

All bodies are SOURCE PROOF CANDIDATES. Pinned Lean compilation, fresh
kernel replay and complete transitive axiom audit were NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PrimeFreeExactTripleReindex

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.CanonicalFiniteGcdBijection
open GRWTSK.NumberTheory.Moebius.LowGcdPrimeDilationNegative
open GRWTSK.NumberTheory.Moebius.LowGcdPrimeFreePrimitiveBridge
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- An original squareful product carries zero Möbius coefficient.
In particular, missing coprimality cannot be "corrected" by
arbitrarily assigning a nonzero primitive sign. -/
private theorem original_moebius_zero_of_nonCoprime
    (g a : ℕ) (hbad : ¬ Nat.Coprime g a) :
    moebiusReal (g * a) = 0 := by
  have hnot : ¬ Squarefree (g * a) := by
    intro hs
    exact hbad (Nat.coprime_of_squarefree_mul hs)
  unfold moebiusReal
  exact_mod_cast ArithmeticFunction.moebius_eq_zero_of_not_squarefree hnot

private theorem original_source_zero_of_bad_left
    (T : ℝ) (g a b : ℕ) (hbad : ¬ Nat.Coprime g a) :
    sourceKernel T (g * a) (g * b) = 0 := by
  have hz := original_moebius_zero_of_nonCoprime g a hbad
  simp [sourceKernel, hz]

private theorem original_source_zero_of_bad_right
    (T : ℝ) (g a b : ℕ) (hbad : ¬ Nat.Coprime g b) :
    sourceKernel T (g * a) (g * b) = 0 := by
  have hz := original_moebius_zero_of_nonCoprime g b hbad
  simp [sourceKernel, hz]

/-- The COMPLETE masked original source at (ga,gb) is either the
coprime signed shifted term with mu(g)^2 or EXACTLY zero. The
source and its mask remain original: no arbitrary factorization
or time-independent Gram is substituted. -/
theorem guarded_original_pair_eq_shifted
    (Q : Finset ℕ) (T : ℝ) (g a b : ℕ)
    (hg : 1 ≤ g) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    otherLowGcdPair Q T (g * a) (g * b) =
      if Nat.Coprime g a ∧ Nat.Coprime g b ∧
          IsOtherLowGcdPair Q T (g * a) (g * b)
      then
        (g : ℝ)⁻¹ * (moebiusReal g) ^ 2 *
          moebiusReal a * moebiusReal b *
            pickupResponseGram (T - Real.log (g : ℝ)) a b
      else 0 := by
  by_cases hga : Nat.Coprime g a
  · by_cases hgb : Nat.Coprime g b
    · simpa [hga, hgb] using
        (otherLowGcdPair_coprime_gcdShifted_term
          Q T g a b hg ha hb hga hgb)
    · have hz := original_source_zero_of_bad_right T g a b hgb
      rw [otherLowGcdPair_eq_originalMask]
      simp [hga, hgb, hz]
  · have hz := original_source_zero_of_bad_left T g a b hga
    rw [otherLowGcdPair_eq_originalMask]
    simp [hga, hz]

/-- Every ORIGINAL ordered double source pair corresponds to
exactly one primitive coprime gcd triple, BEFORE deleting
squareful-zero terms. This is a straight specialization of the
independent finite natural-number bijection. -/
theorem original_primeFree_raw_gcd_reindex
    (Q : Finset ℕ) (T : ℝ) :
    otherLowGcdCross Q T =
      ∑ g ∈ endpointIndex T, ∑ a ∈ endpointIndex T,
        ∑ b ∈ endpointIndex T,
          if Nat.Coprime a b ∧
              g * a ∈ endpointIndex T ∧
              g * b ∈ endpointIndex T
          then otherLowGcdPair Q T (g * a) (g * b)
          else 0 := by
  simpa only [otherLowGcdCross, endpointIndex] using
    (finite_ordered_gcd_sum (⌊Real.exp T⌋₊)
      (otherLowGcdPair Q T))

/-- The complete ORIGINAL source equals the published exact guarded
primitive triple sum. No conditional reindex premise is supplied:
the canonical finite gcd bijection and zero guards are composed
directly in the proof body. -/
theorem original_primeFree_eq_primitiveTriple
    (Q : Finset ℕ) (T : ℝ) :
    otherLowGcdCross Q T = primitivePrimeFreeTripleCross Q T := by
  classical
  rw [original_primeFree_raw_gcd_reindex]
  unfold primitivePrimeFreeTripleCross
  apply Finset.sum_congr rfl
  intro g hg
  have hg1 : 1 ≤ g := by
    change g ∈ Finset.Icc 1 ⌊Real.exp T⌋₊ at hg
    exact (Finset.mem_Icc.mp hg).1
  apply Finset.sum_congr rfl
  intro a ha
  have ha1 : 1 ≤ a := by
    change a ∈ Finset.Icc 1 ⌊Real.exp T⌋₊ at ha
    exact (Finset.mem_Icc.mp ha).1
  apply Finset.sum_congr rfl
  intro b hb
  have hb1 : 1 ≤ b := by
    change b ∈ Finset.Icc 1 ⌊Real.exp T⌋₊ at hb
    exact (Finset.mem_Icc.mp hb).1
  have hterm := guarded_original_pair_eq_shifted Q T g a b hg1 ha1 hb1
  by_cases hcop : Nat.Coprime a b
  · by_cases hleft : g * a ∈ endpointIndex T
    · by_cases hright : g * b ∈ endpointIndex T
      · simpa [hcop, hleft, hright] using hterm
      · simp [hcop, hright]
    · simp [hcop, hleft]
  · simp [hcop]

/-- DISCHARGE, as Lean source proof text, the exact original
previously open gcd reindex proposition. This theorem requires NO
extra arithmetic or RH premise. Kernel acceptance remains NOT_RUN. -/
theorem exactPrimeFreeTripleReindex_proof :
    ExactPrimeFreeTripleReindexTarget := by
  intro Q T hT
  exact original_primeFree_eq_primitiveTriple Q T

/-- The newly isolated RH-facing primitive signed bilinear criterion
still remains a genuinely independent OPEN all-positive-rate estimate
on one adequately covering scale set, even after source reindexing. -/
theorem riemannHypothesis_of_primitive_signed_core_goodScales
    {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hPrimitive : PrimitivePrimeFreeEveryRateOn G) :
    _root_.RiemannHypothesis := by
  exact riemannHypothesis_of_primitivePrimeFree_goodScales
    hcover exactPrimeFreeTripleReindex_proof hPrimitive

end GRWTSK.NumberTheory.Moebius.PrimeFreeExactTripleReindex
