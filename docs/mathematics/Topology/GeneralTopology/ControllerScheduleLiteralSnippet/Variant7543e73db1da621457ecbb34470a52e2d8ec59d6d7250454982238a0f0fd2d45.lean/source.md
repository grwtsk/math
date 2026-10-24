# Complete source: GRWTSK.Topology.GeneralTopology.ControllerScheduleLiteralSnippet.Variant7543e73db1da621457ecbb34470a52e2d8ec59d6d7250454982238a0f0fd2d45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b67f78bf170b77d809de7c9a8933421f846e3cd` · SHA-256 `5d772bb6d70e9c6af5e1113aa9a58ccb52948cbc593dc1991d8f1d885310b464`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SourceUnit.Variant6b89d0980057b821eee2e610707b94fefe7088a35102d748847c80b2b8880184","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b89d0980057b821eee2e610707b94fefe7088a35102d748847c80b2b8880184","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SourceUnit.Variant6b89d0980057b821eee2e610707b94fefe7088a35102d748847c80b2b8880184","mathematical_subject":"Topology.GeneralTopology","original_sha256":"6b89d0980057b821eee2e610707b94fefe7088a35102d748847c80b2b8880184","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/controller-schedule-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}


namespace GRWTSK.Topology.GeneralTopology.SourceUnit.Variant6b89d0980057b821eee2e610707b94fefe7088a35102d748847c80b2b8880184

namespace ControllerScheduleLiteral
open Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation
open ControllerScheduleScratch
noncomputable section
example (q : ℕ → H) (j : ℕ) :
    cumulativeCost q j = ∑ k ∈ Finset.Icc 1 j, ‖q k‖ ^ 2 := rfl
example (q : ℕ → H) (j : ℕ) :
    controllerAlpha q j =
      1 / ((j : ℝ) * (1 + ∑ k ∈ Finset.Icc 1 j, ‖q k‖ ^ 2)) := rfl
example (q : ℕ → H) (j : ℕ) : 0 ≤ cumulativeCost q j := cumulativeCost_nonneg q j
example (q : ℕ → H) : Monotone (cumulativeCost q) := cumulativeCost_monotone q
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    0 < controllerAlpha q j := controllerAlpha_pos q j hj
example (q : ℕ → H) : StrictAntiOn (controllerAlpha q) (Set.Ici 1) :=
  controllerAlpha_strictAntiOn q
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    controllerAlpha q j ≤ 1 / (j : ℝ) := controllerAlpha_le_one_div q j hj
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    controllerAlpha q j * ‖q j‖ ^ 2 ≤ 1 / (j : ℝ) := controllerAlpha_input_cost_le q j hj
example (q : ℕ → H) : Tendsto (controllerAlpha q) atTop (nhds 0) :=
  controllerAlpha_tendsto_zero q
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    sourceMass (controllerAlpha q j) ≤
      ‖referenceVector - sourceOperator (q j)‖ ^ 2 + 1 / (j : ℝ) :=
  sourceMass_controllerAlpha_le q j hj
example (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    Tendsto (fun j => sourceMass (controllerAlpha q j)) atTop (nhds 0) :=
  sourceMass_controllerAlpha_tendsto_zero q hres
end
end ControllerScheduleLiteral
```
