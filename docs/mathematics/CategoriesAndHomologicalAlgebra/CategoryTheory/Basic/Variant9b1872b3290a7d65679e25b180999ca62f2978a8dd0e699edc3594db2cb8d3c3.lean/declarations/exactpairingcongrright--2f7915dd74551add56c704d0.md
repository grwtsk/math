# exactPairingCongrRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af3ae0f91cbbbce58f91294140a9d19997aac1a21c359004e9f1a0945aaf3258",
  "kind": "def",
  "lexical_name": "exactPairingCongrRight",
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
  "slug": "exactpairingcongrright--2f7915dd74551add56c704d0",
  "source": {
    "blob": "9553cc6d6a583fc0c6933e17c2595f2c34c3f031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 599,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f7915dd74551add56c704d091c2044a678565a28ca0dc72f790930224dd66c6",
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

Occurrence: `declaration:af3ae0f91cbbbce58f91294140a9d19997aac1a21c359004e9f1a0945aaf3258`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactPairingCongrRight {X Y Y' : C} [ExactPairing X Y'] (i : Y ≅ Y') : ExactPairing X Y where
  evaluation' := (i.hom ⊗ 𝟙 X) ≫ ε_ _ _
  coevaluation' := η_ _ _ ≫ (𝟙 X ⊗ i.inv)
  evaluation_coevaluation' := by
    rw [id_tensor_comp, comp_tensor_id]
    simp only [Iso.inv_hom_id_assoc, associator_conjugation, Category.assoc]
    slice_lhs 3 4 =>
      rw [← tensor_comp]
      simp
    simp
  coevaluation_evaluation' := by
    rw [id_tensor_comp, comp_tensor_id]
    slice_lhs 3 4 => rw [← associator_inv_naturality]
    slice_lhs 2 3 => rw [tensor_id, id_tensor_comp_tensor_id, ← tensor_id_comp_id_tensor]
    slice_lhs 1 2 => rw [id_tensor_comp_tensor_id, ← tensor_id_comp_id_tensor]
    slice_lhs 3 4 => rw [associator_inv_naturality]
    slice_lhs 4 5 => rw [tensor_id, id_tensor_comp_tensor_id, ← tensor_id_comp_id_tensor]
    slice_lhs 2 4 => rw [coevaluation_evaluation]
    slice_lhs 1 2 => rw [rightUnitor_naturality]
    slice_lhs 3 4 => rw [← leftUnitor_inv_naturality]
    simp
#align category_theory.exact_pairing_congr_right CategoryTheory.exactPairingCongrRight

/-- Transport an exact pairing across isomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9553cc6d6a583fc0c6933e17c2595f2c34c3f031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
