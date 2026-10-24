# HasIndepIncrements.isGaussianProcess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e1b222d-80c3-c661-87fd-600f674fc404",
  "kind": "lemma",
  "lexical_name": "HasIndepIncrements.isGaussianProcess",
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
  "slug": "hasindepincrements-isgaussianprocess--057d4fccb35d9675a9d85cdf",
  "source": {
    "blob": "dee92bbb1a33c81fda67a74d756380e759a5df95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 115,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:057d4fccb35d9675a9d85cdf4ab2ef24543457a42b738b41ca76a42fbfe92d15",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e1b222d-80c3-c661-87fd-600f674fc404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma HasIndepIncrements.isGaussianProcess [OrderBot T]
    [NormedAddCommGroup E] [NormedSpace ℝ E] [MeasurableSpace E] [BorelSpace E]
    [SecondCountableTopology E] [CompleteSpace E]
    {X : T → Ω → E} (law : ∀ t, HasGaussianLaw (X t) P) (h_bot : ∀ᵐ ω ∂P, X ⊥ ω = 0)
    (incr : HasIndepIncrements X P) :
    IsGaussianProcess X P where
  hasGaussianLaw I := by
    -- Label `t₁ < ... < tₙ` the elements of `I`.
    -- We want to show that `(X t₁, ..., X tₙ)` is Gaussian.
    have := (law ⊥).isProbabilityMeasure
    obtain rfl | hI := I.eq_empty_or_nonempty
    · -- If `I` is empty, there is nothing to say.
      exact .of_subsingleton
    -- Otherwise we know that `(X t₁, ..., X tₙ) = f (X t₁ - X ⊥, X t₂ - X t₁, ..., X tₙ - X tₙ₋₁)`
    -- almost surely (because `X ⊥ = 0` almost surely)
    -- for a certain continuous linear map `f` called here `incrementsToRestrict I`.
    have := incrementsToRestrict_increments_orderEmbOfFinWithBot_ae_eq_restrict ℝ h_bot I
    -- Therefore it is enough to show that `(X t₁ - X ⊥, X t₂ - X t₁, ..., X tₙ - X tₙ₋₁)` is
    -- Gaussian.
    refine .congr (.map ?_ _) this.symm
    -- Because they are independent, it is enough to show that each `X tᵢ₊₁ - X tᵢ` is Gaussian.
    refine (incr _ _ (monotone_orderEmbOfFinWithBot I)).hasGaussianLaw fun i ↦ ?_
    -- Because `X tᵢ` and `X tᵢ₊₁` are Gaussian, it is enough to show that
    -- `X tᵢ` is independent from `X tᵢ₊₁ - X tᵢ`.
    refine IndepFun.hasGaussianLaw_sub_of_sub (law _) (law _) ?_
    -- This follows from the fact that `X` has independent increments and `X ⊥ = 0` almost surely.
    exact incr.indepFun_eval_sub bot_le
      (monotone_orderEmbOfFinWithBot I (Fin.castSucc_le_succ i)) h_bot

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/IsGaussianProcess/Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dee92bbb1a33c81fda67a74d756380e759a5df95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
