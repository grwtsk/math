# criticalDensity_weighted_pairedTailTest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:093543de-d0dd-e29c-b276-eb7acf697524",
  "kind": "theorem",
  "lexical_name": "criticalDensity_weighted_pairedTailTest",
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
  "slug": "criticaldensity-weighted-pairedtailtest--a362760007fc88c9b9eacfee",
  "source": {
    "blob": "e526a93ca99038de7cade09dcb12104173ffe0b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 111,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a362760007fc88c9b9eacfee26901ca8640c89c0805022becef56ca007c83885",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:093543de-d0dd-e29c-b276-eb7acf697524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDensity_weighted_pairedTailTest {A : ℝ} (hA : 1 ≤ A) :
    (1/2 : ℝ)*(∫ u in 0..2*A, criticalDecay u*pairedTailTest A u) =
      -diagonalMainCoefficient A*A+1-criticalDecayNegativeMean A := by
  have hp : 0 < A := by linarith
  have hdp := positiveSlope_continuous hp
  have hdn := negativeSlope_continuous hp
  have hip : IntervalIntegrable (fun u => criticalDecay u*positiveSlope A u)
      volume 0 (2*A) :=
    (decay_continuous.mul hdp).intervalIntegrable (μ := volume) 0 (2*A)
  have hin : IntervalIntegrable (fun u => criticalDecay u*negativeSlope A u)
      volume 0 (2*A) :=
    (decay_continuous.mul hdn).intervalIntegrable (μ := volume) 0 (2*A)
  have hD := pairedTailTest_continuous hA
  have hprod := (decay_continuous.mul hD).intervalIntegrable (μ := volume) 0 (2*A)
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := criticalDecay) (u' := fun u => -criticalDecay u/2)
    (v := pairedTailTest A)
    (v' := fun u => -positiveSlope A u+(positiveMass A/negativeMass A)*negativeSlope A u)
    (fun u _ => decay_hasDerivAt u) (fun u _ => pairedTailTest_hasDerivAt hA u)
    ((decay_continuous.neg.div_const 2).intervalIntegrable (μ := volume) 0 (2*A))
    ((hdp.neg.add (hdn.const_mul _)).intervalIntegrable (μ := volume) 0 (2*A))
  simp only [pairedTailTest_at_upper hA, pairedTailTest_at_zero hA, mul_zero,
    sub_zero, zero_sub] at hibp
  have hright : (fun u : ℝ => (-criticalDecay u/2)*pairedTailTest A u) =
      fun u => -(criticalDecay u*pairedTailTest A u)/2 := by
    funext u
    ring
  rw [hright, intervalIntegral.integral_div, intervalIntegral.integral_neg, neg_div] at hibp
  have hleft : (fun u : ℝ => criticalDecay u*
      (-positiveSlope A u+(positiveMass A/negativeMass A)*negativeSlope A u)) =
      fun u => -(criticalDecay u*positiveSlope A u)+
        (positiveMass A/negativeMass A)*(criticalDecay u*negativeSlope A u) := by
    funext u
    ring
  rw [hleft, intervalIntegral.integral_add hip.neg (hin.const_mul _),
    intervalIntegral.integral_neg, intervalIntegral.integral_const_mul] at hibp
  have hw : criticalDecayWork A =
      (∫ u in 0..2*A, criticalDecay u*positiveSlope A u)-
        (∫ u in 0..2*A, criticalDecay u*negativeSlope A u) := by
    unfold criticalDecayWork
    simp_rw [← slope_difference, mul_sub]
    exact intervalIntegral.integral_sub hip hin
  have hn := ne_of_gt (negativeMass_pos hA)
  have hm := negativeMass_eq_positive_add_one hA
  have he : -(∫ u in 0..2*A, criticalDecay u*positiveSlope A u)+
      (positiveMass A/negativeMass A)*(∫ u in 0..2*A, criticalDecay u*negativeSlope A u) =
        -criticalDecayWork A-criticalDecayNegativeMean A := by
    rw [hw, criticalDecayNegativeMean]
    field_simp [hn]
    nlinarith [hm]
  rw [he, criticalDecayWork_eq_main hA] at hibp
  linarith

/-- The density absorbs the independent decay compensation while retaining the full drift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e526a93ca99038de7cade09dcb12104173ffe0b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
