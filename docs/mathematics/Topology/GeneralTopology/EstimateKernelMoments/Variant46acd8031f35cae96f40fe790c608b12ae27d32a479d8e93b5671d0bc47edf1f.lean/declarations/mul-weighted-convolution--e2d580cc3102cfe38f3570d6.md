# mul_weighted_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b771257-23e3-e3fd-51ef-df2dfe8cbd06",
  "kind": "theorem",
  "lexical_name": "mul_weighted_convolution",
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
  "slug": "mul-weighted-convolution--e2d580cc3102cfe38f3570d6",
  "source": {
    "blob": "92cf282bd39eb4de5ce69dea0f14d499596796e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2d580cc3102cfe38f3570d681f8fd0521d0aaebfe7772998790eb8f10807c12",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b771257-23e3-e3fd-51ef-df2dfe8cbd06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_weighted_convolution
    (A t : ℝ) (hA : 1 ≤ A) :
    t *
      ((positiveWeightedTest A) ⋆
        (reflectedPositiveWeightedTest A)) t =
      ((positiveWeightedTestMoment A) ⋆
        (reflectedPositiveWeightedTest A)) t +
      ((positiveWeightedTest A) ⋆
        (reflectedPositiveWeightedTestMoment A)) t := by
  have h1 :
      Integrable
        (fun x : ℝ =>
          positiveWeightedTestMoment A x *
            reflectedPositiveWeightedTest A (t - x)) := by
    exact
      ((reflectedPositiveWeightedTest_hasCompactSupport A hA).convolutionExists_right
          (ContinuousLinearMap.lsmul ℝ ℝ)
          (positiveWeightedTestMoment_integrable A hA).locallyIntegrable
          (reflectedPositiveWeightedTest_continuous A hA)
          t)
  have h2 :
      Integrable
        (fun x : ℝ =>
          positiveWeightedTest A x *
            reflectedPositiveWeightedTestMoment A (t - x)) := by
    exact
      ((reflectedPositiveWeightedTestMoment_hasCompactSupport A hA).convolutionExists_right
          (ContinuousLinearMap.lsmul ℝ ℝ)
          (positiveWeightedTest_integrable A hA).locallyIntegrable
          (reflectedPositiveWeightedTestMoment_continuous A)
          t)
  change
    t *
      (∫ x,
        positiveWeightedTest A x *
          reflectedPositiveWeightedTest A (t - x)) =
      (∫ x,
        positiveWeightedTestMoment A x *
          reflectedPositiveWeightedTest A (t - x)) +
      (∫ x,
        positiveWeightedTest A x *
          reflectedPositiveWeightedTestMoment A (t - x))
  rw [← integral_const_mul]
  rw [← integral_add h1 h2]
  apply integral_congr_ae
  filter_upwards [] with x
  unfold positiveWeightedTestMoment reflectedPositiveWeightedTestMoment
  ring

/-- The first weighted moment of the actual correlation vanishes.  This is the
second zero coming from the pair of annihilated exponential poles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92cf282bd39eb4de5ce69dea0f14d499596796e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
