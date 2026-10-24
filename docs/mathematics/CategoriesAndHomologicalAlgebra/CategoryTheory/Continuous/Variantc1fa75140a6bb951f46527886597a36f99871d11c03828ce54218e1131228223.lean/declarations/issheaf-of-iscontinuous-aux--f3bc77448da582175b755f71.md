# isSheaf_of_isContinuous_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bae41fd1efbcdc53c3b7685e2d696efa5589dee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30ac4a91-7810-9f21-3184-ba1d9f2c781d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b98551d7-80a0-3bbd-4d4a-5a9b75bf9660",
  "kind": "lemma",
  "lexical_name": "isSheaf_of_isContinuous_aux",
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
  "slug": "issheaf-of-iscontinuous-aux--f3bc77448da582175b755f71",
  "source": {
    "blob": "8bae41fd1efbcdc53c3b7685e2d696efa5589dee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3bc77448da582175b755f71b87ddf08fdcbc3ced1e7521d45523a06aa7a12ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b98551d7-80a0-3bbd-4d4a-5a9b75bf9660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isSheaf_of_isContinuous_aux (F : C ⥤ D) [Functor.IsContinuous F J K]
    (G : Dᵒᵖ ⥤ Type max w u₁ v₁ u₂ v₂) (hG : Presieve.IsSheaf K G) :
    Presieve.IsSheaf J (F.op ⋙ G) := by
  let H : (Cᵒᵖ ⥤ Type max u₁ v₁ u₂ v₂) ⥤ Dᵒᵖ ⥤ Type max u₁ v₁ u₂ v₂ := F.op.lan
  let adj : H ⊣ (Functor.whiskeringLeft _ _ _).obj F.op := F.op.lanAdjunction _
  let H' : (Cᵒᵖ ⥤ Type max w u₁ v₁ u₂ v₂) ⥤ Dᵒᵖ ⥤ Type max w u₁ v₁ u₂ v₂ := F.op.lan
  let adj' : H' ⊣ (Functor.whiskeringLeft _ _ _).obj F.op := F.op.lanAdjunction _
  refine Presieve.IsSheaf.comp_of_W_map_of_adjunction _ adj' ?_ _ hG
  intro X S hS
  have hWS : J.W (Sieve.shrinkFunctor.{max u₁ v₁ u₂ v₂} S).ι :=
    Sieve.W_shrinkFunctor_ι_of_mem.{max u₁ v₁ u₂ v₂} _ S hS
  have : K.W _ := Functor.W_map_of_adjunction_of_isContinuous_aux (J := J) K F H adj
    (Sieve.shrinkFunctor.{max u₁ v₁ u₂ v₂} S).ι hWS
  let e : H ⋙ (Functor.whiskeringRight _ _ _).obj uliftFunctor.{w} ≅
      (Functor.whiskeringRight _ _ _).obj uliftFunctor.{w} ⋙ H' :=
    uliftFunctor.{w, max (max (max u₁ u₂) v₁) v₂}.lanCompIsoOfPreserves F.op
  let iso : Arrow.mk (H'.map (Sieve.shrinkFunctor.{max w u₁ v₁ u₂ v₂} S).ι) ≅
      .mk (Functor.whiskerRight
        (H.map (Sieve.shrinkFunctor.{max u₁ v₁ u₂ v₂} S).ι) uliftFunctor.{w}) :=
    Arrow.isoMk' _ _
      (H'.mapIso (Sieve.shrinkFunctorUliftFunctorIso.{max u₁ v₁ u₂ v₂, w} S).symm ≪≫ (e.app _).symm)
      (H'.mapIso (shrinkYonedaUliftFunctorIso.{max u₁ v₁ u₂ v₂}.app _).symm ≪≫ (e.app _).symm) <| by
        simp only [Functor.mapIso_symm, Functor.comp_obj, Functor.whiskeringRight_obj_obj,
          Iso.trans_hom, Iso.symm_hom, Functor.mapIso_inv, Iso.app_inv, Category.assoc]
        rw [← Functor.map_comp_assoc, ← dsimp% e.inv.naturality, ← Functor.map_comp_assoc,
          Sieve.shrinkFunctorUliftFunctorIso_inv_ι]
  rw [K.W.arrow_mk_iso_iff iso]
  apply GrothendieckTopology.W_of_preservesSheafification
  exact F.W_map_of_adjunction_of_isContinuous_aux J K H adj
    (Sieve.shrinkFunctor.{max u₁ v₁ u₂ v₂} S).ι hWS

/-- If `F` is continuous, any sheaf (in an arbitrary universe) remains a sheaf when
precomposing with `F.op` (SGA 4 III 1.5). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bae41fd1efbcdc53c3b7685e2d696efa5589dee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
