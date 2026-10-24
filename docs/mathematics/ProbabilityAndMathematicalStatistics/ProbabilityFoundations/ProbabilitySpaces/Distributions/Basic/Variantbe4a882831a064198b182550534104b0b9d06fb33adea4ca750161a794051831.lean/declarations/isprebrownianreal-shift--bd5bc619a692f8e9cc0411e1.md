# IsPreBrownianReal.shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e81db827-aa63-fb53-a343-239ff8aa35c3",
  "kind": "lemma",
  "lexical_name": "IsPreBrownianReal.shift",
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
  "slug": "isprebrownianreal-shift--bd5bc619a692f8e9cc0411e1",
  "source": {
    "blob": "dbd5a9638d2326fb2d19e0230681fb41d06e191e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 243,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd5bc619a692f8e9cc0411e13bb60a6cf65174897e712bdc13778474a9460d19",
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

Occurrence: `result:e81db827-aa63-fb53-a343-239ff8aa35c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPreBrownianReal.shift (hB : IsPreBrownianReal B P) (t₀ : ℝ≥0) :
    IsPreBrownianReal (fun t ω ↦ B (t₀ + t) ω - B t₀ ω) P := by
  refine (hB.isGaussianProcess.shift t₀).isPreBrownianReal_of_covariance
    (fun t ↦ ?_) (fun s t hst ↦ ?_)
  · rw [integral_sub, hB.integral_eval, hB.integral_eval, sub_zero]
    all_goals exact (hB.isGaussianProcess.hasGaussianLaw_eval _).integrable
  · have := hB.isGaussianProcess.isProbabilityMeasure
    rw [covariance_fun_sub_left, covariance_fun_sub_right, covariance_fun_sub_right,
      hB.covariance_eval, hB.covariance_eval, hB.covariance_eval, hB.covariance_eval, ← add_min,
      min_eq_left hst, min_eq_right, min_eq_left, min_self]
    any_goals simp
    any_goals exact (hB.isGaussianProcess.hasGaussianLaw_eval _).memLp_two
    exact hB.isGaussianProcess.hasGaussianLaw_sub.memLp_two

/-- **Weak Markov property**: If `B` is a pre-Brownian motion, then
`B (t₀ + t) - B t₀` is a pre-Brownian motion which is independent from `(B t, t ≤ t₀)`.
This is the proof of independence, see `IsPreBrownianReal.shift` for the proof
that it is pre-Brownian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variantbe4a882831a064198b182550534104b0b9d06fb33adea4ca750161a794051831.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd5a9638d2326fb2d19e0230681fb41d06e191e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
