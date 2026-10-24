# actual_window_eq_half_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2255d52-e615-1cc7-518d-cfe61322a8c7",
  "kind": "theorem",
  "lexical_name": "actual_window_eq_half_row",
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
  "slug": "actual-window-eq-half-row--0159c1b772b3385e28bd28ba",
  "source": {
    "blob": "d28a7170247a5ba8e116a3dc5f43f75a03abc8d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant1894ca12d06e43041f71119155ff3e445363cf94ce04f71f1b1fd0a64d25272f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0159c1b772b3385e28bd28ba38bd298180b94ab645d743e014db970b76b3bba1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant1894ca12d06e43041f71119155ff3e445363cf94ce04f71f1b1fd0a64d25272f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2255d52-e615-1cc7-518d-cfe61322a8c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_window_eq_half_row {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    mangoldtLogWindow (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ))
      (actualPeriodMeanCorrelationTest A s) =
      Real.exp (-s / 2) * ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) *
          sourceCorrelation explicitSecondDerivative A (Real.log n + s) := by
  obtain ⟨hl, hb⟩ := actual_orders hA
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hN : 0 < (sourceKernelCutoff A : ℝ) :=
    hU.trans_le (by exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA)
  rw [mangoldtLogWindow_eq_interval_sum _ _ hl hb]
  simp only [actualTimeLower, Real.exp_log hU, Real.exp_log hN, Nat.floor_natCast]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by
    have := (Finset.mem_Ioc.mp hn).1
    exact_mod_cast (show 0 < n by omega)
  have hs : Real.sqrt (n : ℝ) ≠ 0 := Real.sqrt_ne_zero'.mpr hn0
  simp only [actualPeriodMeanCorrelationTest, Real.exp_half, Real.exp_log hn0]
  field_simp
  rw [Real.sq_sqrt hn0.le]
  ring

/-- The genuine retained mean time factor keeps the full long row, baseline and lower error head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant1894ca12d06e43041f71119155ff3e445363cf94ce04f71f1b1fd0a64d25272f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant1894ca12d06e43041f71119155ff3e445363cf94ce04f71f1b1fd0a64d25272f.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d28a7170247a5ba8e116a3dc5f43f75a03abc8d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
