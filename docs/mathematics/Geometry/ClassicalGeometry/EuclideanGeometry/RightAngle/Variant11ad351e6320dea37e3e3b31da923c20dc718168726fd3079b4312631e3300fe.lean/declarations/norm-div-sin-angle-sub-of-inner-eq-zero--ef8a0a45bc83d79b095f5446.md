# norm_div_sin_angle_sub_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0304c19349fd79bc24196e02a2332126abbd2a86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11ad351e6320dea37e3e3b31da923c20dc718168726fd3079b4312631e3300fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5cdd62b-f9b1-1917-4fd1-37a167c901b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a41cfd2-c61d-73ac-a0eb-311193236f3e",
  "kind": "theorem",
  "lexical_name": "norm_div_sin_angle_sub_of_inner_eq_zero",
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
  "slug": "norm-div-sin-angle-sub-of-inner-eq-zero--ef8a0a45bc83d79b095f5446",
  "source": {
    "blob": "0304c19349fd79bc24196e02a2332126abbd2a86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 305,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant11ad351e6320dea37e3e3b31da923c20dc718168726fd3079b4312631e3300fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef8a0a45bc83d79b095f54463f30a407758383984ada1604f5d24f0997019593",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant11ad351e6320dea37e3e3b31da923c20dc718168726fd3079b4312631e3300fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a41cfd2-c61d-73ac-a0eb-311193236f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_div_sin_angle_sub_of_inner_eq_zero {x y : V} (h : ⟪x, y⟫ = 0) (h0 : x = 0 ∨ y ≠ 0) :
    ‖y‖ / Real.sin (angle x (x - y)) = ‖x - y‖ := by
  rw [← neg_eq_zero, ← inner_neg_right] at h
  rw [← neg_ne_zero] at h0
  rw [sub_eq_add_neg, ← norm_neg, norm_div_sin_angle_add_of_inner_eq_zero h h0]

/-- A side of a right-angled triangle divided by the tangent of the opposite angle equals the
adjacent side, version subtracting vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant11ad351e6320dea37e3e3b31da923c20dc718168726fd3079b4312631e3300fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant11ad351e6320dea37e3e3b31da923c20dc718168726fd3079b4312631e3300fe.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0304c19349fd79bc24196e02a2332126abbd2a86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
