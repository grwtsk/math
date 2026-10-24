# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.199412cac190f1487513SourceCubicSignedUpperCoefficients.Variant04cccf77dc41c1615a067453c2fe6761a1bc1b6965bb279fbb83158c56435dbb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6fea837fc63ff5ae42a73956188dc798c92aabf` · SHA-256 `2f483e7650b265fd5c869af7168e2221d360d8c00240fbd2d304b9fec6cf48ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CubicUpperCoefficientWeight.Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CubicUpperCoefficientWeight.Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/199412cac190f1487513-SourceCubicSignedUpperCoefficients.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceUpperCenteredQuadrature
import SourceActualCubicShortCalibration

/-!
# Independent signed upper cubic coefficients for actual source sampling

AI attribution: OpenAI Codex. Every coefficient is an ordinary signed integral
of the literal centered sawtooth on u>1. The complete four-jet model integrates
exactly to these independently specified constants. Actual sampling retains
its upper continuous baseline, cubic signed jets and full error inventory.
The finite complementary divisor sector is not bounded or deleted. This is
not a replacement Omega definition or a uniform signed arithmetic witness.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CubicUpperCoefficientWeight.Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCubicSignedUpperCoefficients

open MeasureTheory Set Filter
open scoped BigOperators
open SourcePairing SourcePositiveSampling SourceCubicCorrelationTaylor SourceCubicSamplingRemainder
open SourceCubicUpperLogMoments SourceActualCubicCenteredRows SourceActualCubicShortCalibration
open SourceUpperCenteredQuadrature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

noncomputable section

/-- Literal signed upper logarithmic moment density. -/
def cubicUpperCoefficientWeight (j : ℕ) (u : ℝ) : ℝ := centeredSawtooth u * upperLogWeight j u

/-- The coefficient moments are genuine signed L1 integrals on the fixed upper domain. -/
theorem cubicUpperCoefficientWeight_integrable (j : ℕ) :
    IntegrableOn (cubicUpperCoefficientWeight j) (Ioi (1 : ℝ)) :=
  (upperLogWeight_integrable j).bdd_mul centeredSawtooth_measurable.aestronglyMeasurable
    (Eventually.of_forall (fun u => by
      rw [Real.norm_eq_abs]
      exact centeredSawtooth_abs_le_half u))

/-- Independent signed universal upper coefficient, with no sign assumption. -/
def cubicUpperCoefficientMoment (j : ℕ) : ℝ :=
  ∫ u in Ioi (1 : ℝ), cubicUpperCoefficientWeight j u

/-- Independently specified coefficient of the constant correlation jet. -/
def cubicUpperBeta0 : ℝ := cubicUpperCoefficientMoment 0 - cubicUpperCoefficientMoment 1 / 2

/-- Independently specified coefficient of the first correlation jet. -/
def cubicUpperBeta1 : ℝ := 2 * cubicUpperCoefficientMoment 1 - cubicUpperCoefficientMoment 2 / 2

/-- Independently specified coefficient of the second correlation jet. -/
def cubicUpperBeta2 : ℝ := 3 / 2 * cubicUpperCoefficientMoment 2 - cubicUpperCoefficientMoment 3 / 4

/-- Independently specified coefficient of the third correlation jet. -/
def cubicUpperBeta3 : ℝ := 2 / 3 * cubicUpperCoefficientMoment 3 - cubicUpperCoefficientMoment
  4 / 12

/-- The full actual four-jet source main is fixed before comparison with any sampling residual. -/
def cubicUpperMainTerm (A k : ℝ) : ℝ :=
  1 / Real.sqrt k *
    (cubicUpperBeta0 * sourceCorrelation explicitSecondDerivative A (Real.log k) +
      cubicUpperBeta1 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) +
      cubicUpperBeta2 * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k) +
      cubicUpperBeta3 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
        (Real.log k))

/-- The actual cubic derivative model keeps all five independent signed moment densities. -/
theorem cubic_model_integrand_eq_upper_coefficients (A k u : ℝ) :
    centeredSawtooth u * cubicLogModelDerivative A k u =
      1 / Real.sqrt k *
      (sourceCorrelation explicitSecondDerivative A (Real.log k) * cubicUpperCoefficientWeight 0 u +
        (2 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) -
          sourceCorrelation explicitSecondDerivative A (Real.log k) / 2) *
            cubicUpperCoefficientWeight 1 u +
        (3 / 2 * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k) -
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) / 2) *
            cubicUpperCoefficientWeight 2 u +
        (2 / 3 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (Real.log k) -
          deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k) / 4) *
            cubicUpperCoefficientWeight 3 u +
        (-deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (Real.log k) / 12) *
          cubicUpperCoefficientWeight 4 u) := by
  unfold cubicLogModelDerivative
  rw [(cubicCorrelationJet_hasDerivAt A (Real.log k) (Real.log u)).deriv]
  unfold cubicCorrelationJet cubicUpperCoefficientWeight upperLogWeight
  simp only [pow_zero, pow_one]
  ring

