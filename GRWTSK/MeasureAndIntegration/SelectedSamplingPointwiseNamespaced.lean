-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourcePlainSamplingMainTerm.Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourcePlainSamplingMainTerm.Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b","mathematical_subject":"Analysis.Integration","original_sha256":"d57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/post-phase96-owner-source15-runtime-import-and-collector-qualification-20261007T143757Z/selected-SamplingPointwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSamplingRemainder
import FormalResearch.RiemannHypothesis.SourceFractionalQuadrature
import FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

/-!
# Actual source sampling with retained constant and linear coefficients

The exact whole-positive-axis cancellation precedes fractional-part quadrature.
Only the derivative Taylor remainder is bounded absolutely. The resulting
`A⁻² k⁻¹ᐟ²` errors have bounded cost in the literal short Vaughan inventories.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourcePlainSamplingMainTerm.Variantd57249765093c52eda3052fba52a2dc9e9600434ff00ca15be49388e0b85fa9b

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSamplingPointwise

open MeasureTheory Set Filter
open SourcePairing SourcePositiveSampling SourceSamplingRemainder
open SourceFractionalQuadrature SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open
  FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel

/-- The retained actual plain sampling main term, with universal signed coefficients. -/
noncomputable def sourcePlainSamplingMainTerm (A k : ℝ) : ℝ :=
  (samplingAlpha0 * sourceCorrelation explicitSecondDerivative A (Real.log k) +
    samplingAlpha1 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)) /
      Real.sqrt k

/-- The retained actual logarithmic sampling main term uses the shifted signed coefficients. -/
noncomputable def sourceLogSamplingMainTerm (A k : ℝ) : ℝ :=
  (samplingAlpha1 * sourceCorrelation explicitSecondDerivative A (Real.log k) +
    samplingAlpha2 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)) /
      Real.sqrt k

private theorem plain_model_integrand_eq (A k : ℝ) :
    (fun u : ℝ ↦ Int.fract u * plainModelDerivative A k u) =
      fun u ↦ 1 / Real.sqrt k *
        ((-sourceCorrelation explicitSecondDerivative A (Real.log k) / 2 +
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)) *
          coefficientWeight 0 u +
          (-deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) / 2) *
            coefficientWeight 1 u) := by
  funext u
  simp only [plainModelDerivative, coefficientWeight, pow_zero, pow_one]
  ring

private theorem log_model_integrand_eq (A k : ℝ) :
    (fun u : ℝ ↦ Int.fract u * logModelDerivative A k u) =
      fun u ↦ 1 / Real.sqrt k *
        (sourceCorrelation explicitSecondDerivative A (Real.log k) * coefficientWeight 0 u +
          (2 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) -
              sourceCorrelation explicitSecondDerivative A (Real.log k) / 2) *
            coefficientWeight 1 u +
          (-deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) / 2) *
            coefficientWeight 2 u) := by
  funext u
  simp only [logModelDerivative, coefficientWeight, pow_zero, pow_one]
  ring

private theorem plain_model_integrand_integrable (A k : ℝ) :
    IntegrableOn (fun u ↦ Int.fract u * plainModelDerivative A k u) (Ioi (0 : ℝ)) := by
  rw [plain_model_integrand_eq]
  exact (((coefficientWeight_integrable 0).const_mul _).add
    ((coefficientWeight_integrable 1).const_mul _)).const_mul _

private theorem log_model_integrand_integrable (A k : ℝ) :
    IntegrableOn (fun u ↦ Int.fract u * logModelDerivative A k u) (Ioi (0 : ℝ)) := by
  rw [log_model_integrand_eq]
  exact ((((coefficientWeight_integrable 0).const_mul _).add
    ((coefficientWeight_integrable 1).const_mul _)).add
      ((coefficientWeight_integrable 2).const_mul _)).const_mul _

