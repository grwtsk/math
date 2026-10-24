# weightedPrime_mertens_log_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:900aa874-61d6-92c6-3c07-54a5755270f4",
  "kind": "theorem",
  "lexical_name": "weightedPrime_mertens_log_cutoff",
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
  "slug": "weightedprime-mertens-log-cutoff--22bf6b17d9a953d387935c8e",
  "source": {
    "blob": "17757f18f42c9683947fe2ff3c9943c8cacb66c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 322,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22bf6b17d9a953d387935c8e5317afd72c4d0950fe3a887069096bf614e896f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:900aa874-61d6-92c6-3c07-54a5755270f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedPrime_mertens_log_cutoff :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ t : ℝ, 0 ≤ t →
      |(∑ p ∈ (Ioc 0 ⌊Real.exp t⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ)) - t| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := weightedPrime_mertens_real
  refine ⟨C, hC0, ?_⟩
  intro t ht
  simpa only [Real.log_exp] using hC (Real.exp t) (Real.one_le_exp_iff.mpr ht)

end
end FormalResearch.RiemannHypothesis.WeightedPrimeMertens

#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedMangoldt
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedMangoldt
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.log_factorial_eq_sum
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.log_factorial_eq_sum
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.factorial_identity
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.factorial_identity
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.natural_division_error_le_one
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.natural_division_error_le_one
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.factorial_le_scaled_weighted
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.factorial_le_scaled_weighted
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.scaled_weighted_le_factorial_add_psi
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.scaled_weighted_le_factorial_add_psi
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.log_factorial_lower
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.log_factorial_lower
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.log_factorial_upper
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.log_factorial_upper
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedMangoldt_sub_log_bounds
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedMangoldt_sub_log_bounds
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedMangoldt_mertens
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedMangoldt_mertens
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.primeCoefficient
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.primeCoefficient
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.properPowerCoefficient
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.properPowerCoefficient
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedPrime
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedPrime
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.properPowerCoefficient_nonneg
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.properPowerCoefficient_nonneg
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.properPower_prefix
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.properPower_prefix
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weighted_difference
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weighted_difference
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weighted_difference_nonneg
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weighted_difference_nonneg
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weighted_difference_abel
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weighted_difference_abel
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.properPower_integrand_integrable
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.properPower_integrand_integrable
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.sqrt_div_square
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.sqrt_div_square
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weighted_difference_bound_of_sqrt
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weighted_difference_bound_of_sqrt
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weighted_difference_uniformly_bounded
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weighted_difference_uniformly_bounded
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedPrime_mertens
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedPrime_mertens
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedPrime_eq_filtered
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedPrime_eq_filtered
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.log_floor_error
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.log_floor_error
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedPrime_mertens_real
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedPrime_mertens_real
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedPrime_mertens_log_cutoff
#print axioms FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedPrime_mertens_log_cutoff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17757f18f42c9683947fe2ff3c9943c8cacb66c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
