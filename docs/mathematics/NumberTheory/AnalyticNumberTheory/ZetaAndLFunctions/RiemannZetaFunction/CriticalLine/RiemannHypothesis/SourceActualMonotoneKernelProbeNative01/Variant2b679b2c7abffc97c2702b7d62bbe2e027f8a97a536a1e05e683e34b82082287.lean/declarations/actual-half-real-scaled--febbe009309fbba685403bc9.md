# actual_half_real_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a437ca57-1b30-72bd-a93e-472d02a3a016",
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
  "slug": "actual-half-real-scaled--febbe009309fbba685403bc9",
  "source": {
    "blob": "66cfaf4d70262f0a13785404f3aca9006122afc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative01/Variant2b679b2c7abffc97c2702b7d62bbe2e027f8a97a536a1e05e683e34b82082287.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:febbe009309fbba685403bc93b68bff00d5eed514cbc7af2a357d2abc8f46fb8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative01/Variant2b679b2c7abffc97c2702b7d62bbe2e027f8a97a536a1e05e683e34b82082287.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a437ca57-1b30-72bd-a93e-472d02a3a016`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–160.

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
    rw [Complex.ofReal_mul, Complex.ofReal_exp]
    congr 2
    push_cast
    ring
  simp only [he, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, sub_zero] at hr
  norm_num at hr
  have hd := hr.div actualSourceNormalization_tendsto (by norm_num)
  apply hd.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hn : sourceNormalization A ≠ 0 := (source_normalization_pos A hA).ne'
  field_simp
  ring

/-- The actual-kernel probe has a positive limit for every positive epsilon, at real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative01/Variant2b679b2c7abffc97c2702b7d62bbe2e027f8a97a536a1e05e683e34b82082287.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative01/Variant2b679b2c7abffc97c2702b7d62bbe2e027f8a97a536a1e05e683e34b82082287.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66cfaf4d70262f0a13785404f3aca9006122afc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
