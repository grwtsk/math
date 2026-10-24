# dist_div_sin_oangle_div_two_eq_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dafb3b8aaf0c97e2bc06dcf1f3be2ce44ed9af01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bde3830e-7bb8-68e9-8ee2-c044eddfbaff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:333f6627-5ab2-309d-3cb6-7801725527db",
  "kind": "theorem",
  "lexical_name": "dist_div_sin_oangle_div_two_eq_radius",
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
  "slug": "dist-div-sin-oangle-div-two-eq-radius--a0939a628cdac84a2fc84633",
  "source": {
    "blob": "dafb3b8aaf0c97e2bc06dcf1f3be2ce44ed9af01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 228,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0939a628cdac84a2fc84633b0b596cf73bb9f3c400d0a45f1b376d274644720",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:333f6627-5ab2-309d-3cb6-7801725527db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_div_sin_oangle_div_two_eq_radius {s : Sphere P} {p₁ p₂ p₃ : P} (hp₁ : p₁ ∈ s)
    (hp₂ : p₂ ∈ s) (hp₃ : p₃ ∈ s) (hp₁p₂ : p₁ ≠ p₂) (hp₁p₃ : p₁ ≠ p₃) (hp₂p₃ : p₂ ≠ p₃) :
    dist p₁ p₃ / |Real.Angle.sin (∡ p₁ p₂ p₃)| / 2 = s.radius := by
  convert dist_div_cos_oangle_center_div_two_eq_radius hp₁ hp₃ hp₁p₃
  rw [← Real.Angle.abs_cos_eq_abs_sin_of_two_zsmul_add_two_zsmul_eq_pi
    (two_zsmul_oangle_center_add_two_zsmul_oangle_eq_pi hp₁ hp₂ hp₃ hp₁p₂.symm hp₂p₃ hp₁p₃),
    _root_.abs_of_nonneg (Real.Angle.cos_nonneg_iff_abs_toReal_le_pi_div_two.2 _)]
  exact (abs_oangle_center_right_toReal_lt_pi_div_two hp₁ hp₃).le
#align euclidean_geometry.sphere.dist_div_sin_oangle_div_two_eq_radius EuclideanGeometry.Sphere.dist_div_sin_oangle_div_two_eq_radius

/-- Given three points on a circle, twice the radius of that circle may be expressed explicitly as
the distance between two of those points divided by the absolute value of the sine of the angle
at the third point (a version of the law of sines or sine rule). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dafb3b8aaf0c97e2bc06dcf1f3be2ce44ed9af01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
