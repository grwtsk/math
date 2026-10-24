# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.LowerSamplingAttempt03.Variantd9e1c2039236e47cad4908ac0cefd0c4897ff5a08c419e7737c6c04d4c20c884

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `773997993b4b519db2f4f7f651d781191db8234a` · SHA-256 `bcbd35bd7e7bd2ccd5472e837aeaceee9e2685102c02445a0d101d3999a96581`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CorrelationDerivZero.Variant074089eb87386b1f1d0cb37e95371b4e2b68e7b330b746f76ca88a447c80b36f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"074089eb87386b1f1d0cb37e95371b4e2b68e7b330b746f76ca88a447c80b36f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CorrelationDerivZero.Variant074089eb87386b1f1d0cb37e95371b4e2b68e7b330b746f76ca88a447c80b36f","mathematical_subject":"Analysis.Integration","original_sha256":"074089eb87386b1f1d0cb37e95371b4e2b68e7b330b746f76ca88a447c80b36f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass10/lower_sampling/LowerSampling-attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import UpperSampling
import ActualSamplingConstant
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
import FormalResearch.RiemannHypothesis.SourceFractionalQuadrature

/-! Exact below-one contribution for optional arithmetic calibration #327.
The actual profile is zero near zero; both unit-cell endpoints and the full
positive-axis pole cancellation are retained. No arithmetic witness is assumed.
Direction: grwtsk contributors; scratch construction: OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.CorrelationDerivZero.Variant074089eb87386b1f1d0cb37e95371b4e2b68e7b330b746f76ca88a447c80b36f

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.LowerSampling
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourcePositiveSampling SourceSamplingTaylor SourceSamplingRemainder
open SourceSamplingCoefficients SourceFirstPrimeAbel SourceFractionalQuadrature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual EstimateCorrelation

theorem correlation_deriv_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hd := ((sourceCorrelation_contDiff A (by linarith)).differentiable
    (by norm_num) 0).hasDerivAt
  have hdneg : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-0) := by simpa using hd
  have hn := hdneg.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun x : ℝ => sourceCorrelation explicitSecondDerivative A (-x)) =
      sourceCorrelation explicitSecondDerivative A :=
    funext (sourceCorrelation_even A)
  rw [he] at hn
  have hu := hd.unique hn
  simp only [mul_neg, mul_one] at hu
  linarith

theorem unit_profile_at_one {A : ℝ} (hA : 1 ≤ A) : plainProfile A 1 1 = 1 := by
  rw [plainProfile_eq_of_pos A 1 (by norm_num)]
  simp only [sourcePlainSamplingTerm, Real.log_one, zero_add, neg_zero,
    zero_div, Real.exp_zero, one_mul]
  exact actual_correlation_at_zero A hA

theorem unit_model_derivative {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    plainModelDerivative A 1 u = -(1/2 : ℝ) * u^(-(3 : ℝ)/2) := by
  simp only [plainModelDerivative, Real.sqrt_one, div_one, Real.log_one,
    correlation_deriv_zero hA, actual_correlation_at_zero A hA, mul_zero,
    add_zero]
  ring

theorem upper_profile_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in Ioi (1 : ℝ), plainProfile A 1 u) = criticalContinuousMoment A := by
  have he := integral_comp_exp_Ioi (plainProfile A 1) 0
  simp only [Real.exp_zero, smul_eq_mul] at he
  have hfun : (fun t : ℝ => Real.exp t * plainProfile A 1 (Real.exp t)) =
      criticalPrimeTest A := by
    funext t
    rw [plainProfile_eq_of_pos A 1 (Real.exp_pos t)]
    simp only [sourcePlainSamplingTerm, Real.log_one, Real.log_exp, zero_add,
      criticalPrimeTest, ← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [hfun] at he
  rw [← he, criticalContinuousMoment, intervalIntegral.integral_of_le (by linarith)]
  apply setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    (fun _ hx => hx.1)
  intro t ht
  have hbound : 2*A < t := by
    by_contra hn
    exact ht.2 ⟨ht.1, le_of_not_gt hn⟩
  rw [criticalPrimeTest, sourceCorrelation_eq_zero_of_two_mul_le_abs A t
    (by linarith) (hbound.le.trans (le_abs_self t)), mul_zero]

theorem lower_profile_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..1, plainProfile A 1 u) = -criticalContinuousMoment A := by
  have hi := (plainProfile_integrable (by linarith : 0 < A) 1).integrableOn
    (s := Ioi (0 : ℝ))
  have ht := (plainProfile_integrable (by linarith : 0 < A) 1).integrableOn
    (s := Ioi (1 : ℝ))
  have hs := intervalIntegral.integral_interval_add_Ioi hi ht
  rw [plainProfile_positive_integral_zero hA 1, upper_profile_integral hA] at hs
  linarith

theorem lower_remainder_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..1, UpperSampling.actualRemainder A u) =
      criticalContinuousMoment A + 2 := by
  have hc := plainProfile_contDiff (by linarith : 0 < A) 1
  have hf := fract_deriv_intervalIntegrable (plainProfile A 1) hc 0 1
  have hw : IntervalIntegrable (coefficientWeight 0) volume (0 : ℝ) 1 := by
    apply (intervalIntegrable_iff_integrableOn_Ioc_of_le (by norm_num)).mpr
    exact (coefficientWeight_integrable 0).mono_set (fun _ hx => hx.1)
  have he : (fun u : ℝ => UpperSampling.actualRemainder A u) =
      fun u => Int.fract u * deriv (plainProfile A 1) u +
        (1/2 : ℝ)*coefficientWeight 0 u := by
    funext u
    rw [UpperSampling.actualRemainder, unit_model_derivative hA]
    simp only [coefficientWeight, pow_zero, mul_one]
    ring
  rw [he, intervalIntegral.integral_add hf (hw.const_mul _),
    intervalIntegral.integral_const_mul,
    ActualSamplingConstant.coefficientWeight_zero_unit_integral]
  have hq := unit_right_sampling_identity (plainProfile A 1) hc 0
  norm_num only [Nat.cast_zero, zero_add] at hq
  rw [unit_profile_at_one hA, lower_profile_integral hA] at hq
  linarith

#print axioms correlation_deriv_zero
#print axioms unit_profile_at_one
#print axioms unit_model_derivative
#print axioms upper_profile_integral
#print axioms lower_profile_integral
#print axioms lower_remainder_integral
end ContinuousResearch.LowerSampling
```
