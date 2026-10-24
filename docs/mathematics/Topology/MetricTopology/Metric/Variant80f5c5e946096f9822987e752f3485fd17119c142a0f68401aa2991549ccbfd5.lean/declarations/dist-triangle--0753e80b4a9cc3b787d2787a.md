# dist_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf578e3075f1ab6422d151a74b5b5be1e77ba982",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9998da3-439a-a397-4b06-aa38797efa19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08fccc1a-a811-3a63-c001-94670a03c2d3",
  "kind": "theorem",
  "lexical_name": "dist_triangle",
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
  "slug": "dist-triangle--0753e80b4a9cc3b787d2787a",
  "source": {
    "blob": "cf578e3075f1ab6422d151a74b5b5be1e77ba982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0753e80b4a9cc3b787d2787a18181e3a32bd0ce00caec17f95af523c68232fbf",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08fccc1a-a811-3a63-c001-94670a03c2d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem dist_triangle (a b c : ℍ) : dist a c ≤ dist a b + dist b c := by
  rw [dist_le_iff_le_sinh, sinh_half_dist_add_dist, div_mul_eq_div_div _ _ (dist _ _), le_div_iff₀,
    div_mul_eq_mul_div]
  · gcongr
    exact EuclideanGeometry.mul_dist_le_mul_dist_add_mul_dist (a : ℂ) b c (conj (b : ℂ))
  · rw [dist_comm, dist_pos, Ne, Complex.conj_eq_iff_im]
    exact b.im_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf578e3075f1ab6422d151a74b5b5be1e77ba982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
