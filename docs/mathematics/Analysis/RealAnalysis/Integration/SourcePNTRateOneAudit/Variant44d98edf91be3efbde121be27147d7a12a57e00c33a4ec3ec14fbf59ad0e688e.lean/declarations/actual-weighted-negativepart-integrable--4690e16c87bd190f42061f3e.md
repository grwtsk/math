# actual_weighted_negativePart_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c03eff91721f0e30299e616634af4b6d4d358d3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44d98edf91be3efbde121be27147d7a12a57e00c33a4ec3ec14fbf59ad0e688e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48777ece-4837-7cb7-ab5b-104a722f5b20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00112d57-8ac2-c009-424f-c7adf85a5d90",
  "kind": "theorem",
  "lexical_name": "actual_weighted_negativePart_integrable",
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
  "slug": "actual-weighted-negativepart-integrable--4690e16c87bd190f42061f3e",
  "source": {
    "blob": "c03eff91721f0e30299e616634af4b6d4d358d3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 205,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant44d98edf91be3efbde121be27147d7a12a57e00c33a4ec3ec14fbf59ad0e688e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4690e16c87bd190f42061f3e36854587bdd764a0c508ca930f86436155852a90",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant44d98edf91be3efbde121be27147d7a12a57e00c33a4ec3ec14fbf59ad0e688e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00112d57-8ac2-c009-424f-c7adf85a5d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_weighted_negativePart_integrable (σ : ℝ) (hσ : 1 ≤ σ) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-σ * A) * A ^ 17 * sourceNormalization A *
      max (-sourceQuadraticValue Realization.explicitSecondDerivative A) 0) (Ioi 1) := by
  simpa only [negativeSource, mul_assoc] using negativeSource_integrable_of_one_le σ hσ

end
end FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne

#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.rate_one_integrableOn_Ioc
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.rate_one_integrableOn_Ioc
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.rate_one_integrable_of_eventual_majorant
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.rate_one_integrable_of_eventual_majorant
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.polynomial_stretched_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.polynomial_stretched_integrable
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.rate_one_majorant_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.rate_one_majorant_integrable
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.rate_one_integrable_of_stretched_majorant
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.rate_one_integrable_of_stretched_majorant
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.actual_scale_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.actual_scale_le
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.weighted_negativeSource_le_of_pairing_bound
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.weighted_negativeSource_le_of_pairing_bound
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.rate_one_integrable_of_pairing_bound
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.rate_one_integrable_of_pairing_bound
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.integrable_of_one_le_rate
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.integrable_of_one_le_rate
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.negativeSource_integrable_at_one
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.negativeSource_integrable_at_one
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.negativeSource_integrable_of_one_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.negativeSource_integrable_of_one_le
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.actual_weighted_negativePart_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne.actual_weighted_negativePart_integrable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant44d98edf91be3efbde121be27147d7a12a57e00c33a4ec3ec14fbf59ad0e688e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant44d98edf91be3efbde121be27147d7a12a57e00c33a4ec3ec14fbf59ad0e688e.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c03eff91721f0e30299e616634af4b6d4d358d3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
