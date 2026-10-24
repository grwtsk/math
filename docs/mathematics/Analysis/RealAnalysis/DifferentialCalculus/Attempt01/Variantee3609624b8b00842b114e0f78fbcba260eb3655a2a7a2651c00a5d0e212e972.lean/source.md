# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt01.Variantee3609624b8b00842b114e0f78fbcba260eb3655a2a7a2651c00a5d0e212e972

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `755cb44f4b85cefbf379d141c24de384f59b1740` · SHA-256 `c281a292f3caab91cc7154f3dec6042b153e1d6fa7876076bd2adf58512e2041`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivEqOnClosed.Variant0faf334a3697541d893dce7706ad8c17bd8c9f31adb8bb0e0afba6d4f82f04d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0faf334a3697541d893dce7706ad8c17bd8c9f31adb8bb0e0afba6d4f82f04d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DerivEqOnClosed.Variant0faf334a3697541d893dce7706ad8c17bd8c9f31adb8bb0e0afba6d4f82f04d6","mathematical_subject":"Analysis.Calculus","original_sha256":"0faf334a3697541d893dce7706ad8c17bd8c9f31adb8bb0e0afba6d4f82f04d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/xi-analysis/native-physical-endpoint-convolution/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport

/-!
Exact original source recovery at the physical endpoint.
Direction: grwtsk contributors. Formal construction: this Codex arithmetic analyst.
All filters, normalization, and closed half-support endpoints remain literal.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivEqOnClosed.Variant0faf334a3697541d893dce7706ad8c17bd8c9f31adb8bb0e0afba6d4f82f04d6

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePhysicalEndpointConvolution

open Set MeasureTheory SourcePairing SourceBumpAutocorrelation
open SourcePrimitivePrimeInteraction SourcePrimitiveCorrelationCurvature
open SourcePrimitiveBumpProfile SourcePeanoProfileTransport SourcePositivePeanoPrimitive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

private theorem deriv_eq_on_closed {f g : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : Differentiable ℝ f) (hg : Differentiable ℝ g) (he : EqOn f g (Icc a b)) :
    EqOn (deriv f) (deriv g) (Icc a b) := by
  intro x hx
  have hu := uniqueDiffOn_Icc hab x hx
  rw [← (hf x).hasDerivAt.hasDerivWithinAt.derivWithin hu,
    ← (hg x).hasDerivAt.hasDerivWithinAt.derivWithin hu]
  exact derivWithin_congr he (he hx)

private theorem primitiveCorrelationZero_third_deriv_eq_normalizedOverlapProfile
    {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (deriv (primitiveCorrelationZero A))))
      (deriv (deriv (deriv (normalizedOverlapProfile A)))) (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · have hF2 : ContDiff ℝ 2 (deriv (deriv (primitiveCorrelationZero A))) :=
      (primitiveCorrelationZero_contDiff_four hA).deriv'.deriv'
    exact hF2.differentiable (by norm_num)
  · have hG : ContDiff ℝ 3 (normalizedOverlapProfile A) := by
      unfold normalizedOverlapProfile overlapProfile overlapP0
      fun_prop
    exact hG.deriv'.deriv'.differentiable (by norm_num)
  · exact primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile hA

theorem primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile
    {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (deriv (deriv (primitiveCorrelationZero A)))))
      (deriv (deriv (deriv (deriv (normalizedOverlapProfile A))))) (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · have hF3 : ContDiff ℝ 1 (deriv (deriv (deriv (primitiveCorrelationZero A)))) :=
      (primitiveCorrelationZero_contDiff_four hA).deriv'.deriv'.deriv'
    exact hF3.differentiable (by norm_num)
  · have hG : ContDiff ℝ 4 (normalizedOverlapProfile A) := by
      unfold normalizedOverlapProfile overlapProfile overlapP0
      fun_prop
    exact hG.deriv'.deriv'.deriv'.differentiable (by norm_num)
  · exact primitiveCorrelationZero_third_deriv_eq_normalizedOverlapProfile hA

theorem sourceCorrelation_eq_normalizedOverlap_filter {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A t =
      deriv (deriv (deriv (deriv (normalizedOverlapProfile A)))) t -
        deriv (deriv (normalizedOverlapProfile A)) t / 2 +
        normalizedOverlapProfile A t / 16 := by
  rw [sourceCorrelation_eq_primitive_filter hA,
    ← primitiveCorrelationZero_fourth_deriv hA,
    primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    ← neg_neg (primitiveCorrelationOne A t),
    ← primitiveCorrelationZero_second_deriv_eq_neg_one hA,
    primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    primitiveCorrelationZero_eq_profile hA ht0 ht2]
  unfold normalizedOverlapProfile
  ring

end FormalResearch.RiemannHypothesis.SourcePhysicalEndpointConvolution
```
