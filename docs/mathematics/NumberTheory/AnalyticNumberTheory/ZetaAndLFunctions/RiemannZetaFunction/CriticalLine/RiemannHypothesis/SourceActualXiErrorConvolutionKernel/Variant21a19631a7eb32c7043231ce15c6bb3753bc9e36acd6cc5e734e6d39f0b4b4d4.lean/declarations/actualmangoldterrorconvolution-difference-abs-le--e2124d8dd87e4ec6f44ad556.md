# actualMangoldtErrorConvolution_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b9c13be-ce72-45d5-2f31-fcc81e4b9b47",
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
  "slug": "actualmangoldterrorconvolution-difference-abs-le--e2124d8dd87e4ec6f44ad556",
  "source": {
    "blob": "507212284ba942b7f7880b121da7d8785f69caa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant21a19631a7eb32c7043231ce15c6bb3753bc9e36acd6cc5e734e6d39f0b4b4d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2124d8dd87e4ec6f44ad556853e60bf807b3c7be86eff4a829812d8e10af39e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant21a19631a7eb32c7043231ce15c6bb3753bc9e36acd6cc5e734e6d39f0b4b4d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b9c13be-ce72-45d5-2f31-fcc81e4b9b47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–110.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant21a19631a7eb32c7043231ce15c6bb3753bc9e36acd6cc5e734e6d39f0b4b4d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant21a19631a7eb32c7043231ce15c6bb3753bc9e36acd6cc5e734e6d39f0b4b4d4.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `507212284ba942b7f7880b121da7d8785f69caa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
