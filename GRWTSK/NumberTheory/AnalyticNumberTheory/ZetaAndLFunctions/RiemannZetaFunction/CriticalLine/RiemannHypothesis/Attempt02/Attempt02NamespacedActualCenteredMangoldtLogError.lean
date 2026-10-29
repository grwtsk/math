-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCenteredMangoldtLogError.Variantcb8ab8bea4e1c78300a70983ce9b79913bbdabc32b404dc7e2cf9fb8e9e0673f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb8ab8bea4e1c78300a70983ce9b79913bbdabc32b404dc7e2cf9fb8e9e0673f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualCenteredMangoldtLogError.Variantcb8ab8bea4e1c78300a70983ce9b79913bbdabc32b404dc7e2cf9fb8e9e0673f","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"cb8ab8bea4e1c78300a70983ce9b79913bbdabc32b404dc7e2cf9fb8e9e0673f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-error-convolution/attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualXiDampedSquareReadout

/-!
Finite Abel transport of the actual logarithmic Mangoldt error expresses the
same signed fixed-damped Xi primitive as two genuine finite convolutions.
All zero/unit and closed-seven heads are retained. No published-paper rate,
ordinary convergence, critical cancellation or absolute-average witness is
assumed here.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCenteredMangoldtLogError.Variantcb8ab8bea4e1c78300a70983ce9b79913bbdabc32b404dc7e2cf9fb8e9e0673f

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualXiErrorConvolution

open MeasureTheory Set ArithmeticFunction
open scoped Interval
open SourceMangoldtAbel SourceActualXiDampedFiniteBound SourceActualXiHalfFiniteReadout
open RootActualXiTailPrimitive RH16ActualPsiNegativeBlock WeightedPrimeMertens
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimatePrimeSmoothDefect

noncomputable section

/-- The independently actual harmonic Mangoldt discrepancy, centered by actual gamma. -/
def actualCenteredMangoldtLogError (t : ℝ) : ℝ :=
  mangoldtLogError t + Real.eulerMascheroniConstant

/-- A finite causal exponential convolution of the actual centered error. -/
def actualMangoldtErrorConvolution (lam t : ℝ) : ℝ :=
  ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * (r - t))

/-- Literal exponential test of the full closed actual Mangoldt inventory. -/
def actualNormalizedMangoldtExpReadout (lam t : ℝ) : ℝ :=
  Real.exp (-lam * t) * mangoldtLogSum t (fun r => Real.exp (lam * r))

/-- The full closed half prefix retains the unit and every prime power. -/
def actualMangoldtHalfClosedPrefix (t : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc 0 (Nat.floor (Real.exp t)), (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)

/-- The actual seven constant, without assuming an ordinary limiting value. -/
def actualXiErrorConvolutionSevenValue : ℝ :=
  -Real.eulerMascheroniConstant - mangoldtLogError (Real.log 7) - 1 +
    (Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / 7

/-- The entire literal closed-seven half inventory remains in this decaying head. -/
def actualXiErrorConvolutionHalfHead : ℝ :=
  4 + 2 * (∑ n ∈ Finset.Ioc 0 7, (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) -
    2 * (Chebyshev.psi 7 + 7 +
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7 +
        2 * Real.eulerMascheroniConstant

/-- The genuine gamma/continuous one-damping head, kept with its actual sign. -/
def actualXiErrorConvolutionOneHead : ℝ :=
  2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) - 1 - Real.eulerMascheroniConstant

private theorem error_intervalIntegrable {t : ℝ} (ht : 0 ≤ t) :
    IntervalIntegrable mangoldtLogError volume 0 t := by
  simpa only [deriv_id, mul_one] using
    mangoldtLogError_mul_deriv_intervalIntegrable 0 t ht id (by fun_prop)

private theorem prefix_intervalIntegrable {t : ℝ} (ht : 0 ≤ t) :
    IntervalIntegrable mangoldtLogPrefix volume 0 t := by
  simpa only [deriv_id, mul_one] using
    mangoldtLogPrefix_mul_deriv_intervalIntegrable 0 t ht id (by fun_prop)

/-- Genuine actual finite L1 holds for every real damping parameter. -/
theorem actualMangoldtErrorConvolution_intervalIntegrable (lam : ℝ) {t : ℝ} (ht : 0 ≤ t) :
    IntervalIntegrable (fun r => actualCenteredMangoldtLogError r *
      Real.exp (lam * (r - t))) volume 0 t := by
  have hi : IntervalIntegrable actualCenteredMangoldtLogError volume 0 t :=
    (error_intervalIntegrable ht).add (intervalIntegrable_const)
  exact hi.mul_continuousOn (by fun_prop)

private theorem exp_hasDerivAt (lam t r : ℝ) :
    HasDerivAt (fun r : ℝ => Real.exp (lam * (r - t)))
      (lam * Real.exp (lam * (r - t))) r := by
  have he := (((hasDerivAt_id r).sub_const t).const_mul lam).exp
  exact he.congr_deriv (by dsimp only [id_eq]; ring)

private theorem exponential_mass (lam t : ℝ) (hlam : lam ≠ 0) :
    (∫ r in 0..t, Real.exp (lam * (r - t))) =
      (1 - Real.exp (-lam * t)) / lam := by
  have hd (r : ℝ) : HasDerivAt (fun r : ℝ => Real.exp (lam * (r - t)) / lam)
      (Real.exp (lam * (r - t))) r := by
    exact ((exp_hasDerivAt lam t r).div_const lam).congr_deriv (by field_simp)
  have hi : IntervalIntegrable (fun r : ℝ => Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => Real.exp (lam * (r - t)))).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi]
  simp only [sub_self, mul_zero, Real.exp_zero, zero_sub, mul_neg]
  rw [show -(lam * t) = -lam * t by ring]
  ring

private theorem exponential_first_moment (lam t : ℝ) (hlam : lam ≠ 0) :
    (∫ r in 0..t, r * Real.exp (lam * (r - t))) =
      t / lam - (1 - Real.exp (-lam * t)) / lam ^ 2 := by
  have hd (r : ℝ) : HasDerivAt
      (fun r : ℝ => (r / lam - 1 / lam ^ 2) * Real.exp (lam * (r - t)))
      (r * Real.exp (lam * (r - t))) r := by
    have he := (((hasDerivAt_id r).div_const lam).sub_const (1 / lam ^ 2)).mul
      (exp_hasDerivAt lam t r)
    exact he.congr_deriv (by dsimp only [id_eq]; field_simp; ring)
  have hi : IntervalIntegrable (fun r : ℝ => r * Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => r * Real.exp (lam * (r - t)))).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi]
  simp only [sub_self, mul_zero, Real.exp_zero, zero_sub, zero_div, mul_one, mul_neg]
  rw [show -(lam * t) = -lam * t by ring]
  ring

