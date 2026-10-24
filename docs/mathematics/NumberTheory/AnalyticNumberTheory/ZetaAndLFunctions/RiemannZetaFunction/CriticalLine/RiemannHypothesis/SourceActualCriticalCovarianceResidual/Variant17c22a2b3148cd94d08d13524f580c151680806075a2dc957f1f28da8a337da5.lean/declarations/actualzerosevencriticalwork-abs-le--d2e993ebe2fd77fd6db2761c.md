# actualZeroSevenCriticalWork_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bcae42b-71dc-0240-7fa2-1cca8a6c7e90",
  "kind": "theorem",
  "lexical_name": "actualZeroSevenCriticalWork_abs_le",
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
  "slug": "actualzerosevencriticalwork-abs-le--d2e993ebe2fd77fd6db2761c",
  "source": {
    "blob": "7b59405452a29eec0d5a68a017f48675af615de8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant17c22a2b3148cd94d08d13524f580c151680806075a2dc957f1f28da8a337da5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2e993ebe2fd77fd6db2761cf18b837aebf27c4f5a0a4c783b9de2b6ce5d0c42",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant17c22a2b3148cd94d08d13524f580c151680806075a2dc957f1f28da8a337da5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bcae42b-71dc-0240-7fa2-1cca8a6c7e90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroSevenCriticalWork_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualZeroSevenCriticalWork A| ≤ actualZeroSevenCriticalBudget := by
  let a : ℝ := Real.log 7
  let B : ℝ := Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|
  let k : ℝ := B * (1 / 2 + 5 * a)
  have ha : 0 ≤ a := Real.log_nonneg (by norm_num)
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hp : 0 < A := by linarith
  have hp2 : 1 ≤ A ^ 2 := by nlinarith
  have hpt : ∀ t ∈ Ioc 0 a,
      ‖actualCenteredMangoldtLogError t * deriv (criticalPrimeTest A) t‖ ≤
        k * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := ht.1.le
    have hG := actualCenteredMangoldtLogError_abs_le ht0
    have hc := actual_correlation_abs_le_one A t (by linarith)
    have hd := actualCorrelation_first_abs_le_five hA t
    rw [abs_of_nonneg ht0] at hd
    have hD : |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 * a := by
      calc
        _ ≤ 5 / A ^ 2 * t := hd
        _ ≤ 5 * a := by
          apply (div_le_iff₀ (by positivity : 0 < A ^ 2)).2
          rw [div_mul_eq_mul_div]
          apply (div_le_iff₀ (by positivity : 0 < A ^ 2)).2
          nlinarith
    have hs := abs_add_le (sourceCorrelation explicitSecondDerivative A t / 2)
      (deriv (sourceCorrelation explicitSecondDerivative A) t)
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hs
    have hjet : |sourceCorrelation explicitSecondDerivative A t / 2 +
        deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 1 / 2 + 5 * a := by
      linarith
    rw [Real.norm_eq_abs, abs_mul, criticalPrimeTest_deriv A t hp,
      abs_mul, Real.abs_exp]
    calc
      _ ≤ B * (Real.exp (t / 2) * (1 / 2 + 5 * a)) :=
        mul_le_mul hG (mul_le_mul_of_nonneg_left hjet (Real.exp_pos _).le)
          (abs_nonneg _) hB
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) ha
    (ae_of_all _ hpt) ((by fun_prop : Continuous
      (fun t : ℝ => k * Real.exp (t / 2))).intervalIntegrable _ _)
  have he : (∫ t in 0..a, Real.exp (t / 2)) ≤ 2 * Real.sqrt 7 := by
    have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2))
        (Real.exp (t / 2)) t := by
      exact (((hasDerivAt_id t).div_const (2 : ℝ)).exp.const_mul 2).congr_deriv
        (by dsimp; ring)
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
      ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)]
    dsimp [a]
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
    norm_num
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
  have hh := hn.trans (mul_le_mul_of_nonneg_left he hk)
  change |actualZeroSevenCriticalWork A| ≤ _ at hh
  calc
    _ ≤ k * (2 * Real.sqrt 7) := hh
    _ = actualZeroSevenCriticalBudget := by
      unfold actualZeroSevenCriticalBudget
      dsimp [k, B, a]
      ring

/-- Same real radius: the genuine covariance lower witness is the original residual upper one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant17c22a2b3148cd94d08d13524f580c151680806075a2dc957f1f28da8a337da5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant17c22a2b3148cd94d08d13524f580c151680806075a2dc957f1f28da8a337da5.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b59405452a29eec0d5a68a017f48675af615de8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
