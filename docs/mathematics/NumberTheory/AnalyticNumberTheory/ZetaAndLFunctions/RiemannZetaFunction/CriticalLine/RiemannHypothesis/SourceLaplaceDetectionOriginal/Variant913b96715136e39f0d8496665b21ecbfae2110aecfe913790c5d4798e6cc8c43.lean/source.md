# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceLaplaceDetectionOriginal.Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e66b101930822c98363e2ca4ebcd43dff251f0d1` · SHA-256 `4955081145d7182b5f9929812a8db6a8c01a49c8daeb33aa3689c3db94ca95f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BilateralLaplace.Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.BilateralLaplace.Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"dc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-bessel-contour-recovery/SourceLaplaceDetection.original.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation
import FormalResearch.RiemannHypothesis.GeneralizedPoleMoments
import FormalResearch.RiemannHypothesis.SourceBumpLaplace
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace

/-!
# Bilateral Laplace detection by the actual compact source

Complex exponential weighting of the actual test and correlation is genuinely
integrable. Its reflected convolution factorization uses the exact source
correlation, not a replacement test or a zero-simplicity assumption.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BilateralLaplace.Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de

namespace FormalResearch.RiemannHypothesis.SourceLaplaceDetection

open MeasureTheory Set
open scoped Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment BridgeFourier
open SourceBumpLaplace

noncomputable section

/-- Complex bilateral Laplace transform, with the positive exponential convention. -/
def bilateralLaplace (f : ℝ → ℝ) (z : ℂ) : ℂ :=
  ∫ x : ℝ, (f x : ℂ) * Complex.exp (z * (x : ℂ))

/-- The bilateral Laplace transform of the actual normalized source correlation. -/
def sourceLaplace (A : ℝ) (z : ℂ) : ℂ :=
  bilateralLaplace (sourceCorrelation explicitSecondDerivative A) z

/-- Every complex exponential weight of a continuous compact real function is integrable. -/
theorem compact_laplace_integrable (f : ℝ → ℝ) (z : ℂ)
    (hf : Continuous f) (hcf : HasCompactSupport f) :
    Integrable (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ))) := by
  have hc : Continuous (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ))) := by
    fun_prop
  have hs : HasCompactSupport (fun x : ℝ ↦ (f x : ℂ)) :=
    hcf.comp_left (g := Complex.ofReal) rfl
  exact hc.integrable_of_hasCompactSupport hs.mul_right

/-- The reflected negative Laplace weight has the same genuine integrability. -/
theorem reflected_laplace_integrable (v : ℝ → ℝ) (z : ℂ)
    (hnegative : Integrable (fun x : ℝ ↦ (v x : ℂ) * Complex.exp ((-z) * (x : ℂ)))) :
    Integrable (fun x : ℝ ↦ (v (-x) : ℂ) * Complex.exp (z * (x : ℂ))) := by
  simpa only [Complex.ofReal_neg, neg_mul_neg] using hnegative.comp_neg

/-- The actual correlation convention gives a reflected complex weighted convolution. -/
theorem complex_weighted_correlation_eq_convolution (v : ℝ → ℝ) (z : ℂ) (t : ℝ) :
    (correlation v t : ℂ) * Complex.exp (z * (t : ℂ)) =
      ((fun x : ℝ ↦ (v x : ℂ) * Complex.exp (z * (x : ℂ))) ⋆[ContinuousLinearMap.mul ℂ ℂ]
        (fun x : ℝ ↦ (v (-x) : ℂ) * Complex.exp (z * (x : ℂ)))) t := by
  unfold correlation
  have hcast : ((∫ x : ℝ, v x * v (x - t) : ℝ) : ℂ) =
      ∫ x : ℝ, ((v x * v (x - t) : ℝ) : ℂ) := integral_ofReal.symm
  rw [hcast, ← integral_mul_const, convolution]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [Complex.ofReal_mul, ContinuousLinearMap.mul_apply', neg_sub]
  have he : Complex.exp (z * (t : ℂ)) =
      Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t - x : ℝ) : ℂ)) := by
    rw [← Complex.exp_add]
    congr 1
    rw [Complex.ofReal_sub]
    ring
  rw [he]
  ring

