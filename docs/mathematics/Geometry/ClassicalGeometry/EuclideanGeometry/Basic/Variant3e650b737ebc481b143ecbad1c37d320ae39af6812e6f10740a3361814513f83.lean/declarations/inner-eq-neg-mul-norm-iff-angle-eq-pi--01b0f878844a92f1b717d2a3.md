# inner_eq_neg_mul_norm_iff_angle_eq_pi

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
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:654c7b0a-69ce-0c84-dbb9-5c00efd166f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ac86c60-2acf-c092-19bb-0e03d1cae197",
  "kind": "theorem",
  "lexical_name": "inner_eq_neg_mul_norm_iff_angle_eq_pi",
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
  "slug": "inner-eq-neg-mul-norm-iff-angle-eq-pi--01b0f878844a92f1b717d2a3",
  "source": {
    "blob": "dd3c7c8ca6190522776d0288703638f22f3f09c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 249,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01b0f878844a92f1b717d2a369084b8f76161bd0921cd914e24fbb323454cb2f",
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

Occurrence: `result:1ac86c60-2acf-c092-19bb-0e03d1cae197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_eq_neg_mul_norm_iff_angle_eq_pi {x y : V} (hx : x ≠ 0) (hy : y ≠ 0) :
    ⟪x, y⟫ = -(‖x‖ * ‖y‖) ↔ angle x y = π := by
  refine ⟨fun h => ?_, inner_eq_neg_mul_norm_of_angle_eq_pi⟩
  have h₁ : ‖x‖ * ‖y‖ ≠ 0 := (mul_pos (norm_pos_iff.mpr hx) (norm_pos_iff.mpr hy)).ne'
  rw [angle, h, neg_div, div_self h₁, Real.arccos_neg_one]

/-- The inner product of two non-zero vectors equals the product of their norms
if and only if the angle between the two vectors is 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd3c7c8ca6190522776d0288703638f22f3f09c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
