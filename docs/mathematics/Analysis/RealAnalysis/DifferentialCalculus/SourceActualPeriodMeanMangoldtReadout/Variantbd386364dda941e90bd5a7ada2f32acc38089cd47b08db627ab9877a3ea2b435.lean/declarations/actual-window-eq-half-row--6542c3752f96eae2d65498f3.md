# actual_window_eq_half_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43310c86-5dc9-1fd6-c49f-a8d288134ec7",
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
  "slug": "actual-window-eq-half-row--6542c3752f96eae2d65498f3",
  "source": {
    "blob": "1bfc17723984d7d0391cc85466a87586f305c13f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPeriodMeanMangoldtReadout/Variantbd386364dda941e90bd5a7ada2f32acc38089cd47b08db627ab9877a3ea2b435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6542c3752f96eae2d65498f3fccc0d24de7ce0dc1d3191df07585d245b1ea6cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPeriodMeanMangoldtReadout/Variantbd386364dda941e90bd5a7ada2f32acc38089cd47b08db627ab9877a3ea2b435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43310c86-5dc9-1fd6-c49f-a8d288134ec7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–147.

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

/-- The genuine retained mean time factor keeps the full long row, baseline and lower error head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPeriodMeanMangoldtReadout/Variantbd386364dda941e90bd5a7ada2f32acc38089cd47b08db627ab9877a3ea2b435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPeriodMeanMangoldtReadout/Variantbd386364dda941e90bd5a7ada2f32acc38089cd47b08db627ab9877a3ea2b435.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bfc17723984d7d0391cc85466a87586f305c13f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
