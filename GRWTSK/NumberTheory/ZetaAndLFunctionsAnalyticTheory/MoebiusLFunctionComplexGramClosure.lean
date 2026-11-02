/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionFamilySieveBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGramCauchy
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Complex finite Hermitian Gram as the original causal square integral

A general finite complex coefficient vector b(n) is multiplied by
the ACTUAL maintained real, birth-gated pickupResponse n u.
The complex pair is
  b(m)*star(b(n))*pickupResponseGram(T,m,n).
A finite sum of these pairs is the complex image of the integral
of the nonnegative real norm-squared response.

No arbitrary new kernel, sign model, abstract Gram hypothesis
or RH-strength source premise is used. All finite linearity follows
from intervalIntegral.integral_finsetSum and the exact maintained
real Gram definition. The needed complex integral-of-real map is
intervalIntegral.integral_ofReal in PINNED Mathlib.

The theorem is reused with b(n)=mu_L(n) and with the exact
divisor mask b(n)=if d|n then mu_L(n) else 0. Thus ONE finite
Hermitian proof closes both the complete family Gram and the
divisor-restricted square-energy source identities on paper.

All Lean bodies are SOURCE PROOF CANDIDATES until native Lean
compilation, expected declarations, independent kernel replay
and transitive axiom audit. No signed cancellation or GRH claim.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionComplexGramClosure

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge

classical

private def originalComplexResponse
    (b : ℕ → ℂ) (n : ℕ) (u : ℝ) : ℂ :=
  b n * (pickupResponse n u : ℂ)

private theorem originalComplexResponse_continuous
    (b : ℕ → ℂ) (n : ℕ) (hn : 0 < n) :
    Continuous (originalComplexResponse b n) := by
  have hr : Continuous (fun u : ℝ => (pickupResponse n u : ℂ)) :=
    Complex.continuous_ofReal.comp
      (pickupResponse_continuous hn)
  exact continuous_const.mul hr

private theorem originalComplexPair_integral
    (b : ℕ → ℂ) (m n : ℕ)
    (hm : 0 < m) (hn : 0 < n) (T : ℝ) :
    (∫ u in (0 : ℝ)..T,
       originalComplexResponse b m u *
         star (originalComplexResponse b n u)) =
      b m * star (b n) * (pickupResponseGram T m n : ℂ) := by
  calc
    _ = ∫ u in (0 : ℝ)..T,
        (b m * star (b n)) *
          ((pickupResponse m u * pickupResponse n u : ℝ) : ℂ) := by
          apply intervalIntegral.integral_congr
          intro u hu
          simp [originalComplexResponse, star_mul,
            Complex.star_def, Complex.ofReal_mul]
          ring
    _ = (b m * star (b n)) *
        (∫ u in (0 : ℝ)..T,
          ((pickupResponse m u * pickupResponse n u : ℝ) : ℂ)) := by
          rw [intervalIntegral.integral_const_mul]
    _ = b m * star (b n) * (pickupResponseGram T m n : ℂ) := by
          rw [intervalIntegral.integral_ofReal]
          rfl

