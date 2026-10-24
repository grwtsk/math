# correlationDifference_secondMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec1fb501bd549418702d5066ffd796c277964786",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e55e8d79-3ae2-06d9-a3c7-d7de7391922a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa29cc83-eb02-25a1-fd0b-7e0c98d97e73",
  "kind": "theorem",
  "lexical_name": "correlationDifference_secondMoment",
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
  "slug": "correlationdifference-secondmoment--5e31043339b8f63a79572972",
  "source": {
    "blob": "ec1fb501bd549418702d5066ffd796c277964786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e31043339b8f63a7957297240e1a790916d00c2f2e13e46cef59f17cc20f0f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa29cc83-eb02-25a1-fd0b-7e0c98d97e73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlationDifference_secondMoment (A : ℝ) (hA : 1 ≤ A) :
    (1 / 2 : ℝ) * (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * correlationDifference A t) =
      -CorrelationSecondMoment.sourceRankOneCoefficient A := by
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hs := sourceCorrelation_hasCompactSupport A (by linarith : 0 < A)
  have hi := CorrelationSecondMoment.weighted_correlation_secondMoment_integrable A hA
  have hid : MeasureTheory.Integrable (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) :=
    ((continuous_id.pow 2).mul ((continuous_id.div_const 2).rexp)
      |>.mul hc.continuous_deriv_one).integrable_of_hasCompactSupport hs.deriv.mul_left
  simp only [correlationDifference, mul_sub, ← mul_div_assoc]
  rw [MeasureTheory.integral_sub hid (hi.div_const 2), MeasureTheory.integral_div,
    derivative_secondMoment _ hc hs, CorrelationFirstMoment.full_correlation_firstMoment_zero A hA]
  have hb := CorrelationSecondMoment.full_correlation_secondMoment_eq_square A hA
  unfold CorrelationSecondMoment.sourceRankOneCoefficient
  linarith

end
end SamplingSecondDerivativeScratch

#print axioms SamplingSecondDerivativeScratch.secondDifference
#print axioms SamplingSecondDerivativeScratch.secondDifference_eq
#print axioms SamplingSecondDerivativeScratch.secondDifference_continuous
#print axioms SamplingSecondDerivativeScratch.secondDifference_abs_le
#print axioms SamplingSecondDerivativeScratch.secondDifference_zero_right
#print axioms SamplingSecondDerivativeScratch.derivative_sampling_term_hasDerivAt
#print axioms SamplingSecondDerivativeScratch.second_difference_sum_eq_fixed_sum
#print axioms SamplingSecondDerivativeScratch.sourceSamplingKernel_derivative_hasDerivAt

#print axioms SamplingSecondDerivativeScratch.derivative_secondMoment
#print axioms SamplingSecondDerivativeScratch.correlationDifference_secondMoment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec1fb501bd549418702d5066ffd796c277964786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
