# jointSignedRemainder_eq_full_payment_add_missing_sectors_sub_physicalOff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e2f7adf-d708-1910-3fbc-65b24f03af1c",
  "kind": "theorem",
  "lexical_name": "jointSignedRemainder_eq_full_payment_add_missing_sectors_sub_physicalOff",
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
  "slug": "jointsignedremainder-eq-full-payment-add-missing-sectors-sub-physicaloff--66cd7242c5ecebb982df1b9b",
  "source": {
    "blob": "32d6d3a5300399be51975a8f0032f1b771235ab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedPaymentMissingFringe/Variantc5f5ddbb26232e80f1280dff6c47a5eecc796c70bb34d4d2c72192f5e62e518f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66cd7242c5ecebb982df1b9b7793600c6f2b768c3e1947e73f64d6bba954565f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedPaymentMissingFringe/Variantc5f5ddbb26232e80f1280dff6c47a5eecc796c70bb34d4d2c72192f5e62e518f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e2f7adf-d708-1910-3fbc-65b24f03af1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointSignedRemainder_eq_full_payment_add_missing_sectors_sub_physicalOff
    (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * sourceLogSamplingMainTerm A d) -
      (∑ n ∈ Finset.Icc 1 (vaughanCutoff A * vaughanCutoff A),
        ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n *
          sourcePlainSamplingMainTerm A n) +
      (∑ n ∈ Finset.Icc 1 (vaughanCutoff A * vaughanCutoff A),
        (∑ p ∈ n.divisorsAntidiagonal.filter (fun p => vaughanCutoff A < p.1),
          (moebius p.1 : ℝ) * vonMangoldt p.2) * sourcePlainSamplingMainTerm A n) +
      (∑ n ∈ Finset.Icc 1 (vaughanCutoff A * vaughanCutoff A),
        (∑ p ∈ n.divisorsAntidiagonal.filter (fun p => vaughanCutoff A < p.2),
          (moebius p.1 : ℝ) * vonMangoldt p.2) * sourcePlainSamplingMainTerm A n) -
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
  have ht := jointSignedRemainder_eq_grouped_payment_sub_physicalOff A hA
  have hp := samplingPaymentAt_eq_truncated_product_sum A (vaughanCutoff A)
  have hc := samplingPaymentAt_eq_full_payment_add_missing_sectors A (vaughanCutoff A)
  linear_combination ht - hp + hc

end
end FormalResearch.RiemannHypothesis.SourceCorrelatedPaymentMissingFringe
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedPaymentMissingFringe/Variantc5f5ddbb26232e80f1280dff6c47a5eecc796c70bb34d4d2c72192f5e62e518f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedPaymentMissingFringe/Variantc5f5ddbb26232e80f1280dff6c47a5eecc796c70bb34d4d2c72192f5e62e518f.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32d6d3a5300399be51975a8f0032f1b771235ab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