/-- The plain model integrates to the specified universal-coefficient main term. -/
theorem plain_model_integral_eq_mainTerm (A k : ℝ) :
    (∫ u in Ioi (0 : ℝ), Int.fract u * plainModelDerivative A k u) =
      sourcePlainSamplingMainTerm A k := by
  rw [plain_model_integrand_eq, integral_const_mul,
    integral_add ((coefficientWeight_integrable 0).const_mul _)
      ((coefficientWeight_integrable 1).const_mul _), integral_const_mul, integral_const_mul]
  unfold sourcePlainSamplingMainTerm samplingAlpha0 samplingAlpha1 signedCoefficientMoment
  ring

/-- The logarithmic model integrates to the specified shifted-coefficient main term. -/
theorem log_model_integral_eq_mainTerm (A k : ℝ) :
    (∫ u in Ioi (0 : ℝ), Int.fract u * logModelDerivative A k u) =
      sourceLogSamplingMainTerm A k := by
  have hsum := integral_add
    (((coefficientWeight_integrable 0).const_mul
      (sourceCorrelation explicitSecondDerivative A (Real.log k))).add
      ((coefficientWeight_integrable 1).const_mul
        (2 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) -
          sourceCorrelation explicitSecondDerivative A (Real.log k) / 2)))
    ((coefficientWeight_integrable 2).const_mul
      (-deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) / 2))
  simp only [Pi.add_apply] at hsum
  rw [log_model_integrand_eq, integral_const_mul, hsum,
    integral_add ((coefficientWeight_integrable 0).const_mul _)
      ((coefficientWeight_integrable 1).const_mul _),
    integral_const_mul, integral_const_mul, integral_const_mul]
  unfold sourceLogSamplingMainTerm samplingAlpha1 samplingAlpha2 signedCoefficientMoment
  ring

private theorem fractional_derivative_integrable {f : ℝ → ℝ}
    (hf : ContDiff ℝ 1 f) (hs : HasCompactSupport f) :
    IntegrableOn (fun u ↦ Int.fract u * deriv f u) (Ioi (0 : ℝ)) := by
  have hi : Integrable (deriv f) :=
    (hf.continuous_deriv (by norm_num)).integrable_of_hasCompactSupport hs.deriv
  exact (hi.bdd_mul measurable_fract.aestronglyMeasurable
    (Eventually.of_forall (fun u ↦ by
      rw [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg u)]
      exact (Int.fract_lt_one u).le))).integrableOn

