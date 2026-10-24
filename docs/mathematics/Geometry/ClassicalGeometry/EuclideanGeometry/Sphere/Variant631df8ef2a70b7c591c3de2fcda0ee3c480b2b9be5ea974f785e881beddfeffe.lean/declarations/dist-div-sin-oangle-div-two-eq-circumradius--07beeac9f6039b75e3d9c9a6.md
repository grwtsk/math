# dist_div_sin_oangle_div_two_eq_circumradius

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
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27e5b133-fc8a-02db-2325-c7462998231b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bed4e7c2-fd5b-7bde-3228-82de645db661",
  "kind": "theorem",
  "lexical_name": "dist_div_sin_oangle_div_two_eq_circumradius",
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
  "slug": "dist-div-sin-oangle-div-two-eq-circumradius--07beeac9f6039b75e3d9c9a6",
  "source": {
    "blob": "dafb3b8aaf0c97e2bc06dcf1f3be2ce44ed9af01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 279,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07beeac9f6039b75e3d9c9a6426bce9901f99a12096ab7a713c4d4faf02447ea",
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

Occurrence: `result:bed4e7c2-fd5b-7bde-3228-82de645db661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_div_sin_oangle_div_two_eq_circumradius (t : Triangle ℝ P) {i₁ i₂ i₃ : Fin 3}
    (h₁₂ : i₁ ≠ i₂) (h₁₃ : i₁ ≠ i₃) (h₂₃ : i₂ ≠ i₃) : dist (t.points i₁) (t.points i₃) /
      |Real.Angle.sin (∡ (t.points i₁) (t.points i₂) (t.points i₃))| / 2 = t.circumradius :=
  Sphere.dist_div_sin_oangle_div_two_eq_radius (t.mem_circumsphere _) (t.mem_circumsphere _)
    (t.mem_circumsphere _) (t.Independent.injective.ne h₁₂) (t.Independent.injective.ne h₁₃)
    (t.Independent.injective.ne h₂₃)
#align affine.triangle.dist_div_sin_oangle_div_two_eq_circumradius Affine.Triangle.dist_div_sin_oangle_div_two_eq_circumradius

/-- Twice the circumradius of a triangle may be expressed explicitly as the length of a side
divided by the absolute value of the sine of the angle at the third point (a version of the law
of sines or sine rule). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dafb3b8aaf0c97e2bc06dcf1f3be2ce44ed9af01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
