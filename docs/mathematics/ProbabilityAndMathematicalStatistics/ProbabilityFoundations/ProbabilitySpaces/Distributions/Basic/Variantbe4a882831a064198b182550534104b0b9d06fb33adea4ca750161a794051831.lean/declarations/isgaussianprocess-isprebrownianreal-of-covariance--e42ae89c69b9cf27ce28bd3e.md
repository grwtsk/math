# IsGaussianProcess.isPreBrownianReal_of_covariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df6d8e4a-1d9d-feee-dc50-2b252d5d28c0",
  "kind": "theorem",
  "lexical_name": "IsGaussianProcess.isPreBrownianReal_of_covariance",
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
  "slug": "isgaussianprocess-isprebrownianreal-of-covariance--e42ae89c69b9cf27ce28bd3e",
  "source": {
    "blob": "dbd5a9638d2326fb2d19e0230681fb41d06e191e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 139,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e42ae89c69b9cf27ce28bd3e4c670a8cbf60e76a748f493bdb0f9840fe685005",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df6d8e4a-1d9d-feee-dc50-2b252d5d28c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsGaussianProcess.isPreBrownianReal_of_covariance (h1 : IsGaussianProcess X P)
    (h2 : ∀ t, P[X t] = 0) (h3 : ∀ s t, s ≤ t → cov[X s, X t; P] = s) :
    IsPreBrownianReal X P where
  hasLaw I := by
    refine ⟨.of_eval fun _ ↦ h1.aemeasurable _, ?_⟩
    apply (MeasurableEquiv.toLp 2 (_ → ℝ)).map_measurableEquiv_injective
    rw [MeasurableEquiv.coe_toLp, ← PiLp.coe_symm_continuousLinearEquiv 2 ℝ]
    have := (h1.hasGaussianLaw I).isGaussian_map
    apply IsGaussian.ext
    · rw [integral_map, integral_map, integral_map]
      · simp only [id_eq]
        rw [ContinuousLinearEquiv.integral_comp_id_comm,
          ContinuousLinearEquiv.integral_comp_comm]
        simp only [PiLp.continuousLinearEquiv_symm_apply, integral_id_projectiveFamily,
          WithLp.toLp_zero, WithLp.toLp_eq_zero]
        congr with i
        rw [eval_integral]
        · simpa using h2 _
        · exact fun _ ↦ (h1.hasGaussianLaw_eval _).integrable
      any_goals fun_prop
      exact .of_eval fun _ ↦ h1.aemeasurable _
    · rw [← ContinuousLinearMap.toBilinForm_inj]
      refine LinearMap.BilinForm.ext_of_isSymm isPosSemidef_covarianceBilin.isSymm
        isPosSemidef_covarianceBilin.isSymm fun x ↦ ?_
      simp only [ContinuousLinearMap.toBilinForm_apply]
      rw [PiLp.coe_symm_continuousLinearEquiv, covarianceBilin_apply_pi, covarianceBilin_apply_pi]
      · congrm ∑ i, ∑ j, _ * ?_
        rw [covariance_eval_projectiveFamily, covariance_map]
        · wlog hij : i.1 ≤ j.1 generalizing i j
          · rw [covariance_comm, this j i (by grind), min_comm]
          rw [min_eq_left hij]
          exact h3 i j hij
        any_goals exact Measurable.aestronglyMeasurable (by fun_prop)
        exact .of_eval (fun _ ↦ h1.aemeasurable _)
      · exact fun i ↦ (IsGaussian.hasGaussianLaw_id.eval i).memLp_two
      · exact fun i ↦ ((h1.hasGaussianLaw I).isGaussian_map.hasGaussianLaw_id.eval i).memLp_two

/-- A pre-Brownian motion has independent increments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd5a9638d2326fb2d19e0230681fb41d06e191e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
