# exactPairingCongrLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09a4dae0c21da3c575bc6a75bba5cc13b1bd75812905eac27729ddd6ad16f3c1",
  "kind": "def",
  "lexical_name": "exactPairingCongrLeft",
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
  "slug": "exactpairingcongrleft--f91c8ddcc047c72abb7bac56",
  "source": {
    "blob": "9553cc6d6a583fc0c6933e17c2595f2c34c3f031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 575,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f91c8ddcc047c72abb7bac56d17414d42ec7072a144696851214b4189e47f399",
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

Occurrence: `declaration:09a4dae0c21da3c575bc6a75bba5cc13b1bd75812905eac27729ddd6ad16f3c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactPairingCongrLeft {X X' Y : C} [ExactPairing X' Y] (i : X ≅ X') : ExactPairing X Y where
  evaluation' := (𝟙 Y ⊗ i.hom) ≫ ε_ _ _
  coevaluation' := η_ _ _ ≫ (i.inv ⊗ 𝟙 Y)
  evaluation_coevaluation' := by
    rw [id_tensor_comp, comp_tensor_id]
    slice_lhs 2 3 => rw [associator_naturality]
    slice_lhs 3 4 => rw [tensor_id, tensor_id_comp_id_tensor, ← id_tensor_comp_tensor_id]
    slice_lhs 4 5 => rw [tensor_id_comp_id_tensor, ← id_tensor_comp_tensor_id]
    slice_lhs 2 3 => rw [← associator_naturality]
    slice_lhs 1 2 => rw [tensor_id, tensor_id_comp_id_tensor, ← id_tensor_comp_tensor_id]
    slice_lhs 2 4 => rw [evaluation_coevaluation]
    slice_lhs 1 2 => rw [leftUnitor_naturality]
    slice_lhs 3 4 => rw [← rightUnitor_inv_naturality]
    simp
  coevaluation_evaluation' := by
    rw [id_tensor_comp, comp_tensor_id]
    simp only [Iso.inv_hom_id_assoc, associator_conjugation, Category.assoc]
    slice_lhs 2 3 =>
      rw [← tensor_comp]
      simp
    simp
#align category_theory.exact_pairing_congr_left CategoryTheory.exactPairingCongrLeft

/-- Transport an exact pairing across an isomorphism in the second argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9553cc6d6a583fc0c6933e17c2595f2c34c3f031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
