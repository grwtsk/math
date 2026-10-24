# hexagon_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45969916-229b-d3fb-4abc-02e3dd0d3abe",
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
  "slug": "hexagon-reverse--be590147640e2d0e65a7f09c",
  "source": {
    "blob": "66ebc79848cfe35f6dd1e41ab2f9a99f3b46dcd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be590147640e2d0e65a7f09cb830304570e790fff828740fe636e34942f456d9",
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

Occurrence: `result:45969916-229b-d3fb-4abc-02e3dd0d3abe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hexagon_reverse [HasTensor X Y] [HasTensor Y Z] [HasTensor Z X]
    [HasTensor Z Y] [HasTensor X Z]
    [HasTensor (tensorObj X Y) Z] [HasTensor X (tensorObj Y Z)]
    [HasTensor Z (tensorObj X Y)] [HasTensor (tensorObj Z X) Y]
    [HasTensor X (tensorObj Z Y)] [HasTensor (tensorObj X Z) Y]
    [HasGoodTensor₁₂Tensor X Y Z] [HasGoodTensorTensor₂₃ X Y Z]
    [HasGoodTensor₁₂Tensor Z X Y] [HasGoodTensorTensor₂₃ Z X Y]
    [HasGoodTensor₁₂Tensor X Z Y] [HasGoodTensorTensor₂₃ X Z Y] :
    (associator X Y Z).inv ≫ (braiding (tensorObj X Y) Z).hom ≫ (associator Z X Y).inv =
      whiskerLeft X (braiding Y Z).hom ≫ (associator X Z Y).inv ≫
        whiskerRight (braiding X Z).hom Y := by
  ext k i₁ i₂ i₃ h
  dsimp [braiding]
  conv_lhs => rw [ιTensorObj₃_associator_inv_assoc, ιTensorObj₃'_eq X Y Z i₁ i₂ i₃ k h _ rfl, assoc,
    ι_tensorObjDesc_assoc, assoc, ← MonoidalCategory.tensorHom_id,
    BraidedCategory.braiding_naturality_assoc,
    BraidedCategory.braiding_tensor_left_hom, assoc, assoc, assoc, assoc, Iso.inv_hom_id_assoc,
    MonoidalCategory.id_tensorHom,
    ← ιTensorObj₃_eq_assoc Z X Y i₃ i₁ i₂ k (by rw [add_assoc, add_comm i₃, h]) _ rfl,
    ιTensorObj₃_associator_inv, Iso.hom_inv_id_assoc]
  conv_rhs => rw [ιTensorObj₃_eq X Y Z i₁ i₂ i₃ k h _ rfl, assoc, ι_tensorHom_assoc,
    ← MonoidalCategory.id_tensorHom,
    MonoidalCategory.tensorHom_comp_tensorHom_assoc, id_comp, ι_tensorObjDesc,
    categoryOfGradedObjects_id, MonoidalCategory.id_tensor_comp, assoc,
    MonoidalCategory.id_tensorHom, MonoidalCategory.id_tensorHom,
    ← ιTensorObj₃_eq_assoc X Z Y i₁ i₃ i₂ k
      (by rw [add_assoc, add_comm i₃, ← add_assoc, h]) (i₂ + i₃) (add_comm _ _),
    ιTensorObj₃_associator_inv_assoc,
    ιTensorObj₃'_eq X Z Y i₁ i₃ i₂ k (by rw [add_assoc, add_comm i₃, ← add_assoc, h]) _ rfl,
    assoc, ι_tensorHom, categoryOfGradedObjects_id, ← MonoidalCategory.tensorHom_id,
    ← MonoidalCategory.comp_tensor_id_assoc,
    ι_tensorObjDesc, MonoidalCategory.comp_tensor_id, assoc,
    MonoidalCategory.tensorHom_id, MonoidalCategory.tensorHom_id,
    ← ιTensorObj₃'_eq Z X Y i₃ i₁ i₂ k (by rw [add_assoc, add_comm i₃, h])
      (i₁ + i₃) (add_comm _ _)]

end Braided

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ebc79848cfe35f6dd1e41ab2f9a99f3b46dcd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
