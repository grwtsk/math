# source_correlation_cont_diff_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "053421702157bb97913dc8b71487be4576a46bb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6258c654-beb7-47b6-6446-1d55ac3d52cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c088aa8-6460-fc45-7c19-b6c875091032",
  "kind": "theorem",
  "lexical_name": "source_correlation_cont_diff_four",
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
  "slug": "source-correlation-cont-diff-four--a4f8e5c7b3c46d43acaa3321",
  "source": {
    "blob": "053421702157bb97913dc8b71487be4576a46bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 302,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4f8e5c7b3c46d43acaa3321d2b893c554a953fdac986832a42b4f750d8c0540",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c088aa8-6460-fc45-7c19-b6c875091032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_correlation_cont_diff_four (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 4 (sourceCorrelation explicitSecondDerivative A) := by
  have hc : Continuous (spectralDensity A) := by
    unfold spectralDensity
    exact (Complex.continuous_normSq.comp
      (sourceFourier_continuous (normalizedTest_integrable A (by linarith)))).div_const _
  have hm : Integrable (fun ξ : ℝ ↦ ‖ξ‖ ^ 4 * ‖spectralDensity A ξ‖) := by
    convert spectral_density_fourth_moment_integrable A hA using 1
    funext ξ
    simp only [Real.norm_eq_abs, abs_of_nonneg (spectralDensity_nonneg A ξ), ← abs_pow]
    rw [abs_of_nonneg (by positivity : 0 ≤ ξ ^ 4)]
  have h := cosine_integral_cont_diff (spectralDensity A) 4
    (spectralDensity_integrable A hA) hc hm
  convert h using 1 <;> try rfl
  funext t
  exact sourceCorrelation_eq_integral_cos A t hA

/-- The true fixed-bump base correlation is eighth-order smooth despite the bump boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `053421702157bb97913dc8b71487be4576a46bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
