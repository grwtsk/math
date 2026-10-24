# original_lower_of_separate_nonaffine_caps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b4077d1-9cb8-ed4e-89c5-235a7d61a8dd",
  "kind": "theorem",
  "lexical_name": "original_lower_of_separate_nonaffine_caps",
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
  "slug": "original-lower-of-separate-nonaffine-caps--36428cf0989806dd05590037",
  "source": {
    "blob": "8a8ee070a980c8f784c82d1223aa127b3d066b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 499,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Variant42b8d48ed27a0e9537cd5da8419e1c0916108e9999ba8708dd3fa77dcf36f945.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36428cf0989806dd05590037ca25af5be005f81e32162ca5f0409b099227769c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Variant42b8d48ed27a0e9537cd5da8419e1c0916108e9999ba8708dd3fa77dcf36f945.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b4077d1-9cb8-ed4e-89c5-235a7d61a8dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_lower_of_separate_nonaffine_caps (R_B R_epsilon B epsilon : ℝ)
    (hU : ∀ A : ℝ, R_B ≤ A → nonaffineWork A ≤ B)
    (hTrend : ∀ A : ℝ, R_epsilon ≤ A → |trendValue A| ≤ epsilon) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor (consumerRadius R_B R_epsilon))
        (archimedeanMultiplier 0 + 2 - 2 * B - 2 * epsilon -
          2 * continuousDefect (consumerRadius R_B R_epsilon)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply original_lower_of_nonaffine_cap
  · exact (by norm_num : (1 : ℝ) ≤ 91).trans (le_max_left _ _)
  · intro A hA
    exact hU A ((le_max_left R_B R_epsilon).trans ((le_max_right _ _).trans hA))
  · intro A hA
    exact hTrend A ((le_max_right R_B R_epsilon).trans ((le_max_right _ _).trans hA))

end FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction

set_option pp.proofs true
#print FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.mertensResidual_eq_defect_trend_nonaffine
#print FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.kernelMomentOne_eq
#print FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.trendValue_abs_le_of_samples
#print FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.originalPrefixFloor
#print FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.originalPrefixFloor_le
#print FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.residual_le_of_nonaffine_cap
#print FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.original_lower_of_nonaffine_cap
#print FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.estimate_of_nonaffine_cap
#print FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.consumerRadius
#print FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.original_lower_of_separate_nonaffine_caps
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.normalizedPsiError_zero
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.nonaffineDiscrepancy_upper
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.normalizedPsiError_eq_prefix
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.chebyshev_mul_continuous_intervalIntegrable
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.normalizedPsiError_intervalIntegrable
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.kapitzaWeight_continuous
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.weightedPsiError_intervalIntegrable
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.kernelMomentZero_eq
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.mertensResidual_eq_weightedPsi
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.mertensResidual_eq_affine_nonaffine
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.one_add_continuous_eq_defect
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.mertensResidual_eq_defect_trend_nonaffine
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.positiveFirstMoment_eq_negative
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.kernelMomentOne_eq
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.negativeFirstMoment_abs_le_four
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.kernelMomentZero_abs_le_one
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.kernelMomentOne_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.trendValue_abs_le_of_samples
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.continuousDefect_antitone
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.originalPrefixFloor_le
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.residual_le_of_nonaffine_cap
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.original_lower_of_nonaffine_cap
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.estimate_of_nonaffine_cap
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction.original_lower_of_separate_nonaffine_caps
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Variant42b8d48ed27a0e9537cd5da8419e1c0916108e9999ba8708dd3fa77dcf36f945.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Variant42b8d48ed27a0e9537cd5da8419e1c0916108e9999ba8708dd3fa77dcf36f945.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a8ee070a980c8f784c82d1223aa127b3d066b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
