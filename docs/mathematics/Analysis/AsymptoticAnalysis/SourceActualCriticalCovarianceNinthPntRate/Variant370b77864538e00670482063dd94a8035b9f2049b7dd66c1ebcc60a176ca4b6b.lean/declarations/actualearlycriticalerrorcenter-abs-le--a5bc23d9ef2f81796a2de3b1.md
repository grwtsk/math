# actualEarlyCriticalErrorCenter_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:572130bf-cdc8-a63c-eb69-acd01f82d81d",
  "kind": "theorem",
  "lexical_name": "actualEarlyCriticalErrorCenter_abs_le",
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
  "slug": "actualearlycriticalerrorcenter-abs-le--a5bc23d9ef2f81796a2de3b1",
  "source": {
    "blob": "6809ba32c4f7206e85f5a4b0b40c220a86508214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 54,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variant370b77864538e00670482063dd94a8035b9f2049b7dd66c1ebcc60a176ca4b6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5bc23d9ef2f81796a2de3b1374bef5101f0bc443581edf063b140dbf429f7cb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variant370b77864538e00670482063dd94a8035b9f2049b7dd66c1ebcc60a176ca4b6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:572130bf-cdc8-a63c-eb69-acd01f82d81d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actualEarlyCriticalErrorCenter_abs_le {T : ℝ} (hT : Real.log 7 ≤ T) :
    |actualEarlyCriticalErrorCenter T| ≤ (B / 2) * Real.exp (T / 2) := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hi : IntervalIntegrable actualCenteredMangoldtLogError volume (Real.log 7) T :=
    (actualError_intervalIntegrable (ha.trans hT)).mono_set (by
      rw [uIcc_of_le (ha.trans hT), uIcc_of_le hT]
      exact Icc_subset_Icc ha le_rfl)
  have hp : ∀ t ∈ Ioc (Real.log 7) T,
      ‖actualCenteredMangoldtLogError t * Real.exp (t / 2)‖ ≤ B * Real.exp (t / 2) := by
    intro t ht
    rw [Real.norm_eq_abs, abs_mul, Real.abs_exp]
    exact mul_le_mul_of_nonneg_right
      (actualCenteredMangoldtLogError_abs_le (ha.trans ht.1.le)) (Real.exp_pos _).le
  have hm := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hT
    (ae_of_all _ hp) ((by fun_prop : Continuous
      (fun t : ℝ => B * Real.exp (t / 2))).intervalIntegrable _ _)
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hm
  have hb : 0 ≤ B := by positivity
  have hh := hm.trans (mul_le_mul_of_nonneg_left (exp_half_mass_le
    (l := Real.log 7) (b := T)) hb)
  unfold actualEarlyCriticalErrorCenter
  rw [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 1 / 4)]
  nlinarith

/-- The true moving early interval keeps its complete center before this absolute payment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variant370b77864538e00670482063dd94a8035b9f2049b7dd66c1ebcc60a176ca4b6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovarianceNinthPntRate/Variant370b77864538e00670482063dd94a8035b9f2049b7dd66c1ebcc60a176ca4b6b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6809ba32c4f7206e85f5a4b0b40c220a86508214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
