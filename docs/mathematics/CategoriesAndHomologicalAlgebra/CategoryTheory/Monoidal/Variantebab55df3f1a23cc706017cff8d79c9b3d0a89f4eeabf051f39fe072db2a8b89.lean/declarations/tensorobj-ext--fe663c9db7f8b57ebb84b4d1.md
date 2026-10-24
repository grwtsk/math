# tensorObj₃_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00f033f1-ba8e-95c1-88a5-fe6ffee68645",
  "kind": "lemma",
  "lexical_name": "tensorObj₃_ext",
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
  "slug": "tensorobj-ext--fe663c9db7f8b57ebb84b4d1",
  "source": {
    "blob": "38a6529f088c789143622e57cc9a2ef5ca3be6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe663c9db7f8b57ebb84b4d19d8290ca3f8ece5f48af6e3e4e6e2517f1d22327",
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

Occurrence: `result:00f033f1-ba8e-95c1-88a5-fe6ffee68645`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorObj₃_ext {j : I} {A : C} (f g : tensorObj X₁ (tensorObj X₂ X₃) j ⟶ A)
    [H : HasGoodTensorTensor₂₃ X₁ X₂ X₃]
    (h : ∀ (i₁ i₂ i₃ : I) (hi : i₁ + i₂ + i₃ = j),
      ιTensorObj₃ X₁ X₂ X₃ i₁ i₂ i₃ j hi ≫ f = ιTensorObj₃ X₁ X₂ X₃ i₁ i₂ i₃ j hi ≫ g) :
      f = g := by
  apply mapBifunctorBifunctor₂₃MapObj_ext (H := H)
  intro i₁ i₂ i₃ hi
  exact h i₁ i₂ i₃ hi

end

section
variable [HasTensor X₁ X₂] [HasTensor (tensorObj X₁ X₂) X₃] [HasTensor Y₁ Y₂]
  [HasTensor (tensorObj Y₁ Y₂) Y₃]

/-- The inclusion `X₁ i₁ ⊗ X₂ i₂ ⊗ X₃ i₃ ⟶ tensorObj (tensorObj X₁ X₂) X₃ j`
when `i₁ + i₂ + i₃ = j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantebab55df3f1a23cc706017cff8d79c9b3d0a89f4eeabf051f39fe072db2a8b89.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38a6529f088c789143622e57cc9a2ef5ca3be6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
