# gradedComm_of_zero_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:083dd660-fa70-7a0b-7f4f-c9d28adfbcff",
  "kind": "theorem",
  "lexical_name": "gradedComm_of_zero_tmul",
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
  "slug": "gradedcomm-of-zero-tmul--e528b5b22e4e07e40dccbfa0",
  "source": {
    "blob": "b15b3543350880819b600e9be2ffcda9f1212201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e528b5b22e4e07e40dccbfa0ce2a49d66868eb05a77da2418acdbb969464b1db",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:083dd660-fa70-7a0b-7f4f-c9d28adfbcff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedComm_of_zero_tmul (a : 𝒜 0) (b : ⨁ i, ℬ i) :
    gradedComm R 𝒜 ℬ (lof R _ 𝒜 0 a ⊗ₜ b) = b ⊗ₜ lof R _ 𝒜 _ a := by
  suffices
    (gradedComm R 𝒜 ℬ).toLinearMap ∘ₗ (TensorProduct.mk R (⨁ i, 𝒜 i) (⨁ i, ℬ i)) (lof R _ 𝒜 0 a) =
      (TensorProduct.mk R _ _).flip (lof R _ 𝒜 0 a) from
    DFunLike.congr_fun this b
  ext i b
  dsimp
  rw [gradedComm_of_tmul_of, mul_zero, uzpow_zero, one_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b15b3543350880819b600e9be2ffcda9f1212201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
