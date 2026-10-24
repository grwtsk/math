# circleIntegral_inv_center_one_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1cd9ce90730a5df6a52c5d73e2c5368c8ca8e06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ef04f68-760a-a23f-1bc4-fd32785b35c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce35d196-ebf0-e256-0d54-89e69c4746fb",
  "kind": "theorem",
  "lexical_name": "circleIntegral_inv_center_one_eq_zero",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "circleintegral-inv-center-one-eq-zero--fc927e30759cc9536d020e9f",
  "source": {
    "blob": "d1cd9ce90730a5df6a52c5d73e2c5368c8ca8e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 170,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc927e30759cc9536d020e9f565ee14d3193c59e42a24205e322443cec6818cf",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce35d196-ebf0-e256-0d54-89e69c4746fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegral_inv_center_one_eq_zero {r : ℝ}
    (hr : 0 < r) (hr1 : r < 1) :
    (∮ z in C((1 : ℂ), r), z⁻¹) = 0 := by
  have hnz : ∀ z ∈ Metric.closedBall (1 : ℂ) r, z ≠ 0 := by
    intro z hz hz0
    subst z
    have h1r : (1 : ℝ) ≤ r := by simpa using hz
    exact (not_le_of_gt hr1) h1r
  have hc : ContinuousOn (fun z : ℂ ↦ z⁻¹) (Metric.closedBall (1 : ℂ) r) :=
    continuousOn_id.inv₀ hnz
  have hd : ∀ z ∈ Metric.ball (1 : ℂ) r \ (∅ : Set ℂ),
      DifferentiableAt ℂ (fun z : ℂ ↦ z⁻¹) z := by
    intro z hz
    exact differentiableAt_inv (hnz z (Metric.ball_subset_closedBall hz.1))
  exact Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
    hr.le Set.countable_empty hc hd

@[surface_adapter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1cd9ce90730a5df6a52c5d73e2c5368c8ca8e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
