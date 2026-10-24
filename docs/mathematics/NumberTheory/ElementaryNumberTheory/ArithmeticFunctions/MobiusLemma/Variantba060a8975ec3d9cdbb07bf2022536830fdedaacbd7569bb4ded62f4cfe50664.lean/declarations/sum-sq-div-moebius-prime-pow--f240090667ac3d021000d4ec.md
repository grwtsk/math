# sum_sq_div_moebius_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7eadf63-1b45-ac5d-24e1-48b6683e3147",
  "kind": "lemma",
  "lexical_name": "sum_sq_div_moebius_prime_pow",
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
  "slug": "sum-sq-div-moebius-prime-pow--f240090667ac3d021000d4ec",
  "source": {
    "blob": "ba9cdfa23f5787b369d59fa637c97570a7213888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 129,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f240090667ac3d021000d4ec2e210392be29301b4d5c2036524746f4b76ab78b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7eadf63-1b45-ac5d-24e1-48b6683e3147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_sq_div_moebius_prime_pow (p k : ℕ) (hp : Nat.Prime p) :
    sum_sq_div_moebius (p ^ k) = if k < 2 then 1 else 0 := by
  dsimp only [sum_sq_div_moebius]
  split_ifs <;> simp_all only [Nat.divisors_prime_pow, moebius, Int.reduceNeg, coe_mk,
    not_lt, Int.reduceNeg]
  · interval_cases k <;> norm_num [sum_filter, sum_range_succ]
    exact fun h ↦ absurd h <| Nat.not_dvd_of_pos_of_lt hp.pos <| by nlinarith [hp.two_le]
  · rcases k with (_ | _ | k) <;> simp_all [sum_filter, sum_range_succ', Nat.squarefree_pow_iff,
      hp.ne_zero, hp.ne_one, pow_dvd_pow_iff, hp.squarefree]

/-- The function `sum_sq_div_moebius` is equal to the indicator function of squarefree numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba9cdfa23f5787b369d59fa637c97570a7213888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
