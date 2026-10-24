# Factorization.lower_score_3_clean

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
      "line": 823,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0023820-bc02-1238-8ac2-5da1af6065c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57c46567-041e-ce99-89d4-15156c4e0069",
  "kind": "lemma",
  "lexical_name": "Factorization.lower_score_3_clean",
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
  "slug": "factorization-lower-score-3-clean--2992d59aa641625c42cd9060",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 823,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2992d59aa641625c42cd90604c8130be89af412d8d531187eb32681db22bbcf1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57c46567-041e-ce99-89d4-15156c4e0069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 823–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Factorization.lower_score_3_clean {n : ℕ} (f : Factorization n) (L : ℕ)
    (h_surplus : ∀ p, f.balance p ≤ 0) (h_deficit_large : ∀ p, f.balance p < 0 → p ≤ L)
    (hf : ∃ p ∈ (n + 1).primesBelow, p ≤ L ∧ f.balance p < 0) :
    ∃ f' : Factorization n,
      f'.total_imbalance < f.total_imbalance ∧ f'.score L ≤ f.score L := by
  by_cases h_prod : (deficitMultiset f L).prod ≤ n
  · exact lower_score_3_case1 f L h_surplus h_deficit_large hf h_prod
  by_cases hL_gt_n : n < L
  · exact lower_score_3_case2a f L h_surplus hf hL_gt_n
  · exact lower_score_3_case2b f L h_surplus hf
      (not_le.mp h_prod) (not_lt.mp hL_gt_n)

@[blueprint
  "score-lower-3"
  (statement := /--
  If there is a prime $p$ in deficit less than $L$, one can remove it without increasing the score.
  -/)
  (proof := /-- Without loss of generality we may assume that one is not in the previous two
  situations, i.e., wlog there are no surplus primes and all primes in deficit are at most $L$.
  If all deficit primes multiply to $n$ or less, add that product to the factorization (this
  increases the waste by at most $\log n$, but we save a $\log n$ from now being in balance).
  Otherwise, greedily multiply all primes together while staying below $n$ until one cannot do so
  any further; add this product to the factorization, increasing the waste by at most $\log L$.-/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L823).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
