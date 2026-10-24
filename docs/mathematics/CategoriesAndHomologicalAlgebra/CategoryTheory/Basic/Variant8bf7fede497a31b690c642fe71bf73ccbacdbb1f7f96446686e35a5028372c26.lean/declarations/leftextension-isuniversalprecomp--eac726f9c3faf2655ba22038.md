# LeftExtension.isUniversalPrecomp₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11e957d7677f40c471018192442908f3c6720b142bd8d9bd9e66fd2368c33f05",
  "kind": "def",
  "lexical_name": "LeftExtension.isUniversalPrecomp₂",
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
  "slug": "leftextension-isuniversalprecomp--eac726f9c3faf2655ba22038",
  "source": {
    "blob": "d0ad33cbd18f31a52a9f9a31e5294af4f952f5da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 650,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8bf7fede497a31b690c642fe71bf73ccbacdbb1f7f96446686e35a5028372c26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eac726f9c3faf2655ba22038024e06d5c04ea5261e5780cfc33d1ce64312b372",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8bf7fede497a31b690c642fe71bf73ccbacdbb1f7f96446686e35a5028372c26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11e957d7677f40c471018192442908f3c6720b142bd8d9bd9e66fd2368c33f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeftExtension.isUniversalPrecomp₂
    (hα : (LeftExtension.mk F₁ α).IsUniversal)
    {b : L'.LeftExtension F₁} (hb : b.IsUniversal) :
    ((LeftExtension.precomp₂ L' α).obj b).IsUniversal := by
  letI (y : (L ⋙ L').LeftExtension F₀) :
      Unique ((precomp₂ L' α).obj b ⟶ y) := by
    let u : L'.LeftExtension F₁ :=
      mk y.right <|
        hα.desc <| LeftExtension.mk _ <|
          y.hom ≫ (L.associator L' y.right).hom
    refine
      ⟨⟨StructuredArrow.homMk (hb.desc u) <| by
          ext x
          have hb_fac_app := congr_app (hb.fac u) (L.obj x)
          have hα_fac_app :=
            congr_app (hα.fac <| LeftExtension.mk _ <|
              y.hom ≫ (L.associator L' y.right).hom) x
          dsimp at hα_fac_app hb_fac_app
          simp [hb_fac_app, u, hα_fac_app]⟩, fun a => ?_⟩
    dsimp
    ext1
    apply hb.hom_ext
    apply hα.hom_ext
    ext t
    dsimp
    have a_w_t := congr_app a.w t
    have hb_fac_app := congr_app (hb.fac u) (L.obj t)
    have hα_fac_app :=
      congr_app
        (hα.fac <| LeftExtension.mk _ <|
          y.hom ≫ (L.associator L' y.right).hom) t
    dsimp at hb_fac_app hα_fac_app
    simp only [whiskeringLeft_obj_obj, comp_obj,
      precomp₂_obj_right, whiskeringLeft_obj_map, NatTrans.comp_app,
      precomp₂_obj_hom_app, whiskerLeft_app, assoc] at a_w_t
    simp [← a_w_t, hb_fac_app, u, hα_fac_app]
  apply IsInitial.ofUnique

set_option backward.isDefEq.respectTransparency.types false in
/-- If the left extension defined by `α : F₀ ⟶ L ⋙ F₁` is universal,
then for every `L' : D ⥤ D'`, `F₁ : D ⥤ H`, if an extension
`b : L'.LeftExtension F₁` is such that the "pasted" extension
`(LeftExtension.precomp₂ L' α).obj b` is universal, then `b` is itself
universal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8bf7fede497a31b690c642fe71bf73ccbacdbb1f7f96446686e35a5028372c26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8bf7fede497a31b690c642fe71bf73ccbacdbb1f7f96446686e35a5028372c26.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0ad33cbd18f31a52a9f9a31e5294af4f952f5da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
