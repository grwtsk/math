# positivePrimitive_upper_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36efe83c-3cfa-5f26-0310-ad1b54fe55ba",
  "kind": "theorem",
  "lexical_name": "positivePrimitive_upper_traces",
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
  "slug": "positiveprimitive-upper-traces--46fe9ca0259a3a02c703baab",
  "source": {
    "blob": "01bb81d52966b56763f1266a94fc2dfc414f1eb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 309,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptpeer01/Variant1224fb534e58ba1442d13eec7935393f6a7407dc52f9b02eeb53075f7a40df47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46fe9ca0259a3a02c703baabfa690cef8db8417ac69bcdad69d9ac6b8e591bb0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptpeer01/Variant1224fb534e58ba1442d13eec7935393f6a7407dc52f9b02eeb53075f7a40df47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36efe83c-3cfa-5f26-0310-ad1b54fe55ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivePrimitive_upper_traces {A : ℝ} (hA : 0<A) :
    positivePrimitive A (2*A)=0 ∧ positivePrimitiveFirst A (2*A)=0 := by
  have he : (2*A)/A=2 := by field_simp
  rw [positivePrimitive,positivePrimitiveFirst,he]
  norm_num [overlapPolynomial0,overlapPolynomial1,overlapPolynomial2,overlapPolynomial3]

end ContinuousResearch.SourcePositivePrimitive

-- Complete public statement, proof, and trusted-closure audits.
#check ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap
#print ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap
#print axioms ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap

#check ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_interval
#print ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_interval
#print axioms ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_interval

#check ContinuousResearch.SourcePositivePrimitive.unitOverlap_integrand_intervalIntegrable
#print ContinuousResearch.SourcePositivePrimitive.unitOverlap_integrand_intervalIntegrable
#print axioms ContinuousResearch.SourcePositivePrimitive.unitOverlap_integrand_intervalIntegrable

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial4
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial4
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial4

#check ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_polynomial
#print ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_polynomial
#print axioms ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_polynomial

#check ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_unit
#print ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_unit
#print axioms ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_unit

#check ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_polynomial
#print ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_polynomial
#print axioms ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_polynomial

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_factor
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_factor
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_factor

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_factor
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_factor
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_factor

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_lower_factor
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_lower_factor
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_lower_factor

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial_signs
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial_signs
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial_signs

#check ContinuousResearch.SourcePositivePrimitive.correlationPolynomial
#print ContinuousResearch.SourcePositivePrimitive.correlationPolynomial
#print axioms ContinuousResearch.SourcePositivePrimitive.correlationPolynomial

#check ContinuousResearch.SourcePositivePrimitive.correlationPolynomial_endpoint_dictionary
#print ContinuousResearch.SourcePositivePrimitive.correlationPolynomial_endpoint_dictionary
#print axioms ContinuousResearch.SourcePositivePrimitive.correlationPolynomial_endpoint_dictionary

#check ContinuousResearch.SourcePositivePrimitive.actual_source_correlation_polynomial
#print ContinuousResearch.SourcePositivePrimitive.actual_source_correlation_polynomial
#print axioms ContinuousResearch.SourcePositivePrimitive.actual_source_correlation_polynomial

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_second_actual
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_second_actual
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_second_actual

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_zero_value
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_zero_value
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_zero_value

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg_iff
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg_iff
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg_iff

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_upper_traces
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_upper_traces
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_upper_traces

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptpeer01/Variant1224fb534e58ba1442d13eec7935393f6a7407dc52f9b02eeb53075f7a40df47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptpeer01/Variant1224fb534e58ba1442d13eec7935393f6a7407dc52f9b02eeb53075f7a40df47.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01bb81d52966b56763f1266a94fc2dfc414f1eb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
