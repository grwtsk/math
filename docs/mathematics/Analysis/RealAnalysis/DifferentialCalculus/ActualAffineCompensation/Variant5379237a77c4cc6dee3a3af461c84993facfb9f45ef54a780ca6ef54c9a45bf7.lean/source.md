# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualAffineCompensation.Variant5379237a77c4cc6dee3a3af461c84993facfb9f45ef54a780ca6ef54c9a45bf7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f621576d06c099671fc545a504247386cc98b557` · SHA-256 `38cf60015f3c2a3c19ba18b7e74e656e1b5dd3027a962a20d5a144507644f1c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCorrelationDerivAtZero.Variant2cfec0505bad6679fb8e3451b5cf2df786d09c680d9f73346052ca07d3450b21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2cfec0505bad6679fb8e3451b5cf2df786d09c680d9f73346052ca07d3450b21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualCorrelationDerivAtZero.Variant2cfec0505bad6679fb8e3451b5cf2df786d09c680d9f73346052ca07d3450b21","mathematical_subject":"Analysis.Calculus","original_sha256":"2cfec0505bad6679fb8e3451b5cf2df786d09c680d9f73346052ca07d3450b21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/affine_compensation/ActualAffineCompensation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualSecondAbel

/-! Exact actual-source affine endpoint compensation for arbitrary supplied real c.
Direction grwtsk contributors; scratch proof construction OpenAI Codex.
No arithmetic intercept, fitted residual, independent Vaughan M identification,
negative-part failure or uniform signed witness is constructed. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCorrelationDerivAtZero.Variant2cfec0505bad6679fb8e3451b5cf2df786d09c680d9f73346052ca07d3450b21

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualAffineCompensation
open MeasureTheory Set
open scoped Interval
open FormalResearch.RiemannHypothesis
open SourcePairing SourceFirstPrimeAbel SourcePairedPrimeWork SourcePairedTailTest
open SourceCriticalRemovedPrimeWork SourceCriticalCumulativeDiscrepancy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation
open ContinuousResearch.ActualSecondAbel

/-- The true differentiable even correlation has zero derivative at its center. -/
theorem actual_correlation_deriv_at_zero {A : ℝ} (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  let f : ℝ → ℝ := sourceCorrelation explicitSecondDerivative A
  have hd : HasDerivAt f (deriv f 0) 0 :=
    ((sourceCorrelation_contDiff A hA).differentiable_one 0).hasDerivAt
  have hg : HasDerivAt (fun x : ℝ => -x) (-1) 0 := by
    simpa only [id_eq] using (hasDerivAt_id (0 : ℝ)).fun_neg
  have hd' : HasDerivAt f (deriv f 0) ((fun x : ℝ => -x) 0) := by
    simpa only [neg_zero] using hd
  have hn : HasDerivAt (fun x : ℝ => f (-x)) (-(deriv f 0)) 0 := by
    simpa only [Function.comp_def, mul_neg_one] using hd'.comp 0 hg
  have he : (fun x : ℝ => f (-x)) = f := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hh := hn.unique hd
  change deriv f 0 = 0
  linarith

/-- Actual norm-one correlation, rather than a chosen scale, fixes g'(0). -/
theorem criticalPrimeTest_deriv_at_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (criticalPrimeTest A) 0 = 1/2 := by
  rw [criticalPrimeTest_deriv A 0 (by linarith),
    actual_correlation_at_zero A hA,actual_correlation_deriv_at_zero (by linarith)]
  norm_num

theorem positiveSlope_at_zero {A : ℝ} (hA : 1 ≤ A) : positiveSlope A 0 = 1/2 := by
  unfold positiveSlope
  rw [criticalPrimeTest_deriv_at_zero hA]
  norm_num

theorem negativeSlope_at_zero {A : ℝ} (hA : 1 ≤ A) : negativeSlope A 0 = 0 := by
  unfold negativeSlope
  rw [criticalPrimeTest_deriv_at_zero hA]
  norm_num

/-- This is a proved derivative of the original max-defined paired test. -/
theorem pairedTailTest_deriv_at_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (pairedTailTest A) 0 = -1/2 := by
  rw [pairedTailTest_deriv hA,positiveSlope_at_zero hA,negativeSlope_at_zero hA]
  ring

def affineWeight (A u : ℝ) : ℝ := 1-u/(2*A)

theorem affineWeight_hasDerivAt (A u : ℝ) :
    HasDerivAt (affineWeight A) (-(1/(2*A))) u := by
  unfold affineWeight
  convert (hasDerivAt_const u (1 : ℝ)).fun_sub
    ((hasDerivAt_id u).div_const (2*A)) using 1 <;> first | rfl | simp only [zero_sub]

theorem affineWeight_absolutelyContinuous (A a b : ℝ) :
    AbsolutelyContinuousOnInterval (affineWeight A) a b := by
  have hc : ContDiff ℝ 1 (affineWeight A) := by unfold affineWeight;fun_prop
  exact hc.contDiffOn.absolutelyContinuousOnInterval

theorem affineWeight_at_zero (A : ℝ) : affineWeight A 0 = 1 := by
  simp [affineWeight]

theorem affineWeight_at_upper {A : ℝ} (hA : 0 < A) : affineWeight A (2*A) = 0 := by
  unfold affineWeight
  rw [div_self (by positivity : 2*A ≠ 0)]
  ring

theorem affine_curvature_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => affineWeight A u*pairedTailCurvature A u)
      volume 0 (2*A) := by
  have hc : Continuous (affineWeight A) := by unfold affineWeight;fun_prop
  exact (pairedTailCurvature_intervalIntegrable hA 0 (2*A)).continuousOn_mul hc.continuousOn

