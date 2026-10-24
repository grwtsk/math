# sourceCorrelation_first_exponential_moment_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b18c75835a16a4c4075469c85d1e6c85b1bcabe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08eb0690-7c76-a5a5-454c-c7f275626b69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4ef4181-9bd4-0c33-d1df-da3e221feb4c",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_first_exponential_moment_zero",
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
  "slug": "sourcecorrelation-first-exponential-moment-zero--f81e60e48c6d723de92ea12f",
  "source": {
    "blob": "5b18c75835a16a4c4075469c85d1e6c85b1bcabe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f81e60e48c6d723de92ea12ff16133168ed6a155709b255605a91ae911c8dbe7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4ef4181-9bd4-0c33-d1df-da3e221feb4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_first_exponential_moment_zero
    (A : ℝ) (hA : 1 ≤ A) :
    (∫ t,
      t * Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) = 0 := by
  have hcorr (t : ℝ) :
      Real.exp (t / 2) *
          sourceCorrelation explicitSecondDerivative A t =
        ((positiveWeightedTest A) ⋆
          (reflectedPositiveWeightedTest A)) t := by
    have hscale (x : ℝ) : (1 / 2 : ℝ) * x = x / 2 := by ring
    have h := CorrelationMoment.weighted_correlation_eq_convolution
      (normalizedTest explicitSecondDerivative A) (1 / 2 : ℝ) t
    simp only [hscale] at h
    exact h
  have hi1 :
      Integrable
        ((positiveWeightedTestMoment A) ⋆
          (reflectedPositiveWeightedTest A)) :=
    (positiveWeightedTestMoment_integrable A hA).integrable_convolution
        (ContinuousLinearMap.lsmul ℝ ℝ)
        (reflectedPositiveWeightedTest_integrable A hA)
  have hi2 :
      Integrable
        ((positiveWeightedTest A) ⋆
          (reflectedPositiveWeightedTestMoment A)) :=
    (positiveWeightedTest_integrable A hA).integrable_convolution
        (ContinuousLinearMap.lsmul ℝ ℝ)
        (reflectedPositiveWeightedTestMoment_integrable A hA)
  calc
    (∫ t,
      t * Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) =
        ∫ t,
          t *
            ((positiveWeightedTest A) ⋆
              (reflectedPositiveWeightedTest A)) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      rw [mul_assoc, hcorr t]
    _ =
        ∫ t,
          (((positiveWeightedTestMoment A) ⋆
              (reflectedPositiveWeightedTest A)) t +
            ((positiveWeightedTest A) ⋆
              (reflectedPositiveWeightedTestMoment A)) t) := by
      apply integral_congr_ae
      filter_upwards [] with t
      exact mul_weighted_convolution A t hA
    _ =
        (∫ t,
          ((positiveWeightedTestMoment A) ⋆
            (reflectedPositiveWeightedTest A)) t) +
        (∫ t,
          ((positiveWeightedTest A) ⋆
            (reflectedPositiveWeightedTestMoment A)) t) := by
      rw [integral_add hi1 hi2]
    _ =
        (∫ x, positiveWeightedTestMoment A x) *
          (∫ x, reflectedPositiveWeightedTest A x) +
        (∫ x, positiveWeightedTest A x) *
          (∫ x, reflectedPositiveWeightedTestMoment A x) := by
      rw [
        integral_convolution
          (ContinuousLinearMap.lsmul ℝ ℝ)
          (positiveWeightedTestMoment_integrable A hA)
          (reflectedPositiveWeightedTest_integrable A hA),
        integral_convolution
          (ContinuousLinearMap.lsmul ℝ ℝ)
          (positiveWeightedTest_integrable A hA)
          (reflectedPositiveWeightedTestMoment_integrable A hA)]
      rfl
    _ = 0 := by
      rw [positiveWeightedTest_integral_zero A hA,
        reflectedPositiveWeightedTest_integral_zero A hA]
      ring

/-- The actual source correlation multiplied by `exp (t / 2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b18c75835a16a4c4075469c85d1e6c85b1bcabe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
