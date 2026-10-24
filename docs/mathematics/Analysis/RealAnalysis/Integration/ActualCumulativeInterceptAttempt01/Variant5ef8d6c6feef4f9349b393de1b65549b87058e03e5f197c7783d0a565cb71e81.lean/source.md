# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualCumulativeInterceptAttempt01.Variant5ef8d6c6feef4f9349b393de1b65549b87058e03e5f197c7783d0a565cb71e81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be00efa437852b7fdd331301791f966dad62a200` · SHA-256 `5aed7b7f2ff7824cdf27defc605897b10affde0c2238f419d1a6781fca16af2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualAffineSlope.Variant777bc41c290b1ffe41a826fa4e4c6aa3289a23a035a67334bf3b58594574424c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"777bc41c290b1ffe41a826fa4e4c6aa3289a23a035a67334bf3b58594574424c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualAffineSlope.Variant777bc41c290b1ffe41a826fa4e4c6aa3289a23a035a67334bf3b58594574424c","mathematical_subject":"Analysis.Integration","original_sha256":"777bc41c290b1ffe41a826fa4e4c6aa3289a23a035a67334bf3b58594574424c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass23/cumulative_intercept/ActualCumulativeIntercept-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPrimeIntercept
import FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-! Actual cumulative discrepancy and its independent integral intercept.
grwtsk contributors's mathematical direction; OpenAI Codex scratch construction.
The centered-Mangoldt positive-axis unweighted L1 hypothesis remains explicit.
No endpoint-relative rate, signed witness or RH consumer is supplied. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualAffineSlope.Variant777bc41c290b1ffe41a826fa4e4c6aa3289a23a035a67334bf3b58594574424c

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
  simp only [Pi.sub_apply,Pi.add_apply]
  ring

theorem decay_integral (u : ℝ) :
    (∫ t in 0..u, criticalDecay t) = 2 - 2*criticalDecay u := by
  have hd (t : ℝ) : HasDerivAt (fun x : ℝ => -2*criticalDecay x) (criticalDecay t) t := by
    have h := (((hasDerivAt_id t).neg.div_const 2).exp).const_mul (-2:ℝ)
    convert! h using 1 <;> first | rfl | (dsimp [criticalDecay];ring)
  have hc : Continuous criticalDecay := by unfold criticalDecay; fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (hc.intervalIntegrable (μ:=volume) 0 u)
  simpa [criticalDecay] using h

theorem actual_primitive_decomposition (u : ℝ) :
    criticalDiscrepancyPrimitive u = actualAffineSlope*u +
      (∫ t in 0..u, actualPrimeRemainder t) - 2 + 2*criticalDecay u := by
  unfold criticalDiscrepancyPrimitive
  simp_rw [cumulative_discrepancy_eq_remainder]
  rw [intervalIntegral.integral_sub
      ((actual_prime_remainder_intervalIntegrable 0 u).add intervalIntegrable_const)
      ((show Continuous criticalDecay by unfold criticalDecay;fun_prop).intervalIntegrable),
    intervalIntegral.integral_add (actual_prime_remainder_intervalIntegrable 0 u)
      intervalIntegrable_const,
    intervalIntegral.integral_const,decay_integral]
  simp only [sub_zero,smul_eq_mul]
  ring

end ContinuousResearch.ActualCumulativeIntercept
```
