# sourceQuadraticValue_eq_selberg_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aba226f955f3c4681edc1a07563150df9b31d603",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e04705b6476b53b07e85218f4534a05db50f51faa8e7bf88d59f9c30630db1b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aeb5aa9c-09fe-f42e-8499-edfabf408130",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cfd4c83-d416-432a-4d14-f5a4454ad50d",
  "kind": "theorem",
  "lexical_name": "sourceQuadraticValue_eq_selberg_difference",
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
  "slug": "sourcequadraticvalue-eq-selberg-difference--dfe93822e0c48f67d1ba698a",
  "source": {
    "blob": "aba226f955f3c4681edc1a07563150df9b31d603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 214,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportAudit/Variante04705b6476b53b07e85218f4534a05db50f51faa8e7bf88d59f9c30630db1b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe93822e0c48f67d1ba698a030a77a289d2da5194ae2a044ca4f89f593e793e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportAudit/Variante04705b6476b53b07e85218f4534a05db50f51faa8e7bf88d59f9c30630db1b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cfd4c83-d416-432a-4d14-f5a4454ad50d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceQuadraticValue_eq_selberg_difference (A : ℝ) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A -
        2 * (∑ n ∈ Cutoff.primeIndices A, selbergCoefficient n * selbergSourceWeight A n) +
        2 * mangoldtConvolutionContribution A := by
  unfold sourceQuadraticValue
  rw [primePowerContribution_eq_selberg_difference]
  ring

end
end FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport

set_option pp.universes true
#print FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport.selbergSourceWeight
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport.selbergSourceWeight
#print FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport.mangoldtConvolutionContribution
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport.mangoldtConvolutionContribution
#print FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport.weighted_selberg_identity
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport.weighted_selberg_identity
#print FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport.primePowerContribution_eq_selberg_difference
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport.primePowerContribution_eq_selberg_difference
#print FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport.sourceQuadraticValue_eq_selberg_difference
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport.sourceQuadraticValue_eq_selberg_difference
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportAudit/Variante04705b6476b53b07e85218f4534a05db50f51faa8e7bf88d59f9c30630db1b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportAudit/Variante04705b6476b53b07e85218f4534a05db50f51faa8e7bf88d59f9c30630db1b9.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aba226f955f3c4681edc1a07563150df9b31d603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
