# sourceQuadraticValue_two_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b198995-deb8-488a-94d0-3805d6ebe81a",
  "kind": "theorem",
  "lexical_name": "sourceQuadraticValue_two_boundary",
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
  "slug": "sourcequadraticvalue-two-boundary--1ddd7724c323a1b5697f6bfa",
  "source": {
    "blob": "bf2e33e73816d6c7d3ee1060c0d91043b5f23660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 295,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ddd7724c323a1b5697f6bfa5053c4d53e4a6af2eba566e5bb6a626fa94ba605",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b198995-deb8-488a-94d0-3805d6ebe81a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceQuadraticValue_two_boundary (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * ((∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
        ∑ d ∈ (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) +
      2 * sourceRankOneCoefficient A *
        (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * RoughClassReduction.roughClassMean A P +
      2 * PrimeSupportedBlock.primeSupportedBlock A P +
      2 * (PrimeBlockReduction.roughRatioRemainder A P -
        RoughClassReduction.roughClassMean A P) := by
  rw [RoughClassReduction.sourceQuadraticValue_eq_mean_add_error A P hA]
  unfold RoughClassReduction.meanArithmetic
  rw [sourceLinear_two_difference_boundary]

end
end TwoInsertionBoundaryScratch

#print axioms TwoInsertionBoundaryScratch.rectangularContribution_const_mul
#print axioms TwoInsertionBoundaryScratch.rectangular_rankOne_dilate_two
#print axioms TwoInsertionBoundaryScratch.rankOne_square_insert_two
#print axioms TwoInsertionBoundaryScratch.rectangular_difference_eq_boundary
#print axioms TwoInsertionBoundaryScratch.rankOne_square_insert_two_coprime
#print axioms TwoInsertionBoundaryScratch.rankOne_square_insert_two_not_coprime
#print axioms TwoInsertionBoundaryScratch.rectangularContribution_sub
#print axioms TwoInsertionBoundaryScratch.thetaRemainder_rectangle_eq
#print axioms TwoInsertionBoundaryScratch.thetaRemainder_insert_two_coprime
#print axioms TwoInsertionBoundaryScratch.moebius_two_mul
#print axioms TwoInsertionBoundaryScratch.even_sum_reindex
#print axioms TwoInsertionBoundaryScratch.moebius_sum_two_split
#print axioms TwoInsertionBoundaryScratch.sourceLinear_two_split
#print axioms TwoInsertionBoundaryScratch.sourceLinear_two_difference_boundary
#print axioms TwoInsertionBoundaryScratch.sourceSamplingKernel_two_difference_abs_le
#print axioms TwoInsertionBoundaryScratch.reciprocal_moebius_two_split
#print axioms TwoInsertionBoundaryScratch.sourceQuadraticValue_two_split
#print axioms TwoInsertionBoundaryScratch.sourceQuadraticValue_two_boundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf2e33e73816d6c7d3ee1060c0d91043b5f23660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
