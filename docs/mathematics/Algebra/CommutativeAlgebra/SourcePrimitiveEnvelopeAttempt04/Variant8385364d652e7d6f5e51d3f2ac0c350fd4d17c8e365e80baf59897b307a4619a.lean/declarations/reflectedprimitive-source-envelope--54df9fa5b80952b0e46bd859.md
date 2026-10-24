# reflectedPrimitive_source_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d78bdeb-efa9-7592-3cd3-7a7fa0b277d7",
  "kind": "theorem",
  "lexical_name": "reflectedPrimitive_source_envelope",
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
  "slug": "reflectedprimitive-source-envelope--54df9fa5b80952b0e46bd859",
  "source": {
    "blob": "45b1e8c292c6a2f696278fa612dad27c46b93f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 178,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variant8385364d652e7d6f5e51d3f2ac0c350fd4d17c8e365e80baf59897b307a4619a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54df9fa5b80952b0e46bd8596016c1447558054f6d45a4d4475e55a42dd6655c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variant8385364d652e7d6f5e51d3f2ac0c350fd4d17c8e365e80baf59897b307a4619a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d78bdeb-efa9-7592-3cd3-7a7fa0b277d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedPrimitive_source_envelope {A y : ℝ} (hA : 1≤A)
    (hthreshold : (136/7:ℝ)≤A^2) (hy : y∈Icc (0:ℝ) (2*A)) :
    0≤reflectedPrimitive A y ∧ reflectedPrimitive A y≤reflectedEnvelope y :=
  ⟨reflectedPrimitive_nonneg hA hthreshold hy,reflectedPrimitive_le_envelope hA hy⟩

end ContinuousResearch.SourcePrimitiveEnvelope

set_option pp.fullNames true
set_option pp.universes true

#check ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor0
#print ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor0
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor0

#check ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1
#print ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1

#check ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1Prime
#print ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1Prime
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1Prime

#check ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor0_bound
#print ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor0_bound
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor0_bound

#check ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1_bound
#print ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1_bound
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1_bound

#check ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1_nonneg
#print ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1_nonneg
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.overlapFactor1_nonneg

#check ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial2_factor
#print ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial2_factor
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial2_factor

#check ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial0_upper
#print ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial0_upper
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial0_upper

#check ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial1_upper
#print ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial1_upper
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial1_upper

#check ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial2_upper
#print ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial2_upper
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.overlapPolynomial2_upper

#check ContinuousResearch.SourcePrimitiveEnvelope.source_normalization_lower
#print ContinuousResearch.SourcePrimitiveEnvelope.source_normalization_lower
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.source_normalization_lower

#check ContinuousResearch.SourcePrimitiveEnvelope.reflectedEnvelope
#print ContinuousResearch.SourcePrimitiveEnvelope.reflectedEnvelope
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.reflectedEnvelope

#check ContinuousResearch.SourcePrimitiveEnvelope.reflectedEnvelope_nonneg
#print ContinuousResearch.SourcePrimitiveEnvelope.reflectedEnvelope_nonneg
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.reflectedEnvelope_nonneg

#check ContinuousResearch.SourcePrimitiveEnvelope.reflectedPrimitive_polynomial
#print ContinuousResearch.SourcePrimitiveEnvelope.reflectedPrimitive_polynomial
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.reflectedPrimitive_polynomial

#check ContinuousResearch.SourcePrimitiveEnvelope.reflectedPrimitive_le_envelope
#print ContinuousResearch.SourcePrimitiveEnvelope.reflectedPrimitive_le_envelope
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.reflectedPrimitive_le_envelope

#check ContinuousResearch.SourcePrimitiveEnvelope.reflectedPrimitive_source_envelope
#print ContinuousResearch.SourcePrimitiveEnvelope.reflectedPrimitive_source_envelope
#print axioms ContinuousResearch.SourcePrimitiveEnvelope.reflectedPrimitive_source_envelope
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variant8385364d652e7d6f5e51d3f2ac0c350fd4d17c8e365e80baf59897b307a4619a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variant8385364d652e7d6f5e51d3f2ac0c350fd4d17c8e365e80baf59897b307a4619a.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45b1e8c292c6a2f696278fa612dad27c46b93f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
