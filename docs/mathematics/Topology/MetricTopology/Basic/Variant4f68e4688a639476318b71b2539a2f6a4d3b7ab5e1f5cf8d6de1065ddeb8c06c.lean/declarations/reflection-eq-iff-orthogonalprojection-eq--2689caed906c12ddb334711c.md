# reflection_eq_iff_orthogonalProjection_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3710c71e5a57e50eb0eb95a48174feeda0805e6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 589,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e5eb5a7-49ac-f9ed-71c9-5d07dcf815cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f610599-a289-d985-fa95-7bcfc5d91f04",
  "kind": "theorem",
  "lexical_name": "reflection_eq_iff_orthogonalProjection_eq",
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
  "slug": "reflection-eq-iff-orthogonalprojection-eq--2689caed906c12ddb334711c",
  "source": {
    "blob": "3710c71e5a57e50eb0eb95a48174feeda0805e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 589,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2689caed906c12ddb334711c11b8f209801b100fdc9e603ea8b365d910f1391d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f610599-a289-d985-fa95-7bcfc5d91f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_eq_iff_orthogonalProjection_eq (s₁ s₂ : AffineSubspace ℝ P) [Nonempty s₁]
    [Nonempty s₂] [HasOrthogonalProjection s₁.direction] [HasOrthogonalProjection s₂.direction]
    (p : P) :
    reflection s₁ p = reflection s₂ p ↔
      (orthogonalProjection s₁ p : P) = orthogonalProjection s₂ p := by
  rw [reflection_apply, reflection_apply]
  constructor
  · intro h
    rw [← @vsub_eq_zero_iff_eq V, vsub_vadd_eq_vsub_sub, vadd_vsub_assoc, add_comm, add_sub_assoc,
      vsub_sub_vsub_cancel_right, ←
      two_smul ℝ ((orthogonalProjection s₁ p : P) -ᵥ orthogonalProjection s₂ p), smul_eq_zero] at h
    norm_num at h
    exact h
  · intro h
    rw [h]
#align euclidean_geometry.reflection_eq_iff_orthogonal_projection_eq EuclideanGeometry.reflection_eq_iff_orthogonalProjection_eq

/-- The distance between `p₁` and the reflection of `p₂` equals that
between the reflection of `p₁` and `p₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3710c71e5a57e50eb0eb95a48174feeda0805e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
