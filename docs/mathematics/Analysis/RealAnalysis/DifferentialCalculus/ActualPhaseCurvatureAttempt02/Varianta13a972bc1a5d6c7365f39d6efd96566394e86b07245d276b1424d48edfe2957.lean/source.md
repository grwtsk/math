# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPhaseCurvatureAttempt02.Varianta13a972bc1a5d6c7365f39d6efd96566394e86b07245d276b1424d48edfe2957

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b69d2e6c2b07a8f09a9af76a08235faf1435dce` · SHA-256 `1fec3f33df82bdaa5ce4a8e9fe607ea49c8fbbdb46a9caa8f98c0ae97e20c73c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPositiveMassPos.Variantc97f03460f34d50a4d8b79310c60acb744771bda85cf50718215c6731a1245f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c97f03460f34d50a4d8b79310c60acb744771bda85cf50718215c6731a1245f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualPositiveMassPos.Variantc97f03460f34d50a4d8b79310c60acb744771bda85cf50718215c6731a1245f0","mathematical_subject":"Analysis.Calculus","original_sha256":"c97f03460f34d50a4d8b79310c60acb744771bda85cf50718215c6731a1245f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass16/curvature_endpoint/ActualPhaseCurvature-attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualAffineCompensation

/-! Exact branchwise curvature of the actual max-defined paired test.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No endpoint asymptotic, arithmetic intercept or signed budget is supplied. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPositiveMassPos.Variantc97f03460f34d50a4d8b79310c60acb744771bda85cf50718215c6731a1245f0

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
```
