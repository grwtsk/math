# oangle_eq_zero_iff_sameRay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a7c60b47d67c3a2db03a1274110fcab25974d9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 413,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a709822d5247778b4dc4c89556133b9def925460660ef9af213ab42f2f74131.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d51ca004-b834-a1b2-9d01-0b1753adcf54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19ddfeff-cf4f-8ff6-9a0c-b0eb2fbfe5ac",
  "kind": "theorem",
  "lexical_name": "oangle_eq_zero_iff_sameRay",
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
  "slug": "oangle-eq-zero-iff-sameray--6b4cd67a2cdbbc2c1515828b",
  "source": {
    "blob": "4a7c60b47d67c3a2db03a1274110fcab25974d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 413,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant0a709822d5247778b4dc4c89556133b9def925460660ef9af213ab42f2f74131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b4cd67a2cdbbc2c1515828b83b90f5bfe6c336a4f78a4d587568f5b3c3e67e1",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant0a709822d5247778b4dc4c89556133b9def925460660ef9af213ab42f2f74131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ddfeff-cf4f-8ff6-9a0c-b0eb2fbfe5ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_eq_zero_iff_sameRay {x y : V} : o.oangle x y = 0 ↔ SameRay ℝ x y := by
  rw [oangle, kahler_apply_apply, Complex.arg_coe_angle_eq_iff_eq_toReal, Real.Angle.toReal_zero,
    Complex.arg_eq_zero_iff]
  simpa using o.nonneg_inner_and_areaForm_eq_zero_iff_sameRay x y
#align orientation.oangle_eq_zero_iff_same_ray Orientation.oangle_eq_zero_iff_sameRay

/-- The oriented angle between two vectors is `π` if and only if the angle with the vectors
swapped is `π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant0a709822d5247778b4dc4c89556133b9def925460660ef9af213ab42f2f74131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant0a709822d5247778b4dc4c89556133b9def925460660ef9af213ab42f2f74131.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7c60b47d67c3a2db03a1274110fcab25974d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
