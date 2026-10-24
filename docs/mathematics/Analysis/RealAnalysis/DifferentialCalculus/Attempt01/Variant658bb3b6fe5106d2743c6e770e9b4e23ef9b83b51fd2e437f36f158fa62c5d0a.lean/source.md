# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt01.Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d93422048d501aceeb58a84bc8e27de7f19a2a23` · SHA-256 `3ff7c2dbe78c3e8f897d67332b4e7faab6450fc8a19ab82c206f468ae4268885`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CriticalPrimeTestContDiffTwo.Variant8c1f0d5580b9bfc39db9e30d137e646f219d8aa068ad79e6823e28f39d68b4f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c1f0d5580b9bfc39db9e30d137e646f219d8aa068ad79e6823e28f39d68b4f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CriticalPrimeTestContDiffTwo.Variant8c1f0d5580b9bfc39db9e30d137e646f219d8aa068ad79e6823e28f39d68b4f4","mathematical_subject":"Analysis.Calculus","original_sha256":"8c1f0d5580b9bfc39db9e30d137e646f219d8aa068ad79e6823e28f39d68b4f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass14/signed_bridge/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import Mathlib.Analysis.Calculus.ContDiff.RCLike
import Mathlib.Topology.MetricSpace.Lipschitz

/-! Exact second Abel for the unchanged max-defined paired source test.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
The source curvature is an AE derivative of the actual first derivative;
no global C2 assertion for the max-defined paired test is made.
No uniform signed curvature budget, independent Vaughan M identification or
RH witness is supplied. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CriticalPrimeTestContDiffTwo.Variant8c1f0d5580b9bfc39db9e30d137e646f219d8aa068ad79e6823e28f39d68b4f4

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualSecondAbel
open MeasureTheory Set
open scoped Interval
open FormalResearch.RiemannHypothesis
open SourcePairing SourceFirstPrimeAbel SourcePairedPrimeWork SourcePairedPrimeAverages
open SourcePairedTailTest SourceCriticalDecayWork SourceCriticalRemovedPrimeWork
open SourceCriticalDensityQuadrature SourceCriticalCumulativeDiscrepancy
open SourceCorrelationCurvature WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The original critical source is C2; the source itself needs only C1. -/
theorem criticalPrimeTest_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (criticalPrimeTest A) :=
  ((contDiff_id.div_const 2).exp).mul (sourceCorrelation_contDiff_two hA)

/-- For each fixed positive A the actual derivative is globally Lipschitz.
The constant is not asserted uniform as A grows. -/
theorem criticalPrimeTest_deriv_lipschitz {A : ℝ} (hA : 0 < A) :
    ∃ K : ℝ≥0, LipschitzWith K (deriv (criticalPrimeTest A)) := by
  have hc : HasCompactSupport (criticalPrimeTest A) := by
    exact (sourceCorrelation_hasCompactSupport A hA).mul_left
  exact (criticalPrimeTest_contDiff_two hA).deriv'.lipschitzWith_of_hasCompactSupport
    hc.deriv (by decide)

/-- Max-defined phases are Lipschitz, including their sign-change seams. -/
theorem actual_slope_phases_lipschitz {A : ℝ} (hA : 0 < A) :
    ∃ K : ℝ≥0, LipschitzWith K (positiveSlope A) ∧
      LipschitzWith K (negativeSlope A) := by
  obtain ⟨K,hK⟩ := criticalPrimeTest_deriv_lipschitz hA
  exact ⟨K,hK.max_const 0,hK.neg.max_const 0⟩

/-- The actual paired first derivative is absolutely continuous on every finite interval. -/
theorem pairedTailTest_deriv_absolutelyContinuous {A : ℝ} (hA : 1 ≤ A) (a b : ℝ) :
    AbsolutelyContinuousOnInterval (deriv (pairedTailTest A)) a b := by
  obtain ⟨K,hp,hn⟩ := actual_slope_phases_lipschitz (by linarith : 0 < A)
  have hpac : AbsolutelyContinuousOnInterval (positiveSlope A) a b :=
    hp.lipschitzOnWith.absolutelyContinuousOnInterval
  have hnac : AbsolutelyContinuousOnInterval (negativeSlope A) a b :=
    hn.lipschitzOnWith.absolutelyContinuousOnInterval
  have he : deriv (pairedTailTest A) = fun u =>
      -positiveSlope A u+(positiveMass A/negativeMass A)*negativeSlope A u := by
    funext u
    exact pairedTailTest_deriv hA u
  rw [he]
  exact hpac.neg.add (hnac.const_mul (positiveMass A/negativeMass A))

/-- A literal representative of the paired test's AE curvature. -/
def pairedTailCurvature (A u : ℝ) : ℝ := deriv (deriv (pairedTailTest A)) u

theorem pairedTailCurvature_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (a b : ℝ) :
    IntervalIntegrable (pairedTailCurvature A) volume a b :=
  (pairedTailTest_deriv_absolutelyContinuous hA a b).intervalIntegrable_deriv

theorem pairedTailCurvature_ae_hasDerivAt {A : ℝ} (hA : 1 ≤ A) (a b : ℝ) :
    ∀ᵐ u ∂volume, u ∈ uIcc a b →
      HasDerivAt (deriv (pairedTailTest A)) (pairedTailCurvature A u) u := by
  filter_upwards [(pairedTailTest_deriv_absolutelyContinuous hA a b).ae_differentiableAt]
    with u hu
  intro hum
  exact (hu hum).hasDerivAt

