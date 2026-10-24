# jointSignedRemainder_eq_grouped_payment_sub_physicalOff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85b8dda5e304cc50814ad7b109fb85a06a233490",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0c820a5f48d516ff92a456fe91d5fe58d0968b693fc2ab726c8070a423f595f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a24fdee-5cb5-5b2f-d14d-f5e0797791ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af092f14-2b00-2318-b110-a72ea4eaa71b",
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
  "slug": "jointsignedremainder-eq-grouped-payment-sub-physicaloff--c93b57b9164843ce1c5d84fe",
  "source": {
    "blob": "85b8dda5e304cc50814ad7b109fb85a06a233490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 153,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Varianta0c820a5f48d516ff92a456fe91d5fe58d0968b693fc2ab726c8070a423f595f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c93b57b9164843ce1c5d84fe49e9db1fa5cadea1ef44e8ae4568e18c933ff83f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Varianta0c820a5f48d516ff92a456fe91d5fe58d0968b693fc2ab726c8070a423f595f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af092f14-2b00-2318-b110-a72ea4eaa71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–181.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Varianta0c820a5f48d516ff92a456fe91d5fe58d0968b693fc2ab726c8070a423f595f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Varianta0c820a5f48d516ff92a456fe91d5fe58d0968b693fc2ab726c8070a423f595f.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85b8dda5e304cc50814ad7b109fb85a06a233490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
