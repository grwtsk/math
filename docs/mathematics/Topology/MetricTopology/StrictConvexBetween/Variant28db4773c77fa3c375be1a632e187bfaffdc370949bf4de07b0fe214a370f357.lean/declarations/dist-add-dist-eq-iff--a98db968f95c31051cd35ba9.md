# dist_add_dist_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27f369ec-fe3f-782b-9d5b-5537a2331999",
  "kind": "lemma",
  "lexical_name": "dist_add_dist_eq_iff",
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
  "slug": "dist-add-dist-eq-iff--a98db968f95c31051cd35ba9",
  "source": {
    "blob": "e03dc2e463bc31147d9792cf9629e39e52e33c8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a98db968f95c31051cd35ba9fed300da5d5a772f20df87ad6b4671e7ce1ea9b0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27f369ec-fe3f-782b-9d5b-5537a2331999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_add_dist_eq_iff : dist a b + dist b c = dist a c ↔ Wbtw ℝ a b c := by
  have :
      dist (a -ᵥ a) (b -ᵥ a) + dist (b -ᵥ a) (c -ᵥ a) = dist (a -ᵥ a) (c -ᵥ a) ↔
        b -ᵥ a ∈ segment ℝ (a -ᵥ a) (c -ᵥ a) := by
    simp only [mem_segment_iff_sameRay, sameRay_iff_norm_add, dist_eq_norm', sub_add_sub_cancel',
      eq_comm]
  simp_rw [dist_vsub_cancel_right, ← affineSegment_eq_segment, ← affineSegment_vsub_const_image]
    at this
  rwa [(vsub_left_injective _).mem_set_image] at this

/-- The strict triangle inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e03dc2e463bc31147d9792cf9629e39e52e33c8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
