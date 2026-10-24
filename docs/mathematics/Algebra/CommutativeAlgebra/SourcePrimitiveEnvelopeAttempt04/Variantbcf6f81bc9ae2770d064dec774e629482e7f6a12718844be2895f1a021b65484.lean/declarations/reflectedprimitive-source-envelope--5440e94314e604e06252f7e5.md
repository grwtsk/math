# reflectedPrimitive_source_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08548629-f8cd-e2d0-2256-45d086c92dc7",
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
  "slug": "reflectedprimitive-source-envelope--5440e94314e604e06252f7e5",
  "source": {
    "blob": "3dc09c90875c22a5e286279676477cf97a61c2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 186,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5440e94314e604e06252f7e56e119fa8c4a66ef0228b121939091c8a3088aae9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08548629-f8cd-e2d0-2256-45d086c92dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–258.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dc09c90875c22a5e286279676477cf97a61c2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
