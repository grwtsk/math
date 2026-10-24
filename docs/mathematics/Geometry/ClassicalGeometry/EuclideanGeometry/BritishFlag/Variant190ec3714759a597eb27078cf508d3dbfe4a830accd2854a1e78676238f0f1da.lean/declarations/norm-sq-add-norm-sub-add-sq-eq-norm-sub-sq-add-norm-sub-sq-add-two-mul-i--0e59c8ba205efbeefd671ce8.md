# norm_sq_add_norm_sub_add_sq_eq_norm_sub_sq_add_norm_sub_sq_add_two_mul_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bca7351a820e4da778ecee4fa0bf823692f68da1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/190ec3714759a597eb27078cf508d3dbfe4a830accd2854a1e78676238f0f1da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e093d441-9ae3-4c76-9e7e-2e49286ec057",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:175c5386-a634-fcc6-eb55-024c9d567c84",
  "kind": "theorem",
  "lexical_name": "norm_sq_add_norm_sub_add_sq_eq_norm_sub_sq_add_norm_sub_sq_add_two_mul_inner",
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
  "slug": "norm-sq-add-norm-sub-add-sq-eq-norm-sub-sq-add-norm-sub-sq-add-two-mul-i--0e59c8ba205efbeefd671ce8",
  "source": {
    "blob": "bca7351a820e4da778ecee4fa0bf823692f68da1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 47,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BritishFlag/Variant190ec3714759a597eb27078cf508d3dbfe4a830accd2854a1e78676238f0f1da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e59c8ba205efbeefd671ce8c194d9df51525e6b6ef41df52f8df4aa8f15fd82",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/BritishFlag/Variant190ec3714759a597eb27078cf508d3dbfe4a830accd2854a1e78676238f0f1da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:175c5386-a634-fcc6-eb55-024c9d567c84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sq_add_norm_sub_add_sq_eq_norm_sub_sq_add_norm_sub_sq_add_two_mul_inner (x u v : V) :
    ‖x‖ ^ 2 + ‖x - (u + v)‖ ^ 2 = ‖x - u‖ ^ 2 + ‖x - v‖ ^ 2 + 2 * ⟪u, v⟫ := by
  simp only [← real_inner_self_eq_norm_sq, inner_sub_left, inner_sub_right, inner_add_left,
    inner_add_right, real_inner_comm u x, real_inner_comm v x, real_inner_comm v u]
  ring

/-- British flag theorem, if-and-only-if vector form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/BritishFlag/Variant190ec3714759a597eb27078cf508d3dbfe4a830accd2854a1e78676238f0f1da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BritishFlag/Variant190ec3714759a597eb27078cf508d3dbfe4a830accd2854a1e78676238f0f1da.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bca7351a820e4da778ecee4fa0bf823692f68da1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
