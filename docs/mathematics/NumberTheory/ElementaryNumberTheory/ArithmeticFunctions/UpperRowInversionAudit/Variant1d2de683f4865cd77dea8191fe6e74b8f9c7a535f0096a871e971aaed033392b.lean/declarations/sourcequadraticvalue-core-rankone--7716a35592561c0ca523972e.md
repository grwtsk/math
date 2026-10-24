# sourceQuadraticValue_core_rankOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:357fa318-6ddd-478f-0f93-7e804cc0bc6d",
  "kind": "theorem",
  "lexical_name": "sourceQuadraticValue_core_rankOne",
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
  "slug": "sourcequadraticvalue-core-rankone--7716a35592561c0ca523972e",
  "source": {
    "blob": "23183b2b2bcd84a925bdbcf0ad001bcf25d01399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 244,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionAudit/Variant1d2de683f4865cd77dea8191fe6e74b8f9c7a535f0096a871e971aaed033392b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7716a35592561c0ca523972e972a15fc278d1a11a346f6c46067085a499d3918",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionAudit/Variant1d2de683f4865cd77dea8191fe6e74b8f9c7a535f0096a871e971aaed033392b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:357fa318-6ddd-478f-0f93-7e804cc0bc6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceQuadraticValue_core_rankOne (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue
      explicitSecondDerivative A =
      archimedeanValue
        explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i) +
      2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
        (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
          (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 +
      2 * JointBoundaryTransport.rectangle
        (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaRemainder.thetaRemainder A) -
      2 * JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) := by
  rw [sourceQuadraticValue_core_upper A hA]
  have he := ThetaRemainder.quadratic_sum_eq A (⌊Real.exp A⌋₊ / 2)
  change JointBoundaryTransport.rectangle
    (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
    (ThetaKernelTransport.thetaKernel A) = _ at he
  rw [he]
  change _ - _ + 2 * (_ + JointBoundaryTransport.rectangle
    (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
    (ThetaRemainder.thetaRemainder A)) - _ = _
  ring

end
end UpperRowInversionScratch

#check UpperRowInversionScratch.finite_inner_padding
#print axioms UpperRowInversionScratch.finite_inner_padding
#check UpperRowInversionScratch.finite_moebius_upper_inversion
#print axioms UpperRowInversionScratch.finite_moebius_upper_inversion
#check UpperRowInversionScratch.upper_row_product_threshold
#print axioms UpperRowInversionScratch.upper_row_product_threshold
#check UpperRowInversionScratch.source_upper_row_support
#print axioms UpperRowInversionScratch.source_upper_row_support
#check UpperRowInversionScratch.source_upper_row_inversion
#print axioms UpperRowInversionScratch.source_upper_row_inversion
#check UpperRowInversionScratch.positive_sum_split
#print axioms UpperRowInversionScratch.positive_sum_split
#check UpperRowInversionScratch.rectangle_cutoff_split
#print axioms UpperRowInversionScratch.rectangle_cutoff_split
#check UpperRowInversionScratch.rectangle_core_upper_identity
#print axioms UpperRowInversionScratch.rectangle_core_upper_identity
#check UpperRowInversionScratch.source_upper_rectangle_eq_linear
#print axioms UpperRowInversionScratch.source_upper_rectangle_eq_linear
#check UpperRowInversionScratch.upper_square_product_threshold
#print axioms UpperRowInversionScratch.upper_square_product_threshold
#check UpperRowInversionScratch.source_upper_square_eq_sampling
#print axioms UpperRowInversionScratch.source_upper_square_eq_sampling
#check UpperRowInversionScratch.sourceQuadraticValue_core_upper
#print axioms UpperRowInversionScratch.sourceQuadraticValue_core_upper
#check UpperRowInversionScratch.core_rankOne_nonneg
#print axioms UpperRowInversionScratch.core_rankOne_nonneg
#check UpperRowInversionScratch.sourceQuadraticValue_core_rankOne
#print axioms UpperRowInversionScratch.sourceQuadraticValue_core_rankOne
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionAudit/Variant1d2de683f4865cd77dea8191fe6e74b8f9c7a535f0096a871e971aaed033392b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionAudit/Variant1d2de683f4865cd77dea8191fe6e74b8f9c7a535f0096a871e971aaed033392b.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23183b2b2bcd84a925bdbcf0ad001bcf25d01399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
