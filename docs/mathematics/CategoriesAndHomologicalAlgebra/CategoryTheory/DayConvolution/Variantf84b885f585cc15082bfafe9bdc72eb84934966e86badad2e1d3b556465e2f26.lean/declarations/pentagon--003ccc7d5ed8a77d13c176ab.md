# pentagon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "072e9465234fa69e7f9296926ff65678c6fc17a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b655be54-224a-a6ed-66c7-cd8c8ca958ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c8411fa-005e-c154-2bce-d915c87921f7",
  "kind": "lemma",
  "lexical_name": "pentagon",
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
  "slug": "pentagon--003ccc7d5ed8a77d13c176ab",
  "source": {
    "blob": "072e9465234fa69e7f9296926ff65678c6fc17a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 365,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:003ccc7d5ed8a77d13c176ab27aa82060c5b7d1f68a6c54b30f6182e59e18e97",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c8411fa-005e-c154-2bce-d915c87921f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pentagon (H K : C ⥤ V)
    [DayConvolution G H] [DayConvolution (F ⊛ G) H] [DayConvolution F (G ⊛ H)]
    [DayConvolution H K] [DayConvolution G (H ⊛ K)] [DayConvolution (G ⊛ H) K]
    [DayConvolution ((F ⊛ G) ⊛ H) K] [DayConvolution (F ⊛ G) (H ⊛ K)]
    [DayConvolution (F ⊛ G ⊛ H) K] [DayConvolution F (G ⊛ H ⊛ K)]
    [DayConvolution F ((G ⊛ H) ⊛ K)] :
    map (associator F G H).hom (𝟙 K) ≫
        (associator F (G ⊛ H) K).hom ≫ map (𝟙 F) (associator G H K).hom =
      (associator (F ⊛ G) H K).hom ≫ (associator F G (H ⊛ K)).hom := by
  -- We repeatedly apply the fact that the functors are left Kan extensions
  apply Functor.hom_ext_of_isLeftKanExtension (α := unit ((F ⊛ G) ⊛ H) K)
  apply Functor.hom_ext_of_isLeftKanExtension
    (α := extensionUnitLeft ((F ⊛ G) ⊛ H) (unit (F ⊛ G) H) K)
  have : (((F ⊛ G) ⊠ H) ⊠ K).IsLeftKanExtension
    (α := extensionUnitLeft ((F ⊛ G) ⊠ H)
      (extensionUnitLeft _ (unit F G) H) K) :=
    isPointwiseLeftKanExtensionExtensionUnitLeft _ _ _
      (isPointwiseLeftKanExtensionExtensionUnitLeft _ _ _
        (isPointwiseLeftKanExtensionUnit F G)) |>.isLeftKanExtension
  apply Functor.hom_ext_of_isLeftKanExtension (α := extensionUnitLeft ((F ⊛ G) ⊠ H)
      (extensionUnitLeft _ (unit F G) H) K)
  -- And then we compute...
  ext ⟨⟨⟨i, j⟩, k⟩, l⟩
  have aux :
      ((unit F G).app (i, j) ⊗ₘ (unit H K).app (k, l)) ≫
        (unit (F ⊛ G) (H ⊛ K)).app ((i ⊗ j), (k ⊗ l)) =
      (α_ (F.obj i) (G.obj j) (H.obj k ⊗ K.obj l)).hom ≫
        F.obj i ◁ G.obj j ◁ (unit H K).app (k, l) ≫ F.obj i ◁ (unit G (H ⊛ K)).app (j, (k ⊗ l)) ≫
        (unit F (G ⊛ H ⊛ K)).app (i, (j ⊗ k ⊗ l)) ≫ (F ⊛ G ⊛ H ⊛ K).map (α_ i j (k ⊗ l)).inv ≫
        (associator F G (H ⊛ K)).inv.app ((i ⊗ j) ⊗ k ⊗ l) := by
    conv_rhs => simp only [Functor.comp_obj, tensor_obj, NatTrans.naturality,
      associator_inv_unit_unit_assoc, externalProductBifunctor_obj_obj, Iso.map_hom_inv_id,
      Category.comp_id]
    simp only [tensor_whiskerLeft_symm, Category.assoc, Iso.hom_inv_id_assoc,
    ← tensorHom_def'_assoc]
  dsimp
  simp only [MonoidalCategory.whiskerLeft_id, Category.comp_id, unit_app_map_app_assoc,
    externalProductBifunctor_obj_obj, NatTrans.id_app, tensorHom_id, associator_hom_unit_unit_assoc,
    tensor_obj, NatTrans.naturality]
  conv_rhs =>
    simp only [whiskerRight_tensor_symm_assoc, Iso.inv_hom_id_assoc, ← tensorHom_def_assoc]
    rw [reassoc_of% aux]
  simp only [Iso.inv_hom_id_app_assoc, ← comp_whiskerRight_assoc, associator_hom_unit_unit F G H]
  simp only [Functor.comp_obj, tensor_obj, comp_whiskerRight, whisker_assoc, Category.assoc,
    whiskerRight_comp_unit_app_assoc (F ⊛ G ⊛ H) K l (α_ i j k).inv,
    NatTrans.naturality_assoc, NatTrans.naturality, associator_hom_unit_unit_assoc,
    externalProductBifunctor_obj_obj, unit_app_map_app_assoc, NatTrans.id_app, id_tensorHom,
    Iso.inv_hom_id_assoc, ← MonoidalCategory.whiskerLeft_comp_assoc, associator_hom_unit_unit]
  simp [← Functor.map_comp, pentagon_inv, pentagon_assoc]

end pentagon

end associator

end

end DayConvolution

/-- A `DayConvolutionUnit` structure on a functor `C ⥤ V` is the data of a pointwise
left Kan extension of `fromPUnit (𝟙_ V)` along `fromPUnit (𝟙_ C)`. Again, this is
made a class to ease proofs when constructing `DayConvolutionMonoidalCategory` structures, but one
should avoid registering it globally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072e9465234fa69e7f9296926ff65678c6fc17a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
