# IsPreBrownianReal.indepFun_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3219e420-8e3a-bef9-9368-2f24459a6e7a",
  "kind": "lemma",
  "lexical_name": "IsPreBrownianReal.indepFun_shift",
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
  "slug": "isprebrownianreal-indepfun-shift--8d2de55c35a4e7b241618e99",
  "source": {
    "blob": "dbd5a9638d2326fb2d19e0230681fb41d06e191e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 261,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d2de55c35a4e7b241618e990bb8a7b78a0285a4eff11d17ac9f4c38ef851f14",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3219e420-8e3a-bef9-9368-2f24459a6e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPreBrownianReal.indepFun_shift (hB : IsPreBrownianReal B P) (t₀ : ℝ≥0) :
    IndepFun (fun ω t ↦ B (t₀ + t) ω - B t₀ ω) (fun ω (t : Set.Iic t₀) ↦ B t ω) P := by
  have mX t := hB.aemeasurable t
  apply IsGaussianProcess.indepFun_of_covariance_eq_zero
  · apply hB.isGaussianProcess.of_isGaussianProcess
    rintro (t | ⟨t, ht⟩)
    · exact ⟨{t₀, t₀ + t},
        { toFun x := x ⟨t₀ + t, by simp⟩ - x ⟨t₀, by simp⟩
          map_add' x y := by simp; abel
          map_smul' c x := by simp; ring }, by simp⟩
    · exact ⟨{t},
        { toFun x := x ⟨t, by simp⟩
          map_add' x y := by simp
          map_smul' c x := by simp }, by simp⟩
  any_goals fun_prop
  · rintro s ⟨t, ht : t ≤ t₀⟩
    have := hB.isGaussianProcess.isProbabilityMeasure
    rw [covariance_fun_sub_left, hB.covariance_eval, hB.covariance_eval, min_eq_right, min_eq_right,
      sub_self]
    · grind
    · simp [ht, le_add_right]
    all_goals exact (hB.isGaussianProcess.hasGaussianLaw_eval _).memLp_two

/-- If `B` is a pre-Brownian motion then `t ↦ t * B (1 / t)` is a pre-Brownian motion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd5a9638d2326fb2d19e0230681fb41d06e191e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