theorem pairedTailTest_deriv_integral_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2*A, deriv (pairedTailTest A) u) = 0 := by
  have hi := intervalIntegral.integral_deriv_eq_sub
    (fun u _ => (pairedTailTest_contDiff hA).differentiable_one u)
    ((pairedTailTest_contDiff hA).continuous_deriv_one.intervalIntegrable
      (μ:=volume) 0 (2*A))
  simpa only [pairedTailTest_at_upper hA,pairedTailTest_at_zero hA,sub_self] using hi

theorem actual_delta_pairing_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => criticalCumulativeDiscrepancy u*
      deriv (pairedTailTest A) u) volume 0 (2*A) :=
  (criticalCumulativeDiscrepancy_intervalIntegrable 0 (2*A)).mul_continuousOn
    (pairedTailTest_contDiff hA).continuous_deriv_one.continuousOn

/-- First Abel on the actual compensated readout: the extra constant in delta cancels
against the paired test's zero endpoints, not an arithmetic mass-balance assumption. -/
theorem actual_first_Abel {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      -(∫ u in 0..2*A, criticalCumulativeDiscrepancy u*
        deriv (pairedTailTest A) u) := by
  have hp : 0 < A := by linarith
  have hh : Continuous criticalDecay := by unfold criticalDecay;fun_prop
  let e : ℝ → ℝ := fun u => primeLogError u-criticalDecay u
  have he : IntervalIntegrable e volume 0 (2*A) :=
    (actualPrimeError_intervalIntegrable hp).sub (hh.intervalIntegrable _ _)
  have hip := he.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hin := he.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  have hid := he.mul_continuousOn (pairedTailTest_contDiff hA).continuous_deriv_one.continuousOn
  have hD := (pairedTailTest_contDiff hA).continuous_deriv_one.intervalIntegrable
    (μ:=volume) 0 (2*A)
  have hw : criticalRemovedPairedWork A =
      (∫ u in 0..2*A,e u*positiveSlope A u)-
        (positiveMass A/negativeMass A)*(∫ u in 0..2*A,e u*negativeSlope A u) := by
    unfold criticalRemovedPairedWork e
    ring
  have hw2 : criticalRemovedPairedWork A = -(∫ u in 0..2*A,e u*deriv (pairedTailTest A) u) := by
    rw [hw,←intervalIntegral.integral_const_mul,←intervalIntegral.integral_sub hip
      (hin.const_mul (positiveMass A/negativeMass A)),←intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro u _
    dsimp only
    rw [pairedTailTest_deriv hA]
    ring
  have hdelta : (fun u => criticalCumulativeDiscrepancy u*deriv (pairedTailTest A) u) =
      fun u => e u*deriv (pairedTailTest A) u+deriv (pairedTailTest A) u := by
    funext u
    rw [criticalCumulativeDiscrepancy_eq]
    dsimp [e]
    ring
  rw [hdelta,intervalIntegral.integral_add hid hD,pairedTailTest_deriv_integral_zero hA,
    add_zero]
  exact hw2

theorem actual_bridge_curvature_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => criticalDiscrepancyBridge A u*pairedTailCurvature A u)
      volume 0 (2*A) :=
  (pairedTailCurvature_intervalIntegrable hA 0 (2*A)).continuousOn_mul
    (criticalDiscrepancyBridge_continuous A).continuousOn

/-- Exact second Abel. Only the bridge endpoints vanish; D' endpoints need not vanish.
Its curvature is the actual AE derivative across max-phase seams. -/
theorem actual_second_Abel {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      ∫ u in 0..2*A, criticalDiscrepancyBridge A u*pairedTailCurvature A u := by
  have hp : 0 < A := by linarith
  have hga := criticalDiscrepancyBridge_absolutelyContinuous A
  have hda := pairedTailTest_deriv_absolutelyContinuous hA 0 (2*A)
  have hibp := hga.integral_mul_deriv_eq_deriv_mul hda
  rw [criticalDiscrepancyBridge_at_upper hp,criticalDiscrepancyBridge_at_zero,
    zero_mul,zero_mul,sub_self,zero_sub] at hibp
  have hae : (∫ u in 0..2*A,deriv (criticalDiscrepancyBridge A) u*
      deriv (pairedTailTest A) u) =
      ∫ u in 0..2*A,(criticalCumulativeDiscrepancy u-
        criticalDiscrepancyPrimitive (2*A)/(2*A))*deriv (pairedTailTest A) u := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalDiscrepancyBridge_ae_hasDerivAt hp] with u hu hum
    rw [(hu (uIoc_subset_uIcc hum)).deriv]
  have hc := ((pairedTailTest_contDiff hA).continuous_deriv_one.intervalIntegrable
    (μ:=volume) 0 (2*A)).const_mul (criticalDiscrepancyPrimitive (2*A)/(2*A))
  simp_rw [sub_mul] at hae
  rw [intervalIntegral.integral_sub (actual_delta_pairing_intervalIntegrable hA) hc,
    intervalIntegral.integral_const_mul,pairedTailTest_deriv_integral_zero hA,
    mul_zero,sub_zero] at hae
  rw [hae] at hibp
  rw [actual_first_Abel hA]
  exact hibp.symm

end ContinuousResearch.ActualSecondAbel
```
