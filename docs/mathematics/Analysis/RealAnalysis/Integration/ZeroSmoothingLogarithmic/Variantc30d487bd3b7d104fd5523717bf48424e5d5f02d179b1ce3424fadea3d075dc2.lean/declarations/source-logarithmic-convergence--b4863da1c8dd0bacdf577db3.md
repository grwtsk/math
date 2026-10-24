# source_logarithmic_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:855c04b5-9400-9e7c-2c36-3b5065fd652f",
  "kind": "theorem",
  "lexical_name": "source_logarithmic_convergence",
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
  "slug": "source-logarithmic-convergence--b4863da1c8dd0bacdf577db3",
  "source": {
    "blob": "8e594d37ab329630c1b9c47ec3660cc2b4730c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 166,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4863da1c8dd0bacdf577db3c1890a8d4e394e16ee1ec7ad07f15d9583130b74",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:855c04b5-9400-9e7c-2c36-3b5065fd652f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_logarithmic_convergence (A : ℝ) (hA : 1 ≤ A) :
    (∀ (ε : ℝ) (hε : 0 < ε),
      Integrable (fun ξ ↦
        (1 + Real.log (1 + 4 * ξ ^ 2) / 2) *
          Complex.normSq
            (sourceFourier (smoothedTest A ε hε) ξ -
              sourceFourier (actualTest A) ξ)) volume) ∧
    (∀ (ε : ℝ) (hε : 0 < ε), ε ≤ 1 →
      tsupport (smoothedTest A ε hε) ⊆ Icc (-A - 1) (A + 1)) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ h1Error A ε ε.property)
      positiveScaleAtZero (𝓝 0) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦
      (∫ ξ,
        (1 + Real.log (1 + 4 * ξ ^ 2) / 2) *
          Complex.normSq
            (sourceFourier (smoothedTest A ε ε.property) ξ -
              sourceFourier (actualTest A) ξ)) / (2 * Real.pi))
      positiveScaleAtZero (𝓝 0) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro ε hε
    simpa only [logarithmicWeight] using weighted_error_integrable A ε hA hε
  · intro ε hε hε1
    exact smoothedTest_tsupport_subset_common A ε hA hε hε1
  · exact h1Error_tendsto_zero A hA _ (fun ε ↦ ε.property) positiveScale_tendsto_zero
  · have hraw :
        Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦
          ∫ ξ, logarithmicWeight ξ *
            Complex.normSq
              (sourceFourier (smoothedTest A ε ε.property) ξ -
                sourceFourier (actualTest A) ξ))
          positiveScaleAtZero (𝓝 0) := by
      apply tendsto_integral_filter_of_dominated_convergence
        (fun ξ ↦ 4 * (logarithmicWeight ξ *
          Complex.normSq (sourceFourier (actualTest A) ξ)))
        (Eventually.of_forall fun ε ↦
          (weighted_error_integrable A ε hA ε.property).aestronglyMeasurable)
        (Eventually.of_forall fun ε ↦ Eventually.of_forall fun ξ ↦ by
          rw [Real.norm_eq_abs, abs_of_nonneg
            (mul_nonneg (logarithmicWeight_nonneg ξ) (Complex.normSq_nonneg _))]
          exact weighted_error_le A ε hA ε.property ξ)
        ((actual_weighted_integrable A hA).const_mul 4)
      exact Eventually.of_forall fun ξ ↦
        weighted_error_tendsto A hA (fun ε : {ε : ℝ // 0 < ε} ↦ (ε : ℝ))
          (fun ε ↦ ε.property) positiveScale_tendsto_zero ξ
    simpa only [logarithmicWeight, zero_div] using hraw.div_const (2 * Real.pi)

end
end ZeroSmoothingLogarithmic
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e594d37ab329630c1b9c47ec3660cc2b4730c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
