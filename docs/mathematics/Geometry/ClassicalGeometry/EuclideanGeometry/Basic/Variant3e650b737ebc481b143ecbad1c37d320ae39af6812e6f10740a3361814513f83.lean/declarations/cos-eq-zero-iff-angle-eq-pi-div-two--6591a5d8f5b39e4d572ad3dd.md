# cos_eq_zero_iff_angle_eq_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd3c7c8ca6190522776d0288703638f22f3f09c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98958475-14c3-9e88-d964-26f62b09918c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dac6624-9779-d81a-e3ea-c64ff5a9c1f6",
  "kind": "theorem",
  "lexical_name": "cos_eq_zero_iff_angle_eq_pi_div_two",
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
  "slug": "cos-eq-zero-iff-angle-eq-pi-div-two--6591a5d8f5b39e4d572ad3dd",
  "source": {
    "blob": "dd3c7c8ca6190522776d0288703638f22f3f09c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 334,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6591a5d8f5b39e4d572ad3dd63dd71fbf0c9218baa0922706affb89237004575",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dac6624-9779-d81a-e3ea-c64ff5a9c1f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_eq_zero_iff_angle_eq_pi_div_two : cos (angle x y) = 0 ↔ angle x y = π / 2 := by
  rw [← cos_pi_div_two]
  apply injOn_cos.eq_iff ⟨angle_nonneg x y, angle_le_pi x y⟩
  constructor <;> linarith [pi_pos]

/-- The cosine of the angle between two vectors is -1 if and only if the angle is π. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd3c7c8ca6190522776d0288703638f22f3f09c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
