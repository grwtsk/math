# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.MonotoneSourceReadout.Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d412f8794494be78d7155563dc84ade26664108e` · SHA-256 `eb48809267a0e58226fec7c003032da349975d3353e23c5827ea05fde53e0d01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceMode.Variantd9e9df40ada46432efc42ab210ce590aa30d966f9efe4edeebde4df2763f17b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9e9df40ada46432efc42ab210ce590aa30d966f9efe4edeebde4df2763f17b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceMode.Variantd9e9df40ada46432efc42ab210ce590aa30d966f9efe4edeebde4df2763f17b1","mathematical_subject":"Analysis.Integration","original_sha256":"d9e9df40ada46432efc42ab210ce590aa30d966f9efe4edeebde4df2763f17b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass8/matching_limit_review/MonotoneSourceReadout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MonotoneMatchingMeasure
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun

/-!
Literal actual-source readout of the independently defined optional monotone
measure, for issue #322. No prime, Euler-product, or zeta-zero identification.
Research direction: grwtsk contributors; Lean work assisted by OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceMode.Variantd9e9df40ada46432efc42ab210ce590aa30d966f9efe4edeebde4df2763f17b1

set_option autoImplicit false
namespace ContinuousResearch.MonotoneSourceReadout
open MeasureTheory Set Filter
open ContinuousResearch.MonotoneMatchingMeasure
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment
noncomputable section

def sourceMode (A t : ℝ) : ℝ :=
  Real.exp (t / 4) * sourceCorrelation explicitSecondDerivative A t
def sourceModeMoment (A : ℝ) : ℝ := ∫ t in -(2 * A)..2 * A, sourceMode A t
def headKernel (A t : ℝ) : ℝ :=
  criticalPrimeTest A t + amplitude / 4 * sourceMode A t
def headRemainder (A : ℝ) : ℝ := ∫ t in -(2 * A)..onset, headKernel A t
def sourceReadout (A : ℝ) : ℝ := ∫ t : ℝ, criticalPrimeTest A t ∂modelMeasure
def headEnvelope (t : ℝ) : ℝ := Real.exp (t / 2) + amplitude / 4 * Real.exp (t / 4)

theorem sourceMode_continuous (A : ℝ) (hA : 0 < A) : Continuous (sourceMode A) :=
  (Real.continuous_exp.comp (continuous_id.div_const 4)).mul
    (sourceCorrelation_contDiff A hA).continuous

theorem headKernel_continuous (A : ℝ) (hA : 0 < A) : Continuous (headKernel A) :=
  (criticalPrimeTest_contDiff A hA).continuous.add
    (continuous_const.mul (sourceMode_continuous A hA))

theorem sourceMode_intervalIntegrable (A a b : ℝ) (hA : 0 < A) :
    IntervalIntegrable (sourceMode A) volume a b :=
  (sourceMode_continuous A hA).intervalIntegrable a b

theorem source_product_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t => density t * criticalPrimeTest A t) volume := by
  have hp : 0 < A := by linarith
  have hc := (criticalPrimeTest_contDiff A hp).continuous
  have hi : Integrable (criticalPrimeTest A) volume :=
    hc.integrable_of_hasCompactSupport (sourceCorrelation_hasCompactSupport A hp).mul_left
  apply (hi.norm.const_mul (1 + gap / 4)).mono'
    (density_measurable.aestronglyMeasurable.mul hc.aestronglyMeasurable)
  filter_upwards [] with t
  change |density t * criticalPrimeTest A t| ≤ (1 + gap / 4) * |criticalPrimeTest A t|
  rw [abs_mul, abs_of_nonneg (density_nonneg t)]
  exact mul_le_mul_of_nonneg_right (density_upper t) (abs_nonneg _)

theorem sourceReadout_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (criticalPrimeTest A) modelMeasure := by
  unfold modelMeasure
  apply (integrable_withDensity_iff_integrable_smul' density_measurable.ennreal_ofReal
    (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))).mpr
  simpa only [ENNReal.toReal_ofReal (density_nonneg _), smul_eq_mul] using source_product_integrable A hA

