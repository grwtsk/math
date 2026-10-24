# Params.initial.balance_small_prime_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1538,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1d6f673-7176-873f-7fb5-8a432e4ab1f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef3a93c5-7aaa-03f2-b781-0ca0c6ab7ae1",
  "kind": "theorem",
  "lexical_name": "Params.initial.balance_small_prime_ge",
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
  "slug": "params-initial-balance-small-prime-ge--6417790dbcddbf7ec2cae6c7",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1563,
    "line": 1538,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6417790dbcddbf7ec2cae6c74f6719d287a010e5997e5378ca2595eaf69fb52d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef3a93c5-7aaa-03f2-b781-0ca0c6ab7ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1538–1563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.balance_small_prime_ge (P : Params) {p : ℕ} (hp : p ≤ Real.sqrt P.n)
    (hp' : p > P.L) : P.initial.balance p ≥ - P.M * (Real.log P.n) / (Real.log 2) := by
  have h_bound_ℝ : (P.initial.balance p : ℝ) ≥ -(P.M * (Real.log P.n / Real.log p)) := by
    refine le_trans (b := - (P.M * (Nat.log p P.n : ℝ))) ?_ ?_
    · gcongr
      have h_p_gt_1 : 1 < p := lt_of_le_of_lt (succ_le_of_lt P.hL_pos) hp'
      have hn_pos : 0 < P.n := by
        refine pos_iff_ne_zero.mpr fun h ↦ ?_
        simp only [h, CharP.cast_eq_zero, Real.sqrt_zero, cast_nonpos] at hp
        linarith [hp, hp', P.hL_pos]
      rw [le_div_iff₀ (log_pos (by exact_mod_cast lt_of_le_of_lt (succ_le_of_lt P.hL_pos) hp'))]
      nth_rw 1 [← Real.log_pow]
      exact log_le_log (by positivity) <|
        by norm_cast; exact pow_log_le_self p (Nat.ne_of_gt hn_pos)
    norm_cast
    by_cases hp_prime : p.Prime
    · simpa using initial.balance_ge_neg_M_mul_log P hp_prime hp hp'
    · simp only [cast_mul, Factorization.balance, hp_prime, not_false_eq_true,
        factorization_eq_zero_of_not_prime, CharP.cast_eq_zero, sub_zero]
      rw [neg_le_iff_add_nonneg']
      positivity
  exact le_trans (by
    rw [mul_div]; ring_nf; gcongr; norm_cast; linarith [P.hL_pos]) h_bound_ℝ

/-- The factorization consisting of `M` copies of `[n - n/M, n)`, without filtering for smooth
numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
