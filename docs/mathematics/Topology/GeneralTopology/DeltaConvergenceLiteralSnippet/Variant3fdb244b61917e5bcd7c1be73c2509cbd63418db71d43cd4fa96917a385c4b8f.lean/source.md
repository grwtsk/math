# Complete source: GRWTSK.Topology.GeneralTopology.DeltaConvergenceLiteralSnippet.Variant3fdb244b61917e5bcd7c1be73c2509cbd63418db71d43cd4fa96917a385c4b8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54267516ad91336df89db162aec1b7ab713f1c87` · SHA-256 `65e2873cfe83d4ec68f5770f2f67b332faa46b74c5eab5a50c413c194866d972`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SourceUnit.Varianta338e8538d4a6bfd2bcaee8430a7a33934ecf3b00214b443aabfffed9d4fcf3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a338e8538d4a6bfd2bcaee8430a7a33934ecf3b00214b443aabfffed9d4fcf3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SourceUnit.Varianta338e8538d4a6bfd2bcaee8430a7a33934ecf3b00214b443aabfffed9d4fcf3b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a338e8538d4a6bfd2bcaee8430a7a33934ecf3b00214b443aabfffed9d4fcf3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/delta-convergence-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}


namespace GRWTSK.Topology.GeneralTopology.SourceUnit.Varianta338e8538d4a6bfd2bcaee8430a7a33934ecf3b00214b443aabfffed9d4fcf3b

namespace SourceFilterDeltaConvergenceLiteral
open MeasureTheory Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceFilterDelta MobiusSourceFilterQuotient SourceFilterDeltaConvergenceScratch
noncomputable section
example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖boundaryFilter ε h t‖ ≤ 2 * Real.exp 1 / ‖1 + (t : ℂ) * Complex.I‖ :=
  boundaryFilter_norm_le ε h t hε hsmall hh
example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2 ≤
      (1 + 2 * Real.exp 1) ^ 2 * (1 + t ^ 2)⁻¹ :=
  boundaryFilter_error_sq_le ε h t hε hsmall hh
example (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    Integrable (fun t : ℝ =>
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2) :=
  boundaryFilter_error_integrable ε h hε hsmall hh
example (ε h : ℝ) : deltaSq ε h =
    (1 / (2 * Real.pi)) * (∫ t : ℝ,
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2) := rfl
example (ε h : ℝ) : delta ε h = Real.sqrt (deltaSq ε h) := rfl
example (ε h : ℕ → ℝ)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0))
    (t : ℝ) (ht : W ((t : ℂ) * Complex.I) ≠ 0) :
    Tendsto (fun j => boundaryFilter (ε j) (h j) t) atTop
      (nhds ((1 + (t : ℂ) * Complex.I)⁻¹)) := boundaryFilter_tendsto ε h hε hh t ht
example (ε h : ℕ → ℝ) (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4)
    (hhpos : ∀ j, 0 ≤ h j) (hε : Tendsto ε atTop (nhds 0))
    (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => deltaSq (ε j) (h j)) atTop (nhds 0) :=
  deltaSq_tendsto_zero ε h hεpos hεsmall hhpos hε hh
example (ε h : ℕ → ℝ) (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4)
    (hhpos : ∀ j, 0 ≤ h j) (hε : Tendsto ε atTop (nhds 0))
    (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => delta (ε j) (h j)) atTop (nhds 0) :=
  delta_tendsto_zero ε h hεpos hεsmall hhpos hε hh
end
end SourceFilterDeltaConvergenceLiteral
```
