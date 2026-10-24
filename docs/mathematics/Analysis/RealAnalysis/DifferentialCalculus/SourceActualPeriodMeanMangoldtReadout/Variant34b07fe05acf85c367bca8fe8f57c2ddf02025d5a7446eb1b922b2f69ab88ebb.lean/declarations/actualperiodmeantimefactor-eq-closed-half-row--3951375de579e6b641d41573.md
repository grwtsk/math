# actualPeriodMeanTimeFactor_eq_closed_half_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:207dbe5e-9ad0-8361-cd1f-0196c2c47556",
  "kind": "theorem",
  "lexical_name": "actualPeriodMeanTimeFactor_eq_closed_half_row",
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
  "slug": "actualperiodmeantimefactor-eq-closed-half-row--3951375de579e6b641d41573",
  "source": {
    "blob": "4c6da3a81980442a18aa71cb4c1e902dda4c3421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPeriodMeanMangoldtReadout/Variant34b07fe05acf85c367bca8fe8f57c2ddf02025d5a7446eb1b922b2f69ab88ebb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3951375de579e6b641d41573621dbe6400534238830b4fc45bc2cce82d243490",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPeriodMeanMangoldtReadout/Variant34b07fe05acf85c367bca8fe8f57c2ddf02025d5a7446eb1b922b2f69ab88ebb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:207dbe5e-9ad0-8361-cd1f-0196c2c47556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodMeanTimeFactor_eq_closed_half_row {A s : ℝ} (hA : 1 ≤ A)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t s) =
      Real.exp (-s / 2) * ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) *
          sourceCorrelation explicitSecondDerivative A (Real.log n + s) -
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualPeriodMeanCorrelationTest A s t) +
      actualPeriodMeanCorrelationTest A s (actualTimeLower A) *
        mangoldtLogError (actualTimeLower A) := by
  obtain ⟨hl, hb⟩ := actual_orders hA
  have hp : 0 < A := by linarith
  have ht := actual_time_covariant_abel A 0 (Real.log (sourceKernelCutoff A : ℝ)) hb
    (actualPeriodMeanTimeTest A s) (time_test_contDiff hp s)
  have hu := actualPeriodMeanTests_at_upper hA hs
  simp only [sub_zero, hu.2, mul_zero, zero_sub, actualPeriodMeanTimeTest_covariant_deriv hp]
    at ht
  have hd : deriv (actualPeriodMeanCorrelationTest A s) = actualPeriodMeanTimeTest A s := by
    funext t
    exact (actualPeriodMeanCorrelationTest_hasDerivAt hp s t).deriv
  have ha := mangoldtLogWindow_sub_integral (actualTimeLower A)
    (Real.log (sourceKernelCutoff A : ℝ)) hl hb (actualPeriodMeanCorrelationTest A s)
      (correlation_test_contDiff hp s)
  rw [hu.1, zero_mul, zero_sub, hd, ht, actual_window_eq_half_row hA s] at ha
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualPeriodMeanMangoldtReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPeriodMeanMangoldtReadout/Variant34b07fe05acf85c367bca8fe8f57c2ddf02025d5a7446eb1b922b2f69ab88ebb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPeriodMeanMangoldtReadout/Variant34b07fe05acf85c367bca8fe8f57c2ddf02025d5a7446eb1b922b2f69ab88ebb.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c6da3a81980442a18aa71cb4c1e902dda4c3421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
