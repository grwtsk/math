# precomposeObjTransformObjSquare_iso_hom_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e717ae2-eb1f-68e7-bfee-994c3ec9f37d",
  "kind": "lemma",
  "lexical_name": "precomposeObjTransformObjSquare_iso_hom_comp",
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
  "slug": "precomposeobjtransformobjsquare-iso-hom-comp--c5dceca8697f3876e1ab3c27",
  "source": {
    "blob": "de777365098ac834b0c63e7328fe61d84bf29a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 794,
    "line": 768,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5dceca8697f3876e1ab3c278ea39faa13913c75c475eee1dd6a916887b75aaf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e717ae2-eb1f-68e7-bfee-994c3ec9f37d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 768–794.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma precomposeObjTransformObjSquare_iso_hom_comp
    {X : Type u₇} {Y : Type u₈} {Z : Type u₉}
    [Category.{v₇} X] [Category.{v₈} Y] [Category.{v₉} Z]
    (ψ : CatCospanTransform F G F₁ G₁)
    (U : X ⥤ Y) (V : Y ⥤ Z) :
    (CatCommSq.iso (precompose F G |>.obj <| U ⋙ V) (transform Z |>.obj ψ)
      (transform X |>.obj ψ) (precompose F₁ G₁ |>.obj <| U ⋙ V)).hom ≫
      whiskerLeft (transform Z |>.obj ψ) (precomposeObjComp F₁ G₁ U V).hom =
    whiskerRight (precomposeObjComp F G U V).hom (transform X |>.obj ψ) ≫
      (Functor.associator _ _ _).hom ≫
      whiskerLeft (precompose F G |>.obj V)
        (CatCommSq.iso _ (transform _ |>.obj ψ) _ _).hom ≫
      (Functor.associator _ _ _).inv ≫
      whiskerRight (CatCommSq.iso _ _ _ _).hom
        (precompose F₁ G₁ |>.obj U) ≫
      (Functor.associator _ _ _).hom := by
  ext <;> simp

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The canonical compatibility square between (the object components of)
`transform` and `precompose`.
This is a "naturality square" if we think as `precompose` as the
(app component of the) map component of a pseudofunctor from the opposite
bicategory of categories to pseudofunctors of categorical cospans
(its value on `X` being the pseudofunctor `transform X _`). -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean#L768).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de777365098ac834b0c63e7328fe61d84bf29a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
