# coassoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fd1301b-e871-24f1-f0d3-9f06b70207dd",
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
  "slug": "coassoc--697dfb0ccd649ba0791877fd",
  "source": {
    "blob": "fa06d839837963a08c4de3378a3d6a7ca006d118",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:697dfb0ccd649ba0791877fdcde0ef0aace1b0db763b932ee813822ca324b261",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fd1301b-e871-24f1-f0d3-9f06b70207dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma coassoc :
    TensorProduct.assoc R (A ⊗[R] B) (A ⊗[R] B) (A ⊗[R] B) ∘ₗ
      (comul (R := R) (A := (A ⊗[R] B))).rTensor (A ⊗[R] B) ∘ₗ
        (comul (R := R) (A := (A ⊗[R] B))) =
    (comul (R := R) (A := (A ⊗[R] B))).lTensor (A ⊗[R] B) ∘ₗ
      (comul (R := R) (A := (A ⊗[R] B))) := by
  ext x y
  let F : (A ⊗[R] A ⊗[R] A) ⊗[R] (B ⊗[R] B ⊗[R] B) ≃ₗ[R]
    (A ⊗[R] B) ⊗[R] (A ⊗[R] B) ⊗[R] A ⊗[R] B :=
    AlgebraTensorModule.tensorTensorTensorComm _ _ _ _ _ _ ≪≫ₗ
      AlgebraTensorModule.congr (.refl _ _)
        (AlgebraTensorModule.tensorTensorTensorComm _ _ _ _ _ _)
  let F' : (A ⊗[R] A ⊗[R] A) ⊗[R] (B ⊗[R] B ⊗[R] B) →ₗ[R]
      (A ⊗[R] B) ⊗[R] (A ⊗[R] B) ⊗[R] A ⊗[R] B :=
    TensorProduct.mapOfCompatibleSMul _ _ _ _ ∘ₗ
        TensorProduct.map .id (TensorProduct.mapOfCompatibleSMul _ _ _ _) ∘ₗ F.toLinearMap
  convert congr(F ($(Coalgebra.coassoc_apply x) ⊗ₜ[R] $(Coalgebra.coassoc_apply y))) using 1
  · dsimp
    hopf_tensor_induction comul (R := R) x with x₁ x₂
    hopf_tensor_induction comul (R := R) y with y₁ y₂
    dsimp
    hopf_tensor_induction comul (R := R) x₁ with x₁₁ x₁₂
    hopf_tensor_induction comul (R := R) y₁ with y₁₁ y₁₂
    rfl
  · dsimp
    hopf_tensor_induction comul (R := R) x with x₁ x₂
    hopf_tensor_induction comul (R := R) y with y₁ y₂
    dsimp
    hopf_tensor_induction comul (R := R) x₂ with x₂₁ x₂₂
    hopf_tensor_induction comul (R := R) y₂ with y₂₁ y₂₂
    rfl

noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa06d839837963a08c4de3378a3d6a7ca006d118` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
