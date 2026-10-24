# actualMangoldtErrorConvolution_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4996a7f-726f-7a53-1148-43d43f6f74dc",
  "kind": "theorem",
  "lexical_name": "actualMangoldtErrorConvolution_difference_abs_le",
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
  "slug": "actualmangoldterrorconvolution-difference-abs-le--0d85c0600caef180c1a30dc6",
  "source": {
    "blob": "3d9c5ddd0bab70f22667ef654c87af2db56ce53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant472162af11d7e6be2cdaee8d34dce1bba8f8caa3c7ab1841bbd11ab6ce2c1881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d85c0600caef180c1a30dc6b3f58cf12b7d001e333e660c10d3e1e617585db3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant472162af11d7e6be2cdaee8d34dce1bba8f8caa3c7ab1841bbd11ab6ce2c1881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4996a7f-726f-7a53-1148-43d43f6f74dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtErrorConvolution_difference_abs_le {t : ℝ} (ht : 0 ≤ t) :
    |actualMangoldtErrorConvolution (1 / 2) t - actualMangoldtErrorConvolution 1 t| ≤
      (Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|) *
        (1 - Real.exp (-t / 2)) ^ 2 := by
  let ce : ℝ := Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|
  have hi : IntervalIntegrable (fun r => actualCenteredMangoldtLogError r *
      actualMangoldtErrorDifferenceKernel r t) volume 0 t := by
    have h := (actualMangoldtErrorConvolution_intervalIntegrable (1 / 2) ht).sub
      (actualMangoldtErrorConvolution_intervalIntegrable 1 ht)
    convert h using 1
    funext r
    unfold actualMangoldtErrorDifferenceKernel
    rw [show (1 / 2 : ℝ) * (r - t) = (r - t) / 2 by ring, one_mul]
    ring
  have hk := actualMangoldtErrorDifferenceKernel_intervalIntegrable t
  rw [actualMangoldtErrorConvolution_difference_eq_kernel ht]
  calc
    _ ≤ ∫ r in 0..t, |actualCenteredMangoldtLogError r *
        actualMangoldtErrorDifferenceKernel r t| :=
      intervalIntegral.abs_integral_le_integral_abs ht
    _ ≤ ∫ r in 0..t, ce * actualMangoldtErrorDifferenceKernel r t := by
      apply intervalIntegral.integral_mono_on ht hi.abs (hk.const_mul ce)
      intro r hr
      rw [abs_mul, abs_of_nonneg (actualMangoldtErrorDifferenceKernel_nonneg hr.2)]
      exact mul_le_mul_of_nonneg_right (actualCenteredMangoldtLogError_abs_le hr.1)
        (actualMangoldtErrorDifferenceKernel_nonneg hr.2)
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, actualMangoldtErrorDifferenceKernel_mass]

/-- Both closed-seven heads remain explicit in the actual centered finite J bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant472162af11d7e6be2cdaee8d34dce1bba8f8caa3c7ab1841bbd11ab6ce2c1881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant472162af11d7e6be2cdaee8d34dce1bba8f8caa3c7ab1841bbd11ab6ce2c1881.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9c5ddd0bab70f22667ef654c87af2db56ce53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
