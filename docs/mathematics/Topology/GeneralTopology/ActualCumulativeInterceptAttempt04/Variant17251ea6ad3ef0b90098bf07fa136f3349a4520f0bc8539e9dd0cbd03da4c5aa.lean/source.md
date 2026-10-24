# Complete source: GRWTSK.Topology.GeneralTopology.ActualCumulativeInterceptAttempt04.Variant17251ea6ad3ef0b90098bf07fa136f3349a4520f0bc8539e9dd0cbd03da4c5aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26591905f3600c784ae785087d7401bfd7139351` · SHA-256 `1ed6cb001ed436256bfb91281fc725d67745af539c0fded1e01b3e8194276646`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualAffineSlope.Variant8779b19deae3d4707a8b042ed2189fc09faef0a859a026eb7f71a40f0417d199","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8779b19deae3d4707a8b042ed2189fc09faef0a859a026eb7f71a40f0417d199","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualAffineSlope.Variant8779b19deae3d4707a8b042ed2189fc09faef0a859a026eb7f71a40f0417d199","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8779b19deae3d4707a8b042ed2189fc09faef0a859a026eb7f71a40f0417d199","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass23/cumulative_intercept/ActualCumulativeIntercept-attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPrimeIntercept
import FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-! Actual cumulative discrepancy and its independent integral intercept.
grwtsk contributors's mathematical direction; OpenAI Codex scratch construction.
The centered-Mangoldt positive-axis unweighted L1 hypothesis remains explicit.
No endpoint-relative rate, signed witness or RH consumer is supplied. -/

namespace GRWTSK.Topology.GeneralTopology.ActualAffineSlope.Variant8779b19deae3d4707a8b042ed2189fc09faef0a859a026eb7f71a40f0417d199

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualCumulativeIntercept
open MeasureTheory Set Filter Topology
open scoped Interval
open FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
open FormalResearch.RiemannHypothesis.SourceCriticalDecayWork
open FormalResearch.RiemannHypothesis.WeightedPrimeAbel
open ContinuousResearch.ActualPrimeIntercept ContinuousResearch.SourceRemainderLaplace
open ContinuousResearch.ProperPowerMoments

/-- Independent affine slope retaining both actual centering constants. -/
def actualAffineSlope : ℝ :=
  1 - Real.eulerMascheroniConstant - properPowerMoment 0

theorem cumulative_discrepancy_eq_remainder (u : ℝ) :
    criticalCumulativeDiscrepancy u =
      actualPrimeRemainder u + actualAffineSlope - criticalDecay u := by
  rw [criticalCumulativeDiscrepancy_eq]
  unfold actualPrimeRemainder actualAffineSlope
  ring

theorem actual_prime_remainder_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable actualPrimeRemainder volume a b := by
  have hd : Continuous criticalDecay := by unfold criticalDecay; fun_prop
  have h := ((criticalCumulativeDiscrepancy_intervalIntegrable a b).sub
    (intervalIntegrable_const (c:=actualAffineSlope))).add (hd.intervalIntegrable (μ:=volume) a b)
  convert! h using 1
  funext u
  rw [cumulative_discrepancy_eq_remainder]
  ring

theorem decay_integral (u : ℝ) :
    (∫ t in 0..u, criticalDecay t) = 2 - 2*criticalDecay u := by
  have hd (t : ℝ) : HasDerivAt (fun x : ℝ => -2*criticalDecay x) (criticalDecay t) t := by
    have h := (((hasDerivAt_id t).neg.div_const 2).exp).const_mul (-2:ℝ)
    convert! h using 1
    dsimp [criticalDecay]
    ring
  have hc : Continuous criticalDecay := by unfold criticalDecay; fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (hc.intervalIntegrable (μ:=volume) 0 u)
  simpa [criticalDecay,sub_eq_add_neg,add_comm,neg_mul] using h

theorem actual_primitive_decomposition (u : ℝ) :
    criticalDiscrepancyPrimitive u = actualAffineSlope*u +
      (∫ t in 0..u, actualPrimeRemainder t) - 2 + 2*criticalDecay u := by
  unfold criticalDiscrepancyPrimitive
  simp_rw [cumulative_discrepancy_eq_remainder]
  rw [intervalIntegral.integral_sub
      ((actual_prime_remainder_intervalIntegrable 0 u).add intervalIntegrable_const)
      ((show Continuous criticalDecay by unfold criticalDecay;fun_prop).intervalIntegrable (μ:=volume) 0 u),
    intervalIntegral.integral_add (actual_prime_remainder_intervalIntegrable 0 u)
      intervalIntegrable_const,
    intervalIntegral.integral_const,decay_integral]
  simp only [sub_zero,smul_eq_mul]
  ring

