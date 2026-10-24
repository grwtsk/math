# actualLowerTimeFactor_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27be651a-0ab8-ff43-2820-ef98744274d9",
  "kind": "theorem",
  "lexical_name": "actualLowerTimeFactor_abs_le",
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
  "slug": "actuallowertimefactor-abs-le--99367c8ce1b66fcd57874dc3",
  "source": {
    "blob": "9ea9faaf056b788be3ddff77b8975d5acd85057c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99367c8ce1b66fcd57874dc36e76f07672ba7d156c533f437e743202cf20bb29",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27be651a-0ab8-ff43-2820-ef98744274d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLowerTimeFactor_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualLowerTimeFactor A| ≤
      1072 * (Real.log 4 + 4 + Real.log 2) *
        Real.exp (A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) / A ^ 4 := by
  let l := actualTimeLower A
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let L := 2 * A - a
  let H := fun t => actualLogMixedDensity A t a
  let CE := Real.log 4 + 4 + Real.log 2
  obtain ⟨hl, hlb, hL, hLb⟩ := actual_orders (by linarith : 1 ≤ A)
  have hc : Continuous H := (mixed_contDiff (by linarith : 0 < A) a).continuous
  have hE : IntervalIntegrable mangoldtLogError volume l b := by
    simpa using mangoldtLogError_mul_deriv_intervalIntegrable l b hlb
      (fun t : ℝ => t) contDiff_id
  have hEH := hE.mul_continuousOn hc.continuousOn
  have hmono := intervalIntegral.integral_mono_on hlb hEH.abs
    ((hc.abs.intervalIntegrable l b).const_mul CE) (fun t ht => by
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_right (mangoldtLogError_abs_le t (hl.trans ht.1))
        (abs_nonneg (H t)))
  have hrestrict := intervalIntegral.integral_mono_interval (μ := volume) hl hlb le_rfl
    (f := fun t => |H t|) (Filter.Eventually.of_forall (fun t => abs_nonneg (H t)))
    (hc.abs.intervalIntegrable 0 b)
  have htail : (∫ t in L..b, |H t|) = 0 := by
    apply intervalIntegral.integral_zero_ae
    exact Filter.Eventually.of_forall (fun t ht => by
      rw [uIoc_of_le hLb] at ht
      have hz : 2 * A - a ≤ t := ht.1.le
      change |actualLogMixedDensity A t a| = 0
      rw [mixed_zero_right (a := a) (by linarith : 1 ≤ A) hz, abs_zero])
  have hsplit := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hc.abs.intervalIntegrable 0 L) (hc.abs.intervalIntegrable L b)
  rw [htail, add_zero] at hsplit
  have heq : (∫ t in 0..L,
      67 / A ^ 4 * Real.exp (-a / 2) *
        ((L - t) ^ 2 / 2 + (L - t) ^ 4 / 96) * Real.exp (t / 2)) =
      67 / A ^ 4 * Real.exp (-a / 2) *
        ((∫ t in 0..L, (L - t) ^ 2 * Real.exp (t / 2)) / 2 +
          (∫ t in 0..L, (L - t) ^ 4 * Real.exp (t / 2)) / 96) := by
    rw [← intervalIntegral.integral_div, ← intervalIntegral.integral_div,
      ← intervalIntegral.integral_add ((by fun_prop : Continuous (fun t : ℝ =>
          (L - t) ^ 2 * Real.exp (t / 2) / 2)).intervalIntegrable 0 L)
        ((by fun_prop : Continuous (fun t : ℝ =>
          (L - t) ^ 4 * Real.exp (t / 2) / 96)).intervalIntegrable 0 L),
      ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    ring
  have hkernel : (∫ t in 0..L, |H t|) ≤
      67 / A ^ 4 * Real.exp (-a / 2) * Real.exp (L / 2) * 16 := by
    have hm := intervalIntegral.integral_mono_on (μ := volume) hL (hc.abs.intervalIntegrable 0 L)
      ((by fun_prop : Continuous (fun t : ℝ =>
        67 / A ^ 4 * Real.exp (-a / 2) *
          ((L - t) ^ 2 / 2 + (L - t) ^ 4 / 96) * Real.exp (t / 2))).intervalIntegrable 0 L)
      (fun t ht => by
        have h2 := actual_correlation_second_edge_abs_le (z := t + a) hA
        have h0 := actual_correlation_edge_abs_le (z := t + a) hA
        have hh := abs_sub (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A)
          (t + a)) (sourceCorrelation explicitSecondDerivative A (t + a) / 4)
        rw [abs_div, abs_of_nonneg (by norm_num : 0 ≤ (4 : ℝ))] at hh
        have hb : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + a) -
            sourceCorrelation explicitSecondDerivative A (t + a) / 4| ≤
            67 / A ^ 4 * ((L - t) ^ 2 / 2 + (L - t) ^ 4 / 96) := by
          rw [show 2 * A - (t + a) = L - t by dsimp only [L]; ring] at h2 h0
          linarith
        dsimp only [H]
        unfold actualLogMixedDensity
        rw [abs_mul, abs_mul, abs_of_pos (Real.exp_pos _),
          abs_of_pos (Real.exp_pos _)]
        calc
          _ ≤ (Real.exp (t / 2) * Real.exp (-a / 2)) *
              (67 / A ^ 4 * ((L - t) ^ 2 / 2 + (L - t) ^ 4 / 96)) :=
            mul_le_mul_of_nonneg_left hb (by positivity)
          _ = _ := by ring)
    rw [heq] at hm
    have h2 := exponential_truncated_moment_le 2 hL
    have h4 := exponential_truncated_moment_le 4 hL
    norm_num only [Nat.factorial, Nat.cast_ofNat] at h2 h4
    calc
      _ ≤ _ := hm
      _ ≤ 67 / A ^ 4 * Real.exp (-a / 2) *
          (Real.exp (L / 2) * 16 / 2 + Real.exp (L / 2) * 768 / 96) := by
        apply mul_le_mul_of_nonneg_left _ (by positivity)
        exact add_le_add (div_le_div_of_nonneg_right h2 (by norm_num))
          (div_le_div_of_nonneg_right h4 (by norm_num))
      _ = _ := by ring
  have hb : |actualLowerTimeFactor A| ≤
      CE * (67 / A ^ 4 * Real.exp (-a / 2) * Real.exp (L / 2) * 16) := by
    rw [actualLowerTimeFactor_eq_negative_error_integral (by linarith : 1 ≤ A), abs_neg]
    exact (intervalIntegral.abs_integral_le_integral_abs hlb).trans
      (hmono.trans (by
        rw [intervalIntegral.integral_const_mul]
        apply mul_le_mul_of_nonneg_left _ (by dsimp only [CE]; positivity)
        exact hrestrict.trans (hsplit ▸ hkernel)))
  have he : Real.exp (-a / 2) * Real.exp (L / 2) = Real.exp (A - a) := by
    rw [← Real.exp_add]
    congr 1
    dsimp only [L]
    ring
  apply hb.trans_eq
  calc
    _ = 1072 * CE * (Real.exp (-a / 2) * Real.exp (L / 2)) / A ^ 4 := by ring
    _ = _ := by rw [he]

/-- The entire adjusted lower trace has a real uniform decaying budget, with all heads retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea9faaf056b788be3ddff77b8975d5acd85057c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
