# cubic_log_derivative_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e089962-0288-04d5-a74e-8761775a9b62",
  "kind": "theorem",
  "lexical_name": "cubic_log_derivative_difference_abs_le",
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
  "slug": "cubic-log-derivative-difference-abs-le--4651b01f22ee10a8697b617f",
  "source": {
    "blob": "ef196f8e4b9891fec1ed77fd796fc260fe7920cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/306f8c6ccf756c2a1fd2SourceCubicSamplingRemainder/Variant6ed63aee52eac8d998bc2b27e51df1ad6aac0abc54a76bb3cd8214c4bbc5fcdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4651b01f22ee10a8697b617f4dc2fb2c88941cf8da511b3b3ede7b7a1faadb30",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/306f8c6ccf756c2a1fd2SourceCubicSamplingRemainder/Variant6ed63aee52eac8d998bc2b27e51df1ad6aac0abc54a76bb3cd8214c4bbc5fcdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e089962-0288-04d5-a74e-8761775a9b62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubic_log_derivative_difference_abs_le {A k u : ℝ} (hA : 91 ≤ A)
    (hk : 0 < k) (hu : 1 ≤ u) :
    |deriv (logProfile A k) u - cubicLogModelDerivative A k u| ≤
      67 / (A ^ 4 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        ((5 / 24 : ℝ) * (Real.log u) ^ 4 + (1 / 48 : ℝ) * (Real.log u) ^ 5) := by
  have hup : 0 < u := by linarith
  have hl : 0 ≤ Real.log u := Real.log_nonneg hu
  have hweight : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  have hR := cubicCorrelationRemainder_abs_le A (Real.log k) (Real.log u) hA
  have hd := cubicCorrelationRemainder_deriv_abs_le A (Real.log k) (Real.log u) hA
  rw [abs_of_nonneg hl] at hd
  have hc : |1 - Real.log u / 2| ≤ 1 + Real.log u / 2 := by
    simpa only [abs_one, abs_div, abs_of_nonneg hl,
      abs_of_pos (by norm_num : (0 : ℝ) < 2)] using abs_sub (1 : ℝ) (Real.log u / 2)
  rw [cubic_log_derivative_difference (by linarith) hk hup, abs_mul,
    abs_of_nonneg hweight]
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|1 - Real.log u / 2| * |cubicCorrelationRemainder A (Real.log k) (Real.log u)| +
          Real.log u * |deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u)|) := by
      apply mul_le_mul_of_nonneg_left _ hweight
      simpa only [abs_mul, abs_of_nonneg hl] using abs_add_le
        ((1 - Real.log u / 2) * cubicCorrelationRemainder A (Real.log k) (Real.log u))
        (Real.log u * deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u))
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        ((1 + Real.log u / 2) * (67 / A ^ 4 * (Real.log u) ^ 4 / 24) +
          Real.log u * (67 / A ^ 4 * (Real.log u) ^ 3 / 6)) := by
      gcongr
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.SourceCubicSamplingRemainder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/306f8c6ccf756c2a1fd2SourceCubicSamplingRemainder/Variant6ed63aee52eac8d998bc2b27e51df1ad6aac0abc54a76bb3cd8214c4bbc5fcdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/306f8c6ccf756c2a1fd2SourceCubicSamplingRemainder/Variant6ed63aee52eac8d998bc2b27e51df1ad6aac0abc54a76bb3cd8214c4bbc5fcdd.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef196f8e4b9891fec1ed77fd796fc260fe7920cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
