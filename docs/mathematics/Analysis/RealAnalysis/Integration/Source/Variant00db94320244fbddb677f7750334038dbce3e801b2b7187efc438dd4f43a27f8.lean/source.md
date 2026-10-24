# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Source.Variant00db94320244fbddb677f7750334038dbce3e801b2b7187efc438dd4f43a27f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b5780ade2a64408c147af242fdb1043680e97b8` · SHA-256 `f324c3b9bcf0f0e4a2a883a36db1af3438c71b36cf5371f589ff7ce77d530bf7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.WholeCubicMajorant.Variant8fe2745b42b65976874502930ec2a63692c225570b64b77253ef3a1061bc87e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8fe2745b42b65976874502930ec2a63692c225570b64b77253ef3a1061bc87e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.WholeCubicMajorant.Variant8fe2745b42b65976874502930ec2a63692c225570b64b77253ef3a1061bc87e7","mathematical_subject":"Analysis.Integration","original_sha256":"8fe2745b42b65976874502930ec2a63692c225570b64b77253ef3a1061bc87e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/xi-analysis/four-jet-remainder/attempt03/source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCubicSamplingRemainder
import SourceFullPositiveKappa
import SourceFullDivisorLogInventory
import SourceActualCubicCenteredRows
import FormalResearch.RiemannHypothesis.SourceFractionalQuadrature

/-!
Actual all-positive-axis cubic sampling error, including the negative log head.
Direction and conceptual origin: grwtsk contributors.
Native source construction and calculation: OpenAI Codex assistance.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.WholeCubicMajorant.Variant8fe2745b42b65976874502930ec2a63692c225570b64b77253ef3a1061bc87e7

set_option autoImplicit false
noncomputable section
namespace RH16WholeCubic
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourcePositiveSampling SourceSamplingRemainder SourceCubicCorrelationTaylor
open SourceCubicSamplingRemainder SourceSamplingCoefficients SourceFullPositiveKappa
open SourceActualCubicCenteredRows SourceSignedSamplingExplicitBudget
open SourceFullDivisorLogInventory SourceFractionalQuadrature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel

/-- Whole-axis integrable remainder majorant, retaining fractional part below one. -/
def wholeCubicMajorant (A k u : ℝ) : ℝ :=
  67 / (A ^ 4 * Real.sqrt k) *
    ((5 / 24 : ℝ) * absoluteCoefficientWeight 4 u + absoluteCoefficientWeight 5 u / 48)

/-- Literal actual signed whole-axis sampling remainder. -/
def wholeCubicErrorRow (A k : ℝ) : ℝ :=
  ∫ u in Ioi (0 : ℝ), Int.fract u *
    (deriv (logProfile A k) u - cubicLogModelDerivative A k u)

/-- All real logarithmic displacements are admitted, including zero and negative ones. -/
theorem cubic_log_error_all_positive {A k u : ℝ} (hA : 91 ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |deriv (logProfile A k) u - cubicLogModelDerivative A k u| ≤
      67 / (A ^ 4 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        ((5 / 24 : ℝ) * |Real.log u| ^ 4 + |Real.log u| ^ 5 / 48) := by
  have hw : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  have hR := cubicCorrelationRemainder_abs_le A (Real.log k) (Real.log u) hA
  have hd := cubicCorrelationRemainder_deriv_abs_le A (Real.log k) (Real.log u) hA
  have h4 : |Real.log u| ^ 4 = (Real.log u) ^ 4 := by
    rw [show (4 : ℕ) = 2 * 2 from rfl, pow_mul, pow_mul, sq_abs]
  rw [← h4] at hR
  have hc : |1 - Real.log u / 2| ≤ 1 + |Real.log u| / 2 := by
    simpa only [abs_one, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
      abs_sub (1 : ℝ) (Real.log u / 2)
  rw [cubic_log_derivative_difference (by linarith) hk hu, abs_mul, abs_of_nonneg hw]
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|1 - Real.log u / 2| * |cubicCorrelationRemainder A (Real.log k) (Real.log u)| +
          |Real.log u| * |deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u)|) := by
      apply mul_le_mul_of_nonneg_left _ hw
      simpa only [abs_mul] using abs_add_le
        ((1 - Real.log u / 2) * cubicCorrelationRemainder A (Real.log k) (Real.log u))
        (Real.log u * deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u))
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        ((1 + |Real.log u| / 2) * (67 / A ^ 4 * |Real.log u| ^ 4 / 24) +
          |Real.log u| * (67 / A ^ 4 * |Real.log u| ^ 3 / 6)) := by
      gcongr
    _ = _ := by ring

