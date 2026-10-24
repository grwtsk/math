# primeSquare_weighted_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5758631f7c5b7dbc8f82c35cc424069154ca30d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68e477debd2b90d9cc4acd369053b205de07c6da69aaea92667f7878230b2fa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:348552a1-6cb4-630b-3fd5-7afaf27e3d00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92e97761-6c0f-efe6-72b6-f2dc471b51e6",
  "kind": "theorem",
  "lexical_name": "primeSquare_weighted_abel",
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
  "slug": "primesquare-weighted-abel--d536a90dcb225efb7d1e52be",
  "source": {
    "blob": "5758631f7c5b7dbc8f82c35cc424069154ca30d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 210,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant68e477debd2b90d9cc4acd369053b205de07c6da69aaea92667f7878230b2fa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d536a90dcb225efb7d1e52beaed768b76cab4529b27643119b96efa3a7354a08",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant68e477debd2b90d9cc4acd369053b205de07c6da69aaea92667f7878230b2fa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92e97761-6c0f-efe6-72b6-f2dc471b51e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquare_weighted_abel (A : ℝ) (hA : 1 ≤ A) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ))) =
      (∫ u in 0..A, sourceCorrelation explicitSecondDerivative A (2 * u)) + thetaConstant -
      ∫ u in 0..A, thetaRemainder u *
        deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u)) u := by
  apply primeHarmonicPrefix_centered_abel A (by linarith)
    (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u))
    (fun u ↦ (sourceCorrelation_double_hasDerivAt A u hA).differentiableAt)
    (sourceCorrelation_double_derivative_continuous A hA)
  · exact sourceCorrelation_upper_endpoint A (by linarith)
  · simpa only [mul_zero] using EstimateCorrelation.actual_correlation_at_zero A hA

end
end PrimeSquareAbelScratch

#print PrimeSquareAbelScratch.primeHarmonicPrefix_eq_threshold_sum
#print axioms PrimeSquareAbelScratch.primeHarmonicPrefix_eq_threshold_sum
#print PrimeSquareAbelScratch.prime_log_mem_interval
#print axioms PrimeSquareAbelScratch.prime_log_mem_interval
#print PrimeSquareAbelScratch.closed_tail_intervalIntegrable
#print axioms PrimeSquareAbelScratch.closed_tail_intervalIntegrable
#print PrimeSquareAbelScratch.integral_closed_tail
#print axioms PrimeSquareAbelScratch.integral_closed_tail
#print PrimeSquareAbelScratch.sourceCorrelation_double_derivative_continuous
#print axioms PrimeSquareAbelScratch.sourceCorrelation_double_derivative_continuous
#print PrimeSquareAbelScratch.primeHarmonicPrefix_mul_intervalIntegrable
#print axioms PrimeSquareAbelScratch.primeHarmonicPrefix_mul_intervalIntegrable
#print PrimeSquareAbelScratch.primeHarmonicPrefix_weighted_abel
#print axioms PrimeSquareAbelScratch.primeHarmonicPrefix_weighted_abel
#print PrimeSquareAbelScratch.primeHarmonicPrefix_centered
#print axioms PrimeSquareAbelScratch.primeHarmonicPrefix_centered
#print PrimeSquareAbelScratch.thetaRemainder_mul_intervalIntegrable
#print axioms PrimeSquareAbelScratch.thetaRemainder_mul_intervalIntegrable
#print PrimeSquareAbelScratch.primeHarmonicPrefix_centered_abel
#print axioms PrimeSquareAbelScratch.primeHarmonicPrefix_centered_abel
#print PrimeSquareAbelScratch.primeSquare_weighted_abel
#print axioms PrimeSquareAbelScratch.primeSquare_weighted_abel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant68e477debd2b90d9cc4acd369053b205de07c6da69aaea92667f7878230b2fa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant68e477debd2b90d9cc4acd369053b205de07c6da69aaea92667f7878230b2fa7.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5758631f7c5b7dbc8f82c35cc424069154ca30d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
