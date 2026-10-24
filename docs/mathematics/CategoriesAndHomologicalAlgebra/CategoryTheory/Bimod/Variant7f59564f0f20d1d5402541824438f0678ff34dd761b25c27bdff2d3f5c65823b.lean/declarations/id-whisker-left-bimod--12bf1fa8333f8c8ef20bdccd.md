# id_whisker_left_bimod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a79231e5-fa57-bc08-6a80-ce0c864cc523",
  "kind": "theorem",
  "lexical_name": "id_whisker_left_bimod",
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
  "slug": "id-whisker-left-bimod--12bf1fa8333f8c8ef20bdccd",
  "source": {
    "blob": "43916b872ed2ecd4cc42825d465390b90d641cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 851,
    "line": 828,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12bf1fa8333f8c8ef20bdccd571072d705fae1935b4126932f9665ff6e69554e",
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

Occurrence: `result:a79231e5-fa57-bc08-6a80-ce0c864cc523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 828–851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem id_whisker_left_bimod {X Y : Mon_ C} {M N : Bimod X Y} (f : M ⟶ N) :
    tensorHom (𝟙 (regular X)) f = (leftUnitorBimod M).hom ≫ f ≫ (leftUnitorBimod N).inv := by
  dsimp [tensorHom, regular, leftUnitorBimod]
  ext
  apply coequalizer.hom_ext
  dsimp
  slice_lhs 1 2 => rw [ι_colimMap, parallelPairHom_app_one]
  dsimp [LeftUnitorBimod.hom]
  slice_rhs 1 2 => rw [coequalizer.π_desc]
  dsimp [LeftUnitorBimod.inv]
  slice_rhs 1 2 => rw [Hom.left_act_hom]
  slice_rhs 2 3 => rw [leftUnitor_inv_naturality]
  slice_rhs 3 4 => rw [id_tensor_comp_tensor_id, ← tensor_id_comp_id_tensor]
  slice_rhs 4 4 => rw [← Iso.inv_hom_id_assoc (α_ X.X X.X N.X) (𝟙 X.X ⊗ N.actLeft)]
  slice_rhs 5 7 => rw [← Category.assoc, ← coequalizer.condition]
  slice_rhs 3 4 => rw [← MonoidalCategory.tensor_id, associator_inv_naturality]
  slice_rhs 4 5 => rw [← comp_tensor_id, Mon_.one_mul]
  have : (λ_ (X.X ⊗ N.X)).inv ≫ (α_ (𝟙_ C) X.X N.X).inv ≫ ((λ_ X.X).hom ⊗ 𝟙 N.X) = 𝟙 _ := by
    pure_coherence
  slice_rhs 2 4 => rw [this]
  slice_rhs 1 2 => rw [Category.comp_id]
set_option linter.uppercaseLean3 false in
#align Bimod.id_whisker_left_Bimod Bimod.id_whisker_left_bimod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean#L828).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43916b872ed2ecd4cc42825d465390b90d641cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
