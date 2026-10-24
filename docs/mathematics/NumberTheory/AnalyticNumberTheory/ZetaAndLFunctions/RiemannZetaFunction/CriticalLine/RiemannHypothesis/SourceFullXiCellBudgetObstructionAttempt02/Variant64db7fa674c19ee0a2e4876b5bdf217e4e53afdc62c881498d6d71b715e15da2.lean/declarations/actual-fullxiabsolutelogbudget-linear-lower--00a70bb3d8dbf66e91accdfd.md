# actual_fullXiAbsoluteLogBudget_linear_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6a87e92-d66d-2626-0781-88fc9bf934d6",
  "kind": "theorem",
  "lexical_name": "actual_fullXiAbsoluteLogBudget_linear_lower",
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
  "slug": "actual-fullxiabsolutelogbudget-linear-lower--00a70bb3d8dbf66e91accdfd",
  "source": {
    "blob": "47fbc4d2b87dfd2d9eaf746fd5666439656103f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCellBudgetObstructionAttempt02/Variant64db7fa674c19ee0a2e4876b5bdf217e4e53afdc62c881498d6d71b715e15da2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00a70bb3d8dbf66e91accdfdb0750660ca882a06ab02305297a97a175fae8cd1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCellBudgetObstructionAttempt02/Variant64db7fa674c19ee0a2e4876b5bdf217e4e53afdc62c881498d6d71b715e15da2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6a87e92-d66d-2626-0781-88fc9bf934d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_fullXiAbsoluteLogBudget_linear_lower {A : ℝ} (hA : 91 ≤ A) :
    A / 80 - Real.log 2 / 4 ≤ fullXiAbsoluteLogBudget A := by
  have hp : 0 < A := by linarith
  have hlog0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hlog1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hL : Real.log (2 : ℝ) ≤ A / 20 := by linarith
  have hU : A / 20 ≤ 2 * A := by linarith
  have hc := (actual_fullXiLogWeight_continuous hp).abs
  have hm : (∫ t in Real.log 2..A / 20, (1 / 4 : ℝ)) ≤
      ∫ t in Real.log 2..A / 20, |fullXiLogWeight A t| := by
    apply intervalIntegral.integral_mono_on hL
      (continuous_const.intervalIntegrable _ _) (hc.intervalIntegrable _ _)
    intro t ht
    have hn := actual_fullXiLogWeight_early_negative (by linarith : 40 ≤ A)
      (hlog0.trans ht.1) ht.2
    linarith [neg_le_abs (fullXiLogWeight A t)]
  have hr := intervalIntegral.integral_mono_interval (μ := volume) hL
    (by linarith : Real.log (2 : ℝ) ≤ 2 * A) le_rfl hU
    (f := fun t => |fullXiLogWeight A t|)
    (Filter.Eventually.of_forall (fun t => abs_nonneg (fullXiLogWeight A t)))
    (hc.intervalIntegrable _ _)
  rw [intervalIntegral.integral_const] at hm
  unfold fullXiAbsoluteLogBudget
  simp only [smul_eq_mul] at hm
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCellBudgetObstructionAttempt02/Variant64db7fa674c19ee0a2e4876b5bdf217e4e53afdc62c881498d6d71b715e15da2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCellBudgetObstructionAttempt02/Variant64db7fa674c19ee0a2e4876b5bdf217e4e53afdc62c881498d6d71b715e15da2.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47fbc4d2b87dfd2d9eaf746fd5666439656103f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
