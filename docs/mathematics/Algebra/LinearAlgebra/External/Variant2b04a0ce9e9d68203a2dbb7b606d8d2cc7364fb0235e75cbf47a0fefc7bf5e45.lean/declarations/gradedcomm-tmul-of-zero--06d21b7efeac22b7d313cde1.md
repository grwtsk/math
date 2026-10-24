# gradedComm_tmul_of_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e51c597-aa56-cd56-a75a-7395cbdd2266",
  "kind": "theorem",
  "lexical_name": "gradedComm_tmul_of_zero",
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
  "slug": "gradedcomm-tmul-of-zero--06d21b7efeac22b7d313cde1",
  "source": {
    "blob": "b15b3543350880819b600e9be2ffcda9f1212201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06d21b7efeac22b7d313cde1fb7a67603035f78bac29e1d6062f996042e5fc34",
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

Occurrence: `result:5e51c597-aa56-cd56-a75a-7395cbdd2266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedComm_tmul_of_zero (a : ⨁ i, 𝒜 i) (b : ℬ 0) :
    gradedComm R 𝒜 ℬ (a ⊗ₜ lof R _ ℬ 0 b) = lof R _ ℬ _ b ⊗ₜ a := by
  suffices
    (gradedComm R 𝒜 ℬ).toLinearMap ∘ₗ
        (TensorProduct.mk R (⨁ i, 𝒜 i) (⨁ i, ℬ i)).flip (lof R _ ℬ 0 b) =
      TensorProduct.mk R _ _ (lof R _ ℬ 0 b) from
    DFunLike.congr_fun this a
  ext i a
  dsimp
  rw [gradedComm_of_tmul_of, zero_mul, uzpow_zero, one_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b15b3543350880819b600e9be2ffcda9f1212201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
