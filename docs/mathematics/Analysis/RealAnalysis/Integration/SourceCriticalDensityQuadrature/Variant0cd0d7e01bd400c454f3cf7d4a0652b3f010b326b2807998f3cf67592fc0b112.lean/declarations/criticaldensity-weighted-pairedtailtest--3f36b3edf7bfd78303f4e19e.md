# criticalDensity_weighted_pairedTailTest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6ac3437ee5c9c6a74fed10ff618c8cc8de7e8bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0799134f-3cae-c9c8-1017-aff17d4ff4fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a467dc18-3e19-fe65-e730-95f557f31898",
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
  "slug": "criticaldensity-weighted-pairedtailtest--3f36b3edf7bfd78303f4e19e",
  "source": {
    "blob": "b6ac3437ee5c9c6a74fed10ff618c8cc8de7e8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f36b3edf7bfd78303f4e19e1d1f53e2add4ecb2d3946dff767f61ea615a2d55",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a467dc18-3e19-fe65-e730-95f557f31898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–159.

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
  rw [hleft] at hibp
  have ha := intervalIntegral.integral_add hip.neg
    (hin.const_mul (positiveMass A/negativeMass A))
  simp only [Pi.neg_apply] at ha
  rw [ha, intervalIntegral.integral_neg, intervalIntegral.integral_const_mul] at hibp
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
    rw [hm]
    ring
  rw [he, criticalDecayWork_eq_main hA] at hibp
  linarith

/-- The density absorbs the independent decay compensation while retaining the full drift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ac3437ee5c9c6a74fed10ff618c8cc8de7e8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
