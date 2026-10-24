# transformPrecomposeObjSquare_iso_hom_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb69c3e4-d0a9-f0bd-a1ee-1444733a5d3e",
  "kind": "lemma",
  "lexical_name": "transformPrecomposeObjSquare_iso_hom_comp",
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
  "slug": "transformprecomposeobjsquare-iso-hom-comp--883b902c0e4d7d5435b0bed8",
  "source": {
    "blob": "de777365098ac834b0c63e7328fe61d84bf29a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 836,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:883b902c0e4d7d5435b0bed80230dbf43990f49b3d1237b008062603b730f5df",
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

Occurrence: `result:eb69c3e4-d0a9-f0bd-a1ee-1444733a5d3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transformPrecomposeObjSquare_iso_hom_comp
    {A₂ : Type u₇} {B₂ : Type u₈} {C₂ : Type u₉}
    [Category.{v₇} A₂] [Category.{v₈} B₂] [Category.{v₉} C₂]
    {F₂ : A₂ ⥤ B₂} {G₂ : C₂ ⥤ B₂}
    {X : Type u₁₀} {Y : Type u₁₁} [Category.{v₁₀} X] [Category.{v₁₁} Y]
    (U : X ⥤ Y) (ψ : CatCospanTransform F G F₁ G₁)
    (ψ' : CatCospanTransform F₁ G₁ F₂ G₂) :
    (CatCommSq.iso (transform Y |>.obj <| ψ.comp ψ') (precompose F G |>.obj U)
      (precompose F₂ G₂ |>.obj U) (transform X |>.obj <| ψ.comp ψ')).hom ≫
      whiskerLeft (precompose F G |>.obj U) (transformObjComp X ψ ψ').hom =
    whiskerRight (transformObjComp Y ψ ψ').hom (precompose F₂ G₂ |>.obj U) ≫
      (Functor.associator _ _ _).hom ≫
      whiskerLeft (transform Y |>.obj ψ)
        (CatCommSq.iso _ (precompose F₁ G₁ |>.obj U)
          _ (transform X |>.obj ψ')).hom ≫
      (Functor.associator _ _ _).inv ≫
      whiskerRight (CatCommSq.iso _ _ _ _).hom (transform X |>.obj ψ') ≫
      (Functor.associator _ _ _).hom := by
  ext <;> simp

end compatibility

end CatCommSqOver

end Bifunctoriality

end CategoricalPullback

end

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de777365098ac834b0c63e7328fe61d84bf29a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
