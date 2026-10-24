# tmul_of_gradedMul_of_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb864579-6c16-013b-0ee8-26db87e3a406",
  "kind": "theorem",
  "lexical_name": "tmul_of_gradedMul_of_tmul",
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
  "slug": "tmul-of-gradedmul-of-tmul--d31d2af475a00e389e507d04",
  "source": {
    "blob": "b15b3543350880819b600e9be2ffcda9f1212201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 197,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d31d2af475a00e389e507d04318e3b3df8d8ca9c5c0b2f61c069868f27dcfbb6",
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

Occurrence: `result:bb864579-6c16-013b-0ee8-26db87e3a406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmul_of_gradedMul_of_tmul (j₁ i₂ : ι)
    (a₁ : ⨁ i, 𝒜 i) (b₁ : ℬ j₁) (a₂ : 𝒜 i₂) (b₂ : ⨁ i, ℬ i) :
    gradedMul R 𝒜 ℬ (a₁ ⊗ₜ lof R _ ℬ j₁ b₁) (lof R _ 𝒜 i₂ a₂ ⊗ₜ b₂) =
      (-1 : ℤˣ)^(j₁ * i₂) • ((a₁ * lof R _ 𝒜 _ a₂) ⊗ₜ (lof R _ ℬ _ b₁ * b₂)) := by
  rw [gradedMul]
  dsimp only [curry_apply, LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply, assoc_tmul,
    map_tmul, LinearMap.id_coe, id_eq, assoc_symm_tmul, LinearMap.rTensor_tmul,
    LinearMap.lTensor_tmul]
  rw [mul_comm j₁ i₂, gradedComm_of_tmul_of]
  -- the tower smul lemmas elaborate too slowly
  rw [Units.smul_def, Units.smul_def, ← Int.cast_smul_eq_zsmul R, ← Int.cast_smul_eq_zsmul R]
  -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to specialize `map_smul` to avoid timeouts.
  rw [← smul_tmul', LinearEquiv.map_smul, tmul_smul, LinearEquiv.map_smul, LinearMap.map_smul]
  dsimp

variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b15b3543350880819b600e9be2ffcda9f1212201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
