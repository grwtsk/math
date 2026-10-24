# tensorRightHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fa51329b08bd3af63d6b50a474fbcaf058d7099017f08c233e22dc45c2980da",
  "kind": "def",
  "lexical_name": "tensorRightHomEquiv",
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
  "slug": "tensorrighthomequiv--d37019f82153f2fde18601eb",
  "source": {
    "blob": "ff16d3c8af4b12fe5d7d5d7c9600dec0816b6b5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 340,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d37019f82153f2fde18601eb2d409aa1151623d0022214d6c505023bfbebf29a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fa51329b08bd3af63d6b50a474fbcaf058d7099017f08c233e22dc45c2980da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorRightHomEquiv (X Y Y' Z : C) [ExactPairing Y Y'] : (X ⊗ Y ⟶ Z) ≃ (X ⟶ Z ⊗ Y') where
  toFun f := (ρ_ _).inv ≫ (𝟙 _ ⊗ η_ _ _) ≫ (α_ _ _ _).inv ≫ (f ⊗ 𝟙 _)
  invFun f := (f ⊗ 𝟙 _) ≫ (α_ _ _ _).hom ≫ (𝟙 _ ⊗ ε_ _ _) ≫ (ρ_ _).hom
  left_inv f := by
    dsimp
    simp only [comp_tensor_id]
    slice_lhs 4 5 => rw [associator_naturality]
    slice_lhs 5 6 => rw [tensor_id, tensor_id_comp_id_tensor, ← id_tensor_comp_tensor_id]
    slice_lhs 2 5 => simp only [← tensor_id, associator_conjugation]
    have c :
      (α_ X (Y ⊗ Y') Y).inv ≫
          ((α_ X Y Y').inv ⊗ 𝟙 Y) ≫ (α_ (X ⊗ Y) Y' Y).hom ≫ (α_ X Y (Y' ⊗ Y)).hom =
        𝟙 _ ⊗ (α_ _ _ _).hom
    pure_coherence
    slice_lhs 4 7 => rw [c]
    slice_lhs 3 5 => rw [← id_tensor_comp, ← id_tensor_comp, evaluation_coevaluation]
    simp only [rightUnitor_conjugation]
    coherence
  right_inv f := by
    dsimp
    simp only [comp_tensor_id]
    slice_lhs 3 4 => rw [← associator_inv_naturality]
    slice_lhs 2 3 => rw [tensor_id, id_tensor_comp_tensor_id, ← tensor_id_comp_id_tensor]
    slice_lhs 3 6 => simp only [← tensor_id, associator_conjugation]
    have c :
      (α_ Z Y' (Y ⊗ Y')).inv ≫
          (α_ (Z ⊗ Y') Y Y').inv ≫ ((α_ Z Y' Y).hom ⊗ 𝟙 Y') ≫ (α_ Z (Y' ⊗ Y) Y').hom =
        𝟙 _ ⊗ (α_ _ _ _).inv
    pure_coherence
    slice_lhs 5 8 => rw [c]
    slice_lhs 4 6 => rw [← id_tensor_comp, ← id_tensor_comp, coevaluation_evaluation]
    simp only [rightUnitor_conjugation]
    coherence
#align category_theory.tensor_right_hom_equiv CategoryTheory.tensorRightHomEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff16d3c8af4b12fe5d7d5d7c9600dec0816b6b5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
