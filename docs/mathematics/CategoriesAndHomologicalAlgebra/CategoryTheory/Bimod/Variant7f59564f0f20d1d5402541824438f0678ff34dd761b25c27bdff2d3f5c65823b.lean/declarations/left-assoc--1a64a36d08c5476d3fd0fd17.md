# left_assoc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54d6acf9-3273-495c-dec8-42fcb7cfdeb5",
  "kind": "theorem",
  "lexical_name": "left_assoc'",
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
  "slug": "left-assoc--1a64a36d08c5476d3fd0fd17",
  "source": {
    "blob": "43916b872ed2ecd4cc42825d465390b90d641cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 272,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a64a36d08c5476d3fd0fd17f9266f9dd2881ae0c2e4c8375354c388d30f6114",
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

Occurrence: `result:54d6acf9-3273-495c-dec8-42fcb7cfdeb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem left_assoc' :
    (R.mul ⊗ 𝟙 _) ≫ actLeft P Q = (α_ R.X R.X _).hom ≫ (𝟙 R.X ⊗ actLeft P Q) ≫ actLeft P Q := by
  refine' (cancel_epi ((tensorLeft _).map (coequalizer.π _ _))).1 _
  dsimp [X]
  -- porting note: had to replace some `rw` by `erw`
  slice_lhs 1 2 => erw [id_tensor_comp_tensor_id, ← tensor_id_comp_id_tensor]
  slice_lhs 2 3 => rw [id_tensor_π_actLeft]
  slice_lhs 1 2 => rw [← MonoidalCategory.tensor_id, associator_inv_naturality]
  slice_lhs 2 3 => rw [← comp_tensor_id, left_assoc, comp_tensor_id, comp_tensor_id]
  slice_rhs 1 2 => erw [← MonoidalCategory.tensor_id, associator_naturality]
  slice_rhs 2 3 => rw [← id_tensor_comp, id_tensor_π_actLeft, id_tensor_comp, id_tensor_comp]
  slice_rhs 4 5 => rw [id_tensor_π_actLeft]
  slice_rhs 3 4 => rw [associator_inv_naturality]
  coherence
set_option linter.uppercaseLean3 false in
#align Bimod.tensor_Bimod.left_assoc' Bimod.TensorBimod.left_assoc'

end

section

variable [∀ X : C, PreservesColimitsOfSize.{0, 0} (tensorRight X)]

/-- Right action for the tensor product of two bimodules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43916b872ed2ecd4cc42825d465390b90d641cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
