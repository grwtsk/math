# mul_weighted_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "532b3ca3262405671438dc42c0a2159b6d7639ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74aef23d-b07d-938f-1052-518aa81bbaac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76cbfbeb-6a7f-5e9d-6c62-3006b777f567",
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
  "slug": "mul-weighted-convolution--925e0319f25c9792ede21465",
  "source": {
    "blob": "532b3ca3262405671438dc42c0a2159b6d7639ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:925e0319f25c9792ede21465152564f81fb81feb0aafd012938ecd22742a7c6e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76cbfbeb-6a7f-5e9d-6c62-3006b777f567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–230.

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
    simpa [ContinuousLinearMap.lsmul_apply, smul_eq_mul] using
      ((reflectedPositiveWeightedTest_hasCompactSupport A hA)
        .convolutionExists_right
          (ContinuousLinearMap.lsmul ℝ ℝ)
          (positiveWeightedTestMoment_integrable A hA).locallyIntegrable
          (reflectedPositiveWeightedTest_continuous A hA)
          t)
  have h2 :
      Integrable
        (fun x : ℝ =>
          positiveWeightedTest A x *
            reflectedPositiveWeightedTestMoment A (t - x)) := by
    simpa [ContinuousLinearMap.lsmul_apply, smul_eq_mul] using
      ((reflectedPositiveWeightedTestMoment_hasCompactSupport A hA)
        .convolutionExists_right
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `532b3ca3262405671438dc42c0a2159b6d7639ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
