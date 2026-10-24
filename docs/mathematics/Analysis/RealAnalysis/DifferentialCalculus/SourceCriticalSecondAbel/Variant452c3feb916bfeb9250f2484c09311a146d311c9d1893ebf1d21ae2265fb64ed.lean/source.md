# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCriticalSecondAbel.Variant452c3feb916bfeb9250f2484c09311a146d311c9d1893ebf1d21ae2265fb64ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1210ee21b4c8c0f122962a5d039d67c7de245de6` · SHA-256 `6019e20c157f4b4333793e57b81e9d0e162609b03340781165801e38164f13a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CriticalPrimeTestContDiffTwo.Variantddcdd129929e02390410a116d19b48637d4104a7e284e8e133ecd739d2ec4db7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ddcdd129929e02390410a116d19b48637d4104a7e284e8e133ecd739d2ec4db7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CriticalPrimeTestContDiffTwo.Variantddcdd129929e02390410a116d19b48637d4104a7e284e8e133ecd739d2ec4db7","mathematical_subject":"Analysis.Calculus","original_sha256":"ddcdd129929e02390410a116d19b48637d4104a7e284e8e133ecd739d2ec4db7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle19/next-second-abel/principal/attempt-02/SourceCriticalSecondAbel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
# Uncompiled private second Abel adapter for the actual paired source test

This is a private proof draft with zero checked exports. Compact support and
actual C2 correlation first supply a finite fixed-scale Lipschitz constant for
the exponential test derivative. Both max-defined phases then give actual AC of
the paired derivative across their seams. Exact first and second Abel identities
retain the original closed prime atoms, density endpoint mass, both source
orientations and full signed drift. No uniform Lipschitz or signed arithmetic
budget, global paired C2, or zero lower-endpoint derivative is assumed.

AI attribution: drafted with OpenAI Codex; actual compilation/audits remain pending.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CriticalPrimeTestContDiffTwo.Variantddcdd129929e02390410a116d19b48637d4104a7e284e8e133ecd739d2ec4db7

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel

open MeasureTheory Set Function
open scoped Interval
open SourceCriticalCumulativeDiscrepancy SourceCriticalDensityQuadrature
open SourceCriticalRemovedPrimeWork SourceCriticalDecayWork SourcePairedTailTest
open SourcePairedPrimeWork SourceFirstPrimeAbel WeightedPrimeAbel SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-- Actual correlation curvature gives C2 for the literal exponential test. -/
theorem criticalPrimeTest_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (criticalPrimeTest A) := by
  exact ((contDiff_id.div_const 2).exp).mul (sourceCorrelation_contDiff_two hA)

/-- Compact source support gives a finite derivative Lipschitz constant at each fixed scale.
No constant uniform in the source scale is asserted. -/
theorem criticalPrimeTest_deriv_lipschitz {A : ℝ} (hA : 0 < A) :
    ∃ K : ℝ≥0, LipschitzWith K (deriv (criticalPrimeTest A)) := by
  have hs : HasCompactSupport (criticalPrimeTest A) :=
    (sourceCorrelation_hasCompactSupport A hA).mul_left
  have hd : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hA).deriv'
  exact ContDiff.lipschitzWith_of_hasCompactSupport hs.deriv hd (by norm_num)

/-- Both literal max phases give AC of the actual paired derivative across phase seams. -/
theorem pairedTailTest_deriv_absolutelyContinuous {A : ℝ} (hA : 1 ≤ A) :
    AbsolutelyContinuousOnInterval (deriv (pairedTailTest A)) 0 (2 * A) := by
  obtain ⟨K, hk⟩ := criticalPrimeTest_deriv_lipschitz (show 0 < A by linarith)
  have hp : AbsolutelyContinuousOnInterval (positiveSlope A) 0 (2 * A) :=
    (hk.max_const 0).lipschitzOnWith.absolutelyContinuousOnInterval
  have hn : AbsolutelyContinuousOnInterval (negativeSlope A) 0 (2 * A) :=
    (hk.neg.max_const 0).lipschitzOnWith.absolutelyContinuousOnInterval
  have he : deriv (pairedTailTest A) = fun u =>
      -positiveSlope A u + (positiveMass A / negativeMass A) * negativeSlope A u := by
    funext u
    exact pairedTailTest_deriv hA u
  rw [he]
  exact hp.neg.add
    (AbsolutelyContinuousOnInterval.const_mul (positiveMass A / negativeMass A) hn)

