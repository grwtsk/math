# left_tensor_tensorObj₃_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a00bb81d325d9a3653af746097f859e01e6472c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d96bbf6-2d61-6d92-5640-df031160a720",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82181f80-eedd-bed5-5fc5-8f0f8597160f",
  "kind": "lemma",
  "lexical_name": "left_tensor_tensorObj₃_ext",
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
  "slug": "left-tensor-tensorobj-ext--37a74312f572130de6c9d15e",
  "source": {
    "blob": "a00bb81d325d9a3653af746097f859e01e6472c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 335,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37a74312f572130de6c9d15e8db2c0249d7d55a465f43551650589af21bf467a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82181f80-eedd-bed5-5fc5-8f0f8597160f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma left_tensor_tensorObj₃_ext {j : I} {A : C} (Z : C)
    (f g : Z ⊗ tensorObj X₁ (tensorObj X₂ X₃) j ⟶ A)
    [H : HasGoodTensorTensor₂₃ X₁ X₂ X₃]
    [hZ : HasLeftTensor₃ObjExt Z X₁ X₂ X₃ j]
    (h : ∀ (i₁ i₂ i₃ : I) (h : i₁ + i₂ + i₃ = j),
      (_ ◁ ιTensorObj₃ X₁ X₂ X₃ i₁ i₂ i₃ j h) ≫ f =
        (_ ◁ ιTensorObj₃ X₁ X₂ X₃ i₁ i₂ i₃ j h) ≫ g) : f = g := by
    refine (@isColimitOfPreserves C _ C _ _ _ _ ((curriedTensor C).obj Z) _
      (isColimitCofan₃MapBifunctorBifunctor₂₃MapObj (H := H) (j := j)) hZ).hom_ext ?_
    intro ⟨⟨i₁, i₂, i₃⟩, hi⟩
    exact h _ _ _ hi

end

section

variable (X₁ X₂ X₃ X₄ : GradedObject I C)
  [HasTensor X₃ X₄] [HasTensor X₂ (tensorObj X₃ X₄)]
  [HasTensor X₁ (tensorObj X₂ (tensorObj X₃ X₄))]

/-- The inclusion
`X₁ i₁ ⊗ X₂ i₂ ⊗ X₃ i₃ ⊗ X₄ i₄ ⟶ tensorObj X₁ (tensorObj X₂ (tensorObj X₃ X₄)) j`
when `i₁ + i₂ + i₃ + i₄ = j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4c3803621682da1807eec38f4ef9c4c65051e30c0ed766e3f9926f3490e6cd67.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00bb81d325d9a3653af746097f859e01e6472c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
