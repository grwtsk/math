# exactPairingCongrLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76cb591e8723506d741feacd6779095ed524edd7bcf465186f90c69de80c9815",
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
  "slug": "exactpairingcongrleft--cd739d002a9ba7e08c332362",
  "source": {
    "blob": "ff16d3c8af4b12fe5d7d5d7c9600dec0816b6b5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 567,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd739d002a9ba7e08c332362d94eac0c7717c1c1a83e4ac7d1941f1dcb97c488",
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

Occurrence: `declaration:76cb591e8723506d741feacd6779095ed524edd7bcf465186f90c69de80c9815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–590.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff16d3c8af4b12fe5d7d5d7c9600dec0816b6b5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
