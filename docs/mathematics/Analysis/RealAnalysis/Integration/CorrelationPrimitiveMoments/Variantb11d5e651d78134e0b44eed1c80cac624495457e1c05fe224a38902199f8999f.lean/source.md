# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CorrelationPrimitiveMoments.Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9955ae03091a261d6426278cc75fb88162ddea16` · SHA-256 `ead4af10afb0b403f2c1f3a0e52cba0e0323a9abc1ce4d8be262128c6575ceae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.WeightedPrimitiveIntegrable.Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.WeightedPrimitiveIntegrable.Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d","mathematical_subject":"Analysis.Integration","original_sha256":"3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/correlation-primitive-moments.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitive
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
Scratch source-bound moments for the exact compact primitive H.
The negative primitive W=-H has zeroth moment zero and first moment beta.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.WeightedPrimitiveIntegrable.Variant3d1f39cf16db097b78ae4c4e53e000269786c54f3e2487b5a8f488ac0a53b46d

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationPrimitiveMoments

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment CorrelationFirstMoment
open CorrelationPrimitive CorrelationSecondMoment

noncomputable section

theorem weighted_primitive_integrable (A : ℝ) (m : ℕ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ t ^ m * Real.exp (t / 2) * correlationPrimitive A t) :=
  TwoMomentSampling.weighted_moment_integrable (correlationPrimitive A)
    (correlationPrimitive_contDiff A hA).continuous (correlationPrimitive_hasCompactSupport A hA) m

theorem weighted_primitive_hasDerivAt (A t : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (fun t : ℝ ↦ Real.exp (t / 2) * correlationPrimitive A t)
      (Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) t := by
  apply ((((hasDerivAt_id t).div_const 2).exp).mul
    (correlationPrimitive_hasDerivAt A t hA)).congr_deriv
  dsimp
  ring

theorem weighted_primitive_zeroMoment (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * correlationPrimitive A t) = 0 := by
  have hC1 : Integrable (fun t : ℝ ↦ t *
      (Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t)) := by
    simpa only [one_div, inv_mul_eq_div, mul_assoc] using
      weighted_correlation_firstMoment_integrable A (1 / 2) hA
  have hH0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) * correlationPrimitive A t) := by
    simpa only [pow_zero, one_mul] using weighted_primitive_integrable A 0 hA
  have hH1 : Integrable (fun t : ℝ ↦ t *
      (Real.exp (t / 2) * correlationPrimitive A t)) := by
    simpa only [pow_one, mul_assoc] using weighted_primitive_integrable A 1 hA
  have hb : (∫ t : ℝ, t * (Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t)) =
      -(∫ t : ℝ, (1 : ℝ) * (Real.exp (t / 2) * correlationPrimitive A t)) := by
    apply integral_mul_deriv_eq_deriv_mul_of_integrable
      (fun t _ ↦ hasDerivAt_id t) (fun t _ ↦ weighted_primitive_hasDerivAt A t hA)
      hC1 (by
        apply hH0.congr
        filter_upwards [] with t
        simp) hH1
  have hz := full_correlation_firstMoment_zero A hA
  simp only [← mul_assoc, one_mul] at hb
  rw [hz] at hb
  linarith

theorem weighted_primitive_firstMoment (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, t * Real.exp (t / 2) * correlationPrimitive A t) =
      -(∫ x : ℝ, x * Real.exp (x / 2) *
        normalizedTest explicitSecondDerivative A x) ^ 2 := by
  have hC2 : Integrable (fun t : ℝ ↦ t ^ 2 *
      (Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t)) := by
    simpa only [mul_assoc] using weighted_correlation_secondMoment_integrable A hA
  have hH1 : Integrable (fun t : ℝ ↦ (2 * t) *
      (Real.exp (t / 2) * correlationPrimitive A t)) := by
    simpa only [pow_one, mul_assoc] using (weighted_primitive_integrable A 1 hA).const_mul 2
  have hH2 : Integrable (fun t : ℝ ↦ t ^ 2 *
      (Real.exp (t / 2) * correlationPrimitive A t)) := by
    simpa only [mul_assoc] using weighted_primitive_integrable A 2 hA
  have hb : (∫ t : ℝ, t ^ 2 * (Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t)) =
      -(∫ t : ℝ, (2 * t) * (Real.exp (t / 2) * correlationPrimitive A t)) := by
    apply integral_mul_deriv_eq_deriv_mul_of_integrable
      (fun t _ ↦ ?_) (fun t _ ↦ weighted_primitive_hasDerivAt A t hA) hC2 hH1 hH2
    apply ((hasDerivAt_id t).pow 2).congr_deriv
    norm_num
  have hr (t : ℝ) : (2 * t) * (Real.exp (t / 2) * correlationPrimitive A t) =
      2 * (t * Real.exp (t / 2) * correlationPrimitive A t) := by ring
  simp_rw [hr] at hb
  rw [integral_const_mul] at hb
  simp only [← mul_assoc] at hb
  have hm := full_correlation_secondMoment_eq_square A hA
  linarith

theorem negative_primitive_moments_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ Real.exp (t / 2) * (-correlationPrimitive A t)) ∧
      Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * (-correlationPrimitive A t)) := by
  constructor
  · apply ((weighted_primitive_integrable A 0 hA).neg).congr
    filter_upwards [] with t
    simp
  · apply ((weighted_primitive_integrable A 1 hA).neg).congr
    filter_upwards [] with t
    simp

theorem negative_primitive_moments (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * (-correlationPrimitive A t)) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * (-correlationPrimitive A t)) =
        (∫ x : ℝ, x * Real.exp (x / 2) *
          normalizedTest explicitSecondDerivative A x) ^ 2 := by
  constructor
  · simp_rw [mul_neg]
    rw [integral_neg, weighted_primitive_zeroMoment A hA, neg_zero]
  · simp_rw [mul_neg]
    rw [integral_neg, weighted_primitive_firstMoment A hA, neg_neg]

end
end FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationPrimitiveMoments
```
