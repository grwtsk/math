# comp_leftAdjointMate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b5e50cc-63db-fb76-4c1e-151beeab3eab",
  "kind": "theorem",
  "lexical_name": "comp_leftAdjointMate",
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
  "slug": "comp-leftadjointmate--c57eeb58a9cd318b2e73022a",
  "source": {
    "blob": "9553cc6d6a583fc0c6933e17c2595f2c34c3f031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 264,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c57eeb58a9cd318b2e73022a1700c7a19f8f09433d6159d8a8f3d9aac09b01f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b5e50cc-63db-fb76-4c1e-151beeab3eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_leftAdjointMate {X Y Z : C} [HasLeftDual X] [HasLeftDual Y] [HasLeftDual Z] {f : X ⟶ Y}
    {g : Y ⟶ Z} : (ᘁf ≫ g) = (ᘁg) ≫ ᘁf := by
  rw [leftAdjointMate_comp]
  simp only [leftAdjointMate, id_tensor_comp, Iso.cancel_iso_inv_left, comp_tensor_id,
    Category.assoc]
  symm
  iterate 5
    trans
    rw [← Category.id_comp g, tensor_comp]
  rw [← Category.assoc]
  symm
  iterate 2
    trans
    rw [← Category.assoc]
  apply eq_whisker
  repeat'
    -- Porting note: why do we need to fill in the implicit `C` here, and below?
    rw [← @comp_tensor_id C]
  congr 1
  rw [← tensor_id_comp_id_tensor g (ρ_ (ᘁX)).hom, leftUnitor_inv_tensor_id, Category.assoc,
    Category.assoc, leftUnitor_inv_naturality_assoc, ← associator_inv_naturality_assoc, tensor_id,
    id_tensor_comp_tensor_id_assoc, ← associator_inv_naturality_assoc]
  slice_rhs 2 3 =>
    rw [← tensor_comp, tensor_id, Category.comp_id, ← Category.id_comp (η_ (ᘁY) Y), tensor_comp]
  rw [← tensor_id_comp_id_tensor (η_ (ᘁY) Y), ← tensor_id]
  repeat' rw [@Category.assoc C]
  rw [pentagon_inv_hom_assoc, ← associator_inv_naturality_assoc, associator_naturality_assoc]
  slice_rhs 5 7 => rw [← id_tensor_comp, ← id_tensor_comp, coevaluation_evaluation, id_tensor_comp]
  rw [associator_naturality_assoc]
  slice_rhs 4 5 => rw [← tensor_comp, rightUnitor_naturality, tensor_comp]
  repeat' rw [@Category.assoc C]
  rw [triangle_assoc_comp_left_inv_assoc, ← rightUnitor_tensor_assoc,
    rightUnitor_naturality_assoc, ← unitors_equal, ← Category.assoc, ← Category.assoc]
  simp
#align category_theory.comp_left_adjoint_mate CategoryTheory.comp_leftAdjointMate

/-- Given an exact pairing on `Y Y'`,
we get a bijection on hom-sets `(Y' ⊗ X ⟶ Z) ≃ (X ⟶ Y ⊗ Z)`
by "pulling the string on the left" up or down.

This gives the adjunction `tensorLeftAdjunction Y Y' : tensorLeft Y' ⊣ tensorLeft Y`.

This adjunction is often referred to as "Frobenius reciprocity" in the
fusion categories / planar algebras / subfactors literature.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9553cc6d6a583fc0c6933e17c2595f2c34c3f031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
