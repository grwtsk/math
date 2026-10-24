# DayConvolution.triangle

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
      "line": 689,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c405d26c-750a-fa05-5084-2d0d9ce54657",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32fe001f-1c3d-8503-7b15-ccbc7ef873ea",
  "kind": "lemma",
  "lexical_name": "DayConvolution.triangle",
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
  "slug": "dayconvolution-triangle--87d6dfe09c1aa4d2c1124a63",
  "source": {
    "blob": "072e9465234fa69e7f9296926ff65678c6fc17a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 689,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87d6dfe09c1aa4d2c1124a6306c8377822a810f60d38086536b0f2cd08df77b3",
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

Occurrence: `result:32fe001f-1c3d-8503-7b15-ccbc7ef873ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DayConvolution.triangle (F G U : C ⥤ V) [DayConvolutionUnit U]
    [DayConvolution F U] [DayConvolution U G]
    [DayConvolution F (U ⊛ G)] [DayConvolution (F ⊛ U) G] [DayConvolution F G] :
    (DayConvolution.associator F U G).hom ≫
      DayConvolution.map (𝟙 F) (DayConvolutionUnit.leftUnitor U G).hom =
    DayConvolution.map (DayConvolutionUnit.rightUnitor U F).hom (𝟙 G) := by
  apply Functor.hom_ext_of_isLeftKanExtension _ (DayConvolution.unit _ _) _
  apply Functor.hom_ext_of_isLeftKanExtension
    (α := extensionUnitLeft (F ⊛ U) (DayConvolution.unit F U) G)
  have : (F ⊠ U) ⊠ G |>.IsLeftKanExtension
      (α := extensionUnitLeft (F ⊠ U) (extensionUnitRight U (DayConvolutionUnit.φ U) F) G) :=
    isPointwiseLeftKanExtensionExtensionUnitLeft (F ⊠ U) _ G
      (isPointwiseLeftKanExtensionExtensionUnitRight U (DayConvolutionUnit.φ U) F <|
        DayConvolutionUnit.isPointwiseLeftKanExtensionCan (F := U)) |>.isLeftKanExtension
  apply Functor.hom_ext_of_isLeftKanExtension
    (α := extensionUnitLeft (F ⊠ U) (extensionUnitRight U (DayConvolutionUnit.φ U) F) G)
  ext
  dsimp
  simp only [MonoidalCategory.whiskerRight_id, Category.id_comp, Iso.hom_inv_id, whisker_assoc,
    MonoidalCategory.whiskerLeft_id, Category.comp_id,
    DayConvolution.associator_hom_unit_unit_assoc, externalProductBifunctor_obj_obj, tensor_obj,
    NatTrans.naturality, unit_app_map_app_assoc, NatTrans.id_app, id_tensorHom,
    Category.assoc, Iso.inv_hom_id_assoc, unit_app_map_app, Functor.comp_obj,
    tensorHom_id, Iso.cancel_iso_hom_left]
  simp only [← MonoidalCategory.whiskerLeft_comp_assoc, leftUnitor_hom_unit_app,
    associator_inv_naturality_middle_assoc, ← comp_whiskerRight_assoc, rightUnitor_hom_unit_app]
  simp [← Functor.map_comp]

end triangle

section

variable (C : Type u₁) [Category.{v₁} C] (V : Type u₂) [Category.{v₂} V]
    [MonoidalCategory C] [MonoidalCategory V]

/-- The class `DayConvolutionMonoidalCategory C V D` bundles the necessary data to
turn a monoidal category `D` into a monoidal full subcategory of a category of
functors `C ⥤ V` endowed with a Day convolution monoidal structure.
The design of this class is to bundle a fully faithful functor into `C ⥤ V` with
left extensions on its values representing the fact that it maps tensors products
in `D` to Day convolutions, and furthermore ask that this data is "lawful", i.e that
once realized in the functor category, the objects behave like the corresponding ones
in the category `C ⥤ V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072e9465234fa69e7f9296926ff65678c6fc17a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