theorem sourceReadout_density (A : ℝ) :
    sourceReadout A = ∫ t : ℝ, density t * criticalPrimeTest A t := by
  unfold sourceReadout modelMeasure
  rw [integral_withDensity_eq_integral_toReal_smul density_measurable.ennreal_ofReal
    (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
  simp only [ENNReal.toReal_ofReal (density_nonneg _), smul_eq_mul]

theorem sourceReadout_tail (A : ℝ) (hA : 1 ≤ A) :
    sourceReadout A = ∫ t in onset..2 * A, headKernel A t := by
  have hp : 0 < A := by linarith
  have hs : Function.support (fun t => density t * criticalPrimeTest A t) ⊆ Ioc onset (2 * A) := by
    intro t ht
    by_contra h
    have hn : density t * criticalPrimeTest A t ≠ 0 := ht
    simp only [mem_Ioc, not_and_or, not_lt, not_le] at h
    rcases h with hlo | hhi
    · rw [density_below hlo, zero_mul] at hn
      exact hn rfl
    · have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp
        ((le_of_lt hhi).trans (le_abs_self t))
      simp [criticalPrimeTest, hz] at hn
  rw [sourceReadout_density, ← intervalIntegral.integral_eq_integral_of_support_subset hs]
  apply intervalIntegral.integral_congr_Ioo_of_le
    (show onset ≤ 2 * A by unfold onset; linarith [Real.log_two_lt_d9])
  intro t ht
  change density t * criticalPrimeTest A t = headKernel A t
  rw [density_above ht.1]
  unfold tailDensity headKernel sourceMode criticalPrimeTest
  calc
    _ = Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t +
        amplitude / 4 * (Real.exp (-t / 4) * Real.exp (t / 2)) *
          sourceCorrelation explicitSecondDerivative A t := by ring
    _ = _ := by rw [← Real.exp_add, show -t / 4 + t / 2 = t / 4 by ring]; ring

theorem source_test_whole_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in -(2 * A)..2 * A, criticalPrimeTest A t) = 0 := by
  have hp : 0 < A := by linarith
  have hs : Function.support (criticalPrimeTest A) ⊆ Ioc (-(2 * A)) (2 * A) := by
    intro t ht
    by_contra h
    have hn : criticalPrimeTest A t ≠ 0 := ht
    simp only [mem_Ioc, not_and_or, not_lt, not_le] at h
    have habs : 2 * A ≤ |t| := by
      rcases h with hlo | hhi
      · rw [abs_of_nonpos (by linarith)]; linarith
      · exact (le_of_lt hhi).trans (le_abs_self t)
    have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp habs
    simp [criticalPrimeTest, hz] at hn
  rw [intervalIntegral.integral_eq_integral_of_support_subset hs]
  have hz := full_correlation_moment_zero A hA
  have he : criticalPrimeTest A = fun t => Real.exp ((1 / 2 : ℝ) * t) *
      sourceCorrelation explicitSecondDerivative A t := by
    funext t
    unfold criticalPrimeTest
    congr 2
    ring
  rw [he]
  exact hz

theorem sourceReadout_exact (A : ℝ) (hA : 1 ≤ A) :
    sourceReadout A = amplitude / 4 * sourceModeMoment A - headRemainder A := by
  have hp : 0 < A := by linarith
  have hk := headKernel_continuous A hp
  have hi1 : IntervalIntegrable (headKernel A) volume (-(2 * A)) onset := hk.intervalIntegrable _ _
  have hi2 : IntervalIntegrable (headKernel A) volume onset (2 * A) := hk.intervalIntegrable _ _
  have he := intervalIntegral.integral_add_adjacent_intervals hi1 hi2
  rw [← sourceReadout_tail A hA] at he
  change headRemainder A + sourceReadout A = ∫ t in -(2 * A)..2 * A,
    criticalPrimeTest A t + amplitude / 4 * sourceMode A t at he
  rw [intervalIntegral.integral_add ((criticalPrimeTest_contDiff A hp).continuous.intervalIntegrable _ _)
    ((sourceMode_intervalIntegrable A _ _ hp).const_mul _),
    source_test_whole_zero A hA, zero_add, intervalIntegral.integral_const_mul] at he
  unfold sourceModeMoment
  linarith

theorem headEnvelope_continuous : Continuous headEnvelope :=
  (Real.continuous_exp.comp (continuous_id.div_const 2)).add
    (continuous_const.mul (Real.continuous_exp.comp (continuous_id.div_const 4)))

theorem headEnvelope_nonneg (t : ℝ) : 0 ≤ headEnvelope t := by
  unfold headEnvelope
  exact add_nonneg (Real.exp_pos _).le
    (mul_nonneg (div_nonneg amplitude_pos.le (by norm_num)) (Real.exp_pos _).le)

theorem headKernel_abs_le (A t : ℝ) (hA : 1 ≤ A) : |headKernel A t| ≤ headEnvelope t := by
  have he : headKernel A t = headEnvelope t * sourceCorrelation explicitSecondDerivative A t := by
    unfold headKernel headEnvelope sourceMode criticalPrimeTest
    ring
  rw [he, abs_mul, abs_of_nonneg (headEnvelope_nonneg t)]
  exact mul_le_of_le_one_right (headEnvelope_nonneg t) (EstimateCorrelation.actual_correlation_abs_le_one A t hA)

theorem headEnvelope_integral (A : ℝ) :
    (∫ t in -(2 * A)..onset, headEnvelope t) =
      Real.sqrt 2 * (2 + gap) - 2 * Real.exp (-A) - amplitude * Real.exp (-A / 2) := by
  have hi1 : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2)) volume (-(2 * A)) onset :=
    (Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable _ _
  have hi2 : IntervalIntegrable (fun t : ℝ => amplitude / 4 * Real.exp (t / 4)) volume (-(2 * A)) onset :=
    (continuous_const.mul (Real.continuous_exp.comp (continuous_id.div_const 4))).intervalIntegrable _ _
  have hhalf : (∫ t in -(2 * A)..onset, Real.exp (t / 2)) =
      2 * (Real.exp (onset / 2) - Real.exp (-A)) := by
    have h := integral_exp_rate (1 / 2) (-(2 * A)) onset (by norm_num)
    have hscale (t : ℝ) : (1 / 2 : ℝ) * t = t / 2 := by ring
    simp_rw [hscale] at h
    rw [show -(2 * A) / 2 = -A by ring] at h
    rw [h]
    ring
  have hquarter : (∫ t in -(2 * A)..onset, Real.exp (t / 4)) =
      4 * (Real.exp (onset / 4) - Real.exp (-A / 2)) := by
    have h := integral_exp_rate (1 / 4) (-(2 * A)) onset (by norm_num)
    have hscale (t : ℝ) : (1 / 4 : ℝ) * t = t / 4 := by ring
    simp_rw [hscale] at h
    rw [show -(2 * A) / 4 = -A / 2 by ring] at h
    rw [h]
    ring
  have he : Real.exp (onset / 2) = Real.sqrt 2 := by
    rw [Real.exp_half, onset, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  have hd : amplitude * Real.exp (onset / 4) = gap * Real.exp (onset / 2) := by
    unfold amplitude
    rw [mul_assoc, ← Real.exp_add, show onset / 4 + onset / 4 = onset / 2 by ring]
  unfold headEnvelope
  rw [intervalIntegral.integral_add hi1 hi2, hhalf, intervalIntegral.integral_const_mul, hquarter]
  have hs := hd
  rw [he] at hs
  rw [he]
  nlinarith

theorem headRemainder_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |headRemainder A| ≤ Real.sqrt 2 * (2 + gap) := by
  have hab : -(2 * A) ≤ onset := by linarith [onset_pos]
  have hi : IntervalIntegrable headEnvelope volume (-(2 * A)) onset :=
    headEnvelope_continuous.intervalIntegrable _ _
  have hm := intervalIntegral.norm_integral_le_of_norm_le hab
    (Eventually.of_forall (fun t _ => show ‖headKernel A t‖ ≤ headEnvelope t by
      simpa only [Real.norm_eq_abs] using headKernel_abs_le A t hA)) hi
  change ‖headRemainder A‖ ≤ ∫ t in -(2 * A)..onset, headEnvelope t at hm
  rw [Real.norm_eq_abs, headEnvelope_integral] at hm
  have hp := mul_pos amplitude_pos (Real.exp_pos (-A / 2))
  linarith [Real.exp_pos (-A)]

theorem headRemainder_abs_lt_three (A : ℝ) (hA : 1 ≤ A) : |headRemainder A| < 3 := by
  have hg : gap < (121 / 1000 : ℝ) := by
    unfold gap onset
    linarith [Real.log_two_lt_d9, gamma_gt_five_seventy_three_thousandths]
  have hs : Real.sqrt 2 < (99 / 70 : ℝ) := by
    have hh := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)
    have h0 := Real.sqrt_nonneg 2
    nlinarith
  have h := headRemainder_abs_le A hA
  have hp := mul_lt_mul_of_pos_right hs (show 0 < 2 + gap by linarith [gap_pos])
  nlinarith

theorem sourceReadout_window (A : ℝ) (hA : 1 ≤ A) :
    sourceReadout A = ∫ t in -(2 * A)..2 * A, density t * criticalPrimeTest A t := by
  have hp : 0 < A := by linarith
  have hs : Function.support (fun t => density t * criticalPrimeTest A t) ⊆ Ioc (-(2 * A)) (2 * A) := by
    intro t ht
    by_contra h
    have hn : density t * criticalPrimeTest A t ≠ 0 := ht
    simp only [mem_Ioc, not_and_or, not_lt, not_le] at h
    rcases h with hlo | hhi
    · have ht0 : t ≤ onset := by linarith [onset_pos]
      rw [density_below ht0, zero_mul] at hn
      exact hn rfl
    · have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp
        ((le_of_lt hhi).trans (le_abs_self t))
      simp [criticalPrimeTest, hz] at hn
  rw [sourceReadout_density]
  exact (intervalIntegral.integral_eq_integral_of_support_subset hs).symm

theorem sourceReadout_parts (A : ℝ) (hA : 1 ≤ A) :
    sourceReadout A = -(∫ t in -(2 * A)..2 * A,
      discrepancy t * deriv (criticalPrimeTest A) t) := by
  have hp : 0 < A := by linarith
  have hE := discrepancy_absolutelyContinuous_window A (by linarith)
  have hg := (criticalPrimeTest_contDiff A hp).contDiffOn.absolutelyContinuousOnInterval
    (a := -(2 * A)) (b := 2 * A)
  have hibp := hE.integral_mul_deriv_eq_deriv_mul hg
  have hlo : criticalPrimeTest A (-(2 * A)) = 0 := by
    simp [criticalPrimeTest, sourceCorrelation_lower_endpoint A hp]
  rw [criticalPrimeTest_at_upper A hp, hlo] at hibp
  simp only [mul_zero, sub_self, zero_sub] at hibp
  have hi1 : IntervalIntegrable (criticalPrimeTest A) volume (-(2 * A)) (2 * A) :=
    (criticalPrimeTest_contDiff A hp).continuous.intervalIntegrable _ _
  have hi2 := hE.intervalIntegrable_deriv.mul_continuousOn hg.continuousOn
  have he : (∫ t in -(2 * A)..2 * A, density t * criticalPrimeTest A t) =
      (∫ t in -(2 * A)..2 * A, criticalPrimeTest A t) +
      ∫ t in -(2 * A)..2 * A, deriv discrepancy t * criticalPrimeTest A t := by
    rw [← intervalIntegral.integral_add hi1 hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [density_eq_one_add_deriv_ae] with t ht _
    change density t * criticalPrimeTest A t = criticalPrimeTest A t + deriv discrepancy t * criticalPrimeTest A t
    rw [ht]
    ring
  rw [sourceReadout_window A hA, he, source_test_whole_zero A hA, zero_add]
  linarith

theorem source_signed_work_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t => discrepancy t * deriv (criticalPrimeTest A) t) volume := by
  have hp : 0 < A := by linarith
  have hc := criticalPrimeTest_contDiff A hp
  exact (discrepancy_continuous.mul hc.continuous_deriv_one).integrable_of_hasCompactSupport
    ((sourceCorrelation_hasCompactSupport A hp).mul_left.deriv.mul_left)

theorem source_signed_work_whole (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, discrepancy t * deriv (criticalPrimeTest A) t) =
      ∫ t in -(2 * A)..2 * A, discrepancy t * deriv (criticalPrimeTest A) t := by
  have hp : 0 < A := by linarith
  have hs : Function.support (criticalPrimeTest A) ⊆ Icc (-(2 * A)) (2 * A) := by
    intro t ht
    by_contra h
    have hn : criticalPrimeTest A t ≠ 0 := ht
    have habs : 2 * A ≤ |t| := by
      simp only [mem_Icc, not_and_or, not_le] at h
      rcases h with hlo | hhi
      · rw [abs_of_nonpos (by linarith)]; linarith
      · exact hhi.le.trans (le_abs_self t)
    have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp habs
    simp [criticalPrimeTest, hz] at hn
  have hts : tsupport (criticalPrimeTest A) ⊆ Icc (-(2 * A)) (2 * A) :=
    closure_minimal hs isClosed_Icc
  have he : (fun t => discrepancy t * deriv (criticalPrimeTest A) t) =
      (Icc (-(2 * A)) (2 * A)).indicator (fun t => discrepancy t * deriv (criticalPrimeTest A) t) := by
    funext t
    by_cases ht : t ∈ Icc (-(2 * A)) (2 * A)
    · rw [indicator_of_mem ht]
    · rw [indicator_of_notMem ht]
      have hz : deriv (criticalPrimeTest A) t = 0 :=
        deriv_of_notMem_tsupport (fun hh => ht (hts hh))
      rw [hz, mul_zero]
  nth_rw 1 [he]
  rw [integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -(2 * A) ≤ 2 * A)]

