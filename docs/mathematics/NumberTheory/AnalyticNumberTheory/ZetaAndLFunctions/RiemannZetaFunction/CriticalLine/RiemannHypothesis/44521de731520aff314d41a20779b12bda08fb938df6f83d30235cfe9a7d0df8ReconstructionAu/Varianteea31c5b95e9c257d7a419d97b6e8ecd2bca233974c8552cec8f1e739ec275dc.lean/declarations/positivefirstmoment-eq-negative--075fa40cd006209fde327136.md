# positiveFirstMoment_eq_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0da7f08e-d970-364b-5206-1c32d728da69",
  "kind": "theorem",
  "lexical_name": "positiveFirstMoment_eq_negative",
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
  "slug": "positivefirstmoment-eq-negative--075fa40cd006209fde327136",
  "source": {
    "blob": "89bb75c146251823c8d27edf14fa59bfd3bf160f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 269,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:075fa40cd006209fde327136d51c85c7d5028980e4fb6bb02d91a93f67d4d44f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da7f08e-d970-364b-5206-1c32d728da69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveFirstMoment_eq_negative (A : ℝ) (hA : 1 ≤ A) :
    (∫ s in 0..2 * A, s * Real.exp (s / 2) *
      sourceCorrelation explicitSecondDerivative A s) = negativeFirstMoment A := by
  have hp : 0 < A := by linarith
  let F := fun s : ℝ => s * Real.exp (s / 2) * sourceCorrelation explicitSecondDerivative A s
  have hi : Integrable F := by
    convert EstimateKernelMoments.firstWeightedCorrelation_integrable A hA using 1
    funext s
    dsimp [F, EstimateKernelMoments.firstWeightedCorrelation,
      EstimateKernelMoments.weightedCorrelation]
    ring
  have hfull : (∫ s, F s) = ∫ s in -(2 * A)..2 * A, F s := by
    calc
      _ = ∫ s, (Icc (-(2 * A)) (2 * A)).indicator F s := by
        apply integral_congr_ae
        filter_upwards [] with s
        by_cases hs : s ∈ Icc (-(2 * A)) (2 * A)
        · rw [indicator_of_mem hs]
        · rw [indicator_of_notMem hs]
          have hc : sourceCorrelation explicitSecondDerivative A s = 0 := by
            apply sourceCorrelation_eq_zero_of_two_mul_le_abs A s hp
            by_contra h
            exact hs (abs_le.mp (le_of_not_ge h))
          simp [F, hc]
      _ = _ := zeroExtension_integral _ _ _ (by linarith)
  have hr : (∫ s in -(2 * A)..0, F s) = -negativeFirstMoment A := by
    calc
      _ = ∫ s in 0..2 * A, F (-s) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg F (a := 0) (b := 2 * A)).symm
      _ = ∫ s in 0..2 * A, -(s * Real.exp (-s / 2) *
          sourceCorrelation explicitSecondDerivative A s) := by
        apply intervalIntegral.integral_congr
        intro s _
        dsimp only [F]
        rw [sourceCorrelation_even]
        ring
      _ = _ := by rw [intervalIntegral.integral_neg]; rfl
  have hz : (∫ s, F s) = 0 :=
    EstimateKernelMoments.sourceCorrelation_first_exponential_moment_zero A hA
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (a := -(2 * A)) (b := 0) (c := 2 * A) hi.intervalIntegrable hi.intervalIntegrable
  rw [hr, ← hfull, hz] at hs
  change -negativeFirstMoment A + (∫ s in 0..2 * A,
    s * Real.exp (s / 2) * sourceCorrelation explicitSecondDerivative A s) = 0 at hs
  linarith

/-- Both moments are finite PHYSICAL traces, with the endpoint-one contribution retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bb75c146251823c8d27edf14fa59bfd3bf160f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
