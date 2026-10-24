# mapBifunctor_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3491e4f57a7d640cd1fa6e9ddbf7c7ea4240cfc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0735ffed-26ef-50f5-be2f-708b4b2f57f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab5141b8-7140-9b1a-641e-ebd6aea48d93",
  "kind": "lemma",
  "lexical_name": "mapBifunctor_triangle",
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
  "slug": "mapbifunctor-triangle--af513a369d7654dbab0dfa8f",
  "source": {
    "blob": "b3491e4f57a7d640cd1fa6e9ddbf7c7ea4240cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 326,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af513a369d7654dbab0dfa8f664a95612139ccaffa490fe4201233370d60b2c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab5141b8-7140-9b1a-641e-ebd6aea48d93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctor_triangle
    (triangle : ∀ (X₁ : C₁) (X₃ : C₃), ((associator.hom.app X₁).app X₂).app X₃ ≫
    (G.obj X₁).map (e₂.hom.app X₃) = (G.map (e₁.hom.app X₁)).app X₃) :
    (mapBifunctorAssociator associator τ.ρ₁₂ τ.ρ₂₃ X₁ ((single₀ I₂).obj X₂) X₃).hom ≫
    mapBifunctorMapMap G π (𝟙 X₁) (mapBifunctorLeftUnitor F₂ X₂ e₂ τ.p₂₃ τ.h₃ X₃).hom =
      mapBifunctorMapMap G π (mapBifunctorRightUnitor F₁ X₂ e₁ τ.p₁₂ τ.h₁ X₁).hom (𝟙 X₃) := by
  rw [← cancel_epi ((mapBifunctorMapMap G π
    (mapBifunctorRightUnitor F₁ X₂ e₁ τ.p₁₂ τ.h₁ X₁).inv (𝟙 X₃)))]
  ext j i₁ i₃ hj
  simp only [categoryOfGradedObjects_comp, ι_mapBifunctorMapMap_assoc,
    mapBifunctorRightUnitor_inv_apply, Functor.id_obj, Functor.flip_obj_obj, Functor.map_comp,
    NatTrans.comp_app, categoryOfGradedObjects_id, Functor.map_id, id_comp, assoc,
    ι_mapBifunctorMapMap]
  congr 2
  rw [← ιMapBifunctor₁₂BifunctorMapObj_eq_assoc F₁ G τ.ρ₁₂ _ _ _ i₁ 0 i₃ j
    (by rw [τ.r_zero, hj]) i₁ (by simp), ι_mapBifunctorAssociator_hom_assoc,
    ιMapBifunctorBifunctor₂₃MapObj_eq_assoc G F₂ τ.ρ₂₃ _ _ _ i₁ 0 i₃ j
    (by rw [τ.r_zero, hj]) i₃ (by simp), ι_mapBifunctorMapMap]
  dsimp
  rw [Functor.map_id, NatTrans.id_app, id_comp,
    ← Functor.map_comp_assoc, ← NatTrans.comp_app_assoc, ← Functor.map_comp,
    ι_mapBifunctorLeftUnitor_hom_apply F₂ X₂ e₂ τ.p₂₃ τ.h₃ X₃ i₃,
    ι_mapBifunctorRightUnitor_hom_apply F₁ X₂ e₁ τ.p₁₂ τ.h₁ X₁ i₁]
  dsimp
  simp only [Functor.map_comp, NatTrans.comp_app, ← triangle (X₁ i₁) (X₃ i₃), ← assoc]
  congr 2
  symm
  apply NatTrans.naturality_app (associator.hom.app (X₁ i₁))

end Triangle

end GradedObject

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3491e4f57a7d640cd1fa6e9ddbf7c7ea4240cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
