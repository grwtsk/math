# upper_factor_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d84d723-e223-3fe2-aee5-31c9e6dada72",
  "kind": "theorem",
  "lexical_name": "upper_factor_abs_le",
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
  "slug": "upper-factor-abs-le--c3c3761374bd2db1699e1705",
  "source": {
    "blob": "fc08b01061841e59220992e504c769e23dae6c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualUpperPeriodMeanTrace/Variant97870496f76be1f8e82c2810f8bc79332d90e4898160b88218f13576b92761c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3c3761374bd2db1699e1705554f0d355565d2962e8a4dd513c3b1a75eaf0ecd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualUpperPeriodMeanTrace/Variant97870496f76be1f8e82c2810f8bc79332d90e4898160b88218f13576b92761c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d84d723-e223-3fe2-aee5-31c9e6dada72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem upper_factor_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        actualRetainedMeanSourcePrimitive A t (actualColumnUpper A)| ≤
      (Real.log 4 + 4 + Real.log 2) * (3 / (vaughanCutoff A : ℝ)) ^ 2 *
        Real.exp (3 / 2) * Real.sqrt (vaughanCutoff A : ℝ) /
          Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) * (10 / A) := by
  have hA1 : 1 ≤ A := by linarith
  let U : ℝ := vaughanCutoff A
  let K : ℝ := (sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ)
  let l := actualTimeLower A
  let c := actualColumnUpper A
  let b := 2 * A - c
  let δ := 3 / U
  let Ce := Real.log 4 + 4 + Real.log 2
  let D := Ce * δ * Real.exp (3 / 2) * Real.sqrt U / Real.sqrt K * (10 / A)
  have hU1 : 1 ≤ U := by
    change (1 : ℝ) ≤ (vaughanCutoff A : ℝ)
    exact_mod_cast vaughanCutoff_pos A hA1
  have hU : 0 < U := by linarith
  have hK : 0 < K := by
    change (0 : ℝ) < ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)
    have hk := actual_column_window_nonempty hA1
    exact_mod_cast (show 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) by omega)
  have hδ3 : δ ≤ 3 := (div_le_iff₀ hU).2 (by linarith)
  have hCe : 0 ≤ Ce := by dsimp [Ce]; positivity
  have hD : 0 ≤ D := by dsimp [D]; positivity
  obtain ⟨hl, _⟩ := upper_time_orders hA1
  have hw : b - l ≤ δ := actualUpperColumn_time_width_le hA1
  have hc0 : 0 ≤ c := Real.log_nonneg (by
    have hk := actual_column_window_nonempty hA1
    exact_mod_cast (show 1 ≤ sourceKernelCutoff A / (vaughanCutoff A + 1) by omega))
  have hl0 : 0 ≤ l := Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA1)
  have hn (t : ℝ) (ht : t ∈ Ioc l b) :
      ‖actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t c‖ ≤ D := by
    have hPt : |actualAdjointTimePrimitive A 0 t| ≤ Ce * δ := by
      have hh := actualAdjointTimePrimitive_anchored_abs_le (offset := 0) hA1 ht.1.le
      simp only [abs_zero, add_zero] at hh
      have he : 1 - Real.exp ((l - t) / 2) ≤ δ / 2 := by
        have ht' : t - l ≤ δ := by linarith [ht.2]
        nlinarith [Real.add_one_le_exp ((l - t) / 2)]
      calc
        _ ≤ 2 * Ce * (1 - Real.exp ((l - t) / 2)) := hh
        _ ≤ 2 * Ce * (δ / 2) := mul_le_mul_of_nonneg_left he (by positivity)
        _ = _ := by ring
    have hE : Real.exp (t / 2) ≤ Real.sqrt U * Real.exp (3 / 2) := by
      calc
        _ ≤ Real.exp (Real.log U / 2 + 3 / 2) := by
          apply Real.exp_le_exp.mpr
          have ht' : t - l ≤ 3 := by linarith [ht.2]
          change t - Real.log U ≤ 3 at ht'
          linarith
        _ = _ := by rw [Real.exp_add, Real.exp_half, Real.exp_log hU]
    have hEc : Real.exp (-c / 2) = 1 / Real.sqrt K := by
      change Real.exp (-Real.log K / 2) = _
      rw [show -Real.log K / 2 = -(Real.log K / 2) by ring, Real.exp_neg,
        Real.exp_half, Real.exp_log hK, one_div]
    have hj := mean_jet_abs_le hA (by linarith [ht.1] : 0 ≤ t + c)
      (by dsimp [b] at ht; linarith [ht.2] : t + c ≤ 2 * A)
    rw [Real.norm_eq_abs, abs_mul]
    unfold actualRetainedMeanSourcePrimitive
    rw [abs_mul, abs_mul, abs_of_pos (Real.exp_pos _), abs_of_pos (Real.exp_pos _), hEc]
    calc
      _ ≤ (Ce * δ) * ((Real.sqrt U * Real.exp (3 / 2)) * (1 / Real.sqrt K) * (10 / A)) := by
        gcongr
      _ = D := by dsimp [D]; ring
  have hiD : IntervalIntegrable (fun _ : ℝ => D) volume l b :=
    (by fun_prop : Continuous (fun _ : ℝ => D)).intervalIntegrable l b
  have hb := intervalIntegral.norm_integral_le_of_norm_le hl (Eventually.of_forall hn) hiD
  rw [intervalIntegral.integral_const, smul_eq_mul, Real.norm_eq_abs] at hb
  have hbound : |∫ t in l..b, actualAdjointTimePrimitive A 0 t *
      actualRetainedMeanSourcePrimitive A t c| ≤ D * δ := by
    exact hb.trans (by nlinarith)
  rw [actualUpperPeriodMeanTimeFactor_eq_support hA1]
  change _ ≤ Ce * δ ^ 2 * Real.exp (3 / 2) * Real.sqrt U / Real.sqrt K * (10 / A)
  calc
    _ ≤ D * δ := hbound
    _ = _ := by dsimp [D]; ring

/-- The literal upper period mean has a genuine exponential budget at every real source scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualUpperPeriodMeanTrace/Variant97870496f76be1f8e82c2810f8bc79332d90e4898160b88218f13576b92761c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualUpperPeriodMeanTrace/Variant97870496f76be1f8e82c2810f8bc79332d90e4898160b88218f13576b92761c8.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc08b01061841e59220992e504c769e23dae6c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
