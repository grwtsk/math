# tensor_associativity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f19575808d05d4aa3ccff249a8334127d21abe6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 632,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b1f053b-24a8-8629-a964-6be826f2dbf3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9504ff8-54fc-81b7-74c6-c2dccee8b4a8",
  "kind": "theorem",
  "lexical_name": "tensor_associativity",
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
  "slug": "tensor-associativity--dc562cac7ba63363bf1b8372",
  "source": {
    "blob": "f19575808d05d4aa3ccff249a8334127d21abe6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 632,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc562cac7ba63363bf1b837250194bf749ebed80bea2856f2c9033e91b5325b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9504ff8-54fc-81b7-74c6-c2dccee8b4a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensor_associativity (X₁ X₂ Y₁ Y₂ Z₁ Z₂ : C) :
    (tensorμ X₁ X₂ Y₁ Y₂ ▷ (Z₁ ⊗ Z₂)) ≫
        tensorμ (X₁ ⊗ Y₁) (X₂ ⊗ Y₂) Z₁ Z₂ ≫ ((α_ X₁ Y₁ Z₁).hom ⊗ (α_ X₂ Y₂ Z₂).hom) =
      (α_ (X₁ ⊗ X₂) (Y₁ ⊗ Y₂) (Z₁ ⊗ Z₂)).hom ≫
        ((X₁ ⊗ X₂) ◁ tensorμ Y₁ Y₂ Z₁ Z₂) ≫ tensorμ X₁ X₂ (Y₁ ⊗ Z₁) (Y₂ ⊗ Z₂) := by
  dsimp only [tensor_obj, prodMonoidal_tensorObj, tensorμ]
  simp only [braiding_tensor_left, braiding_tensor_right]
  calc
    _ = 𝟙 _ ⊗≫
      X₁ ◁ ((β_ X₂ Y₁).hom ▷ (Y₂ ⊗ Z₁) ≫ (Y₁ ⊗ X₂) ◁ (β_ Y₂ Z₁).hom) ▷ Z₂ ⊗≫
        X₁ ◁ Y₁ ◁ (β_ X₂ Z₁).hom ▷ Y₂ ▷ Z₂ ⊗≫ 𝟙 _ := by monoidal
    _ = _ := by rw [← whisker_exchange]; monoidal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc7641f5b7c9c2470d01e93fc57a243a2ecb56cce5ad2fe234c381d5388531d8.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f19575808d05d4aa3ccff249a8334127d21abe6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
