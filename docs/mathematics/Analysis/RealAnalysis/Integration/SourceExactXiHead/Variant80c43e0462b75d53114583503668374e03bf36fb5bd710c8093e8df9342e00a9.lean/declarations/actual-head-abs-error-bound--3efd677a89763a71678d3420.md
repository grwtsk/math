# actual_head_abs_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2a48da8-cbd5-af4e-c7f5-ff9b69516ad0",
  "kind": "theorem",
  "lexical_name": "actual_head_abs_error_bound",
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
  "slug": "actual-head-abs-error-bound--3efd677a89763a71678d3420",
  "source": {
    "blob": "3352818ed1234b402b8c152910efcc64cf67b80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant80c43e0462b75d53114583503668374e03bf36fb5bd710c8093e8df9342e00a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3efd677a89763a71678d34204d33f2f0635cb5d885e448119843817ea7d40f28",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant80c43e0462b75d53114583503668374e03bf36fb5bd710c8093e8df9342e00a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2a48da8-cbd5-af4e-c7f5-ff9b69516ad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_head_abs_error_bound (A : ℝ) (hA : 91 ≤ A) :
    |actualXiHead A + actualXiHeadJ / 2| ≤ exactHeadErrorBudget A := by
  rw [head_recovery A hA]
  have hbound : IntervalIntegrable (fun y : ℝ =>
      wholeHeadHeight * (15 / A ^ 2) * (1 / y ^ (3 / 2 : ℝ))) volume 2 7 :=
    (inverse_power_head_continuous.intervalIntegrable_of_Icc (by norm_num)).const_mul _
  have hb := intervalIntegral.norm_integral_le_of_norm_le (by norm_num : (2 : ℝ) ≤ 7)
    (f := fun y => physicalXiDensity y * (minusCorrelationWeight A (Real.log y) + 1 / 2))
    (g := fun y : ℝ => wholeHeadHeight * (15 / A ^ 2) * (1 / y ^ (3 / 2 : ℝ)))
    (Filter.Eventually.of_forall (fun y hy => by
      have hy2 : 2 ≤ y := hy.1.le
      have hyp : 0 < y := by linarith
      have ht0 : 0 ≤ Real.log y := Real.log_nonneg (by linarith)
      have ht7 : Real.log y ≤ Real.log 7 := Real.log_le_log hyp hy.2
      have hx := shiftedActualChebyshev_abs_le_wholeHeadHeight y hy2 hy.2
      have hw := actual_minus_kernel_error_fixed_head A (Real.log y) hA ht0 ht7
      change |physicalXiDensity y * (minusCorrelationWeight A (Real.log y) + 1 / 2)| ≤ _
      unfold physicalXiDensity
      rw [abs_mul, abs_div, abs_of_pos (Real.rpow_pos_of_pos hyp _)]
      change |shiftedActualChebyshev y| / y ^ (3 / 2 : ℝ) *
        |minusCorrelationWeight A (Real.log y) + 1 / 2| ≤ _
      have hp := Real.rpow_pos_of_pos hyp (3 / 2 : ℝ)
      have hmul := mul_le_mul
        (div_le_div_of_nonneg_right hx hp.le) hw
        (abs_nonneg _) (div_nonneg wholeHeadHeight_nonneg hp.le)
      calc
        _ ≤ wholeHeadHeight / y ^ (3 / 2 : ℝ) * (15 / A ^ 2) := hmul
        _ = _ := by ring)) hbound
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, inverse_power_head_integral] at hb
  unfold exactHeadErrorBudget
  convert hb using 1
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant80c43e0462b75d53114583503668374e03bf36fb5bd710c8093e8df9342e00a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant80c43e0462b75d53114583503668374e03bf36fb5bd710c8093e8df9342e00a9.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3352818ed1234b402b8c152910efcc64cf67b80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