/-- The independent signed model integral is exactly the full four-jet coefficient main. -/
theorem cubic_signed_upper_model_eq_main (A k : ℝ) :
    cubicSignedUpperModelRow A k = cubicUpperMainTerm A k := by
  let c0 := sourceCorrelation explicitSecondDerivative A (Real.log k)
  let c1 := deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)
  let c2 := deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k)
  let c3 := deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (Real.log k)
  have h0 := (cubicUpperCoefficientWeight_integrable 0).const_mul c0
  have h1 := (cubicUpperCoefficientWeight_integrable 1).const_mul (2 * c1 - c0 / 2)
  have h2 := (cubicUpperCoefficientWeight_integrable 2).const_mul (3 / 2 * c2 - c1 / 2)
  have h3 := (cubicUpperCoefficientWeight_integrable 3).const_mul (2 / 3 * c3 - c2 / 4)
  have h4 := (cubicUpperCoefficientWeight_integrable 4).const_mul (-c3 / 12)
  unfold cubicSignedUpperModelRow
  simp_rw [cubic_model_integrand_eq_upper_coefficients]
  have hs4 := integral_add (((h0.add h1).add h2).add h3) h4
  have hs3 := integral_add ((h0.add h1).add h2) h3
  have hs2 := integral_add (h0.add h1) h2
  have hs1 := integral_add h0 h1
  simp only [Pi.add_apply, c0, c1, c2, c3] at hs4 hs3 hs2 hs1
  rw [integral_const_mul, hs4, hs3, hs2, hs1]
  simp_rw [integral_const_mul]
  unfold cubicUpperMainTerm cubicUpperBeta0 cubicUpperBeta1 cubicUpperBeta2 cubicUpperBeta3
    cubicUpperCoefficientMoment
  ring

/-- Actual source samples equal the retained upper baseline, all signed jets and actual error. -/
theorem actual_logProfile_upper_cubic_coefficients {A k : ℝ} (hA : 91 ≤ A) (hk : 1 ≤ k) :
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k n) =
      (∫ u in Ioi (1 : ℝ), logProfile A k u) + cubicUpperMainTerm A k +
        cubicCenteredLogErrorRow A k := by
  rw [actual_logProfile_upper_cubic_sampling hA hk, cubic_signed_upper_model_eq_main]

/-- Every divisor in the literal short inventory retains its continuous baseline and all jets. -/
theorem actual_short_divisor_upper_cubic_coefficients (A : ℝ) (hA : 91 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) n)) =
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      ((∫ u in Ioi (1 : ℝ), logProfile A (d : ℝ) u) + cubicUpperMainTerm A (d : ℝ))) +
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) := by
  rw [actual_short_divisor_upper_cubic_sampling A hA]
  simp_rw [cubic_signed_upper_model_eq_main]

/-- The real finite sampling error is the actual signed row sum, with no replacement main. -/
theorem actual_short_divisor_cubic_sampling_error_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |(∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) n)) -
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      ((∫ u in Ioi (1 : ℝ), logProfile A (d : ℝ) u) + cubicUpperMainTerm A (d : ℝ)))| ≤
      320 * 67 / A ^ 3 := by
  rw [actual_short_divisor_upper_cubic_coefficients A hA, add_sub_cancel_left]
  exact actual_cubic_short_divisor_sum_abs_le A hA

/-- The checked 3/50 budget now applies to genuine actual finite upper sampling. -/
theorem actual_short_divisor_cubic_sampling_error_plus_plain_calibration_lt
    (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 +
    |(∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) n)) -
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      ((∫ u in Ioi (1 : ℝ), logProfile A (d : ℝ) u) + cubicUpperMainTerm A (d : ℝ)))| <
      3 / 50 := by
  rw [actual_short_divisor_upper_cubic_coefficients A hA, add_sub_cancel_left]
  exact actual_short_cubic_error_plus_plain_calibration_lt A hA

/-- Full finite divisor sampling leaves every complementary row in the exact error sum. -/
theorem actual_full_divisor_upper_cubic_coefficients (A : ℝ) (hA : 91 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) n)) =
    (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      ((∫ u in Ioi (1 : ℝ), logProfile A (d : ℝ) u) + cubicUpperMainTerm A (d : ℝ))) +
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) +
    (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) := by
  have he : (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) n)) =
      (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
        ((∫ u in Ioi (1 : ℝ), logProfile A (d : ℝ) u) + cubicUpperMainTerm A (d : ℝ))) +
      (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
        cubicCenteredLogErrorRow A (d : ℝ)) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    have hd1 : 1 ≤ (d : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    rw [actual_logProfile_upper_cubic_coefficients hA hd1]
    ring
  rw [he, actual_cubic_full_divisor_sum_eq_short_add_complement A (by linarith), ← add_assoc]

end
end FormalResearch.RiemannHypothesis.SourceCubicSignedUpperCoefficients
```
