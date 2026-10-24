# orthogonalProjection_vsub_orthogonalProjection

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
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4ae4428-73e2-f006-0497-3ae5a2bbaa4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07f40019-66e1-ebc1-d33a-7e89f54b3548",
  "kind": "theorem",
  "lexical_name": "orthogonalProjection_vsub_orthogonalProjection",
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
  "slug": "orthogonalprojection-vsub-orthogonalprojection--0fca7aab7da3182fd2958070",
  "source": {
    "blob": "3710c71e5a57e50eb0eb95a48174feeda0805e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 434,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fca7aab7da3182fd2958070bc4be496a1ca2f094dc6be70e96733267699cd43",
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

Occurrence: `result:07f40019-66e1-ebc1-d33a-7e89f54b3548`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalProjection_vsub_orthogonalProjection (s : AffineSubspace ℝ P) [Nonempty s]
    [HasOrthogonalProjection s.direction] (p : P) :
    _root_.orthogonalProjection s.direction (p -ᵥ orthogonalProjection s p) = 0 := by
  apply orthogonalProjection_mem_subspace_orthogonalComplement_eq_zero
  intro c hc
  rw [← neg_vsub_eq_vsub_rev, inner_neg_right,
    orthogonalProjection_vsub_mem_direction_orthogonal s p c hc, neg_zero]
#align euclidean_geometry.orthogonal_projection_vsub_orthogonal_projection EuclideanGeometry.orthogonalProjection_vsub_orthogonalProjection

/-- Adding a vector to a point in the given subspace, then taking the
orthogonal projection, produces the original point if the vector was
in the orthogonal direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3710c71e5a57e50eb0eb95a48174feeda0805e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
