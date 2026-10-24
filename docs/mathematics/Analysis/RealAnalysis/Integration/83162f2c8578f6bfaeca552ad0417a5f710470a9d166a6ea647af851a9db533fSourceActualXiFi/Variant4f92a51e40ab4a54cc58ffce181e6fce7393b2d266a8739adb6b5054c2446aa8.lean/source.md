# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi.Variant4f92a51e40ab4a54cc58ffce181e6fce7393b2d266a8739adb6b5054c2446aa8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b048a788125e7b1edfc4541dfea43ad78c2cc811` · SHA-256 `3f8ee15204af1e23e7cbccb6d67c5bcf00f5393887c79a66899583c50ea3fdae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FixedFrontHeight.Variant83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FixedFrontHeight.Variant83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533f","mathematical_subject":"Analysis.Integration","original_sha256":"83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-joint-kernel-next/review/consumer-formulas-20261007T085605Z/source-bytes/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533f--SourceActualXiFixedFront.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiPositiveBlock

/-!
Uniform finite-front budget for the unchanged actual shifted Xi density. The
closed Chebyshev prefix includes every prime power and the prime-seven atom.
No signed bound on the remaining complete tail is supplied. Research direction,
selection and evaluation: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.FixedFrontHeight.Variant83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533f

set_option autoImplicit false
noncomputable section

namespace RH16ActualXiFixedFront

open MeasureTheory Set
open RH16ActualXiPositiveBlock RH16ActualPsiNegativeBlock
open FormalResearch.RiemannHypothesis
open SourcePairing SourceMangoldtNorm SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

/-- A fixed scalar height bounds the complete actual discrepancy on the front. -/
def fixedFrontHeight : ℝ :=
  Real.log 420 + 13 / 2 + |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)|

/-- The literal physical front length is nine halves. -/
def fixedFrontBudget : ℝ := (9 / 2 : ℝ) * fixedFrontHeight

theorem fixedFrontHeight_nonneg : 0 ≤ fixedFrontHeight := by
  have hl : 0 ≤ Real.log (420 : ℝ) := Real.log_nonneg (by norm_num)
  unfold fixedFrontHeight
  positivity

theorem fixedFrontBudget_nonneg : 0 ≤ fixedFrontBudget :=
  mul_nonneg (by norm_num) fixedFrontHeight_nonneg

/-- The actual closed value at seven bounds psi at every real front coordinate. -/
theorem shiftedActualChebyshev_abs_le_frontHeight (y : ℝ)
    (hy : 2 ≤ y) (hyu : y ≤ 13 / 2) :
    |shiftedActualChebyshev y| ≤ fixedFrontHeight := by
  have hpsi0 := Chebyshev.psi_nonneg y
  have hpsi7 := Chebyshev.psi_mono (show y ≤ (7 : ℝ) by linarith)
  rw [actual_psi_at_closed_seven] at hpsi7
  unfold shiftedActualChebyshev
  have hs : |Chebyshev.psi y - y| ≤ |Chebyshev.psi y| + |y| := by
    simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le (Chebyshev.psi y) 0 y
  have hb := (abs_add_le (Chebyshev.psi y - y)
    (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))).trans
      (add_le_add hs (le_rfl :
        |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)| ≤
          |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)|))
  rw [abs_of_nonneg hpsi0, abs_of_nonneg (show 0 ≤ y by linarith)] at hb
  unfold fixedFrontHeight
  linarith

/-- The actual norm-one bound and first-derivative bound suffice on every coordinate. -/
theorem actual_transformed_kernel_abs_le_one (A y : ℝ) (hA : 40 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
      sourceCorrelation explicitSecondDerivative A (Real.log y) / 2| ≤ 1 := by
  have hA1 : 1 ≤ A := by linarith
  have hd := sourceCorrelation_deriv_abs_le_five_div hA1 (Real.log y)
  have hc := actual_correlation_abs_le_one A (Real.log y) hA1
  have hdb : 5 / A ≤ (1 / 8 : ℝ) :=
    (div_le_iff₀ (by linarith : 0 < A)).mpr (by linarith)
  have hb : |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
      sourceCorrelation explicitSecondDerivative A (Real.log y) / 2| ≤
        |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y)| +
          |sourceCorrelation explicitSecondDerivative A (Real.log y) / 2| := by
    simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y)) 0
      (sourceCorrelation explicitSecondDerivative A (Real.log y) / 2)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hb
  linarith

