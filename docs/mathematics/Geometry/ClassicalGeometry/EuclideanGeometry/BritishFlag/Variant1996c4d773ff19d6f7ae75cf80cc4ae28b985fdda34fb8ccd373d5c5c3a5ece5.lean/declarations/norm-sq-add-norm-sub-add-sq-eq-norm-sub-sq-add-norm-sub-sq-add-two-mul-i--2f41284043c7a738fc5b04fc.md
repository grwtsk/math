# norm_sq_add_norm_sub_add_sq_eq_norm_sub_sq_add_norm_sub_sq_add_two_mul_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9c4f9a3-c310-b6d3-b92b-78d6e2fee506",
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
  "slug": "norm-sq-add-norm-sub-add-sq-eq-norm-sub-sq-add-norm-sub-sq-add-two-mul-i--2f41284043c7a738fc5b04fc",
  "source": {
    "blob": "852864ff28d8308493ea2ef932c0608e3956c2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BritishFlag/Variant1996c4d773ff19d6f7ae75cf80cc4ae28b985fdda34fb8ccd373d5c5c3a5ece5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f41284043c7a738fc5b04fc4b036364a1ea7c655b2b1239da5913f02d6ed7ef",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/BritishFlag/Variant1996c4d773ff19d6f7ae75cf80cc4ae28b985fdda34fb8ccd373d5c5c3a5ece5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9c4f9a3-c310-b6d3-b92b-78d6e2fee506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/BritishFlag/Variant1996c4d773ff19d6f7ae75cf80cc4ae28b985fdda34fb8ccd373d5c5c3a5ece5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BritishFlag/Variant1996c4d773ff19d6f7ae75cf80cc4ae28b985fdda34fb8ccd373d5c5c3a5ece5.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `852864ff28d8308493ea2ef932c0608e3956c2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
