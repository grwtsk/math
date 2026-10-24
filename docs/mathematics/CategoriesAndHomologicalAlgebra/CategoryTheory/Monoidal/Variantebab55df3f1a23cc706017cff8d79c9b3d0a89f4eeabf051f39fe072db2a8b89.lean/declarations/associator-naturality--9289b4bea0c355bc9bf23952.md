# associator_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dcf9688-d313-7194-9b65-97ff8fdc9fb3",
  "kind": "lemma",
  "lexical_name": "associator_naturality",
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
  "slug": "associator-naturality--9289b4bea0c355bc9bf23952",
  "source": {
    "blob": "38a6529f088c789143622e57cc9a2ef5ca3be6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 318,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9289b4bea0c355bc9bf23952f63a67ad9a6715ff0a1e77533d63c7a5ad8ae5f6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dcf9688-d313-7194-9b65-97ff8fdc9fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma associator_naturality (f₁ : X₁ ⟶ Y₁) (f₂ : X₂ ⟶ Y₂) (f₃ : X₃ ⟶ Y₃)
    [HasGoodTensor₁₂Tensor X₁ X₂ X₃] [HasGoodTensorTensor₂₃ X₁ X₂ X₃]
    [HasGoodTensor₁₂Tensor Y₁ Y₂ Y₃] [HasGoodTensorTensor₂₃ Y₁ Y₂ Y₃] :
    tensorHom (tensorHom f₁ f₂) f₃ ≫ (associator Y₁ Y₂ Y₃).hom =
      (associator X₁ X₂ X₃).hom ≫ tensorHom f₁ (tensorHom f₂ f₃) := by
        #adaptation_note /-- https://github.com/leanprover/lean4/pull/4154
        this used to be aesop_cat -/
        ext x i₁ i₂ i₃ h : 2
        simp only [categoryOfGradedObjects_comp, ιTensorObj₃'_tensorHom_assoc,
          associator_conjugation, ιTensorObj₃'_associator_hom, assoc, Iso.inv_hom_id_assoc,
          ιTensorObj₃'_associator_hom_assoc, ιTensorObj₃_tensorHom]

end

/-- Given `Z : C` and three graded objects `X₁`, `X₂` and `X₃` in `GradedObject I C`,
this typeclass expresses that functor `Z ⊗ _` commutes with the coproduct of
the objects `X₁ i₁ ⊗ (X₂ i₂ ⊗ X₃ i₃)` such that `i₁ + i₂ + i₃ = j` for a certain `j`.
See lemma `left_tensor_tensorObj₃_ext`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38a6529f088c789143622e57cc9a2ef5ca3be6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