theorem wholeCubicMajorant_integrable (A k : ℝ) :
    IntegrableOn (wholeCubicMajorant A k) (Ioi (0 : ℝ)) :=
  (((absoluteCoefficientWeight_integrable 4).const_mul (5 / 24 : ℝ)).add
    ((absoluteCoefficientWeight_integrable 5).div_const 48)).const_mul _

theorem actual_whole_error_le_majorant {A k u : ℝ} (hA : 91 ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |Int.fract u * (deriv (logProfile A k) u - cubicLogModelDerivative A k u)| ≤
      wholeCubicMajorant A k u := by
  rw [abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
  have hb := mul_le_mul_of_nonneg_left (cubic_log_error_all_positive hA hk hu)
    (Int.fract_nonneg u)
  calc
    _ ≤ Int.fract u * (67 / (A ^ 4 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        ((5 / 24 : ℝ) * |Real.log u| ^ 4 + |Real.log u| ^ 5 / 48)) := hb
    _ = _ := by
      unfold wholeCubicMajorant absoluteCoefficientWeight
      ring

theorem actual_whole_error_integrable {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    IntegrableOn (fun u => Int.fract u *
      (deriv (logProfile A k) u - cubicLogModelDerivative A k u)) (Ioi (0 : ℝ)) := by
  apply (wholeCubicMajorant_integrable A k).mono'
  · exact (measurable_fract.mul
      ((logProfile_contDiff (by linarith : 0 < A) k).continuous_deriv_one.measurable.sub
        (cubicLogModelDerivative_measurable A k))).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs]
    exact actual_whole_error_le_majorant hA hk hu

theorem wholeCubicMajorant_integral_le (A k : ℝ) :
    (∫ u in Ioi (0 : ℝ), wholeCubicMajorant A k u) ≤
      42880 / (A ^ 4 * Real.sqrt k) := by
  have h4 := absoluteCoefficientMoment_le_factorial 4
  have h5 := absoluteCoefficientMoment_le_factorial 5
  norm_num at h4 h5
  unfold wholeCubicMajorant
  rw [integral_const_mul,
    integral_add ((absoluteCoefficientWeight_integrable 4).const_mul (5 / 24 : ℝ))
      ((absoluteCoefficientWeight_integrable 5).div_const 48), integral_const_mul, integral_div]
  change 67 / (A ^ 4 * Real.sqrt k) *
    ((5 / 24 : ℝ) * absoluteCoefficientMoment 4 + absoluteCoefficientMoment 5 / 48) ≤ _
  calc
    _ ≤ 67 / (A ^ 4 * Real.sqrt k) * ((5 / 24 : ℝ) * 1536 + 15360 / 48) := by
      gcongr
    _ = _ := by ring

theorem wholeCubicErrorRow_abs_le {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    |wholeCubicErrorRow A k| ≤ 42880 / (A ^ 4 * Real.sqrt k) := by
  unfold wholeCubicErrorRow
  have hb := norm_integral_le_of_norm_le (wholeCubicMajorant_integrable A k) (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs]
    exact actual_whole_error_le_majorant hA hk hu)
  rw [Real.norm_eq_abs] at hb
  exact hb.trans (wholeCubicMajorant_integral_le A k)

theorem whole_short_error_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicErrorRow A (d : ℝ)| ≤ 85760 / A ^ 3 := by
  have hc : 0 ≤ 42880 / A ^ 4 := by positivity
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * wholeCubicErrorRow A (d : ℝ)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        (42880 / A ^ 4) * (|realMoebius d| / Real.sqrt (d : ℝ)) := by
      apply Finset.sum_le_sum
      intro d hd
      have hd0 : 0 < (d : ℝ) := by
        exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
      rw [abs_mul]
      apply (mul_le_mul_of_nonneg_left (wholeCubicErrorRow_abs_le hA hd0)
        (abs_nonneg _)).trans
      apply le_of_eq
      ring
    _ = (42880 / A ^ 4) *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (42880 / A ^ 4) * (2 * A) :=
      mul_le_mul_of_nonneg_left (actualMoebiusSqrtMass_le A (by linarith)) hc
    _ = _ := by
      field_simp [show A ≠ 0 by linarith]
      ring
/-- Fixed full-axis four-jet main, with independently defined signed coefficients. -/
def wholeCubicMainTerm (A k : ℝ) : ℝ :=
  1 / Real.sqrt k *
    (fullPositiveKappa 1 * sourceCorrelation explicitSecondDerivative A (Real.log k) +
      fullPositiveKappa 2 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) +
      fullPositiveKappa 3 / 2 *
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k) +
      fullPositiveKappa 4 / 6 *
        deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (Real.log k))

theorem full_model_density_eq (A k u : ℝ) :
    Int.fract u * cubicLogModelDerivative A k u =
      1 / Real.sqrt k *
        (sourceCorrelation explicitSecondDerivative A (Real.log k) * fullPositiveKappaWeight 1 u +
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) *
            fullPositiveKappaWeight 2 u +
          deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k) / 2 *
            fullPositiveKappaWeight 3 u +
          deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (Real.log k) / 6 *
            fullPositiveKappaWeight 4 u) := by
  unfold cubicLogModelDerivative
  rw [(cubicCorrelationJet_hasDerivAt A (Real.log k) (Real.log u)).deriv]
  unfold cubicCorrelationJet fullPositiveKappaWeight
  norm_num only [Nat.cast_ofNat, Nat.reduceSub, pow_zero, pow_one]
  ring