/-- The actual exponential correction vanishes along all real coordinates. -/
theorem decay_tendsto_zero : Tendsto criticalDecay atTop (𝓝 0) := by
  have h := Real.tendsto_exp_atBot.comp
    ((tendsto_id : Tendsto (fun u : ℝ => u) atTop atTop).const_mul_atTop_of_neg
      (by norm_num : (-1/2 : ℝ) < 0))
  convert! h using 1
  funext u
  dsimp [criticalDecay]
  congr 1
  ring

/-- Exact tail dictionary retains the physical -2 and the nonconstant exponential. -/
theorem actual_primitive_tail_dictionary
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {u : ℝ} (hu : 0 ≤ u) :
    criticalDiscrepancyPrimitive u - actualAffineSlope*u - actualPrimeIntercept =
      -(∫ t in Ioi u, actualPrimeRemainder t) + 2*criticalDecay u := by
  have h := intervalIntegral.integral_Ioi_sub_Ioi (actual_prime_remainder_integrable hI) hu
  rw [actual_primitive_decomposition,actualPrimeIntercept]
  linarith

/-- The literal G has the independently defined integral intercept, under only actual L1. -/
theorem actual_primitive_affine_intercept
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    Tendsto (fun u : ℝ => criticalDiscrepancyPrimitive u - actualAffineSlope*u)
      atTop (𝓝 actualPrimeIntercept) := by
  have ht := intervalIntegral_tendsto_integral_Ioi 0
    (actual_prime_remainder_integrable hI) (tendsto_id : Tendsto (fun u : ℝ => u) atTop atTop)
  have h := (ht.sub_const 2).add (decay_tendsto_zero.const_mul 2)
  simp only [mul_zero,add_zero] at h
  apply h.congr'
  filter_upwards [] with u
  dsimp only [id_eq]
  rw [actual_primitive_decomposition]
  ring

/-- The literal affine-subtracted remainder tends to zero on all real coordinates. -/
theorem actual_primitive_affine_error_tendsto_zero
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    Tendsto (fun u : ℝ => criticalDiscrepancyPrimitive u - actualAffineSlope*u - actualPrimeIntercept)
      atTop (𝓝 0) := by
  simpa using (actual_primitive_affine_intercept hI).sub_const actualPrimeIntercept

/-- The actual upper endpoint average converges to the independent affine slope. -/
theorem actual_upper_average_tendsto
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    Tendsto (fun A : ℝ => criticalDiscrepancyPrimitive (2*A)/(2*A))
      atTop (𝓝 actualAffineSlope) := by
  have hA : Tendsto (fun A : ℝ => 2*A) atTop atTop :=
    tendsto_id.const_mul_atTop (by norm_num : (0:ℝ)<2)
  have h := ((actual_primitive_affine_intercept hI).comp hA).div_atTop hA
  have hc : Tendsto (fun _ : ℝ => actualAffineSlope) atTop (𝓝 actualAffineSlope) := tendsto_const_nhds
  have hz := hc.add h
  simp only [add_zero] at hz
  apply hz.congr'
  filter_upwards [eventually_gt_atTop (0:ℝ)] with A hpos
  have hn : 2*A ≠ 0 := ne_of_gt (by linarith : 0<2*A)
  field_simp
  ring

/-- Fixed physical coordinate bridge limit; no A-dependent endpoint-relative rate. -/
theorem actual_bridge_fixed_coordinate_tendsto
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) (u : ℝ) :
    Tendsto (fun A : ℝ => criticalDiscrepancyBridge A u) atTop
      (𝓝 (criticalDiscrepancyPrimitive u - actualAffineSlope*u)) := by
  have hc : Tendsto (fun _ : ℝ => criticalDiscrepancyPrimitive u) atTop
      (𝓝 (criticalDiscrepancyPrimitive u)) := tendsto_const_nhds
  have h := hc.sub ((actual_upper_average_tendsto hI).const_mul u)
  have he (A : ℝ) : criticalDiscrepancyPrimitive u -
    u*(criticalDiscrepancyPrimitive (2*A)/(2*A)) = criticalDiscrepancyBridge A u := by
    unfold criticalDiscrepancyBridge
    ring
  simpa only [mul_comm actualAffineSlope u] using h.congr he

end ContinuousResearch.ActualCumulativeIntercept
```