/-- Weighted correlation integrability follows from native integrable convolution. -/
theorem complex_weighted_correlation_integrable (v : ℝ → ℝ) (z : ℂ)
    (hpositive : Integrable (fun x : ℝ ↦ (v x : ℂ) * Complex.exp (z * (x : ℂ))))
    (hnegative : Integrable (fun x : ℝ ↦ (v x : ℂ) * Complex.exp ((-z) * (x : ℂ)))) :
    Integrable (fun t : ℝ ↦ (correlation v t : ℂ) * Complex.exp (z * (t : ℂ))) := by
  have h := hpositive.integrable_convolution (ContinuousLinearMap.mul ℂ ℂ)
    (reflected_laplace_integrable v z hnegative)
  have he : (fun t : ℝ ↦ (correlation v t : ℂ) * Complex.exp (z * (t : ℂ))) =
      (fun x : ℝ ↦ (v x : ℂ) * Complex.exp (z * (x : ℂ))) ⋆[ContinuousLinearMap.mul ℂ ℂ]
        (fun x : ℝ ↦ (v (-x) : ℂ) * Complex.exp (z * (x : ℂ))) :=
    funext (complex_weighted_correlation_eq_convolution v z)
  rw [he]
  exact h

/-- Genuine complex weighted Fubini factorization retains reflection in its second factor. -/
theorem bilateral_laplace_correlation (v : ℝ → ℝ) (z : ℂ)
    (hpositive : Integrable (fun x : ℝ ↦ (v x : ℂ) * Complex.exp (z * (x : ℂ))))
    (hnegative : Integrable (fun x : ℝ ↦ (v x : ℂ) * Complex.exp ((-z) * (x : ℂ)))) :
    bilateralLaplace (correlation v) z = bilateralLaplace v z * bilateralLaplace v (-z) := by
  unfold bilateralLaplace
  simp_rw [complex_weighted_correlation_eq_convolution]
  rw [integral_convolution (ContinuousLinearMap.mul ℂ ℂ) hpositive
    (reflected_laplace_integrable v z hnegative)]
  change _ * (∫ x : ℝ, (v (-x) : ℂ) * Complex.exp (z * (x : ℂ))) = _
  congr 1
  simpa only [Complex.ofReal_neg, neg_mul_neg] using
    integral_neg_eq_self (fun x : ℝ ↦ (v x : ℂ) * Complex.exp ((-z) * (x : ℂ))) volume

/-- Actual test weights are genuinely integrable for every complex parameter. -/
theorem normalized_test_laplace_integrable (A : ℝ) (z : ℂ) (hA : 1 ≤ A) :
    Integrable (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ) *
      Complex.exp (z * (x : ℂ))) :=
  compact_laplace_integrable _ z (normalizedTest_contDiff A (by linarith)).continuous
    (normalizedTest_hasCompactSupport A (by linarith))

/-- Actual source Laplace integrability is proved before evaluating its transform. -/
theorem source_laplace_integrable (A : ℝ) (z : ℂ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp (z * (t : ℂ))) :=
  complex_weighted_correlation_integrable _ z
    (normalized_test_laplace_integrable A z hA)
    (normalized_test_laplace_integrable A (-z) hA)

/-- The exact source correlation is the product of the two actual reflected test transforms. -/
theorem source_laplace_eq_test_product (A : ℝ) (z : ℂ) (hA : 1 ≤ A) :
    sourceLaplace A z = bilateralLaplace (normalizedTest explicitSecondDerivative A) z *
      bilateralLaplace (normalizedTest explicitSecondDerivative A) (-z) :=
  bilateral_laplace_correlation _ z (normalized_test_laplace_integrable A z hA)
    (normalized_test_laplace_integrable A (-z) hA)

/-- Laplace integration of an actual closed interval zero extension has no endpoint atom. -/
theorem bilateral_laplace_indicator (f : ℝ → ℝ) (a b : ℝ) (z : ℂ) (hab : a ≤ b) :
    bilateralLaplace ((Icc a b).indicator f) z =
      ∫ x in a..b, (f x : ℂ) * Complex.exp (z * (x : ℂ)) := by
  unfold bilateralLaplace
  have he : (fun x : ℝ ↦ (((Icc a b).indicator f x : ℝ) : ℂ) *
      Complex.exp (z * (x : ℂ))) =
      (Icc a b).indicator (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ))) := by
    funext x
    by_cases hx : x ∈ Icc a b <;> simp [hx]
  rw [he, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    intervalIntegral.integral_of_le hab]

/-- Compact interval exponential weights are genuinely integrable even at nonzero traces. -/
theorem indicator_laplace_integrable (f : ℝ → ℝ) (hf : Continuous f) (a b : ℝ) (z : ℂ) :
    Integrable (fun x : ℝ ↦ (((Icc a b).indicator f x : ℝ) : ℂ) *
      Complex.exp (z * (x : ℂ))) := by
  have hc : Continuous (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ))) := by fun_prop
  have hi : Integrable ((Icc a b).indicator
      (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ)))) :=
    hc.integrableOn_Icc.integrable_indicator measurableSet_Icc
  convert hi using 1
  funext x
  by_cases hx : x ∈ Icc a b <;> simp [hx]

