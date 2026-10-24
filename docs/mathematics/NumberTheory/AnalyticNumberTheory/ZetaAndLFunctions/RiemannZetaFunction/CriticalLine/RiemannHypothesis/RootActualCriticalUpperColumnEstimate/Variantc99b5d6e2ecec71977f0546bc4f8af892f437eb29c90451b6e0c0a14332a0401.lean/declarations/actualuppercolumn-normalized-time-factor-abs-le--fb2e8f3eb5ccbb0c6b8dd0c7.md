# actualUpperColumn_normalized_time_factor_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f43ae85-66dd-fb06-75bb-9cebc66132ea",
  "kind": "theorem",
  "lexical_name": "actualUpperColumn_normalized_time_factor_abs_le",
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
  "slug": "actualuppercolumn-normalized-time-factor-abs-le--fb2e8f3eb5ccbb0c6b8dd0c7",
  "source": {
    "blob": "db5e50a2b58d8c022e25595801ef074be3f5b63a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantc99b5d6e2ecec71977f0546bc4f8af892f437eb29c90451b6e0c0a14332a0401.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb2e8f3eb5ccbb0c6b8dd0c71bd5cd825da03702cf08da2956d8f3c718a11c44",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantc99b5d6e2ecec71977f0546bc4f8af892f437eb29c90451b6e0c0a14332a0401.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f43ae85-66dd-fb06-75bb-9cebc66132ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperColumn_normalized_time_factor_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |Real.exp (actualColumnUpper A / 2) *
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t (actualColumnUpper A))| ≤
      268 * (Real.log 4 + 4 + Real.log 2) * Real.sqrt (vaughanCutoff A : ℝ) *
        Real.exp (3 / 2) / A ^ 4 * (3 / (vaughanCutoff A : ℝ)) ^ 2 := by
  have hA1 : 1 ≤ A := by linarith
  let U : ℝ := (vaughanCutoff A : ℝ)
  let c := actualColumnUpper A
  let l := actualTimeLower A
  let b := 2 * A - c
  let δ := 3 / U
  let Ce := Real.log 4 + 4 + Real.log 2
  let D := 268 * Ce * Real.sqrt U * Real.exp (3 / 2) / A ^ 4 * δ
  have hU1 : 1 ≤ U := by
    change (1 : ℝ) ≤ (vaughanCutoff A : ℝ)
    exact_mod_cast vaughanCutoff_pos A hA1
  have hU : 0 < U := by linarith
  have hδ : 0 ≤ δ := by dsimp [δ]; positivity
  have hδ3 : δ ≤ 3 := by
    dsimp [δ]
    exact (div_le_iff₀ hU).2 (by linarith)
  have hCe : 0 ≤ Ce := by dsimp [Ce]; positivity
  have hC : 0 ≤ 67 / A ^ 4 := by positivity
  obtain ⟨hl, _⟩ := upper_column_time_orders hA1
  have hw : b - l ≤ δ := actualUpperColumn_time_width_le hA1
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have hb (t : ℝ) (ht : t ∈ Ioc l b) :
      ‖Real.exp (c / 2) * (actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t c)‖ ≤ D := by
    let h := 2 * A - (t + c)
    have hh0 : 0 ≤ h := by
      have htb : t ≤ 2 * A - c := ht.2
      dsimp [h]
      linarith
    have hhδ : h ≤ δ := by
      have hw' : 2 * A - c - l ≤ δ := hw
      dsimp [h]
      linarith [ht.1]
    have hh3 : h ≤ 3 := hhδ.trans hδ3
    have hs : h ^ 2 ≤ 9 := by nlinarith
    have hp3 : h ^ 3 ≤ 24 * δ := by
      have hm := mul_le_mul_of_nonneg_right hs hh0
      nlinarith
    have hthird := actual_correlation_third_edge_abs_le (z := t + c) hA (by linarith [hh0])
    have hfirst := actual_correlation_first_edge_abs_le (z := t + c) hA (by linarith [hh0])
    have hj : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + c) -
        iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + c) / 4| ≤
        2 * (67 / A ^ 4) * δ := by
      apply (abs_sub _ _).trans
      rw [abs_div, abs_of_pos (by norm_num : 0 < (4 : ℝ))]
      have h3' : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + c)| ≤
          67 / A ^ 4 * δ := hthird.trans (mul_le_mul_of_nonneg_left hhδ hC)
      have h1' : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + c)| / 4 ≤
          67 / A ^ 4 * δ := by
        have hm := mul_le_mul_of_nonneg_left hp3 hC
        dsimp [h] at hm
        nlinarith
      nlinarith
    have hp : |actualAdjointTimePrimitive A 0 t| ≤ 2 * Ce := by
      simpa only [abs_zero, add_zero, Ce] using
        actualAdjointTimePrimitive_abs_le (offset := 0) hA1 ht.1.le
    have he : Real.exp (t / 2) ≤ Real.sqrt U * Real.exp (3 / 2) := by
      calc
        _ ≤ Real.exp (Real.log U / 2 + 3 / 2) := by
          apply Real.exp_le_exp.mpr
          have hh : t - Real.log U ≤ 3 := by
            have hw' : 2 * A - c - Real.log U ≤ δ := hw
            have htb : t ≤ 2 * A - c := ht.2
            linarith
          linarith
        _ = _ := by rw [Real.exp_add, Real.exp_half, Real.exp_log hU]
    have hExp : Real.exp (c / 2) * Real.exp (-c / 2) = 1 := by
      rw [← Real.exp_add, show c / 2 + -c / 2 = 0 by ring, Real.exp_zero]
    have heq : Real.exp (c / 2) * (actualAdjointTimePrimitive A 0 t *
        actualTwistedTimeDensity A t c) = actualAdjointTimePrimitive A 0 t * Real.exp (t / 2) *
          (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + c) -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + c) / 4) := by
      unfold actualTwistedTimeDensity
      calc
        _ = actualAdjointTimePrimitive A 0 t * Real.exp (t / 2) *
            (Real.exp (c / 2) * Real.exp (-c / 2)) *
              (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + c) -
                iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + c) / 4) := by ring
        _ = _ := by rw [hExp]; ring
    rw [Real.norm_eq_abs, heq, abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ (2 * Ce) * (Real.sqrt U * Real.exp (3 / 2)) * (2 * (67 / A ^ 4) * δ) :=
        mul_le_mul (mul_le_mul hp he (Real.exp_pos _).le (by positivity)) hj
          (abs_nonneg _) (by positivity)
      _ = D := by dsimp [D]; ring
  rw [actualUpperColumn_time_factor_eq_support hA1, ← intervalIntegral.integral_const_mul]
  have hn := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hl
    (Filter.Eventually.of_forall (fun t ht => hb t ht))
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => D) volume l b)
  simp only [Real.norm_eq_abs, intervalIntegral.integral_const, smul_eq_mul] at hn
  calc
    _ ≤ (b - l) * D := hn
    _ ≤ δ * D := mul_le_mul_of_nonneg_right hw hD
    _ = _ := by dsimp [D, δ, Ce, U]; ring

/-- This explicit constant contains only the fixed zeta calibration and original error bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantc99b5d6e2ecec71977f0546bc4f8af892f437eb29c90451b6e0c0a14332a0401.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantc99b5d6e2ecec71977f0546bc4f8af892f437eb29c90451b6e0c0a14332a0401.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db5e50a2b58d8c022e25595801ef074be3f5b63a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