/-- The actual plain finite inventory has a uniformly controlled second-order sampling error. -/
theorem plainProfile_sum_sub_mainTerm_abs_le {A k : ℝ} (hA : 1 ≤ A) (hk : 1 ≤ k) :
    |(∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), plainProfile A k n) -
      sourcePlainSamplingMainTerm A k| ≤ 16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hkp : 0 < k := lt_of_lt_of_le (by norm_num) hk
  have hquad := positive_axis_quadrature (plainProfile A k) (plainProfile_contDiff hp k)
    (plainProfile_hasCompactSupport hp k) (sourceKernelCutoff A)
    (fun u hu ↦ by simp [plainProfile, not_lt.mpr hu])
    (fun u hu ↦ plainProfile_cutoff_tail hA hk hu)
  rw [plainProfile_positive_integral_zero hA k, sub_zero] at hquad
  rw [hquad, ← plain_model_integral_eq_mainTerm,
    ← integral_sub (fractional_derivative_integrable (plainProfile_contDiff hp k)
      (plainProfile_hasCompactSupport hp k)) (plain_model_integrand_integrable A k)]
  let c : ℝ := (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k)
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hmaj : IntegrableOn (fun u ↦ c *
      (absoluteCoefficientWeight 1 u + absoluteCoefficientWeight 2 u / 4)) (Ioi (0 : ℝ)) :=
    ((absoluteCoefficientWeight_integrable 1).add
      ((absoluteCoefficientWeight_integrable 2).div_const 4)).const_mul c
  have hbound := norm_integral_le_of_norm_le
    (f := fun u ↦ Int.fract u * deriv (plainProfile A k) u -
      Int.fract u * plainModelDerivative A k u) hmaj (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, ← mul_sub, abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
    calc
      _ ≤ Int.fract u *
          ((162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
            (|Real.log u| + (Real.log u) ^ 2 / 4)) :=
        mul_le_mul_of_nonneg_left (plain_derivative_difference_abs_le hA hkp hu)
          (Int.fract_nonneg u)
      _ = _ := by
        dsimp [c, absoluteCoefficientWeight]
        rw [sq_abs]
        ring)
  rw [Real.norm_eq_abs] at hbound
  apply hbound.trans
  rw [integral_const_mul,
    integral_add (absoluteCoefficientWeight_integrable 1)
      ((absoluteCoefficientWeight_integrable 2).div_const 4), integral_div]
  change c * (absoluteCoefficientMoment 1 + absoluteCoefficientMoment 2 / 4) ≤ _
  have h1 := absoluteCoefficientMoment_le_factorial 1
  have h2 := absoluteCoefficientMoment_le_factorial 2
  norm_num at h1 h2
  calc
    _ ≤ c * (8 + 32 / 4) := by gcongr
    _ = _ := by dsimp [c]; ring

/-- The exact sampled logarithm has a uniform error budget that includes the below-one interval. -/
theorem logProfile_sum_sub_mainTerm_abs_le {A k : ℝ} (hA : 1 ≤ A) (hk : 1 ≤ k) :
    |(∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k n) -
      sourceLogSamplingMainTerm A k| ≤ 96 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hkp : 0 < k := lt_of_lt_of_le (by norm_num) hk
  have hquad := positive_axis_quadrature (logProfile A k) (logProfile_contDiff hp k)
    (logProfile_hasCompactSupport hp k) (sourceKernelCutoff A)
    (fun u hu ↦ by simp [logProfile, not_lt.mpr hu])
    (fun u hu ↦ logProfile_cutoff_tail hA hk hu)
  rw [logProfile_positive_integral_zero hA k, sub_zero] at hquad
  rw [hquad, ← log_model_integral_eq_mainTerm,
    ← integral_sub (fractional_derivative_integrable (logProfile_contDiff hp k)
      (logProfile_hasCompactSupport hp k)) (log_model_integrand_integrable A k)]
  let c : ℝ := (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k)
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hmaj : IntegrableOn (fun u ↦ c *
      (3 / 2 * absoluteCoefficientWeight 2 u + absoluteCoefficientWeight 3 u / 4))
      (Ioi (0 : ℝ)) :=
    (((absoluteCoefficientWeight_integrable 2).const_mul (3 / 2 : ℝ)).add
      ((absoluteCoefficientWeight_integrable 3).div_const 4)).const_mul c
  have hbound := norm_integral_le_of_norm_le
    (f := fun u ↦ Int.fract u * deriv (logProfile A k) u -
      Int.fract u * logModelDerivative A k u) hmaj (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, ← mul_sub, abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
    calc
      _ ≤ Int.fract u *
          ((162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
            (3 / 2 * (Real.log u) ^ 2 + |Real.log u| ^ 3 / 4)) :=
        mul_le_mul_of_nonneg_left (log_derivative_difference_abs_le hA hkp hu)
          (Int.fract_nonneg u)
      _ = _ := by
        dsimp [c, absoluteCoefficientWeight]
        rw [sq_abs]
        ring)
  rw [Real.norm_eq_abs] at hbound
  apply hbound.trans
  rw [integral_const_mul,
    integral_add ((absoluteCoefficientWeight_integrable 2).const_mul (3 / 2 : ℝ))
      ((absoluteCoefficientWeight_integrable 3).div_const 4),
    integral_const_mul, integral_div]
  change c * (3 / 2 * absoluteCoefficientMoment 2 + absoluteCoefficientMoment 3 / 4) ≤ _
  have h2 := absoluteCoefficientMoment_le_factorial 2
  have h3 := absoluteCoefficientMoment_le_factorial 3
  norm_num at h2 h3
  calc
    _ ≤ c * (3 / 2 * 32 + 192 / 4) := by gcongr
    _ = _ := by dsimp [c]; ring

end FormalResearch.RiemannHypothesis.SourceSamplingPointwise
