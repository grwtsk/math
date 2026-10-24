# coassoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f5ad04638c8c2700143e6a42993e0762412bfe6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fc39621-30da-79e1-a70e-3d9f17faa9bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db3fa2ab-1c7c-50d9-bc99-2c62b2e3d16b",
  "kind": "lemma",
  "lexical_name": "coassoc",
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
  "slug": "coassoc--6581cda5c8ba5eec79111acb",
  "source": {
    "blob": "8f5ad04638c8c2700143e6a42993e0762412bfe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6581cda5c8ba5eec79111acb85b6d2bbc41903ea219c579e55d63ae03cec7ce4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db3fa2ab-1c7c-50d9-bc99-2c62b2e3d16b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma coassoc :
    TensorProduct.assoc S (A ⊗[R] B) (A ⊗[R] B) (A ⊗[R] B) ∘ₗ
      (comul (R := S) (A := (A ⊗[R] B))).rTensor (A ⊗[R] B) ∘ₗ
        (comul (R := S) (A := (A ⊗[R] B))) =
    (comul (R := S) (A := (A ⊗[R] B))).lTensor (A ⊗[R] B) ∘ₗ
      (comul (R := S) (A := (A ⊗[R] B))) := by
  ext x y
  let F : A ⊗[S] (A ⊗[S] A) ⊗[R] (B ⊗[R] (B ⊗[R] B)) ≃ₗ[S]
    A ⊗[R] B ⊗[S] (A ⊗[R] B ⊗[S] (A ⊗[R] B)) :=
    AlgebraTensorModule.tensorTensorTensorComm _ _ _ _ _ _ _ _ ≪≫ₗ
      AlgebraTensorModule.congr (.refl _ _)
        (AlgebraTensorModule.tensorTensorTensorComm _ _ _ _ _ _ _ _)
  let F' : A ⊗[S] (A ⊗[S] A) ⊗[R] (B ⊗[R] (B ⊗[R] B)) →ₗ[S]
      A ⊗[R] B ⊗[S] (A ⊗[R] B ⊗[S] (A ⊗[R] B)) :=
    TensorProduct.mapOfCompatibleSMul .. ∘ₗ
        TensorProduct.map .id (TensorProduct.mapOfCompatibleSMul ..) ∘ₗ F.toLinearMap
  convert! congr(F ($(Coalgebra.coassoc_apply x) ⊗ₜ[R] $(Coalgebra.coassoc_apply y))) using 1
  · dsimp
    hopf_tensor_induction comul (R := S) x with x₁ x₂
    hopf_tensor_induction comul (R := R) y with y₁ y₂
    dsimp
    hopf_tensor_induction comul (R := S) x₁ with x₁₁ x₁₂
    hopf_tensor_induction comul (R := R) y₁ with y₁₁ y₁₂
    rfl
  · dsimp
    hopf_tensor_induction comul (R := S) x with x₁ x₂
    hopf_tensor_induction comul (R := R) y with y₁ y₂
    dsimp
    hopf_tensor_induction comul (R := S) x₂ with x₂₁ x₂₂
    hopf_tensor_induction comul (R := R) y₂ with y₂₁ y₂₂
    rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f5ad04638c8c2700143e6a42993e0762412bfe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
