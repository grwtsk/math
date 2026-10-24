# sourceCorrelation_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:899492c7-6d80-6a80-081f-f9e5356112c2",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_tendsto_one",
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
  "slug": "sourcecorrelation-tendsto-one--999c6cf7cb9c8398d529be73",
  "source": {
    "blob": "cc1f513d18439fa8df7a80ea2acbb795283d3daf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormCoreV2Prebytes/Variant0b39cff3715da8ba413e201f5c0ebf9ee2e9d1257df634ee151ba5f2a6987c2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:999c6cf7cb9c8398d529be73343a842e590f3da769348e3e42d6116f6afdf40c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormCoreV2Prebytes/Variant0b39cff3715da8ba413e201f5c0ebf9ee2e9d1257df634ee151ba5f2a6987c2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:899492c7-6d80-6a80-081f-f9e5356112c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_tendsto_one (s : ℝ) :
    Tendsto (fun R : ℝ => sourceCorrelation explicitSecondDerivative R s) atTop (𝓝 1) := by
  apply Metric.tendsto_nhds.mpr
  intro ε hε
  filter_upwards [eventually_ge_atTop (1 + 5 * |s| / ε)] with R hR
  have hR1 : 1 ≤ R := by
    have hratio : 0 ≤ 5 * |s| / ε := by positivity
    linarith
  have hp : 0 < R := by linarith
  have hlt : 5 * |s| / R < ε := by
    apply (div_lt_iff₀ hp).2
    have hc : 0 ≤ 5 * |s| := by positivity
    have hm := mul_le_mul_of_nonneg_right hR hε.le
    have he : (1 + 5 * |s| / ε) * ε = ε + 5 * |s| := by field_simp
    rw [he] at hm
    linarith
  simpa only [Real.dist_eq] using (sourceCorrelation_sub_one_abs_le hR1 s).trans_lt hlt

/-- The unit source probe may have a radius unrelated to the fixed arithmetic scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormCoreV2Prebytes/Variant0b39cff3715da8ba413e201f5c0ebf9ee2e9d1257df634ee151ba5f2a6987c2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormCoreV2Prebytes/Variant0b39cff3715da8ba413e201f5c0ebf9ee2e9d1257df634ee151ba5f2a6987c2d.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc1f513d18439fa8df7a80ea2acbb795283d3daf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
