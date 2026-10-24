# hexagon_forward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0de49dc3-0caf-4ee1-b810-aab3342f19a3",
  "kind": "lemma",
  "lexical_name": "hexagon_forward",
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
  "slug": "hexagon-forward--d58130be0c38aabdf31cb765",
  "source": {
    "blob": "66912e4ac71e284b409872d3799ccf6ae4f33e64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d58130be0c38aabdf31cb765b548efe9b23db71d809afd65c7bbbe0492908276",
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

Occurrence: `result:0de49dc3-0caf-4ee1-b810-aab3342f19a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hexagon_forward (H : C ⥤ V)
    [DayConvolution F G] [DayConvolution G H] [DayConvolution F (G ⊛ H)]
    [DayConvolution (F ⊛ G) H] [DayConvolution H F] [DayConvolution G (H ⊛ F)]
    [DayConvolution (G ⊛ H) F] [DayConvolution G F] [DayConvolution (G ⊛ F) H]
    [DayConvolution F H] [DayConvolution G (F ⊛ H)] :
    (associator F G H).hom ≫ (braiding F (G ⊛ H)).hom ≫ (associator G H F).hom =
    (DayConvolution.map (braiding F G).hom (𝟙 H)) ≫ (associator G F H).hom ≫
      (DayConvolution.map (𝟙 G) (braiding F H).hom) := by
  apply Functor.hom_ext_of_isLeftKanExtension ((F ⊛ G) ⊛ H) (unit _ H)
  apply Functor.hom_ext_of_isLeftKanExtension ((F ⊛ G) ⊠ H)
    (ExternalProduct.extensionUnitLeft (F ⊛ G) (unit F G) H)
  ext ⟨⟨x, y⟩, z⟩
  dsimp
  simp only [whiskerLeft_id, Category.comp_id, associator_hom_unit_unit_assoc,
    externalProductBifunctor_obj_obj, tensor_obj, NatTrans.naturality_assoc,
    NatTrans.naturality, unit_app_braiding_hom_app_assoc,
    BraidedCategory.braiding_tensor_left_hom, Functor.map_comp, Category.assoc,
    Iso.map_hom_inv_id, BraidedCategory.braiding_naturality_right_assoc,
    BraidedCategory.braiding_tensor_right_hom, Iso.map_inv_hom_id_assoc,
    Iso.inv_hom_id_assoc, Iso.hom_inv_id_assoc, unit_app_map_app_assoc,
    NatTrans.id_app, tensorHom_id]
  simp only [← comp_whiskerRight_assoc, ← whiskerLeft_comp_assoc,
    unit_app_braiding_hom_app]
  simp only [whiskerLeft_comp, ← Functor.map_comp, Category.assoc,
    Functor.comp_obj, tensor_obj, comp_whiskerRight,
    whiskerRight_comp_unit_app_assoc, NatTrans.naturality_assoc,
    NatTrans.naturality, associator_hom_unit_unit_assoc,
    externalProductBifunctor_obj_obj, unit_app_map_app_assoc, NatTrans.id_app,
    id_tensorHom]
  rw [← BraidedCategory.hexagon_reverse, ← whiskerLeft_comp_assoc]
  have := unit_app_braiding_hom_app F H x z =≫ (H ⊛ F).map (β_ z x).inv
  dsimp at this
  simp only [Category.assoc, Iso.map_hom_inv_id, Category.comp_id] at this
  rw [← this, whiskerLeft_comp_assoc]
  simp [← Functor.map_comp]

set_option backward.defeqAttrib.useBackward true in
variable (F G) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66912e4ac71e284b409872d3799ccf6ae4f33e64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