/-- Actual Abel transport holds at every finite real time, with no asymptotic premise. -/
theorem actualNormalizedMangoldtExpReadout_eq_convolution {lam t : ℝ}
    (hlam : lam ≠ 0) (ht : 0 ≤ t) :
    actualNormalizedMangoldtExpReadout lam t = actualCenteredMangoldtLogError t + 1 / lam -
      lam * actualMangoldtErrorConvolution lam t -
        (Real.eulerMascheroniConstant + 1 / lam) * Real.exp (-lam * t) := by
  let f : ℝ → ℝ := fun r => Real.exp (lam * r)
  have hd : deriv f = fun r => lam * Real.exp (lam * r) := by
    funext r
    have he := exp_hasDerivAt lam 0 r
    simpa only [sub_zero] using he.deriv
  have ha := mangoldtLogSum_abel t ht f (by unfold f; fun_prop)
  have hW := prefix_intervalIntegrable ht
  have hFe := actualMangoldtErrorConvolution_intervalIntegrable lam ht
  have hre : IntervalIntegrable (fun r : ℝ => r * Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => r * Real.exp (lam * (r - t)))).intervalIntegrable _ _
  have he : IntervalIntegrable (fun r : ℝ => Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => Real.exp (lam * (r - t)))).intervalIntegrable _ _
  have hI : (∫ r in 0..t, mangoldtLogPrefix r * Real.exp (lam * (r - t))) =
      actualMangoldtErrorConvolution lam t +
        (∫ r in 0..t, r * Real.exp (lam * (r - t))) -
          Real.eulerMascheroniConstant * (∫ r in 0..t, Real.exp (lam * (r - t))) := by
    unfold actualMangoldtErrorConvolution
    rw [← intervalIntegral.integral_const_mul,
      ← intervalIntegral.integral_add hFe hre,
      ← intervalIntegral.integral_sub (hFe.add hre) (he.const_mul _)]
    apply intervalIntegral.integral_congr
    intro r _
    unfold actualCenteredMangoldtLogError mangoldtLogError
    ring
  have hex : Real.exp (-lam * t) * Real.exp (lam * t) = 1 := by
    rw [← Real.exp_add, show -lam * t + lam * t = 0 by ring, Real.exp_zero]
  have hmul : Real.exp (-lam * t) *
      (∫ r in 0..t, mangoldtLogPrefix r * deriv f r) =
      lam * (∫ r in 0..t, mangoldtLogPrefix r * Real.exp (lam * (r - t))) := by
    rw [hd, ← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro r _
    have hr : Real.exp (-lam * t) * Real.exp (lam * r) = Real.exp (lam * (r - t)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    calc
      _ = lam * mangoldtLogPrefix r *
          (Real.exp (-lam * t) * Real.exp (lam * r)) := by ring
      _ = _ := by rw [hr]; ring
  unfold actualNormalizedMangoldtExpReadout
  rw [ha]
  change Real.exp (-lam * t) * (Real.exp (lam * t) * mangoldtLogPrefix t - _) = _
  rw [mul_sub, ← mul_assoc, hex, one_mul, hmul, hI,
    exponential_mass lam t hlam, exponential_first_moment lam t hlam]
  unfold actualCenteredMangoldtLogError mangoldtLogError
  field_simp
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiErrorConvolution
