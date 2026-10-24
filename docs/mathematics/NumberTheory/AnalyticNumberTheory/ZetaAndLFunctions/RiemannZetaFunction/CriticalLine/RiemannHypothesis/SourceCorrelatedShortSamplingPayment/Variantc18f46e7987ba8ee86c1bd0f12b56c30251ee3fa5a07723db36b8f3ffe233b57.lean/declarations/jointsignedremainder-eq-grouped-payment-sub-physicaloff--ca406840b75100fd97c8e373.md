# jointSignedRemainder_eq_grouped_payment_sub_physicalOff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7435cc1d-2aec-7514-388d-aa6450695adc",
  "kind": "theorem",
  "lexical_name": "jointSignedRemainder_eq_grouped_payment_sub_physicalOff",
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
  "slug": "jointsignedremainder-eq-grouped-payment-sub-physicaloff--ca406840b75100fd97c8e373",
  "source": {
    "blob": "c76e5b0cef1788eec63679969e940aefaa100296",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 161,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantc18f46e7987ba8ee86c1bd0f12b56c30251ee3fa5a07723db36b8f3ffe233b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca406840b75100fd97c8e3734047a2bb8fc28a89a532c480041144abf95e4859",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantc18f46e7987ba8ee86c1bd0f12b56c30251ee3fa5a07723db36b8f3ffe233b57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7435cc1d-2aec-7514-388d-aa6450695adc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointSignedRemainder_eq_grouped_payment_sub_physicalOff
    (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * sourceLogSamplingMainTerm A d) -
      (∑ n ∈ Finset.Icc 1 (vaughanCutoff A * vaughanCutoff A),
        (shortPart (vaughanCutoff A) (moebius : ArithmeticFunction ℝ) *
          shortPart (vaughanCutoff A) vonMangoldt) n *
            sourcePlainSamplingMainTerm A n) -
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
  classical
  have hp : jointSignedRemainder A = -globalBaseline A +
      samplingPaymentAt A (vaughanCutoff A) -
        ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
          physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
    rw [jointSignedRemainder_eq_divisor_remainders A hA]
    unfold samplingPaymentAt
    rw [add_sub_assoc, ← Finset.sum_sub_distrib]
    congr 1
    apply Finset.sum_congr rfl
    intro d hd
    unfold divisorRemainder
    rw [divisorMultiplesInteraction_eq_physicalOffRows A d (Finset.mem_Icc.mp hd).1]
    ring
  rw [hp, samplingPaymentAt_eq_truncated_product_sum]
  ring

/-- Actual arithmetic coefficients: the square product 4 survives the U=2 truncated fringe. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantc18f46e7987ba8ee86c1bd0f12b56c30251ee3fa5a07723db36b8f3ffe233b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantc18f46e7987ba8ee86c1bd0f12b56c30251ee3fa5a07723db36b8f3ffe233b57.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c76e5b0cef1788eec63679969e940aefaa100296` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
