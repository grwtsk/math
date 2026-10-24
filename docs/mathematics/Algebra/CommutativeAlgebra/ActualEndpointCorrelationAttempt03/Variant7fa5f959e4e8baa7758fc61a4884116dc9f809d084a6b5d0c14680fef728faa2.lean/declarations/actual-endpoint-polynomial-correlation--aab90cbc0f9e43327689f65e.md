# actual_endpoint_polynomial_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce7aa3a3-f739-6fab-9cb4-303408630e92",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_polynomial_correlation",
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
  "slug": "actual-endpoint-polynomial-correlation--aab90cbc0f9e43327689f65e",
  "source": {
    "blob": "800d5d1163cc4dd2962aab1f3a365b30b08e4f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 102,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ActualEndpointCorrelationAttempt03/Variant7fa5f959e4e8baa7758fc61a4884116dc9f809d084a6b5d0c14680fef728faa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aab90cbc0f9e43327689f65ee0dbddd96164e236886495d0cb9452a875830567",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ActualEndpointCorrelationAttempt03/Variant7fa5f959e4e8baa7758fc61a4884116dc9f809d084a6b5d0c14680fef728faa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce7aa3a3-f739-6fab-9cb4-303408630e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_polynomial_correlation {A y : ℝ} (hA : 1≤A)
    (hy : y∈Icc (0:ℝ) (2*A)) :
    sourceCorrelation explicitSecondDerivative A (2*A-y)*(A^9*sourceNormalization A)=
      endpointPolynomialCorrelation A⁻¹ y := by
  rw [actual_endpoint_overlap_distance (by linarith : 0<A) hy]
  rw [←intervalIntegral.integral_mul_const]
  unfold endpointPolynomialCorrelation
  apply intervalIntegral.integral_congr
  intro s _
  exact normalized_endpoint_product hA

end ContinuousResearch.ActualEndpointCorrelation

-- Full frozen public declaration closure audits.

#check ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation
#print axioms ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation
#print ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation

#check ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation_integrand_intervalIntegrable
#print axioms ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation_integrand_intervalIntegrable
#print ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation_integrand_intervalIntegrable

#check ContinuousResearch.ActualEndpointCorrelation.normalizedInterior_even
#print axioms ContinuousResearch.ActualEndpointCorrelation.normalizedInterior_even
#print ContinuousResearch.ActualEndpointCorrelation.normalizedInterior_even

#check ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap
#print axioms ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap
#print ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap

#check ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap_distance
#print axioms ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap_distance
#print ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap_distance

#check ContinuousResearch.ActualEndpointCorrelation.normalized_endpoint_product
#print axioms ContinuousResearch.ActualEndpointCorrelation.normalized_endpoint_product
#print ContinuousResearch.ActualEndpointCorrelation.normalized_endpoint_product

#check ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_polynomial_correlation
#print axioms ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_polynomial_correlation
#print ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_polynomial_correlation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ActualEndpointCorrelationAttempt03/Variant7fa5f959e4e8baa7758fc61a4884116dc9f809d084a6b5d0c14680fef728faa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ActualEndpointCorrelationAttempt03/Variant7fa5f959e4e8baa7758fc61a4884116dc9f809d084a6b5d0c14680fef728faa2.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `800d5d1163cc4dd2962aab1f3a365b30b08e4f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
