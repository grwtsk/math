# actual_row_sharper_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cee6f31-abcc-dff7-37c2-7dff33e0d225",
  "kind": "theorem",
  "lexical_name": "actual_row_sharper_abs_le",
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
  "slug": "actual-row-sharper-abs-le--8bee5f1ced1f754a853f8afc",
  "source": {
    "blob": "228f35d6e15999a175864383c6f525fe6580cca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant1d5262c19db89f5e0774624094cdfc37a9620b0bcb6ffd2c9b02de79bb38c722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bee5f1ced1f754a853f8afc872a39b68b2fee47f1fb92191c2f8fe0045da23e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt06/Variant1d5262c19db89f5e0774624094cdfc37a9620b0bcb6ffd2c9b02de79bb38c722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cee6f31-abcc-dff7-37c2-7dff33e0d225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_row_sharper_abs_le {A t l b : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (hl : (vaughanCutoff A : ℝ) ≤ l) (hlb : l ≤ b) :
    |actualPhysicalPeriodicPrefixRow A t l b| ≤
      (8 / A) * ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
        Real.exp (t / 2) * Real.exp (-3 * Real.log l / 2) := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  have hU : 1 ≤ vaughanCutoff A := vaughanCutoff_pos A hA1
  have hU1 : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by exact_mod_cast hU
  have hl1 : 1 ≤ l := hU1.trans hl
  have hl0 : 0 < l := by linarith
  have hp (x : ℝ) (hx : x ∈ Icc l b) : 0 < x := hl0.trans_le hx.1
  have hz (x : ℝ) (hx : x ∈ Icc l b) : 0 ≤ t + Real.log x :=
    add_nonneg ht (Real.log_nonneg (hl1.trans hx.1))
  have hF : ContDiffOn ℝ 1 (actualPeriodicPhysicalCellProfile A t) (uIcc l b) := by
    rw [uIcc_of_le hlb]
    exact actualPeriodicPhysicalCellProfile_contDiffOn hAp hl0 b t
  let C : ℝ := Real.exp (t / 2) * (4 / A)
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hFl : |actualPeriodicPhysicalCellProfile A t l| ≤
      C * Real.exp (-3 * Real.log l / 2) := by
    have hh := actualPeriodicPhysicalCellProfile_abs_le hA hl0 (hz l ⟨le_rfl, hlb⟩)
    dsimp [C]
    nlinarith
  have hFb : |actualPeriodicPhysicalCellProfile A t b| ≤
      C * Real.exp (-3 * Real.log b / 2) := by
    have hh := actualPeriodicPhysicalCellProfile_abs_le hA (hl0.trans_le hlb)
      (hz b ⟨hlb, le_rfl⟩)
    dsimp [C]
    nlinarith
  have hc : ContinuousOn (fun x : ℝ => C * Real.exp (-5 * Real.log x / 2)) (uIcc l b) := by
    have hlog : ContinuousOn Real.log (uIcc l b) :=
      Real.continuousOn_log.mono (fun x hx => by
        rw [uIcc_of_le hlb] at hx
        exact (hp x hx).ne')
    have he := Real.continuous_exp.comp_continuousOn ((hlog.const_mul (-5)).div_const 2)
    exact he.const_mul C
  have hD : IntervalIntegrable (fun x => |deriv (actualPeriodicPhysicalCellProfile A t) x|)
      volume l b := by
    simpa only [Real.norm_eq_abs] using
      hF.absolutelyContinuousOnInterval.intervalIntegrable_deriv.norm
  have hDi : (∫ x in l..b, |deriv (actualPeriodicPhysicalCellProfile A t) x|) ≤
      C * ((2 / 3 : ℝ) * (Real.exp (-3 * Real.log l / 2) -
        Real.exp (-3 * Real.log b / 2))) := by
    calc
      _ ≤ ∫ x in l..b, C * Real.exp (-5 * Real.log x / 2) := by
        apply intervalIntegral.integral_mono_on hlb hD hc.intervalIntegrable
        intro x hx
        have hh := actualPeriodicPhysicalCellProfile_deriv_abs_le hA (hp x hx) (hz x hx)
        dsimp [C]
        nlinarith
      _ = _ := by rw [intervalIntegral.integral_const_mul, physical_decay_integral hl0 hlb]
  have hDb : Real.exp (-3 * Real.log b / 2) ≤ Real.exp (-3 * Real.log l / 2) := by
    apply Real.exp_le_exp.mpr
    linarith [Real.log_le_log hl0 hlb]
  have hb : |actualPeriodicPhysicalCellProfile A t b| + |actualPeriodicPhysicalCellProfile A t l| +
      (∫ x in l..b, |deriv (actualPeriodicPhysicalCellProfile A t) x|) ≤
      2 * C * Real.exp (-3 * Real.log l / 2) := by
    nlinarith [mul_nonneg hC (sub_nonneg.mpr hDb)]
  have he := actual_physical_prefix_abel_abs_le (vaughanCutoff A) hU hl hlb
    (actualPeriodicPhysicalCellProfile A t) hF
  change |actualPhysicalPeriodicPrefixRow A t l b| ≤ _ at he
  apply he.trans
  calc
    _ ≤ (vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16 *
        (2 * C * Real.exp (-3 * Real.log l / 2)) := mul_le_mul_of_nonneg_left hb (by positivity)
    _ = _ := by dsimp [C]; ring

/-- The full original time domain is preserved while true support controls this periodic part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt06/Variant1d5262c19db89f5e0774624094cdfc37a9620b0bcb6ffd2c9b02de79bb38c722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant1d5262c19db89f5e0774624094cdfc37a9620b0bcb6ffd2c9b02de79bb38c722.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228f35d6e15999a175864383c6f525fe6580cca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
