# unique_divisor_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf9bfc459f0e3cd584d2ef9726e580780198b141",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5b5f7c9-0e39-2fa5-f2e9-c18bea9a3930",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d450682-40ea-d7c5-e646-fa0c4ce46581",
  "kind": "lemma",
  "lexical_name": "unique_divisor_decomposition",
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
  "slug": "unique-divisor-decomposition--1c6d7f3b02e7d4be64dffd26",
  "source": {
    "blob": "cf9bfc459f0e3cd584d2ef9726e580780198b141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c6d7f3b02e7d4be64dffd2674b70fffc19770ff8575cae742ec14c6dd99d47d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d450682-40ea-d7c5-e646-fa0c4ce46581`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unique_divisor_decomposition {a b d : ℕ} (hab : Coprime a b) (hd : d ∣ a * b) :
    ∃! p : ℕ × ℕ, p.1 ∣ a ∧ p.2 ∣ b ∧ p.1 * p.2 = d := by
  sorry -- UPSTREAMED TO MATHLIB #36495

/-- If `f` is a multiplicative arithmetic function, then for coprime `a` and `b`, we have $\sum_{d | ab} f(d) = (\sum_{d | a} f(d)) \cdot (\sum_{d | b} f(d))$. -/
@[blueprint
  "sum_divisors_mul_of_coprime"
  (title := "sum divisors mul of coprime")
  (statement := /-- If $f$ is a multiplicative arithmetic function, then for coprime, nonzero $a$ and $b$, we have that
  $\sum_{d | ab} f(d) = (\sum_{d | a} f(d)) \cdot (\sum_{d | b} f(d))$.
  \begin{verbatim}
  This has been upstreamed #36495.
  \end{verbatim}
  -/)
  (proof := /--
  Since $f$ is multiplicative, we can express the sum over divisors of $ab$ in terms of the sums over divisors of $a$ and $b$. The key idea is to use the fact that the divisors of $ab$ can be expressed as products of divisors of $a$ and divisors of $b$, due to the coprimality condition. Specifically, each divisor $d$ of $ab$ can be uniquely written as $d = d_a * d_b$, where $d_a$ divides $a$ and $d_b$ divides $b$. Therefore, we can rewrite the sum as a double sum over the divisors of $a$ and $b$, which factorizes into the product of the two separate sums.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9bfc459f0e3cd584d2ef9726e580780198b141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