/-- Exact affine work, valid through AE phase seams. No D' upper value is needed. -/
theorem affine_curvature_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2*A, affineWeight A u*pairedTailCurvature A u) = 1/2 := by
  have hi := (affineWeight_absolutelyContinuous A 0 (2*A)).integral_mul_deriv_eq_deriv_mul
    (pairedTailTest_deriv_absolutelyContinuous hA 0 (2*A))
  rw [affineWeight_at_upper (by linarith),affineWeight_at_zero,
    pairedTailTest_deriv_at_zero hA,zero_mul,one_mul] at hi
  have hd : deriv (affineWeight A) = fun _ => -(1/(2*A)) :=
    funext fun u => (affineWeight_hasDerivAt A u).deriv
  rw [hd,intervalIntegral.integral_const_mul,pairedTailTest_deriv_integral_zero hA,
    mul_zero] at hi
  simpa only [pairedTailCurvature,zero_sub,sub_zero,neg_div,neg_neg] using hi

/-- Explicit compensation; c remains an independently supplied real parameter. -/
def affineCompensatedBridge (A c u : ℝ) : ℝ :=
  criticalDiscrepancyBridge A u-c*affineWeight A u

theorem affineCompensatedBridge_at_zero (A c : ℝ) :
    affineCompensatedBridge A c 0 = -c := by
  simp [affineCompensatedBridge,affineWeight_at_zero,criticalDiscrepancyBridge_at_zero]

theorem affineCompensatedBridge_at_upper {A : ℝ} (hA : 0 < A) (c : ℝ) :
    affineCompensatedBridge A c (2*A) = 0 := by
  simp [affineCompensatedBridge,affineWeight_at_upper hA,criticalDiscrepancyBridge_at_upper hA]

theorem compensated_curvature_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (c : ℝ) :
    IntervalIntegrable (fun u => affineCompensatedBridge A c u*pairedTailCurvature A u)
      volume 0 (2*A) := by
  have hc : Continuous (affineCompensatedBridge A c) := by
    unfold affineCompensatedBridge
    exact (criticalDiscrepancyBridge_continuous A).sub
      (continuous_const.mul (by unfold affineWeight;fun_prop))
  exact (pairedTailCurvature_intervalIntegrable hA 0 (2*A)).continuousOn_mul hc.continuousOn

