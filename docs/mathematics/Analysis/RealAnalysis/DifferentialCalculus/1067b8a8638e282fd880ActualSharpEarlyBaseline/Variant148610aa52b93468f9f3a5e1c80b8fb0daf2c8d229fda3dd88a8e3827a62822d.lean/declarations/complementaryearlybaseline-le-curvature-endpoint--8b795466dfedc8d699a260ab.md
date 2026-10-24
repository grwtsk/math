# complementaryEarlyBaseline_le_curvature_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e884054-5c98-9faa-f526-cce4bf1a6ca4",
  "kind": "theorem",
  "lexical_name": "complementaryEarlyBaseline_le_curvature_endpoint",
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
  "slug": "complementaryearlybaseline-le-curvature-endpoint--8b795466dfedc8d699a260ab",
  "source": {
    "blob": "3310621f7e849da404f8e35fddffac50ae46b445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b795466dfedc8d699a260ab08b7cf734f4981d3c71fbf3db366b1b2bf3610e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e884054-5c98-9faa-f526-cce4bf1a6ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complementaryEarlyBaseline_le_curvature_endpoint {A : ℝ} (hA : 25600 ≤ A) :
    complementaryEarlyBaseline A ≤
      -Real.sqrt (vaughanCutoff A : ℝ) - 1 / Real.sqrt (vaughanCutoff A : ℝ) + 2 +
        (162826 / (7623 * A ^ 2)) / 2 * Real.sqrt (vaughanCutoff A : ℝ) *
          (Real.log (vaughanCutoff A : ℝ)) ^ 2 := by
  have hA1 : 1 ≤ A := by linarith
  have hU := (actual_cutoff_order A hA1).1
  let D : ℝ → ℝ := fun x => -(x - 1) / (2 * x * Real.sqrt x) +
    (162826 / (7623 * A ^ 2)) * ((Real.log x) ^ 2 / 4 + Real.log x) / Real.sqrt x
  have hc : ContinuousOn D (Icc 1 (vaughanCutoff A : ℝ)) := by
    intro x hx
    have hx0 : 0 < x := by linarith [hx.1]
    have hs0 : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx0).ne'
    exact (((continuousAt_id.sub continuousAt_const).neg.div
      ((continuousAt_const.mul continuousAt_id).mul Real.continuous_sqrt.continuousAt)
      (mul_ne_zero (mul_ne_zero (by norm_num) hx0.ne') hs0)).add
      ((continuousAt_const.mul
        (((Real.continuousAt_log hx0.ne').pow 2).div_const 4 |>.add
          (Real.continuousAt_log hx0.ne'))).div
        Real.continuous_sqrt.continuousAt hs0)).continuousWithinAt
  have hiD : IntervalIntegrable D volume 1 (vaughanCutoff A : ℝ) :=
    hc.intervalIntegrable_of_Icc hU
  have hi : IntervalIntegrable
      (fun x => (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x) volume 1 (vaughanCutoff A : ℝ) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hU).mpr
      ((early_floor_derivative_integrable hA1).mono_set Ioc_subset_Icc_self)
  have hm := intervalIntegral.integral_mono_on hU hi hiD
    (fun x hx => actualEarlyDerivative_le_curvature_majorant hA hx)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx => sharpEarlyPrimitive_hasDerivAt (show 0 < x by
      rw [uIcc_of_le hU] at hx
      linarith [hx.1])) hiD
  rw [he] at hm
  unfold complementaryEarlyBaseline
  rw [← intervalIntegral.integral_of_le hU]
  simp only [sharpEarlyPrimitive, Real.sqrt_one, Real.log_one,
    zero_pow (by decide : 2 ≠ 0), mul_zero, one_div_one] at hm
  linarith

/-- A nested-square-root logarithm estimate controls the actual moving floor endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3310621f7e849da404f8e35fddffac50ae46b445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