/-- Exact FINITE original causal Hermitian sum-to-square identity.
Works for all complex coefficients b(n), without arithmetic bounds.
The real square is the actual Hilbert norm of the original wave. -/
theorem originalFiniteHermitianGram_eq_energy
    (S : Finset ℕ) (b : ℕ → ℂ) (T : ℝ)
    (hS : ∀ n ∈ S, 0 < n) :
    (∑ m ∈ S, ∑ n ∈ S,
        b m * star (b n) * (pickupResponseGram T m n : ℂ)).re =
      ∫ u in (0 : ℝ)..T,
        ‖∑ n ∈ S, originalComplexResponse b n u‖^2 := by
  let w : ℕ → ℝ → ℂ := originalComplexResponse b
  have hw (n : ℕ) (hn : n ∈ S) :
      Continuous (w n) :=
    originalComplexResponse_continuous b n (hS n hn)
  have hp (m : ℕ) (hm : m ∈ S)
      (n : ℕ) (hn : n ∈ S) :
      Continuous (fun u : ℝ => w m u * star (w n u)) :=
    (hw m hm).mul ((hw n hn).star)
  have hrow (m : ℕ) (hm : m ∈ S) :
      Continuous (fun u : ℝ =>
        ∑ n ∈ S, w m u * star (w n u)) :=
    continuous_finsetSum S (fun n hn => hp m hm n hn)
  have hpair (m : ℕ) (hm : m ∈ S)
      (n : ℕ) (hn : n ∈ S) :
      (∫ u in (0 : ℝ)..T, w m u * star (w n u)) =
        b m * star (b n) * (pickupResponseGram T m n : ℂ) :=
    originalComplexPair_integral b m n (hS m hm) (hS n hn) T
  have hsource :
      (∑ m ∈ S, ∑ n ∈ S,
        b m * star (b n) * (pickupResponseGram T m n : ℂ)) =
      ∫ u in (0 : ℝ)..T,
        ∑ m ∈ S, ∑ n ∈ S,
          w m u * star (w n u) := by
    calc
      _ = ∑ m ∈ S, ∑ n ∈ S,
        ∫ u in (0 : ℝ)..T, w m u * star (w n u) := by
          apply Finset.sum_congr rfl
          intro m hm
          apply Finset.sum_congr rfl
          intro n hn
          exact (hpair m hm n hn).symm
      _ = ∑ m ∈ S, ∫ u in (0 : ℝ)..T,
        ∑ n ∈ S, w m u * star (w n u) := by
          apply Finset.sum_congr rfl
          intro m hm
          exact (intervalIntegral.integral_finsetSum
            (fun n hn => (hp m hm n hn).intervalIntegrable _ _)).symm
      _ = ∫ u in (0 : ℝ)..T,
        ∑ m ∈ S, ∑ n ∈ S, w m u * star (w n u) := by
          exact (intervalIntegral.integral_finsetSum
            (fun m hm => (hrow m hm).intervalIntegrable _ _)).symm
  have hpoint (u : ℝ) :
      (∑ m ∈ S, ∑ n ∈ S,
        w m u * star (w n u)) =
      ((‖∑ n ∈ S, w n u‖^2 : ℝ) : ℂ) := by
    rw [← Finset.sum_mul_sum, ← star_sum]
    simp only [Complex.star_def, Complex.mul_conj,
      Complex.normSq_eq_norm_sq]
  have hreal :
      (∑ m ∈ S, ∑ n ∈ S,
        b m * star (b n) * (pickupResponseGram T m n : ℂ)) =
      ((∫ u in (0 : ℝ)..T,
          ‖∑ n ∈ S, w n u‖^2 : ℝ) : ℂ) := by
    calc
      _ = ∫ u in (0 : ℝ)..T,
        ∑ m ∈ S, ∑ n ∈ S, w m u * star (w n u) :=
          hsource
      _ = ∫ u in (0 : ℝ)..T,
        ((‖∑ n ∈ S, w n u‖^2 : ℝ) : ℂ) := by
          apply intervalIntegral.integral_congr
          intro u hu
          exact hpoint u
      _ = ((∫ u in (0 : ℝ)..T,
          ‖∑ n ∈ S, w n u‖^2 : ℝ) : ℂ) := by
          rw [intervalIntegral.integral_ofReal]
  have hr := congrArg Complex.re hreal
  simpa only [Complex.ofReal_re, w, originalComplexResponse] using hr

/-- Close the exact PREEXISTING named family Hermitian finite
Gram-to-positive-square target, with no new premises. -/
theorem familyHermitianFiniteGram_proof :
    FamilyHermitianFiniteGramTarget := by
  intro F T hT
  have hS :
      ∀ n ∈ endpointIndex T, 0 < n := by
    intro n hn
    exact (Finset.mem_Icc.mp hn).1
  have h :=
    originalFiniteHermitianGram_eq_energy
      (endpointIndex T) F.mobius T hS
  simpa only [familyFullGram, familyHermitianKernel,
    familyFiniteResponseEnergy, familyFiniteResponse,
    originalComplexResponse] using h

/-- Original complete Hermitian Gram restricted to the genuine
arithmetic multiples d|m,d|n, with both orders and diagonal. -/
def familyDivisorRestrictedFullGram
    (F : NormalizedCoefficients) (d : ℕ) (T : ℝ) : ℝ :=
  (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if d ∣ m ∧ d ∣ n
    then familyHermitianKernel F T m n else 0).re

/-- For a divisor d, reuse the exact SAME complex Gram proof
on the coefficient vector n ↦ 1_(d|n)*mu_L(n).
This is not an independent artificial kernel. -/
theorem familyDivisorRestrictedFullGram_eq_energy
    (F : NormalizedCoefficients) (d : ℕ)
    (T : ℝ) :
    familyDivisorRestrictedFullGram F d T =
      familyDivisorRestrictedEnergy F d T := by
  let b : ℕ → ℂ := fun n => if d ∣ n then F.mobius n else 0
  have hS :
      ∀ n ∈ endpointIndex T, 0 < n := by
    intro n hn
    exact (Finset.mem_Icc.mp hn).1
  have h :=
    originalFiniteHermitianGram_eq_energy
      (endpointIndex T) b T hS
  have hp (m n : ℕ) :
      b m * star (b n) * (pickupResponseGram T m n : ℂ) =
      if d ∣ m ∧ d ∣ n then
        familyHermitianKernel F T m n else 0 := by
    by_cases hm : d ∣ m
    · by_cases hn : d ∣ n
      · simp [b, hm, hn, familyHermitianKernel]
      · simp [b, hm, hn]
    · simp [b, hm]
  have hw (u : ℝ) :
      (∑ n ∈ endpointIndex T,
        originalComplexResponse b n u) =
      familyDivisorRestrictedResponse F d T u := by
    unfold familyDivisorRestrictedResponse
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hdiv : d ∣ n
    · simp [originalComplexResponse, b, hdiv]
    · simp [originalComplexResponse, b, hdiv]
  unfold familyDivisorRestrictedFullGram
    familyDivisorRestrictedEnergy
  simpa only [hp, hw] using h

end GRWTSK.NumberTheory.Moebius.LFunctionComplexGramClosure
