/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddGammaIntermediate
import Mathlib.Tactic

/-!
# Odd upper-band correlations retain the harmful negative-weight branch

Source pin a0457ba3557ff76b4832f11f5fccc87e4cdc228b; original #1788 source
c73ed88419dc254d12a3b8186196a13636b3a9fc. Same Mathlib/Lean pins as the import.
Consumer: original signed twistedPrime in primitiveArithmeticValue.
For a real odd f nonnegative on [0,infinity), supported in [-T,T], r>=T
forces every nonzero overlap across the origin. Hence f(t)*f(t+r)<=0,
and the original correlation has nonpositive real part. A negative paired
prime weight times such a correlation is nonnegative, and its contribution
after the original minus sign is NONPOSITIVE, not a positive credit.

This is a genuine physical-support sign comparison, not a phase erasure.
The analytic hostile example f=t*(1-t^2)^3 on [-1,1], zero outside, is C2,
odd and H1; H1 translation estimates imply gamma integrability. Its overlap
is strictly negative for 1<r<2. Thus q=5 for chi_3 gives a strictly harmful
summand. The C2 extension, strict integral negativity and explicit native
chi_3 construction are NOT formalized here; only the general nonpositive
sign mechanism and scalar strict-sign implication are formalized below.
No novelty claimed. No source positivity, primitive stage, RH or GRH follows.
The real lift is essential: arbitrary complex tests cannot inherit this sign
assertion. For a nonreal character the native summand return below uses the
proved reality of the real-test correlation and retains the paired weight.
Assistant-generated formal candidate under human research direction;
no independent analytic review has been run. Issue #1789 follow-up checked
the restricted signed-correlation fragment with Lean v4.34.1, including the
explicit RCLike-to-Complex integral projections and native summand return.
Full-module compilation remains blocked by dependency failures; no fresh
kernel replay or transitive axiom audit was run.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ComplexConjugate
namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSignedCorrelation
open SourcePrimeCorrelation DirichletStageChain LowSchur

/-- Pointwise sign from physical support and oddness, not arithmetic magnitudes. -/
theorem overlap_nonpos_of_odd_nonneg
    {f : ℝ → ℝ} (hodd : Function.Odd f)
    (hpositive : ∀ t : ℝ, 0 ≤ t → 0 ≤ f t)
    {T r : ℝ} (hr : T ≤ r)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) (t : ℝ) :
    f t * f (t+r) ≤ 0 := by
  by_cases ht : 0 < t
  · have hz : f (t+r) = 0 := hsupport (t+r) (by
      intro h
      linarith [h.2])
    simp [hz]
  · by_cases htr : t+r < 0
    · have hz : f t = 0 := hsupport t (by
        intro h
        linarith [h.1])
      simp [hz]
    · have hft : f t ≤ 0 := by
        have hp := hpositive (-t) (by linarith)
        rw [hodd t] at hp
        linarith
      exact mul_nonpos_of_nonpos_of_nonneg hft
        (hpositive (t+r) (le_of_not_gt htr))

/-- This concerns the integral-defined ORIGINAL real-test correlation. -/
theorem correlation_re_nonpos_of_odd_nonneg
    {f : ℝ → ℝ} (hf : MemLp (liftReal f) 2 volume)
    (hodd : Function.Odd f)
    (hpositive : ∀ t : ℝ, 0 ≤ t → 0 ≤ f t)
    {T r : ℝ} (hr : T ≤ r)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) :
    (correlation (liftReal f) r).re ≤ 0 := by
  have hi := integrable_correlation_integrand hf r
  unfold correlation
  have hre := integral_re hi
  simp only [RCLike.re_to_complex] at hre
  rw [← hre]
  apply integral_nonpos
  intro t
  have h := overlap_nonpos_of_odd_nonneg hodd hpositive hr hsupport t
  simpa [liftReal] using h

/-- A negative paired weight can give a harmful original prime summand. -/
theorem negative_weight_summand_nonpos {w C : ℝ} (hw : w ≤ 0) (hC : C ≤ 0) :
    -2*w*C ≤ 0 := by
  nlinarith [mul_nonneg_of_nonpos_of_nonpos hw hC]

theorem negative_weight_summand_neg {w C : ℝ} (hw : w < 0) (hC : C < 0) :
    -2*w*C < 0 := by
  nlinarith [mul_pos_of_neg_of_neg hw hC]

/-- The sign obstruction applies directly after the genuine source comparison. -/
theorem weighted_correlation_summand_nonpos
    {f : ℝ → ℝ} (hf : MemLp (liftReal f) 2 volume)
    (hodd : Function.Odd f)
    (hpositive : ∀ t : ℝ, 0 ≤ t → 0 ≤ f t)
    {T r w : ℝ} (hr : T ≤ r) (hw : w ≤ 0)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) :
    -2*w*(correlation (liftReal f) r).re ≤ 0 :=
  negative_weight_summand_nonpos hw
    (correlation_re_nonpos_of_odd_nonneg hf hodd hpositive hr hsupport)

/-- The individual summand in the ORIGINAL twistedPrime, before summing all
active prime powers. Reality comes from the actual real-test integral; the
character itself need not be real. No other summands are deleted. -/
theorem native_prime_summand_eq
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N) (n : ℕ)
    {f : ℝ → ℝ} (hf : MemLp (liftReal f) 2 volume) (r : ℝ) :
    -2 * primeWeight n *
        (conj (chi (n : ZMod N)) * correlation (liftReal f) r).re =
      -2 * OddRootProjection.pairedPrimeWeight chi n *
        (correlation (liftReal f) r).re := by
  have hreal := FrobeniusPhaseSurplus.liftReal_correlation_im_zero f r hf
  simp [Complex.mul_re, hreal, OddRootProjection.pairedPrimeWeight]
  <;> ring

/-- Source-return obstruction at the logarithmic prime-power shift. The sign
is conditional on the actual paired weight and the original support bound. -/
theorem native_prime_summand_nonpos
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N) (n : ℕ)
    {f : ℝ → ℝ} (hf : MemLp (liftReal f) 2 volume)
    (hodd : Function.Odd f)
    (hpositive : ∀ t : ℝ, 0 ≤ t → 0 ≤ f t)
    {T : ℝ} (hr : T ≤ Real.log (n : ℝ))
    (hw : OddRootProjection.pairedPrimeWeight chi n ≤ 0)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) :
    -2 * primeWeight n *
      (conj (chi (n : ZMod N)) *
        correlation (liftReal f) (Real.log (n : ℝ))).re ≤ 0 := by
  rw [native_prime_summand_eq chi n hf]
  exact weighted_correlation_summand_nonpos hf hodd hpositive hr hw hsupport

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSignedCorrelation
