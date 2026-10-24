# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.CategoryTheory.Iso.hom_inv_id_triangle_hom₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f8a4432-04d4-3187-8909-71b81c012558",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.CategoryTheory.Iso.hom_inv_id_triangle_hom₁",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian--4ce49775bdf549951c531927",
  "source": {
    "blob": "3a9a241743823006fe0b6e753b2705fa9aa9cb83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 215,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ce49775bdf549951c5319278aa62fe2544bbf412eacd68443eaa5c19aacf09a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f8a4432-04d4-3187-8909-71b81c012558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.CategoryTheory.Iso.hom_inv_id_triangle_hom₁ {A B : Triangle C} (e : A ≅ B) :
    e.hom.hom₁ ≫ e.inv.hom₁ = 𝟙 _ := by rw [← comp_hom₁, e.hom_inv_id, id_hom₁]
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a9a241743823006fe0b6e753b2705fa9aa9cb83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
