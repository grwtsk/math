# absNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc67c7f7d6e412fc9c8c36a51a85bf1b8238abd5de9f991dee67764e8a3d3884",
  "kind": "def",
  "lexical_name": "absNorm",
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
  "slug": "absnorm--5cb51165e7c1fb45fa7aa8a3",
  "source": {
    "blob": "38091a6e74424b69bd5eecba531342ae6076866c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cb51165e7c1fb45fa7aa8a3b324b830c0f8d0dd868be90644fd3c009f9a1dfd",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc67c7f7d6e412fc9c8c36a51a85bf1b8238abd5de9f991dee67764e8a3d3884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def absNorm : FractionalIdeal R⁰ K →*₀ ℚ where
  toFun I := (Ideal.absNorm I.num : ℚ) / |Algebra.norm ℤ (I.den : R)|
  map_zero' := by
    rw [num_zero_eq, Submodule.zero_eq_bot, Ideal.absNorm_bot, Nat.cast_zero, zero_div]
    exact IsFractionRing.injective R K
  map_one' := by
    rw [absNorm_div_norm_eq_absNorm_div_norm 1 ⊤ (by simp [Submodule.one_eq_range]),
      Ideal.absNorm_top, Nat.cast_one, OneMemClass.coe_one, map_one, abs_one,
      Int.cast_one,
      one_div_one]
  map_mul' I J := by
    rw [absNorm_div_norm_eq_absNorm_div_norm (I.den * J.den) (I.num * J.num) (by
        have : Algebra.linearMap R K = (IsScalarTower.toAlgHom R R K).toLinearMap := rfl
        rw [coe_mul, this, Submodule.map_mul, ← this, ← den_mul_self_eq_num, ← den_mul_self_eq_num]
        exact Submodule.mul_smul_mul_eq_smul_mul_smul _ _ _ _),
      Submonoid.coe_mul, map_mul, map_mul, Nat.cast_mul, div_mul_div_comm,
      Int.cast_abs, Int.cast_abs, Int.cast_abs, ← abs_mul, Int.cast_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variantbe75ca11652556ad7e9f5ca5bc9e675cc95841c285f680bd1a58a36b650e4d0f.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38091a6e74424b69bd5eecba531342ae6076866c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
