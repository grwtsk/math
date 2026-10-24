# gradedComm_of_tmul_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1a3a3e2-9ca8-011a-97bd-dfdaafd98ebf",
  "kind": "theorem",
  "lexical_name": "gradedComm_of_tmul_of",
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
  "slug": "gradedcomm-of-tmul-of--1d6560326c624e30e208fda3",
  "source": {
    "blob": "f5ee8cd012f0f550712fc01902938e036c3a6b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d6560326c624e30e208fda3b1fabe0b5f05ddd01577022efbe054e58609204d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1a3a3e2-9ca8-011a-97bd-dfdaafd98ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedComm_of_tmul_of (i j : ι) (a : 𝒜 i) (b : ℬ j) :
    gradedComm R 𝒜 ℬ (lof R _ 𝒜 i a ⊗ₜ lof R _ ℬ j b) =
      (-1 : ℤˣ) ^ (j * i) • (lof R _ ℬ _ b ⊗ₜ lof R _ 𝒜 _ a) := by
  rw [gradedComm]
  dsimp only [LinearEquiv.trans_apply, LinearEquiv.coe_ofLinearMap]
  rw [TensorProduct.directSum_lof_tmul_lof, gradedCommAux_lof_tmul, Units.smul_def,
    -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 specialized `map_smul` to `LinearEquiv.map_smul` to avoid timeouts.
    ← Int.cast_smul_eq_zsmul R, LinearEquiv.map_smul, TensorProduct.directSum_symm_lof_tmul,
    Int.cast_smul_eq_zsmul, ← Units.smul_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ee8cd012f0f550712fc01902938e036c3a6b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
