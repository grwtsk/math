# cesaroWeight_weighted_budget_both_distances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1806bf5-a2d8-fe3b-1f71-ddef99e647d9",
  "kind": "theorem",
  "lexical_name": "cesaroWeight_weighted_budget_both_distances",
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
  "slug": "cesaroweight-weighted-budget-both-distances--26862b828f2e3669c42ac3f6",
  "source": {
    "blob": "5b54020659211e261c163ccb431365dfd53e9341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 165,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variant5da4e40048d1f1143ae02987149a57cf81ff826f7e3450701e237be4f9997f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26862b828f2e3669c42ac3f6aec2d72146b2701b54f768e5d8546014c6005f1f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variant5da4e40048d1f1143ae02987149a57cf81ff826f7e3450701e237be4f9997f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1806bf5-a2d8-fe3b-1f71-ddef99e647d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cesaroWeight_weighted_budget_both_distances (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤ 5 + 67 / A := by
  have hp : 0 < A := by linarith
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  have hc := (cesaroWeight_second_deriv_continuous A hp).abs
  let K := fun t : ℝ => t * |deriv (deriv (cesaroWeight A)) t|
  have hK : Continuous K := continuous_id.mul hc
  have hmono : (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
      ∫ t in Real.log 2..2 * A, K t := by
    apply intervalIntegral.integral_mono_on hlA
      (((continuous_id.sub continuous_const).mul hc).intervalIntegrable _ _)
      (hK.intervalIntegrable _ _)
    intro t _
    change (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t| ≤
      t * |deriv (deriv (cesaroWeight A)) t|
    exact mul_le_mul_of_nonneg_right (by linarith) (abs_nonneg _)
  have hsub : (∫ t in Real.log 2..2 * A, K t) ≤ ∫ t in 0..2 * A, K t := by
    apply intervalIntegral.integral_mono_interval hl0 hlA le_rfl _
      (hK.intervalIntegrable _ _)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact mul_nonneg ht.1.le (abs_nonneg _)
  have hleft : (∫ t in 0..A, K t) ≤
      ∫ t in 0..A, t * ((67 / A ^ 4) * t + 5 / (2 * A ^ 2)) := by
    apply intervalIntegral.integral_mono_on hp.le (hK.intervalIntegrable _ _)
      ((by fun_prop : Continuous
        (fun t : ℝ => t * ((67 / A ^ 4) * t + 5 / (2 * A ^ 2)))).intervalIntegrable _ _)
    intro t ht
    exact mul_le_mul_of_nonneg_left (cesaroWeight_second_abs_le_origin A t hA ht.1) ht.1
  have hright : (∫ t in A..2 * A, K t) ≤
      ∫ t in A..2 * A, t * ((-67 / A ^ 4) * t + (134 / A ^ 3 + 5 / (2 * A ^ 2))) := by
    apply intervalIntegral.integral_mono_on (by linarith : A ≤ 2 * A)
      (hK.intervalIntegrable _ _)
      ((by fun_prop : Continuous
        (fun t : ℝ => t * ((-67 / A ^ 4) * t +
          (134 / A ^ 3 + 5 / (2 * A ^ 2))))).intervalIntegrable _ _)
    intro t ht
    have hb := mul_le_mul_of_nonneg_left (cesaroWeight_second_abs_le_upper A t hA ht.2)
      (show 0 ≤ t by linarith [ht.1])
    change t * |deriv (deriv (cesaroWeight A)) t| ≤
      t * ((-67 / A ^ 4) * t + (134 / A ^ 3 + 5 / (2 * A ^ 2)))
    calc
      _ ≤ t * (67 / A ^ 4 * (2 * A - t) + 5 / (2 * A ^ 2)) := hb
      _ = _ := by field_simp; ring
  have hsum := add_le_add hleft hright
  rw [intervalIntegral.integral_add_adjacent_intervals
    (hK.intervalIntegrable 0 A) (hK.intervalIntegrable A (2 * A))] at hsum
  rw [integral_quadratic, integral_quadratic] at hsum
  have he : (67 / A ^ 4) / 3 * (A ^ 3 - 0 ^ 3) +
      (5 / (2 * A ^ 2)) / 2 * (A ^ 2 - 0 ^ 2) +
      ((-67 / A ^ 4) / 3 * ((2 * A) ^ 3 - A ^ 3) +
      (134 / A ^ 3 + 5 / (2 * A ^ 2)) / 2 * ((2 * A) ^ 2 - A ^ 2)) = 5 + 67 / A := by
    field_simp
    ring
  rw [he] at hsum
  exact hmono.trans (hsub.trans hsum)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variant5da4e40048d1f1143ae02987149a57cf81ff826f7e3450701e237be4f9997f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variant5da4e40048d1f1143ae02987149a57cf81ff826f7e3450701e237be4f9997f03.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b54020659211e261c163ccb431365dfd53e9341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