/-- Complete unchanged compensated work with its exact affine endpoint contribution. -/
theorem actual_affine_compensation {A : ℝ} (hA : 1 ≤ A) (c : ℝ) :
    criticalRemovedPairedWork A = c/2+
      ∫ u in 0..2*A,affineCompensatedBridge A c u*pairedTailCurvature A u := by
  rw [actual_second_Abel hA]
  have he : (fun u => criticalDiscrepancyBridge A u*pairedTailCurvature A u) =
      fun u => affineCompensatedBridge A c u*pairedTailCurvature A u+
        c*(affineWeight A u*pairedTailCurvature A u) := by
    funext u
    unfold affineCompensatedBridge
    ring
  rw [he,intervalIntegral.integral_add (compensated_curvature_intervalIntegrable hA c)
    ((affine_curvature_intervalIntegrable hA).const_mul c),
    intervalIntegral.integral_const_mul,affine_curvature_integral hA]
  ring

end ContinuousResearch.ActualAffineCompensation

-- Frozen public statement, proof-term and trusted-closure audits.
#check ContinuousResearch.ActualAffineCompensation.actual_correlation_deriv_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.actual_correlation_deriv_at_zero
#print ContinuousResearch.ActualAffineCompensation.actual_correlation_deriv_at_zero
#check ContinuousResearch.ActualAffineCompensation.criticalPrimeTest_deriv_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.criticalPrimeTest_deriv_at_zero
#print ContinuousResearch.ActualAffineCompensation.criticalPrimeTest_deriv_at_zero
#check ContinuousResearch.ActualAffineCompensation.positiveSlope_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.positiveSlope_at_zero
#print ContinuousResearch.ActualAffineCompensation.positiveSlope_at_zero
#check ContinuousResearch.ActualAffineCompensation.negativeSlope_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.negativeSlope_at_zero
#print ContinuousResearch.ActualAffineCompensation.negativeSlope_at_zero
#check ContinuousResearch.ActualAffineCompensation.pairedTailTest_deriv_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.pairedTailTest_deriv_at_zero
#print ContinuousResearch.ActualAffineCompensation.pairedTailTest_deriv_at_zero
#check ContinuousResearch.ActualAffineCompensation.affineWeight
#print axioms ContinuousResearch.ActualAffineCompensation.affineWeight
#print ContinuousResearch.ActualAffineCompensation.affineWeight
#check ContinuousResearch.ActualAffineCompensation.affineWeight_hasDerivAt
#print axioms ContinuousResearch.ActualAffineCompensation.affineWeight_hasDerivAt
#print ContinuousResearch.ActualAffineCompensation.affineWeight_hasDerivAt
#check ContinuousResearch.ActualAffineCompensation.affineWeight_absolutelyContinuous
#print axioms ContinuousResearch.ActualAffineCompensation.affineWeight_absolutelyContinuous
#print ContinuousResearch.ActualAffineCompensation.affineWeight_absolutelyContinuous
#check ContinuousResearch.ActualAffineCompensation.affineWeight_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.affineWeight_at_zero
#print ContinuousResearch.ActualAffineCompensation.affineWeight_at_zero
#check ContinuousResearch.ActualAffineCompensation.affineWeight_at_upper
#print axioms ContinuousResearch.ActualAffineCompensation.affineWeight_at_upper
#print ContinuousResearch.ActualAffineCompensation.affineWeight_at_upper
#check ContinuousResearch.ActualAffineCompensation.affine_curvature_intervalIntegrable
#print axioms ContinuousResearch.ActualAffineCompensation.affine_curvature_intervalIntegrable
#print ContinuousResearch.ActualAffineCompensation.affine_curvature_intervalIntegrable
#check ContinuousResearch.ActualAffineCompensation.affine_curvature_integral
#print axioms ContinuousResearch.ActualAffineCompensation.affine_curvature_integral
#print ContinuousResearch.ActualAffineCompensation.affine_curvature_integral
#check ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge
#print axioms ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge
#print ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge
#check ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_zero
#print ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_zero
#check ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_upper
#print axioms ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_upper
#print ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_upper
#check ContinuousResearch.ActualAffineCompensation.compensated_curvature_intervalIntegrable
#print axioms ContinuousResearch.ActualAffineCompensation.compensated_curvature_intervalIntegrable
#print ContinuousResearch.ActualAffineCompensation.compensated_curvature_intervalIntegrable
#check ContinuousResearch.ActualAffineCompensation.actual_affine_compensation
#print axioms ContinuousResearch.ActualAffineCompensation.actual_affine_compensation
#print ContinuousResearch.ActualAffineCompensation.actual_affine_compensation
```
