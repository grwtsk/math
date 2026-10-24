# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScaleDivision.Variantb9e4a7bc8a9d93450834968e89dd68af95b427b2d4123c2e01c77020d7a5411c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0572bc86a0c154ce1c6eba3976a58548f0d5fe03` · SHA-256 `963dad5aa34b38817ace6d4200eb7ceb21f460a616a006b678990269d7b10c24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DividedContinuationMeromorphic.Variant26eba25c094d4e9d2d55d6680c9865a598e7456b171e17c88d3fe218724659b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26eba25c094d4e9d2d55d6680c9865a598e7456b171e17c88d3fe218724659b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DividedContinuationMeromorphic.Variant26eba25c094d4e9d2d55d6680c9865a598e7456b171e17c88d3fe218724659b2","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"26eba25c094d4e9d2d55d6680c9865a598e7456b171e17c88d3fe218724659b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/26eba25c094d4e9d2d55d6680c9865a598e7456b171e17c88d3fe218724659b2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.Assembly

/-!
# Division by scale's Laplace parameter preserves the actual ninth-order poles

These are local statements about the proposed divided continuation `F(s)/s`.
This module does not assert that it is the Laplace transform of a scale primitive,
nor assume an averaged arithmetic estimate. The pole coefficient remains nonzero.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DividedContinuationMeromorphic.Variant26eba25c094d4e9d2d55d6680c9865a598e7456b171e17c88d3fe218724659b2

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Laplace.ScaleDivision

open Filter Set
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
open Continuation Assembly PoleCertificate

noncomputable section

/-- Division by the nonzero half-plane parameter preserves meromorphy. -/
theorem divided_continuation_meromorphic :
    MeromorphicOn (fun s ↦ continuedTransform s / s) {s : ℂ | 0 < s.re} := by
  intro s hs
  exact (continuedTransform_meromorphic s hs).div analyticAt_id.meromorphicAt

/-- The proposed divided continuation remains analytic at every positive real point. -/
theorem divided_continuation_analytic_positive_real (σ : ℝ) (hσ : 0 < σ) :
    AnalyticAt ℂ (fun s ↦ continuedTransform s / s) (σ:ℂ) := by
  exact (continuedTransform_analytic_positive_real σ hσ).div analyticAt_id
    (by exact_mod_cast hσ.ne')

private theorem center_ne_zero (p : ZeroPoint) (hp : 0 < (p.val - 1 / 2).re) :
    2*(p.val-1 / 2) ≠ (0:ℂ) := by
  intro h
  have hp' : 0 < (2*(p.val-1 / 2)).re := by simpa using mul_pos (by norm_num : (0:ℝ) < 2) hp
  rw [h] at hp'
  exact (lt_irrefl (0:ℝ)) hp'

/-- The genuine off-line poles retain order minus nine after division. -/
theorem divided_continuation_exact_order (p : ZeroPoint) (hp : 0 < (p.val - 1 / 2).re) :
    meromorphicOrderAt (fun s ↦ continuedTransform s / s) (2*(p.val-1 / 2)) = (-9:ℤ) := by
  have hc := source_exact_ninth_order_pole p hp
  have hid : AnalyticAt ℂ (fun s : ℂ ↦ s) (2*(p.val-1 / 2)) := analyticAt_id
  have ho : meromorphicOrderAt (fun s : ℂ ↦ s) (2*(p.val-1 / 2)) = 0 := by
    rw [hid.meromorphicOrderAt_eq, hid.analyticOrderAt_eq_zero.mpr (center_ne_zero p hp)]
    rfl
  have he : meromorphicOrderAt (fun s ↦ continuedTransform s / s) (2*(p.val-1 / 2)) =
      meromorphicOrderAt continuedTransform (2*(p.val-1 / 2)) -
        meromorphicOrderAt (fun s : ℂ ↦ s) (2*(p.val-1 / 2)) :=
    fun_meromorphicOrderAt_div hc.1 hid.meromorphicAt
  exact he.trans (by rw [hc.2.1, ho, sub_zero])

/-- The complete cleared coefficient is divided by the nonzero center and remains nonzero. -/
theorem divided_continuation_principal_limit (p : ZeroPoint) (hp : 0 < (p.val - 1 / 2).re) :
    Tendsto (fun w : ℂ ↦ w^9 *
      (continuedTransform (2*(p.val-1 / 2)+w) / (2*(p.val-1 / 2)+w)))
      (𝓝[≠] 0) (𝓝 (pointPairPrincipalCoefficient p / (2*(p.val-1 / 2)))) ∧
      pointPairPrincipalCoefficient p / (2*(p.val-1 / 2)) ≠ 0 := by
  have hc := center_ne_zero p hp
  have hden : Tendsto (fun w : ℂ ↦ 2*(p.val-1 / 2)+w) (𝓝[≠] 0) (𝓝 (2*(p.val-1 / 2))) :=
    by
      have hd : ContinuousAt (fun w : ℂ ↦ 2*(p.val-1 / 2)+w) 0 := by fun_prop
      simpa using hd.tendsto.mono_left nhdsWithin_le_nhds
  constructor
  · have h := (continuedTransform_cleared_tendsto p hp).div hden hc
    apply h.congr'
    filter_upwards with w
    change (w^9 * continuedTransform (2*(p.val-1 / 2)+w)) / (2*(p.val-1 / 2)+w) =
      w^9 * (continuedTransform (2*(p.val-1 / 2)+w) / (2*(p.val-1 / 2)+w))
    ring
  · exact div_ne_zero (point_pair_principal_coefficient_ne_zero p) hc

end
end FormalResearch.RiemannHypothesis.Laplace.ScaleDivision
```
