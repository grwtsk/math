# hexagon_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a187cc76-d7d9-cfe2-6d1a-c492a7e29ef5",
  "kind": "lemma",
  "lexical_name": "hexagon_reverse",
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
  "slug": "hexagon-reverse--2428108e69790d62af5bc31c",
  "source": {
    "blob": "66912e4ac71e284b409872d3799ccf6ae4f33e64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2428108e69790d62af5bc31c90ef2ecd2624f81beb03fd8e95e95b7bada61ea4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a187cc76-d7d9-cfe2-6d1a-c492a7e29ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hexagon_reverse (H : C ⥤ V)
    [DayConvolution F G] [DayConvolution G H] [DayConvolution F (G ⊛ H)]
    [DayConvolution (F ⊛ G) H] [DayConvolution H (F ⊛ G)] [DayConvolution H F]
    [DayConvolution (H ⊛ F) G] [DayConvolution H G] [DayConvolution F (H ⊛ G)]
    [DayConvolution F H] [DayConvolution (F ⊛ H) G] :
    (associator F G H).inv ≫ (braiding (F ⊛ G) H).hom ≫ (associator H F G).inv =
    (DayConvolution.map (𝟙 F) (braiding G H).hom) ≫ (associator F H G).inv ≫
      (DayConvolution.map (braiding F H).hom (𝟙 G)) := by
  apply Functor.hom_ext_of_isLeftKanExtension (F ⊛ G ⊛ H) (unit _ _)
  apply Functor.hom_ext_of_isLeftKanExtension (F ⊠ (G ⊛ H))
    (ExternalProduct.extensionUnitRight (G ⊛ H) (unit G H) F)
  ext ⟨x, y, z⟩
  dsimp
  simp only [whiskerRight_tensor, id_whiskerRight, Category.id_comp,
    Iso.inv_hom_id, associator_inv_unit_unit_assoc,
    externalProductBifunctor_obj_obj, tensor_obj, NatTrans.naturality_assoc,
    NatTrans.naturality, unit_app_braiding_hom_app_assoc,
    BraidedCategory.braiding_tensor_right_hom, Functor.map_comp, Category.assoc,
    Iso.map_inv_hom_id, Category.comp_id,
    BraidedCategory.braiding_naturality_left_assoc,
    BraidedCategory.braiding_tensor_left_hom, Iso.map_hom_inv_id_assoc,
    Iso.hom_inv_id_assoc, Iso.inv_hom_id_assoc, unit_app_map_app_assoc,
    NatTrans.id_app, id_tensorHom]
  simp only [← comp_whiskerRight_assoc, ← whiskerLeft_comp_assoc,
    unit_app_braiding_hom_app]
  simp only [comp_whiskerRight, ← Functor.map_comp, Category.assoc, Functor.comp_obj, tensor_obj,
    whiskerLeft_comp, whiskerLeft_comp_unit_app_assoc, NatTrans.naturality_assoc,
    NatTrans.naturality, associator_inv_unit_unit_assoc, externalProductBifunctor_obj_obj,
    unit_app_map_app_assoc, NatTrans.id_app, tensorHom_id]
  congr 2
  rw [← BraidedCategory.hexagon_forward, ← comp_whiskerRight_assoc]
  have := unit_app_braiding_hom_app F H x z =≫ (H ⊛ F).map (β_ z x).inv
  dsimp at this
  simp only [Category.assoc, Iso.map_hom_inv_id, Category.comp_id] at this
  rw [← this, comp_whiskerRight_assoc]
  simp [← Functor.map_comp]

end

section

variable {C : Type u₁} [Category.{v₁} C] {V : Type u₂} [Category.{v₂} V]
  [MonoidalCategory C] [SymmetricCategory C]
  [MonoidalCategory V] [SymmetricCategory V]
  (F G : C ⥤ V)

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66912e4ac71e284b409872d3799ccf6ae4f33e64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
