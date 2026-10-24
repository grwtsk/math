# actualNegativeDefect_reducedOffAxis_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7224722d-6dab-9db1-1f99-ca31ff087cde",
  "kind": "theorem",
  "lexical_name": "actualNegativeDefect_reducedOffAxis_tendsto_zero",
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
  "slug": "actualnegativedefect-reducedoffaxis-tendsto-zero--e510f239a422d4a254c8b24d",
  "source": {
    "blob": "40e818390a27cd01c0cc0ed6ead87a4248d484ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeDefectNative01/Variantdccb85ef0120e85a40fbde57b2876748c4a90967e254f5d09dfc2d86b5796be8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e510f239a422d4a254c8b24dd3f41f69b37acc581ea2763f1c052d0229f0a632",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeDefectNative01/Variantdccb85ef0120e85a40fbde57b2876748c4a90967e254f5d09dfc2d86b5796be8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7224722d-6dab-9db1-1f99-ca31ff087cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeDefect_reducedOffAxis_tendsto_zero :
    Tendsto (fun A : ℝ => actualSourceNegativeDefect A -
      actualReducedOffAxisNegativeDefect A) atTop (𝓝 0) := by
  have hz := actualSourceQuadraticValue_reducedOffAxis_tendsto_zero.norm
  apply squeeze_zero_norm' _ hz
  filter_upwards [] with A
  simpa only [Real.norm_eq_abs] using actualNegativeDefect_distance_le_source_error A

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeDefectNative01/Variantdccb85ef0120e85a40fbde57b2876748c4a90967e254f5d09dfc2d86b5796be8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeDefectNative01/Variantdccb85ef0120e85a40fbde57b2876748c4a90967e254f5d09dfc2d86b5796be8.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e818390a27cd01c0cc0ed6ead87a4248d484ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
