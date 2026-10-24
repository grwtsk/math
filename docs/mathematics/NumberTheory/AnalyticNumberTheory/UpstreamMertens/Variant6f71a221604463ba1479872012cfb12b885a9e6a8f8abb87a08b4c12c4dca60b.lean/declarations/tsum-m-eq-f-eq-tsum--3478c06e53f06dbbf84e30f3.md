# tsum_M_eq_f_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c45fc368e4fc7c3ff7876be4f8e67c3d6f2a6be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f71a221604463ba1479872012cfb12b885a9e6a8f8abb87a08b4c12c4dca60b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:059d30b9-3060-2f9f-e17a-5260498a1a19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32836def-4cb4-cf42-3253-4078e91fa955",
  "kind": "lemma",
  "lexical_name": "tsum_M_eq_f_eq_tsum",
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
  "slug": "tsum-m-eq-f-eq-tsum--3478c06e53f06dbbf84e30f3",
  "source": {
    "blob": "1c45fc368e4fc7c3ff7876be4f8e67c3d6f2a6be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2253,
    "line": 2222,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/UpstreamMertens/Variant6f71a221604463ba1479872012cfb12b885a9e6a8f8abb87a08b4c12c4dca60b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3478c06e53f06dbbf84e30f308edb2f96c0dca2c89c77155857a205ad46db2fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/UpstreamMertens/Variant6f71a221604463ba1479872012cfb12b885a9e6a8f8abb87a08b4c12c4dca60b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32836def-4cb4-cf42-3253-4078e91fa955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2222–2253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_M_eq_f_eq_tsum :
    -∑' (n : ℕ), M_eq_f n = ∑' p : ℕ, if p.Prime then log (1 - 1 / p) + 1 / p else 0 := by
  rw [tsum_eq_tsum_primes_add_tsum_primes_of_support_subset_prime_powers M_eq_f.HasSum.summable
    (fun n hn ↦ (by simp_all [vonMangoldt_ne_zero_iff])), M_eq_f.sum_primes, zero_add,
    tsum_primes_eq_tsum_ite (fun p ↦ ∑' (k : ℕ), M_eq_f (p ^ (k + 2))), ← tsum_neg]
  refine tsum_congr fun n ↦ ?_
  split_ifs with hn
  · rw [← HasSum_log_one_sub_one_div_prime hn|>.tsum_eq, HasSum_log_one_sub_one_div_prime hn|>.summable.tsum_eq_zero_add]
    simp only [ite_not, Nat.cast_pow, log_pow, Nat.cast_add, Nat.cast_ofNat, CharP.cast_eq_zero,
      zero_add, pow_one, one_mul, Nat.cast_one, one_div]
    trans -∑' (k : ℕ), (1 : ℝ) / ((k + 2) * n ^ (k + 2))
    · congr
      ext k
      have : ¬(Nat.Prime (n ^ (k + 2))) := by exact Nat.Prime.not_prime_pow (by grind)
      simp only [this, ↓reduceIte, one_div, mul_inv_rev]
      rw [vonMangoldt_apply_pow (by grind), vonMangoldt_apply_prime hn]
      have : log n ≠ 0 := by simp; grind [hn.two_le]
      field
    · rw [← tsum_neg]
      ring_nf
      congr
      ext
      ring_nf
  · ring

@[blueprint
  "Meissel-Mertens-eq"
  (title := "Formula for Meissel-Mertens constant")
  (statement := /-- One has $M = \gamma + \sum_p \log(1-\frac{1}{p}) + \frac{1}{p}$.
-/)
  (proof := /-- The RHS can be Taylor expanded as $\sum_{j=2}^\infty \sum_p \frac{1}{jp^j}$.  Meanwhile, the difference between $\sum_{n \leq x} \frac{\Lambda(n)}{n \log n}$ and $\sum_{p \leq x} \frac{1}{p}$ is equal to $\sum_{j=2}^\infty \sum_{p: p^j \leq x} \frac{1}{j p^j}$.  Applying the monotone convergence theorem, Lemma \ref{Mertens-second-error-prime-abs-le}, and Lemma \ref{Mertens-second-error-mangoldt-bound} gives the claim.  -/)
  (discussion := 1328)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/UpstreamMertens/Variant6f71a221604463ba1479872012cfb12b885a9e6a8f8abb87a08b4c12c4dca60b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/UpstreamMertens/Variant6f71a221604463ba1479872012cfb12b885a9e6a8f8abb87a08b4c12c4dca60b.lean#L2222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c45fc368e4fc7c3ff7876be4f8e67c3d6f2a6be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