private theorem decay_continuous : Continuous criticalDecay := by
  unfold criticalDecay
  fun_prop

private theorem density_continuous : Continuous criticalDensity := by
  unfold criticalDensity
  exact continuous_const.sub (decay_continuous.div_const 2)

private theorem decay_hasDerivAt (u : ℝ) :
    HasDerivAt criticalDecay (-criticalDecay u / 2) u := by
  convert ((hasDerivAt_id u).const_mul (-1/2 : ℝ)).exp using 1
  · funext x
    simp only [criticalDecay, id_eq]
    congr 1
    ring
  · simp only [criticalDecay, id_eq]
    ring

private theorem density_mass_hasDerivAt (u : ℝ) :
    HasDerivAt (fun x : ℝ => x - 1 + criticalDecay x) (criticalDensity u) u := by
  have hd := ((hasDerivAt_id u).sub_const 1).add (decay_hasDerivAt u)
  exact hd.congr_deriv (by unfold criticalDensity; ring)

private theorem paired_deriv_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (deriv (pairedTailTest A)) :=
  (pairedTailTest_contDiff hA).continuous_deriv_one

private theorem paired_hasDerivAt {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    HasDerivAt (pairedTailTest A) (deriv (pairedTailTest A) u) u :=
  ((contDiff_one_iff_deriv.mp (pairedTailTest_contDiff hA)).1 u).hasDerivAt

/-- First Abel pairing of the literal step discrepancy retains both source endpoints. -/
theorem criticalRemovedPairedWork_eq_cumulative_work {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      -(∫ u in 0..2 * A,
        criticalCumulativeDiscrepancy u * deriv (pairedTailTest A) u) := by
  have hD := pairedTailTest_contDiff hA
  have hDpc := paired_deriv_continuous hA
  have hB : Continuous (fun u : ℝ => u - 1 + criticalDecay u) :=
    (continuous_id.sub continuous_const).add decay_continuous
  have hprefix := primeLogPrefix_mul_deriv_intervalIntegrable 0 (2 * A)
    (show 0 ≤ 2 * A by linarith) (pairedTailTest A) hD
  have hmass : IntervalIntegrable (fun u : ℝ =>
      (u - 1 + criticalDecay u) * deriv (pairedTailTest A) u) volume 0 (2 * A) :=
    (hB.mul hDpc).intervalIntegrable (μ := volume) 0 (2 * A)
  have hprime := primeLogSum_abel (2 * A) (show 0 ≤ 2 * A by linarith)
    (pairedTailTest A) hD
  rw [pairedTailTest_at_upper hA, zero_mul, zero_sub] at hprime
  have hdensity := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun x : ℝ => x - 1 + criticalDecay x) (u' := criticalDensity)
    (v := pairedTailTest A) (v' := deriv (pairedTailTest A))
    (fun u _ => density_mass_hasDerivAt u) (fun u _ => paired_hasDerivAt hA u)
    (density_continuous.intervalIntegrable (μ := volume) 0 (2 * A))
    (hDpc.intervalIntegrable (μ := volume) 0 (2 * A))
  simp only [pairedTailTest_at_upper hA, pairedTailTest_at_zero hA, mul_zero,
    sub_zero, zero_sub] at hdensity
  have he : (fun u : ℝ =>
      criticalCumulativeDiscrepancy u * deriv (pairedTailTest A) u) =
      fun u => primeLogPrefix u * deriv (pairedTailTest A) u -
        (u - 1 + criticalDecay u) * deriv (pairedTailTest A) u := by
    funext u
    rw [criticalCumulativeDiscrepancy_eq]
    unfold primeLogError
    ring
  have hi : (∫ u in 0..2 * A,
      criticalCumulativeDiscrepancy u * deriv (pairedTailTest A) u) =
      (∫ u in 0..2 * A, primeLogPrefix u * deriv (pairedTailTest A) u) -
        (∫ u in 0..2 * A,
          (u - 1 + criticalDecay u) * deriv (pairedTailTest A) u) := by
    rw [he]
    exact intervalIntegral.integral_sub hprefix hmass
  rw [criticalRemovedPairedWork_eq_density_quadrature hA]
  linarith

private theorem criticalRemovedPairedWork_eq_bridge_work {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      -(∫ u in 0..2 * A,
        deriv (criticalDiscrepancyBridge A) u * deriv (pairedTailTest A) u) := by
  have hp : 0 < A := by linarith
  have hDpc := paired_deriv_continuous hA
  have hiD := hDpc.intervalIntegrable (μ := volume) 0 (2 * A)
  have hδ := criticalCumulativeDiscrepancy_intervalIntegrable 0 (2 * A)
  have hiδ := hδ.mul_continuousOn hDpc.continuousOn
  have hz : (∫ u in 0..2 * A, deriv (pairedTailTest A) u) = 0 := by
    have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun u _ => paired_hasDerivAt hA u) hiD
    simpa only [pairedTailTest_at_upper hA, pairedTailTest_at_zero hA, sub_self] using he
  have he : (∫ u in 0..2 * A,
      deriv (criticalDiscrepancyBridge A) u * deriv (pairedTailTest A) u) =
      ∫ u in 0..2 * A,
        (criticalCumulativeDiscrepancy u -
          criticalDiscrepancyPrimitive (2 * A) / (2 * A)) * deriv (pairedTailTest A) u := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalDiscrepancyBridge_ae_hasDerivAt hp] with u hu
    intro huA
    rw [(hu (uIoc_subset_uIcc huA)).deriv]
  have hf : (fun u : ℝ =>
      (criticalCumulativeDiscrepancy u -
        criticalDiscrepancyPrimitive (2 * A) / (2 * A)) * deriv (pairedTailTest A) u) =
      fun u => criticalCumulativeDiscrepancy u * deriv (pairedTailTest A) u -
        (criticalDiscrepancyPrimitive (2 * A) / (2 * A)) * deriv (pairedTailTest A) u := by
    funext u
    ring
  rw [he, hf, intervalIntegral.integral_sub hiδ
    (hiD.const_mul (criticalDiscrepancyPrimitive (2 * A) / (2 * A))),
    intervalIntegral.integral_const_mul, hz, mul_zero, sub_zero]
  exact criticalRemovedPairedWork_eq_cumulative_work hA

/-- Actual second Abel pairing uses the proved AC derivative and zero bridge endpoints.
Neither a global classical second derivative nor a zero lower derivative is assumed. -/
theorem criticalRemovedPairedWork_eq_second_abel {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      ∫ u in 0..2 * A,
        criticalDiscrepancyBridge A u * deriv (deriv (pairedTailTest A)) u := by
  have hp : 0 < A := by linarith
  have hΓ := criticalDiscrepancyBridge_absolutelyContinuous A
  have hD' := pairedTailTest_deriv_absolutelyContinuous hA
  have hi := hΓ.integral_mul_deriv_eq_deriv_mul hD'
  simp only [criticalDiscrepancyBridge_at_upper hp, criticalDiscrepancyBridge_at_zero,
    zero_mul, sub_zero, zero_sub] at hi
  rw [criticalRemovedPairedWork_eq_bridge_work hA]
  exact hi.symm

end FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel
```