/-- No sign of Xi is assumed on the finite front. -/
theorem actual_transformed_front_density_abs_le (A y : ℝ) (hA : 40 ≤ A)
    (hy : 2 ≤ y) (hyu : y ≤ 13 / 2) :
    |actualTransformedXiBlockDensity A y| ≤ fixedFrontHeight := by
  have hyp : 0 < y := by linarith
  have hp : 1 ≤ y ^ (3 / 2 : ℝ) :=
    Real.one_le_rpow (by linarith : 1 ≤ y) (by norm_num)
  have hk := actual_transformed_kernel_abs_le_one A y hA
  have hx := shiftedActualChebyshev_abs_le_frontHeight y hy hyu
  unfold actualTransformedXiBlockDensity
  rw [abs_div, abs_mul, abs_of_pos (Real.rpow_pos_of_pos hyp _)]
  apply (div_le_iff₀ (Real.rpow_pos_of_pos hyp _)).mpr
  calc
    _ ≤ fixedFrontHeight * 1 := mul_le_mul hx hk (abs_nonneg _) fixedFrontHeight_nonneg
    _ ≤ fixedFrontHeight * y ^ (3 / 2 : ℝ) :=
      mul_le_mul_of_nonneg_left hp fixedFrontHeight_nonneg

theorem actual_transformed_front_intervalIntegrable (A : ℝ) (hA : 40 ≤ A) :
    IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 (13 / 2) := by
  have hp : 0 < A := by linarith
  have hc := (sourceCorrelation_contDiff A hp).continuous
  have hd := (sourceCorrelation_contDiff A hp).continuous_deriv_one
  have hw : ContinuousOn (fun y : ℝ =>
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
          y ^ (3 / 2 : ℝ)) (Icc 2 (13 / 2)) := by
    intro y hy
    have hypos : 0 < y := by linarith [hy.1]
    exact ((hd.continuousAt.comp (Real.continuousAt_log hypos.ne')).sub
      ((hc.continuousAt.comp (Real.continuousAt_log hypos.ne')).div_const 2) |>.div
        (continuousAt_id.rpow_const (Or.inl hypos.ne'))
        (Real.rpow_pos_of_pos hypos _).ne').continuousWithinAt
  have hi := SourceActualPsiInverseSquare.shiftedActualChebyshev_mul_intervalIntegrable
    (13 / 2) (by norm_num) _ hw
  change IntervalIntegrable (fun y => shiftedActualChebyshev y *
    (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
      sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
        y ^ (3 / 2 : ℝ)) volume 2 (13 / 2)
  simpa only [mul_div_assoc] using hi

/-- The finite front contributes at worst its explicit fixed length-times-height budget. -/
theorem actual_transformed_front_integral_lower (A : ℝ) (hA : 40 ≤ A) :
    -fixedFrontBudget ≤ ∫ y in 2..(13 / 2 : ℝ), actualTransformedXiBlockDensity A y := by
  have hmono : (∫ y in (2 : ℝ)..(13 / 2 : ℝ), -fixedFrontHeight) ≤
      ∫ y in 2..(13 / 2 : ℝ), actualTransformedXiBlockDensity A y := by
    apply intervalIntegral.integral_mono_on (by norm_num)
      (continuous_const.intervalIntegrable _ _)
      (actual_transformed_front_intervalIntegrable A hA)
    intro y hy
    exact (abs_le.mp (actual_transformed_front_density_abs_le A y hA hy.1 hy.2)).1
  have he : (∫ y in (2 : ℝ)..(13 / 2 : ℝ), -fixedFrontHeight) = -fixedFrontBudget := by
    rw [intervalIntegral.integral_const]
    unfold fixedFrontBudget
    simp only [smul_eq_mul]
    ring
  rw [he] at hmono
  exact hmono

end RH16ActualXiFixedFront
```
