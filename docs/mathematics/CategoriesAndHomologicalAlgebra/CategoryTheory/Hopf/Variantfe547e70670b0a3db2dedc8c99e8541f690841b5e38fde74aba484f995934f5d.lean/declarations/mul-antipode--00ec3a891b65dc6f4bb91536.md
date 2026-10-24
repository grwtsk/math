# mul_antipode₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50d569a8-ca36-b3cd-2a39-a123242974fb",
  "kind": "theorem",
  "lexical_name": "mul_antipode₂",
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
  "slug": "mul-antipode--00ec3a891b65dc6f4bb91536",
  "source": {
    "blob": "05e092319b760c3557eaa999efeb961c644b14af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 345,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00ec3a891b65dc6f4bb915365f20c8a94f5e2e095c48b5455ce0048834338bd8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d569a8-ca36-b3cd-2a39-a123242974fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_antipode₂ (A : Hopf_ C) :
    (A.X.comul.hom ⊗ A.X.comul.hom) ≫
      (α_ A.X.X.X A.X.X.X (A.X.X.X ⊗ A.X.X.X)).hom ≫
      A.X.X.X ◁ (α_ A.X.X.X A.X.X.X A.X.X.X).inv ≫
      A.X.X.X ◁ (β_ A.X.X.X A.X.X.X).hom ▷ A.X.X.X ≫
      (α_ A.X.X.X (A.X.X.X ⊗ A.X.X.X) A.X.X.X).inv ≫
      (α_ A.X.X.X A.X.X.X A.X.X.X).inv ▷ A.X.X.X ≫
      A.X.X.mul ▷ A.X.X.X ▷ A.X.X.X ≫
      (α_ A.X.X.X A.X.X.X A.X.X.X).hom ≫
      A.X.X.X ◁ (β_ A.X.X.X A.X.X.X).hom ≫
      A.X.X.X ◁ (A.antipode ⊗ A.antipode) ≫
      A.X.X.X ◁ A.X.X.mul ≫ A.X.X.mul =
    (A.X.counit.hom ⊗ A.X.counit.hom) ≫ (λ_ (𝟙_ C)).hom ≫ A.X.X.one := by
  slice_lhs 7 8 =>
    rw [associator_naturality_left]
  slice_lhs 8 9 =>
    rw [← whisker_exchange]
  slice_lhs 9 10 =>
    rw [← whisker_exchange]
  slice_lhs 11 12 =>
    rw [Mon_.mul_assoc_flip]
  slice_lhs 10 11 =>
    rw [associator_inv_naturality_left]
  slice_lhs 11 12 =>
    simp only [← comp_whiskerRight]
    rw [Mon_.mul_assoc]
    simp only [comp_whiskerRight]
  rw [tensorHom_def]
  rw [tensor_whiskerLeft]
  rw [pentagon_inv_inv_hom_hom_inv_assoc]
  slice_lhs 7 8 =>
    rw [Iso.inv_hom_id]
  rw [Category.id_comp]
  slice_lhs 5 7 =>
    simp only [← MonoidalCategory.whiskerLeft_comp]
    rw [← BraidedCategory.hexagon_forward]
    simp only [MonoidalCategory.whiskerLeft_comp]
  simp only [Mon_.monMonoidalStruct_tensorObj_X, tensor_whiskerLeft,
    MonoidalCategory.whiskerLeft_comp, Category.assoc,
    whiskerLeft_inv_hom, Category.comp_id, whiskerLeft_hom_inv_assoc, Iso.inv_hom_id_assoc,
    pentagon_inv_inv_hom_inv_inv, whisker_assoc, Mon_.mul_assoc, Mon_.tensorUnit_X]
  slice_lhs 4 5 =>
    simp only [← MonoidalCategory.whiskerLeft_comp]
    rw [Iso.inv_hom_id]
    simp only [MonoidalCategory.whiskerLeft_comp]
  rw [MonoidalCategory.whiskerLeft_id, Category.id_comp]
  slice_lhs 3 4 =>
    simp only [← MonoidalCategory.whiskerLeft_comp]
    rw [BraidedCategory.braiding_naturality_right]
    simp only [MonoidalCategory.whiskerLeft_comp]
  rw [tensorHom_def']
  simp only [MonoidalCategory.whiskerLeft_comp]
  slice_lhs 5 6 =>
    simp only [← MonoidalCategory.whiskerLeft_comp]
    rw [← associator_naturality_right]
    simp only [MonoidalCategory.whiskerLeft_comp]
  slice_lhs 4 5 =>
    simp only [← MonoidalCategory.whiskerLeft_comp]
    rw [← whisker_exchange]
    simp only [MonoidalCategory.whiskerLeft_comp]
  slice_lhs 5 9 =>
    simp only [← MonoidalCategory.whiskerLeft_comp]
    rw [associator_inv_naturality_middle_assoc, Iso.hom_inv_id_assoc]
    simp only [← comp_whiskerRight]
    rw [antipode_right]
    simp only [comp_whiskerRight]
    simp only [MonoidalCategory.whiskerLeft_comp]
  slice_lhs 6 7 =>
    simp only [← MonoidalCategory.whiskerLeft_comp]
    rw [A.X.X.one_mul]
    simp only [MonoidalCategory.whiskerLeft_comp]
  slice_lhs 3 4 =>
    simp only [← MonoidalCategory.whiskerLeft_comp]
    rw [← BraidedCategory.braiding_naturality_left]
    simp only [MonoidalCategory.whiskerLeft_comp]
  slice_lhs 4 5 =>
    simp only [← MonoidalCategory.whiskerLeft_comp]
    rw [← BraidedCategory.braiding_naturality_right]
    simp only [MonoidalCategory.whiskerLeft_comp]
  rw [← associator_naturality_middle_assoc]
  simp only [Mon_.tensorUnit_X, braiding_tensorUnit_right, MonoidalCategory.whiskerLeft_comp]
  slice_lhs 6 7 =>
    simp only [← MonoidalCategory.whiskerLeft_comp]
    rw [Iso.inv_hom_id]
    simp only [MonoidalCategory.whiskerLeft_comp]
  simp only [MonoidalCategory.whiskerLeft_id, Category.id_comp]
  slice_lhs 5 6 =>
    rw [whiskerLeft_rightUnitor, Category.assoc, ← rightUnitor_naturality]
  rw [associator_inv_naturality_right_assoc, Iso.hom_inv_id_assoc]
  slice_lhs 3 4 =>
    rw [whisker_exchange]
  slice_lhs 1 3 =>
    simp only [← comp_whiskerRight]
    rw [antipode_right]
    simp only [comp_whiskerRight]
  slice_lhs 2 3 =>
    rw [← whisker_exchange]
  slice_lhs 1 2 =>
    dsimp
    rw [← tensorHom_def]
  slice_lhs 2 3 =>
    rw [rightUnitor_naturality]
  simp only [Mon_.tensorUnit_X]
  monoidal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e092319b760c3557eaa999efeb961c644b14af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