/-- Ordinary differentiation of the complex Laplace wave has its exact multiplier. -/
theorem laplace_wave_has_deriv_at (z : ℂ) (x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Complex.exp (z * (y : ℂ)))
      (z * Complex.exp (z * (x : ℂ))) x := by
  simpa [mul_comm] using (((hasDerivAt_id x).ofReal_comp.const_mul z).cexp)

/-- One zero-trace integration by parts gives the complex Laplace derivative factor. -/
theorem bilateral_laplace_indicator_derivative (f f' : ℝ → ℝ) (a b : ℝ) (z : ℂ)
    (hab : a ≤ b) (hf : Continuous f) (hf' : Continuous f')
    (hd : ∀ x, HasDerivAt f (f' x) x) (ha : f a = 0) (hb : f b = 0) :
    bilateralLaplace ((Icc a b).indicator f') z =
      -z * bilateralLaplace ((Icc a b).indicator f) z := by
  let w : ℝ → ℂ := fun x ↦ Complex.exp (z * (x : ℂ))
  have hw : Continuous w := by dsimp [w]; fun_prop
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := a) (b := b) (Complex.continuous_ofReal.comp hf).continuousOn hw.continuousOn
    (fun x _ ↦ (hd x).ofReal_comp) (fun x _ ↦ laplace_wave_has_deriv_at z x)
    ((Complex.continuous_ofReal.comp hf').intervalIntegrable a b)
    ((continuous_const.mul hw).intervalIntegrable a b)
  simp only [Function.comp_apply] at hi
  rw [ha, hb] at hi
  simp only [Complex.ofReal_zero, zero_mul, sub_zero, zero_sub] at hi
  have he : (∫ x in a..b, (f x : ℂ) * (z * w x)) =
      z * ∫ x in a..b, (f x : ℂ) * w x := by
    simp_rw [mul_left_comm (f _ : ℂ) z]
    rw [intervalIntegral.integral_const_mul]
  change (∫ x in a..b, (f x : ℂ) * (z * w x)) =
    -(∫ x in a..b, (f' x : ℂ) * w x) at hi
  rw [he] at hi
  rw [bilateral_laplace_indicator _ _ _ _ hab, bilateral_laplace_indicator _ _ _ _ hab]
  change (∫ x in a..b, (f' x : ℂ) * w x) = -z * ∫ x in a..b, (f x : ℂ) * w x
  linear_combination hi

/-- Two actual zero-trace integrations by parts supply the source's complex `z²` factor. -/
theorem explicit_second_derivative_laplace (A : ℝ) (z : ℂ) (hA : 1 ≤ A) :
    bilateralLaplace (explicitSecondDerivative A) z =
      z ^ 2 * bilateralLaplace (scaledBump A) z := by
  have hpos : 0 < A := by linarith
  have hne := ne_of_gt hpos
  have h0 := bilateral_laplace_indicator_derivative (bumpInterior A) (firstInterior A)
    (-A) A z (by linarith) (bumpInterior_continuous A) (firstInterior_continuous A)
    (bumpInterior_hasDerivAt A) (bumpInterior_endpoints A hne).1 (bumpInterior_endpoints A hne).2
  have h1 := bilateral_laplace_indicator_derivative (firstInterior A) (secondInterior A)
    (-A) A z (by linarith) (firstInterior_continuous A) (secondInterior_continuous A)
    (firstInterior_hasDerivAt A) (firstInterior_endpoints A hne).1 (firstInterior_endpoints A hne).2
  rw [explicitSecondDerivative, scaledBump_eq_indicator A hpos, h1, h0]
  ring

/-- The scaled bump has an integrable complex Laplace weight. -/
theorem scaled_bump_laplace_integrable (A : ℝ) (z : ℂ) (hA : 0 < A) :
    Integrable (fun x : ℝ ↦ (scaledBump A x : ℂ) * Complex.exp (z * (x : ℂ))) := by
  rw [scaledBump_eq_indicator A hA]
  exact indicator_laplace_integrable _ (bumpInterior_continuous A) _ _ z

/-- The actual weak second derivative has an integrable complex Laplace weight. -/
theorem explicit_second_derivative_laplace_integrable (A : ℝ) (z : ℂ) :
    Integrable (fun x : ℝ ↦ (explicitSecondDerivative A x : ℂ) * Complex.exp (z * (x : ℂ))) :=
  indicator_laplace_integrable _ (secondInterior_continuous A) _ _ z

/-- Exact normalization leaves the complex pole factor and the scaled bump transform. -/
theorem normalized_test_laplace (A : ℝ) (z : ℂ) (hA : 1 ≤ A) :
    bilateralLaplace (normalizedTest explicitSecondDerivative A) z =
      (z ^ 2 - 1 / 4) * bilateralLaplace (scaledBump A) z /
        (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold bilateralLaplace normalizedTest dilationTest
  simp only [Complex.ofReal_div, Complex.ofReal_sub, Complex.ofReal_ofNat]
  simp_rw [div_mul_eq_mul_div]
  simp_rw [sub_mul]
  simp_rw [div_mul_eq_mul_div]
  rw [integral_div, integral_sub (explicit_second_derivative_laplace_integrable A z)
    ((scaled_bump_laplace_integrable A z (by linarith)).div_const (4 : ℂ)), integral_div]
  change (bilateralLaplace (explicitSecondDerivative A) z -
    bilateralLaplace (scaledBump A) z / 4) / (Real.sqrt (sourceNormalization A) : ℂ) = _
  rw [explicit_second_derivative_laplace A z hA]
  unfold bilateralLaplace
  ring

/-- Dilation retains exactly `A / √A` and the parameter `A z` in the fixed bump transform. -/
theorem scaled_bump_laplace (A : ℝ) (z : ℂ) (hA : 0 < A) :
    bilateralLaplace (scaledBump A) z =
      (A : ℂ) / (Real.sqrt A : ℂ) * bilateralLaplace sourceBump ((A : ℂ) * z) := by
  unfold bilateralLaplace scaledBump
  simp_rw [Complex.ofReal_div, div_mul_eq_mul_div]
  rw [integral_div]
  have he : (fun x : ℝ ↦ (sourceBump (x / A) : ℂ) * Complex.exp (z * (x : ℂ))) =
      fun x : ℝ ↦ ((sourceBump (x / A) : ℂ) *
        Complex.exp (((A : ℂ) * z) * ((x / A : ℝ) : ℂ))) := by
    funext x
    congr 2
    rw [Complex.ofReal_div]
    field_simp [ne_of_gt hA]
  have hd : (∫ x : ℝ, (sourceBump (x / A) : ℂ) *
      Complex.exp (((A : ℂ) * z) * ((x / A : ℝ) : ℂ))) =
      (A : ℂ) * ∫ y : ℝ, (sourceBump y : ℂ) * Complex.exp (((A : ℂ) * z) * (y : ℂ)) := by
    simpa only [abs_of_pos hA, Complex.real_smul] using
      Measure.integral_comp_div (fun y : ℝ ↦ (sourceBump y : ℂ) *
        Complex.exp (((A : ℂ) * z) * (y : ℂ))) A
  rw [he, hd]

/-- The global actual zero-extended bump transform equals the fixed source interval transform. -/
theorem bilateral_laplace_source_bump (z : ℂ) :
    bilateralLaplace sourceBump z = bumpLaplace z := by
  have he : sourceBump = (Icc (-1 : ℝ) 1).indicator (fun x ↦ (1 - x ^ 2) ^ 4) := by
    funext x
    by_cases hx : x ∈ Icc (-1 : ℝ) 1 <;> simp [sourceBump, hx]
  rw [he, bilateral_laplace_indicator _ _ _ _ (by norm_num)]
  rfl

/-- The exact bilateral transform retains the actual radius, pole and normalization. -/
theorem source_laplace_eq_bump_square (A : ℝ) (z : ℂ) (hA : 1 ≤ A) :
    sourceLaplace A z = (A : ℂ) / (sourceNormalization A : ℂ) *
      (z ^ 2 - 1 / 4) ^ 2 * bumpLaplace ((A : ℂ) * z) ^ 2 := by
  have hApos : 0 < A := by linarith
  have hZpos := source_normalization_pos A hA
  have hAsqrt : (Real.sqrt A : ℂ) ^ 2 = (A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hApos.le
  have hZsqrt : (Real.sqrt (sourceNormalization A) : ℂ) ^ 2 =
      (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZpos.le
  have ha : (Real.sqrt A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt (Real.sqrt_pos.mpr hApos)
  have hz : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (Real.sqrt_pos.mpr hZpos)
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hApos
  have hZc : (sourceNormalization A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hZpos
  rw [source_laplace_eq_test_product A z hA, normalized_test_laplace A z hA,
    normalized_test_laplace A (-z) hA, scaled_bump_laplace A z hApos,
    scaled_bump_laplace A (-z) hApos]
  simp_rw [bilateral_laplace_source_bump]
  rw [mul_neg, bump_laplace_even]
  simp only [neg_sq]
  field_simp [ha, hz, hAc, hZc]
  rw [hAsqrt, hZsqrt]

/-- Explicit source detection needs only the actual bump's nonvanishing and the pole factor. -/
theorem source_laplace_ne_zero_of_bump_ne_zero (A : ℝ) (z : ℂ) (hA : 1 ≤ A)
    (hq : z ^ 2 - 1 / 4 ≠ 0) (hb : bumpLaplace ((A : ℂ) * z) ≠ 0) :
    sourceLaplace A z ≠ 0 := by
  rw [source_laplace_eq_bump_square A z hA]
  have ha : (A : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt (by linarith : 0 < A))
  have hz : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (source_normalization_pos A hA)
  exact mul_ne_zero (mul_ne_zero (div_ne_zero ha hz) (pow_ne_zero _ hq)) (pow_ne_zero _ hb)

/-- Every strict-strip point avoids the two endpoint poles after the source shift. -/
theorem shifted_strip_pole_factor_ne_zero (ρ : ℂ) (hρ0 : 0 < ρ.re) (hρ1 : ρ.re < 1) :
    (ρ - 1 / 2) ^ 2 - 1 / 4 ≠ 0 := by
  have he : (ρ - 1 / 2) ^ 2 - 1 / 4 = ρ * (ρ - 1) := by ring
  rw [he]
  apply mul_ne_zero
  · intro hz
    have hr := congrArg Complex.re hz
    simp only [Complex.zero_re] at hr
    linarith
  · intro hz
    have hr := congrArg Complex.re (sub_eq_zero.mp hz)
    norm_num at hr
    linarith

/-- An off-line strip point stays off the bump's imaginary axis at every admitted radius. -/
theorem scaled_shift_re_ne_zero (A : ℝ) (ρ : ℂ) (hA : 1 ≤ A) (hρ : ρ.re ≠ 1 / 2) :
    (((A : ℂ) * (ρ - 1 / 2)).re) ≠ 0 := by
  have he : (((A : ℂ) * (ρ - 1 / 2)).re) = A * (ρ.re - 1 / 2) := by simp
  rw [he]
  exact mul_ne_zero (ne_of_gt (by linarith : 0 < A)) (sub_ne_zero.mpr hρ)

/-- Conditional detection exposes the bump nonvanishing obligation rather than assuming it. -/
theorem source_laplace_strip_ne_zero_of_bump_ne_zero (A : ℝ) (ρ : ℂ) (hA : 1 ≤ A)
    (hρ0 : 0 < ρ.re) (hρ1 : ρ.re < 1)
    (hb : bumpLaplace ((A : ℂ) * (ρ - 1 / 2)) ≠ 0) :
    sourceLaplace A (ρ - 1 / 2) ≠ 0 :=
  source_laplace_ne_zero_of_bump_ne_zero A _ hA
    (shifted_strip_pole_factor_ne_zero ρ hρ0 hρ1) hb

/-- The actual source detects every off-line strict-strip point at every admitted radius.
No zeta-zero predicate or simplicity assumption is required. -/
theorem source_laplace_strip_ne_zero (A : ℝ) (ρ : ℂ) (hA : 1 ≤ A)
    (hρ0 : 0 < ρ.re) (hρ1 : ρ.re < 1) (hρ : ρ.re ≠ 1 / 2) :
    sourceLaplace A (ρ - 1 / 2) ≠ 0 :=
  source_laplace_strip_ne_zero_of_bump_ne_zero A ρ hA hρ0 hρ1
    (bump_laplace_ne_zero_of_re_ne_zero _ (scaled_shift_re_ne_zero A ρ hA hρ))

/-- The two exact endpoint pole observations vanish without a zero-simplicity premise. -/
theorem source_laplace_poles_zero (A : ℝ) (hA : 1 ≤ A) :
    sourceLaplace A (1 / 2) = 0 ∧ sourceLaplace A (-1 / 2) = 0 := by
  rw [source_laplace_eq_bump_square A (1 / 2) hA,
    source_laplace_eq_bump_square A (-1 / 2) hA]
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceLaplaceDetection
```
