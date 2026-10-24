# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPhaseCurvature.Variant51542c18c5f0ab031bf7e2bfb0a9d04bc83b975e9f0910c42e7ad76d1e1529b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc0bb77a732bb42de65236174c32116756ddfaea` · SHA-256 `ba631d1a66a07c525989910ae088a086e292a0fec1116719a23c0f47b123e209`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPositiveMassPos.Variantc372c88cf3d0e6ef15396fbe832067f17e630416148b4617aee89a3c791d4779","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c372c88cf3d0e6ef15396fbe832067f17e630416148b4617aee89a3c791d4779","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualPositiveMassPos.Variantc372c88cf3d0e6ef15396fbe832067f17e630416148b4617aee89a3c791d4779","mathematical_subject":"Analysis.Calculus","original_sha256":"c372c88cf3d0e6ef15396fbe832067f17e630416148b4617aee89a3c791d4779","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass16/curvature_endpoint/ActualPhaseCurvature.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualAffineCompensation

/-! Exact branchwise curvature of the actual max-defined paired test.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No endpoint asymptotic, arithmetic intercept or signed budget is supplied. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPositiveMassPos.Variantc372c88cf3d0e6ef15396fbe832067f17e630416148b4617aee89a3c791d4779

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualPhaseCurvature
open MeasureTheory Set Filter
open scoped Interval Topology
open ActualSecondAbel ActualAffineCompensation
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourcePairedPrimeWork
open FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages
open FormalResearch.RiemannHypothesis.SourcePairedTailTest

/-- Actual initial slope supplies strictly positive rising variation at every real scale. -/
theorem actual_positiveMass_pos {A : ℝ} (hA : 1≤A) : 0<positiveMass A := by
  unfold positiveMass
  apply intervalIntegral.integral_pos (by linarith : (0:ℝ)<2*A)
    (positiveSlope_continuous (by linarith : 0<A)).continuousOn
    (fun u _ => positiveSlope_nonneg A u)
  refine ⟨0,⟨le_rfl,by linarith⟩,?_⟩
  rw [positiveSlope_at_zero hA]
  norm_num

theorem actual_massRatio_pos {A : ℝ} (hA : 1≤A) :
    0<positiveMass A/negativeMass A :=
  div_pos (actual_positiveMass_pos hA) (negativeMass_pos hA)

theorem actual_massRatio_lt_one {A : ℝ} (hA : 1≤A) :
    positiveMass A/negativeMass A<1 := by
  apply (div_lt_iff₀ (negativeMass_pos hA)).mpr
  rw [negativeMass_eq_positive_add_one hA]
  linarith

/-- The ratio deficit is exact, before any claim that the actual mass grows. -/
theorem actual_massRatio_deficit {A : ℝ} (hA : 1≤A) :
    1-positiveMass A/negativeMass A=1/negativeMass A := by
  have hn : positiveMass A+1≠0 := by
    have hp := actual_positiveMass_pos hA
    positivity
  rw [negativeMass_eq_positive_add_one hA]
  field_simp [hn]
  ring

/-- A genuine actual exponential excursion lower-bounds the rising variation. -/
theorem actual_excursion_le_positiveMass {A u : ℝ} (hA : 1≤A)
    (hu : u∈Icc (0:ℝ) (2*A)) :
    criticalPrimeTest A u-1≤positiveMass A := by
  have hp : 0<A := by linarith
  have hd := (criticalPrimeTest_contDiff A hp).continuous_deriv_one
  have hFTC := intervalIntegral.integral_deriv_eq_sub
    (fun x _ => ((criticalPrimeTest_contDiff A hp).differentiable (by norm_num) x))
    (hd.intervalIntegrable (μ:=volume) 0 u)
  rw [criticalPrimeTest_at_zero A hA] at hFTC
  have hm := intervalIntegral.integral_mono_on hu.1
    (hd.intervalIntegrable (μ:=volume) 0 u)
    ((positiveSlope_continuous hp).intervalIntegrable (μ:=volume) 0 u)
    (fun x _ => le_max_left (deriv (criticalPrimeTest A) x) 0)
  have ha := intervalIntegral.integral_add_adjacent_intervals
    ((positiveSlope_continuous hp).intervalIntegrable (μ:=volume) 0 u)
    ((positiveSlope_continuous hp).intervalIntegrable (μ:=volume) u (2*A))
  have hn := intervalIntegral.integral_nonneg_of_forall (μ:=volume) hu.2
    (positiveSlope_nonneg A)
  change _≤∫ x in 0..2*A,positiveSlope A x
  linarith

