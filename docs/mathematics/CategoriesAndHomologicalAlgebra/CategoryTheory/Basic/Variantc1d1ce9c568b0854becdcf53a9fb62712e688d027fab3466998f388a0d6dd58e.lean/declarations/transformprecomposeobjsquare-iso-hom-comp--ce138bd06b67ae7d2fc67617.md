# transformPrecomposeObjSquare_iso_hom_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef3eae45401e390e6acf57aef9e60aacb88f4c9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 828,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36bb4cdc-bb0b-b5be-c9df-a84af1910dc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb5cabcc-1cce-8780-54a9-5bad5a066a72",
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
  "slug": "transformprecomposeobjsquare-iso-hom-comp--ce138bd06b67ae7d2fc67617",
  "source": {
    "blob": "ef3eae45401e390e6acf57aef9e60aacb88f4c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 858,
    "line": 828,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce138bd06b67ae7d2fc6761703be942f0234410126a989e70f6c10bb517175ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb5cabcc-1cce-8780-54a9-5bad5a066a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 828–858.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean#L828).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3eae45401e390e6acf57aef9e60aacb88f4c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
