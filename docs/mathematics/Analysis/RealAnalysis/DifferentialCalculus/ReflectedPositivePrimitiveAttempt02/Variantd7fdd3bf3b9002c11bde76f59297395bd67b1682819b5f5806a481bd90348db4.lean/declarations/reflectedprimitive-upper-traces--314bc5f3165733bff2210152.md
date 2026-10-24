# reflectedPrimitive_upper_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e32b3f7e-dfba-1c4c-8d43-f8d60e235179",
  "kind": "theorem",
  "lexical_name": "reflectedPrimitive_upper_traces",
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
  "slug": "reflectedprimitive-upper-traces--314bc5f3165733bff2210152",
  "source": {
    "blob": "836bcf628574cdbf3f783e96f8bc3b0a44053993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantd7fdd3bf3b9002c11bde76f59297395bd67b1682819b5f5806a481bd90348db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:314bc5f3165733bff2210152e2446ef5af619d6831e4e333c50aa4191bd10ad7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantd7fdd3bf3b9002c11bde76f59297395bd67b1682819b5f5806a481bd90348db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e32b3f7e-dfba-1c4c-8d43-f8d60e235179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedPrimitive_upper_traces {A : ℝ} (hA : 1≤A) :
    reflectedPrimitive A (2*A)=physicalScale A*(28*A^4-544*A^2)/(7*A^4+272*A^2+7344) ∧
      deriv (reflectedPrimitive A) (2*A)=
        -physicalScale A*(14*A^4+272*A^2)/(7*A^4+272*A^2+7344) := by
  rw [reflectedPrimitive,(reflectedPrimitive_hasDerivAt A (2*A)).deriv,
    reflectedPrimitiveFirst,sub_self,positivePrimitive_center_rational hA,
    positivePrimitiveFirst_center_rational hA]
  constructor <;> ring

end ContinuousResearch.ReflectedPositivePrimitive

#check ContinuousResearch.ReflectedPositivePrimitive.physicalScale
#print ContinuousResearch.ReflectedPositivePrimitive.physicalScale
#print axioms ContinuousResearch.ReflectedPositivePrimitive.physicalScale

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst

#check ContinuousResearch.ReflectedPositivePrimitive.unitBumpOverlap_integrand_integrable
#print ContinuousResearch.ReflectedPositivePrimitive.unitBumpOverlap_integrand_integrable
#print axioms ContinuousResearch.ReflectedPositivePrimitive.unitBumpOverlap_integrand_integrable

#check ContinuousResearch.ReflectedPositivePrimitive.primitiveCorrelationZero_integrand_integrable
#print ContinuousResearch.ReflectedPositivePrimitive.primitiveCorrelationZero_integrand_integrable
#print axioms ContinuousResearch.ReflectedPositivePrimitive.primitiveCorrelationZero_integrand_integrable

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_hasDerivAt
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_hasDerivAt
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_hasDerivAt

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst_hasDerivAt
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst_hasDerivAt
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst_hasDerivAt

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_second_actual
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_second_actual
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_second_actual

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_nonneg
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_nonneg
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_nonneg

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_lower_traces
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_lower_traces
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_lower_traces

#check ContinuousResearch.ReflectedPositivePrimitive.positivePrimitive_center_rational
#print ContinuousResearch.ReflectedPositivePrimitive.positivePrimitive_center_rational
#print axioms ContinuousResearch.ReflectedPositivePrimitive.positivePrimitive_center_rational

#check ContinuousResearch.ReflectedPositivePrimitive.positivePrimitiveFirst_center_rational
#print ContinuousResearch.ReflectedPositivePrimitive.positivePrimitiveFirst_center_rational
#print axioms ContinuousResearch.ReflectedPositivePrimitive.positivePrimitiveFirst_center_rational

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_upper_traces
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_upper_traces
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_upper_traces
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantd7fdd3bf3b9002c11bde76f59297395bd67b1682819b5f5806a481bd90348db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantd7fdd3bf3b9002c11bde76f59297395bd67b1682819b5f5806a481bd90348db4.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836bcf628574cdbf3f783e96f8bc3b0a44053993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
