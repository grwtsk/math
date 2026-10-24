# tensorLeftHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59f7bb531effb508b2be48a8938b9bdb385f418f6f6ad366ce609423f79e4f84",
  "kind": "def",
  "lexical_name": "tensorLeftHomEquiv",
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
  "slug": "tensorlefthomequiv--9973d2dd5e0fa3b05a1afca6",
  "source": {
    "blob": "9553cc6d6a583fc0c6933e17c2595f2c34c3f031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 309,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9973d2dd5e0fa3b05a1afca64be5451575090da615249f31a48b6b123ae3fb35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59f7bb531effb508b2be48a8938b9bdb385f418f6f6ad366ce609423f79e4f84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorLeftHomEquiv (X Y Y' Z : C) [ExactPairing Y Y'] : (Y' ⊗ X ⟶ Z) ≃ (X ⟶ Y ⊗ Z) where
  toFun f := (λ_ _).inv ≫ (η_ _ _ ⊗ 𝟙 _) ≫ (α_ _ _ _).hom ≫ (𝟙 _ ⊗ f)
  invFun f := (𝟙 Y' ⊗ f) ≫ (α_ _ _ _).inv ≫ (ε_ _ _ ⊗ 𝟙 _) ≫ (λ_ _).hom
  left_inv f := by
    dsimp
    simp only [id_tensor_comp]
    slice_lhs 4 5 => rw [associator_inv_naturality]
    slice_lhs 5 6 => rw [tensor_id, id_tensor_comp_tensor_id, ← tensor_id_comp_id_tensor]
    slice_lhs 2 5 => simp only [← tensor_id, associator_inv_conjugation]
    have c :
      (α_ Y' (Y ⊗ Y') X).hom ≫
          (𝟙 Y' ⊗ (α_ Y Y' X).hom) ≫ (α_ Y' Y (Y' ⊗ X)).inv ≫ (α_ (Y' ⊗ Y) Y' X).inv =
        (α_ _ _ _).inv ⊗ 𝟙 _
    pure_coherence
    slice_lhs 4 7 => rw [c]
    slice_lhs 3 5 => rw [← comp_tensor_id, ← comp_tensor_id, coevaluation_evaluation]
    simp only [leftUnitor_conjugation]
    coherence
  right_inv f := by
    dsimp
    simp only [id_tensor_comp]
    slice_lhs 3 4 => rw [← associator_naturality]
    slice_lhs 2 3 => rw [tensor_id, tensor_id_comp_id_tensor, ← id_tensor_comp_tensor_id]
    slice_lhs 3 6 => simp only [← tensor_id, associator_inv_conjugation]
    have c :
      (α_ (Y ⊗ Y') Y Z).hom ≫
          (α_ Y Y' (Y ⊗ Z)).hom ≫ (𝟙 Y ⊗ (α_ Y' Y Z).inv) ≫ (α_ Y (Y' ⊗ Y) Z).inv =
        (α_ _ _ _).hom ⊗ 𝟙 Z
    pure_coherence
    slice_lhs 5 8 => rw [c]
    slice_lhs 4 6 => rw [← comp_tensor_id, ← comp_tensor_id, evaluation_coevaluation]
    simp only [leftUnitor_conjugation]
    coherence
#align category_theory.tensor_left_hom_equiv CategoryTheory.tensorLeftHomEquiv

/-- Given an exact pairing on `Y Y'`,
we get a bijection on hom-sets `(X ⊗ Y ⟶ Z) ≃ (X ⟶ Z ⊗ Y')`
by "pulling the string on the right" up or down.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9553cc6d6a583fc0c6933e17c2595f2c34c3f031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
