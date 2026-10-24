# actual_half_real_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fa560cb-7c5a-fc0b-db2d-7c85be9bccb0",
  "kind": "theorem",
  "lexical_name": "actual_half_real_scaled",
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
  "slug": "actual-half-real-scaled--697a98c22d8437a1fc89f512",
  "source": {
    "blob": "3d65275ad0887c895255b6e2dbca29f8772e62a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative04/Variantf4c0b3cd5feea0c18c61d616f53e116e7dd6f52a378cd726716564c801667fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:697a98c22d8437a1fc89f512e0acde8c14aed376872d27d98aed9c1bdc06128c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative04/Variantf4c0b3cd5feea0c18c61d616f53e116e7dd6f52a378cd726716564c801667fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fa560cb-7c5a-fc0b-db2d-7c85be9bccb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_half_real_scaled :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A / 2) *
      (actualHalfCorrelationTransform A (1 / 4)).re) atTop
      (𝓝 (5435817984 / ((65536 / 109395 : ℝ) / 16))) := by
  have hh := actualHalfCorrelationTransform_normalized_tendsto
    (z := (1 / 4 : ℂ)) (by norm_num)
  have hr := (Complex.continuous_re.tendsto _).comp hh
  have he (A : ℝ) : actualCorrelationAsymptoticScale A (1 / 4) =
      ((A ^ 9 * sourceNormalization A * Real.exp (-A / 2) : ℝ) : ℂ) := by
    unfold actualCorrelationAsymptoticScale
    have hx : -2 * (1 / 4 : ℂ) * (A : ℂ) = ((-A / 2 : ℝ) : ℂ) := by
      push_cast
      ring
    rw [hx, ← Complex.ofReal_exp]
    push_cast
    rfl
  have hr' : Tendsto (fun A : ℝ => A ^ 9 * sourceNormalization A *
      Real.exp (-A / 2) * (actualHalfCorrelationTransform A (1 / 4)).re)
      atTop (𝓝 (5435817984 : ℝ)) := by
    convert! hr using 1
    · ext A
      dsimp only [Function.comp_def]
      rw [he]
      simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    · norm_num
  have hd := hr'.div actualSourceNormalization_tendsto (by norm_num)
  apply hd.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hn : sourceNormalization A ≠ 0 := (source_normalization_pos A hA).ne'
  dsimp
  field_simp [hn]

/-- The actual-kernel probe has a positive limit for every positive epsilon, at real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative04/Variantf4c0b3cd5feea0c18c61d616f53e116e7dd6f52a378cd726716564c801667fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative04/Variantf4c0b3cd5feea0c18c61d616f53e116e7dd6f52a378cd726716564c801667fc5.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d65275ad0887c895255b6e2dbca29f8772e62a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
