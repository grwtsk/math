# hexagon_forward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:388f53e9-f20d-1de6-c206-df4d2188357d",
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
  "slug": "hexagon-forward--d763d8bd99752c61f189e0a4",
  "source": {
    "blob": "66ebc79848cfe35f6dd1e41ab2f9a99f3b46dcd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d763d8bd99752c61f189e0a41d78244bf89665ccff028fe2ccbd83825e6c35cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:388f53e9-f20d-1de6-c206-df4d2188357d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hexagon_forward [HasTensor X Y] [HasTensor Y X] [HasTensor Y Z]
    [HasTensor Z X] [HasTensor X Z]
    [HasTensor (tensorObj X Y) Z] [HasTensor X (tensorObj Y Z)]
    [HasTensor (tensorObj Y Z) X] [HasTensor Y (tensorObj Z X)]
    [HasTensor (tensorObj Y X) Z] [HasTensor Y (tensorObj X Z)]
    [HasGoodTensor₁₂Tensor X Y Z] [HasGoodTensorTensor₂₃ X Y Z]
    [HasGoodTensor₁₂Tensor Y Z X] [HasGoodTensorTensor₂₃ Y Z X]
    [HasGoodTensor₁₂Tensor Y X Z] [HasGoodTensorTensor₂₃ Y X Z] :
    (associator X Y Z).hom ≫ (braiding X (tensorObj Y Z)).hom ≫ (associator Y Z X).hom =
      whiskerRight (braiding X Y).hom Z ≫ (associator Y X Z).hom ≫
        whiskerLeft Y (braiding X Z).hom := by
  ext k i₁ i₂ i₃ h
  dsimp [braiding]
  conv_lhs => rw [ιTensorObj₃'_associator_hom_assoc, ιTensorObj₃_eq X Y Z i₁ i₂ i₃ k h _ rfl,
    assoc, ι_tensorObjDesc_assoc, assoc, ← MonoidalCategory.id_tensorHom,
    BraidedCategory.braiding_naturality_assoc,
    BraidedCategory.braiding_tensor_right_hom, assoc, assoc, assoc, assoc, Iso.hom_inv_id_assoc,
    MonoidalCategory.tensorHom_id,
    ← ιTensorObj₃'_eq_assoc Y Z X i₂ i₃ i₁ k (by rw [add_comm _ i₁, ← add_assoc, h]) _ rfl,
    ιTensorObj₃'_associator_hom, Iso.inv_hom_id_assoc]
  conv_rhs => rw [ιTensorObj₃'_eq X Y Z i₁ i₂ i₃ k h _ rfl, assoc, ι_tensorHom_assoc,
    ← MonoidalCategory.tensorHom_id,
    MonoidalCategory.tensorHom_comp_tensorHom_assoc, id_comp, ι_tensorObjDesc,
    categoryOfGradedObjects_id, MonoidalCategory.comp_tensor_id, assoc,
    MonoidalCategory.tensorHom_id, MonoidalCategory.tensorHom_id,
    ← ιTensorObj₃'_eq_assoc Y X Z i₂ i₁ i₃ k
      (by rw [add_comm i₂ i₁, h]) (i₁ + i₂) (add_comm i₂ i₁),
    ιTensorObj₃'_associator_hom_assoc,
    ιTensorObj₃_eq Y X Z i₂ i₁ i₃ k (by rw [add_comm i₂ i₁, h]) _ rfl, assoc,
    ι_tensorHom, categoryOfGradedObjects_id, ← MonoidalCategory.tensorHom_id,
    ← MonoidalCategory.id_tensorHom,
    ← MonoidalCategory.id_tensor_comp_assoc,
    ι_tensorObjDesc, MonoidalCategory.id_tensor_comp, assoc,
    ← MonoidalCategory.id_tensor_comp_assoc, MonoidalCategory.tensorHom_id,
    MonoidalCategory.id_tensorHom, MonoidalCategory.whiskerLeft_comp, assoc,
    ← ιTensorObj₃_eq Y Z X i₂ i₃ i₁ k (by rw [add_comm _ i₁, ← add_assoc, h])
      (i₁ + i₃) (add_comm _ _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ebc79848cfe35f6dd1e41ab2f9a99f3b46dcd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
