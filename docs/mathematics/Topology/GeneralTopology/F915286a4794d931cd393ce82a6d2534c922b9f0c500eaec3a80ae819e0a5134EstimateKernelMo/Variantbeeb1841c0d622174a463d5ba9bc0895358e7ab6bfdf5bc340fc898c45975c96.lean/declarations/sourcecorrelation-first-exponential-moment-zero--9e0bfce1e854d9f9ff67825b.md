# sourceCorrelation_first_exponential_moment_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36a89164-6177-081d-7f54-616deaf0cc93",
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
  "slug": "sourcecorrelation-first-exponential-moment-zero--9e0bfce1e854d9f9ff67825b",
  "source": {
    "blob": "7f4574fa3955517ff332132612a36683cf6e89a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e0bfce1e854d9f9ff67825b8ded4ca3a4627fd4f7e34520b6a4bdbbfa07838b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36a89164-6177-081d-7f54-616deaf0cc93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–326.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f4574fa3955517ff332132612a36683cf6e89a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
