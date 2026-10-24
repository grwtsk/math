# comp_whisker_left_bimod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5da9e07d-702a-4fb8-3db7-060b61cba1ad",
  "kind": "theorem",
  "lexical_name": "comp_whisker_left_bimod",
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
  "slug": "comp-whisker-left-bimod--8ba8116b8a5f5792f68db165",
  "source": {
    "blob": "43916b872ed2ecd4cc42825d465390b90d641cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 852,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ba8116b8a5f5792f68db16517ae2d44139483e21f8488474e86b2b33afb9045",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5da9e07d-702a-4fb8-3db7-060b61cba1ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 852–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_whisker_left_bimod {W X Y Z : Mon_ C} (M : Bimod W X) (N : Bimod X Y)
    {P P' : Bimod Y Z} (f : P ⟶ P') :
    tensorHom (𝟙 (M.tensorBimod N)) f =
      (associatorBimod M N P).hom ≫
        tensorHom (𝟙 M) (tensorHom (𝟙 N) f) ≫ (associatorBimod M N P').inv := by
  dsimp [tensorHom, tensorBimod, associatorBimod]
  ext
  apply coequalizer.hom_ext
  dsimp
  slice_lhs 1 2 => rw [ι_colimMap, parallelPairHom_app_one]
  dsimp [TensorBimod.X, AssociatorBimod.hom]
  slice_rhs 1 2 => rw [coequalizer.π_desc]
  dsimp [AssociatorBimod.homAux, AssociatorBimod.inv]
  refine' (cancel_epi ((tensorRight _).map (coequalizer.π _ _))).1 _
  rw [tensorRight_map]
  slice_rhs 1 3 => rw [π_tensor_id_preserves_coequalizer_inv_desc]
  slice_rhs 3 4 => rw [ι_colimMap, parallelPairHom_app_one]
  slice_rhs 2 3 => rw [← id_tensor_comp, ι_colimMap, parallelPairHom_app_one]
  slice_rhs 3 4 => rw [coequalizer.π_desc]
  dsimp [AssociatorBimod.invAux]
  slice_rhs 2 2 => rw [id_tensor_comp]
  slice_rhs 3 5 => rw [id_tensor_π_preserves_coequalizer_inv_desc]
  slice_rhs 2 3 => rw [associator_inv_naturality]
  slice_rhs 1 3 => rw [Iso.hom_inv_id_assoc, MonoidalCategory.tensor_id]
  slice_lhs 1 2 => rw [tensor_id_comp_id_tensor, ← id_tensor_comp_tensor_id]
set_option linter.uppercaseLean3 false in
#align Bimod.comp_whisker_left_Bimod Bimod.comp_whisker_left_bimod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean#L852).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43916b872ed2ecd4cc42825d465390b90d641cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
