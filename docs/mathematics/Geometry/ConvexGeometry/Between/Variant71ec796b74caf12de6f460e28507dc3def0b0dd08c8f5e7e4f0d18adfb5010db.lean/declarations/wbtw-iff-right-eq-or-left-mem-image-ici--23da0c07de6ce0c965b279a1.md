# wbtw_iff_right_eq_or_left_mem_image_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82b36e529321fa6f8eb5546f6efe33fca1fd64a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 733,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c7116c3-1fa4-eea2-9dd8-5ee625b78593",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e20c6ec6-1371-a416-1e5d-182458ecd2c8",
  "kind": "theorem",
  "lexical_name": "wbtw_iff_right_eq_or_left_mem_image_Ici",
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
  "slug": "wbtw-iff-right-eq-or-left-mem-image-ici--23da0c07de6ce0c965b279a1",
  "source": {
    "blob": "82b36e529321fa6f8eb5546f6efe33fca1fd64a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 737,
    "line": 733,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23da0c07de6ce0c965b279a1d4be6e5ae246ba4892a6a24cae10a8c1030d92c0",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e20c6ec6-1371-a416-1e5d-182458ecd2c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 733–737.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wbtw_iff_right_eq_or_left_mem_image_Ici {x y z : P} :
    Wbtw R x y z ↔ z = y ∨ x ∈ lineMap z y '' Set.Ici (1 : R) := by
  rw [wbtw_comm, wbtw_iff_left_eq_or_right_mem_image_Ici]
#align wbtw_iff_right_eq_or_left_mem_image_Ici wbtw_iff_right_eq_or_left_mem_image_Ici

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean#L733).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b36e529321fa6f8eb5546f6efe33fca1fd64a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