theorem full_model_integrable (A k : ℝ) :
    IntegrableOn (fun u => Int.fract u * cubicLogModelDerivative A k u) (Ioi (0 : ℝ)) := by
  simp_rw [full_model_density_eq]
  exact ((((fullPositiveKappaWeight_integrable 1).const_mul _).add
    ((fullPositiveKappaWeight_integrable 2).const_mul _)).add
      ((fullPositiveKappaWeight_integrable 3).const_mul _)).add
        ((fullPositiveKappaWeight_integrable 4).const_mul _) |>.const_mul _

theorem full_model_integral_eq_main (A k : ℝ) :
    (∫ u in Ioi (0 : ℝ), Int.fract u * cubicLogModelDerivative A k u) =
      wholeCubicMainTerm A k := by
  let c0 := sourceCorrelation explicitSecondDerivative A (Real.log k)
  let c1 := deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)
  let c2 := deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k) / 2
  let c3 := deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (Real.log k) / 6
  have h0 := (fullPositiveKappaWeight_integrable 1).const_mul c0
  have h1 := (fullPositiveKappaWeight_integrable 2).const_mul c1
  have h2 := (fullPositiveKappaWeight_integrable 3).const_mul c2
  have h3 := (fullPositiveKappaWeight_integrable 4).const_mul c3
  simp_rw [full_model_density_eq]
  rw [integral_const_mul, integral_add ((h0.add h1).add h2) h3,
    integral_add (h0.add h1) h2, integral_add h0 h1]
  simp_rw [integral_const_mul]
  unfold wholeCubicMainTerm fullPositiveKappa
  ring

/-- Actual finite samples recover the complete full-axis main and literal actual error. -/
theorem actual_samples_eq_full_main_add_error {A k : ℝ} (hA : 91 ≤ A) (hk : 1 ≤ k) :
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k (n : ℝ)) =
      wholeCubicMainTerm A k + wholeCubicErrorRow A k := by
  have hp : 0 < A := by linarith
  have hk0 : 0 < k := by linarith
  have hq := positive_axis_quadrature (logProfile A k) (logProfile_contDiff hp k)
    (logProfile_hasCompactSupport hp k) (sourceKernelCutoff A)
    (by intro u hu; simp [logProfile, not_lt.mpr hu])
    (fun u hu => logProfile_cutoff_tail (by linarith) hk hu)
  rw [logProfile_positive_integral_zero (by linarith) k, sub_zero] at hq
  have he := actual_whole_error_integrable hA hk0
  have hm := full_model_integrable A k
  have hsum : (fun u => Int.fract u * deriv (logProfile A k) u) =
      (fun u => Int.fract u * cubicLogModelDerivative A k u) +
        (fun u => Int.fract u *
          (deriv (logProfile A k) u - cubicLogModelDerivative A k u)) := by
    funext u
    simp only [Pi.add_apply]
    ring
  rw [hq, hsum, integral_add hm he, full_model_integral_eq_main]
  rfl

/-- Source reconstruction retains every divisor in the literal disjoint complement. -/
theorem actual_residual_eq_full_short_main_add_complement_add_error
    (A : ℝ) (hA : 91 ≤ A) :
    mertensResidual A =
      ((∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A) +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicErrorRow A (d : ℝ)) := by
  rw [actual_mertensResidual_eq_short_add_literal_L A (by linarith)]
  have hs : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (n : ℝ))) =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * wholeCubicMainTerm A (d : ℝ)) +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * wholeCubicErrorRow A (d : ℝ)) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    have hd1 : 1 ≤ (d : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    rw [actual_samples_eq_full_main_add_error hA hd1]
    ring
  rw [hs]
  ring

/-- Only the separately supplied joint signed block is left to control arithmetically. -/
theorem residual_upper_of_joint_full_block (A D : ℝ) (hA : 91 ≤ A)
    (hjoint : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A ≤ D) :
    mertensResidual A ≤ D + 85760 / A ^ 3 := by
  rw [actual_residual_eq_full_short_main_add_complement_add_error A hA]
  have he := (abs_le.mp (whole_short_error_abs_le A hA)).2
  linarith
end RH16WholeCubic
```