/-- On an open strict negative-slope phase, the complete paired derivative is exactly
minus the actual mass ratio times g''. No seam derivative is asserted here. -/
theorem actual_negative_phase_hasDerivAt {A u : ℝ} (hA : 1≤A)
    (hu : deriv (criticalPrimeTest A) u<0) :
    HasDerivAt (deriv (pairedTailTest A))
      (-(positiveMass A/negativeMass A)*deriv (deriv (criticalPrimeTest A)) u) u := by
  have hp : 0<A := by linarith
  have hc : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hp).deriv'
  have hd := (hc.differentiable (by norm_num) u).hasDerivAt
  have he := hc.continuous.continuousAt.eventually (gt_mem_nhds hu)
  apply (hd.const_mul (-(positiveMass A/negativeMass A))).congr_of_eventuallyEq
  filter_upwards [he] with x hx
  rw [pairedTailTest_deriv hA]
  simp only [positiveSlope,negativeSlope,max_eq_right hx.le,
    max_eq_left (neg_nonneg.mpr hx.le)]
  ring

theorem actual_negative_phase_curvature {A u : ℝ} (hA : 1≤A)
    (hu : deriv (criticalPrimeTest A) u<0) :
    pairedTailCurvature A u=
      -(positiveMass A/negativeMass A)*deriv (deriv (criticalPrimeTest A)) u :=
  (actual_negative_phase_hasDerivAt hA hu).deriv

theorem actual_positive_phase_hasDerivAt {A u : ℝ} (hA : 1≤A)
    (hu : 0<deriv (criticalPrimeTest A) u) :
    HasDerivAt (deriv (pairedTailTest A))
      (-deriv (deriv (criticalPrimeTest A)) u) u := by
  have hp : 0<A := by linarith
  have hc : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hp).deriv'
  have hd := (hc.differentiable (by norm_num) u).hasDerivAt
  have he := hc.continuous.continuousAt.eventually (lt_mem_nhds hu)
  apply hd.neg.congr_of_eventuallyEq
  filter_upwards [he] with x hx
  rw [pairedTailTest_deriv hA]
  simp only [positiveSlope,negativeSlope,max_eq_left hx.le,
    max_eq_right (neg_nonpos.mpr hx.le),mul_zero,add_zero]
  rfl

theorem actual_positive_phase_curvature {A u : ℝ} (hA : 1≤A)
    (hu : 0<deriv (criticalPrimeTest A) u) :
    pairedTailCurvature A u=-deriv (deriv (criticalPrimeTest A)) u :=
  (actual_positive_phase_hasDerivAt hA hu).deriv

/-- A conditional local sign consequence; no actual endpoint sign is assumed globally. -/
theorem actual_curvature_neg_of_negative_slope_positive_curvature {A u : ℝ}
    (hA : 1≤A) (hu : deriv (criticalPrimeTest A) u<0)
    (hc : 0<deriv (deriv (criticalPrimeTest A)) u) : pairedTailCurvature A u<0 := by
  rw [actual_negative_phase_curvature hA hu]
  exact mul_neg_of_neg_of_pos (neg_neg_of_pos (actual_massRatio_pos hA)) hc

end ContinuousResearch.ActualPhaseCurvature

-- Full frozen public declaration closure audits.

#check ContinuousResearch.ActualPhaseCurvature.actual_positiveMass_pos
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_positiveMass_pos
#print ContinuousResearch.ActualPhaseCurvature.actual_positiveMass_pos

#check ContinuousResearch.ActualPhaseCurvature.actual_massRatio_pos
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_massRatio_pos
#print ContinuousResearch.ActualPhaseCurvature.actual_massRatio_pos

#check ContinuousResearch.ActualPhaseCurvature.actual_massRatio_lt_one
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_massRatio_lt_one
#print ContinuousResearch.ActualPhaseCurvature.actual_massRatio_lt_one

#check ContinuousResearch.ActualPhaseCurvature.actual_massRatio_deficit
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_massRatio_deficit
#print ContinuousResearch.ActualPhaseCurvature.actual_massRatio_deficit

#check ContinuousResearch.ActualPhaseCurvature.actual_excursion_le_positiveMass
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_excursion_le_positiveMass
#print ContinuousResearch.ActualPhaseCurvature.actual_excursion_le_positiveMass

#check ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_hasDerivAt
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_hasDerivAt
#print ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_hasDerivAt

#check ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_curvature
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_curvature
#print ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_curvature

#check ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_hasDerivAt
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_hasDerivAt
#print ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_hasDerivAt

#check ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_curvature
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_curvature
#print ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_curvature

#check ContinuousResearch.ActualPhaseCurvature.actual_curvature_neg_of_negative_slope_positive_curvature
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_curvature_neg_of_negative_slope_positive_curvature
#print ContinuousResearch.ActualPhaseCurvature.actual_curvature_neg_of_negative_slope_positive_curvature
```