theorem sourceReadout_eq_signed_work (A : ℝ) (hA : 1 ≤ A) :
    sourceReadout A = -(∫ t : ℝ, discrepancy t * deriv (criticalPrimeTest A) t) := by
  rw [source_signed_work_whole A hA]
  exact sourceReadout_parts A hA

#check sourceMode
#print axioms sourceMode
#check sourceModeMoment
#print axioms sourceModeMoment
#check headKernel
#print axioms headKernel
#check headRemainder
#print axioms headRemainder
#check sourceReadout
#print axioms sourceReadout
#check headEnvelope
#print axioms headEnvelope
#check sourceMode_continuous
#print axioms sourceMode_continuous
#check headKernel_continuous
#print axioms headKernel_continuous
#check sourceMode_intervalIntegrable
#print axioms sourceMode_intervalIntegrable
#check source_product_integrable
#print axioms source_product_integrable
#check sourceReadout_integrable
#print axioms sourceReadout_integrable
#check sourceReadout_density
#print axioms sourceReadout_density
#check sourceReadout_tail
#print axioms sourceReadout_tail
#check source_test_whole_zero
#print axioms source_test_whole_zero
#check sourceReadout_exact
#print axioms sourceReadout_exact
#check headEnvelope_continuous
#print axioms headEnvelope_continuous
#check headEnvelope_nonneg
#print axioms headEnvelope_nonneg
#check headKernel_abs_le
#print axioms headKernel_abs_le
#check headEnvelope_integral
#print axioms headEnvelope_integral
#check headRemainder_abs_le
#print axioms headRemainder_abs_le
#check headRemainder_abs_lt_three
#print axioms headRemainder_abs_lt_three
#check sourceReadout_window
#print axioms sourceReadout_window
#check sourceReadout_parts
#print axioms sourceReadout_parts
#check source_signed_work_integrable
#print axioms source_signed_work_integrable
#check source_signed_work_whole
#print axioms source_signed_work_whole
#check sourceReadout_eq_signed_work
#print axioms sourceReadout_eq_signed_work

end
end ContinuousResearch.MonotoneSourceReadout
```
