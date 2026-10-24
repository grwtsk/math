# beta_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a9545a441762427a0a4edc9ddd4e8cea379bba6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4609b7fb-2f06-338a-2fb5-97d1f67c3575",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3def3ad-bd3a-e7d4-8e42-c15d16c9d1a0",
  "kind": "theorem",
  "lexical_name": "beta_prime_pow",
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
  "slug": "beta-prime-pow--a542fea32411b5a81ffe72de",
  "source": {
    "blob": "6a9545a441762427a0a4edc9ddd4e8cea379bba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a542fea32411b5a81ffe72de3f817dbbd196b0829f33dd5c74fce0a61b0ce974",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3def3ad-bd3a-e7d4-8e42-c15d16c9d1a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem beta_prime_pow (U p k : ℕ) (hU : 1 ≤ U) (hp : p.Prime) (hk : 1 ≤ k) :
    beta U (p ^ k) = if U < p then -1 else 0 := by
  classical
  unfold beta
  rw [Finset.sum_filter, Nat.sum_divisors_prime_pow hp]
  have hterm (j : ℕ) :
      (if U < p ^ j then (moebius (p ^ j) : ℝ) else 0) =
        if j = 1 then (if U < p then -1 else 0) else 0 := by
    by_cases hj0 : j = 0
    · subst j
      simp [not_lt.mpr hU]
    · rw [moebius_apply_prime_pow hp hj0]
      by_cases hj1 : j = 1
      · subst j
        simp
      · simp [hj1]
  simp_rw [hterm]
  simp [show 1 < k + 1 by omega]

/-- On the Mangoldt support the diagonal coefficient is exactly a long-base filter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9545a441762427a0a4edc9ddd4e8cea379bba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
