# norm_toInteger_sub_one_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39fd494e-ed70-a04d-ea36-701289eb22ba",
  "kind": "theorem",
  "lexical_name": "norm_toInteger_sub_one_eq_one",
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
  "slug": "norm-tointeger-sub-one-eq-one--184612116c32cdbb148274f1",
  "source": {
    "blob": "a8be3adc809a6dd3ed3c063e1dddf2e3ace97cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 333,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:184612116c32cdbb148274f1a0f2a60c607b7373b8f8f382ccb43ae616df65b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39fd494e-ed70-a04d-ea36-701289eb22ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_toInteger_sub_one_eq_one {n : ℕ} [IsCyclotomicExtension {n} ℚ K]
    (hζ : IsPrimitiveRoot ζ n) (h₁ : 2 < n) (h₂ : ∀ {p : ℕ}, Nat.Prime p → ∀ (k : ℕ), p ^ k ≠ n) :
    have : NeZero n := NeZero.of_gt h₁
    norm ℤ (hζ.toInteger - 1) = 1 := by
  have : NumberField K := IsCyclotomicExtension.numberField {n} ℚ K
  have : NeZero n := NeZero.of_gt h₁
  dsimp only
  rw [norm_eq_iff ℤ (Sₘ := K) (Rₘ := ℚ) le_rfl, map_sub, map_one, map_one, RingOfIntegers.map_mk,
    sub_one_norm_eq_eval_cyclotomic hζ h₁ (cyclotomic.irreducible_rat (NeZero.pos _)),
    eval_one_cyclotomic_not_prime_pow h₂, Int.cast_one]

set_option backward.isDefEq.respectTransparency.types false in
/-- The norm, relative to `ℤ`, of `ζ ^ p ^ s - 1` in a `p ^ (k + 1)`-th cyclotomic extension of `ℚ`
is `p ^ p ^ s` if `s ≤ k` and `p ^ (k - s + 1) ≠ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8be3adc809a6dd3ed3c063e1dddf2e3ace97cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
