# samplingPaymentAt_eq_truncated_product_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a112edc37bec73676e0c09821edbfd911abba83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ee2e582-9f88-cff6-1ec4-92476f6d35f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e354f5ad-6d00-0b92-5db8-223e94a2ff9a",
  "kind": "theorem",
  "lexical_name": "samplingPaymentAt_eq_truncated_product_sum",
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
  "slug": "samplingpaymentat-eq-truncated-product-sum--904a6ae7ae283e72f8115743",
  "source": {
    "blob": "8a112edc37bec73676e0c09821edbfd911abba83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:904a6ae7ae283e72f81157433c8f481e4000709ced1e5281f9fd24240fa11eef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e354f5ad-6d00-0b92-5db8-223e94a2ff9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem samplingPaymentAt_eq_truncated_product_sum (A : ℝ) (U : ℕ) :
    samplingPaymentAt A U =
      (∑ d ∈ Finset.Icc 1 U, realMoebius d * sourceLogSamplingMainTerm A d) -
      ∑ n ∈ Finset.Icc 1 (U * U),
        (shortPart U (moebius : ArithmeticFunction ℝ) *
          shortPart U vonMangoldt) n * sourcePlainSamplingMainTerm A n := by
  unfold samplingPaymentAt
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  rw [short_rectangle_eq_truncated_product]

/-- Below the closed short cutoff the truncated coefficient equals the full convolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a112edc37bec73676e0c09821edbfd911abba83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
