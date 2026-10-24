# ProbabilityMeasure.tendsto_of_tight_of_separatesPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66995bb6-ce92-547b-9974-9d2c2fac4376",
  "kind": "lemma",
  "lexical_name": "ProbabilityMeasure.tendsto_of_tight_of_separatesPoints",
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
  "slug": "probabilitymeasure-tendsto-of-tight-of-separatespoints--130f4519fb56d7bcfa57d116",
  "source": {
    "blob": "f2366cf31c9f8f13bcedff96ebf62714c1826958",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 162,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:130f4519fb56d7bcfa57d11607201c7806106a6b10d159fbfafaa89552e4c83b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66995bb6-ce92-547b-9974-9d2c2fac4376`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ProbabilityMeasure.tendsto_of_tight_of_separatesPoints (𝕜 : Type*) [RCLike 𝕜]
    {E : Type*} [MeasurableSpace E] [TopologicalSpace E] [PolishSpace E] [BorelSpace E]
    {ι : Type*} {𝓕 : Filter ι}
    {μ : ι → ProbabilityMeasure E} (h_tight : IsTightMeasureSet {(μ n : Measure E) | n})
    {μ₀ : ProbabilityMeasure E}
    {A : StarSubalgebra 𝕜 (E →ᵇ 𝕜)} (hA : (A.map (toContinuousMapStarₐ 𝕜)).SeparatesPoints)
    (hμ : ∀ g ∈ A, Tendsto (fun n ↦ ∫ x, g x ∂(μ n)) 𝓕 (𝓝 (∫ x, g x ∂μ₀))) :
    Tendsto μ 𝓕 (𝓝 μ₀) := by
  let := TopologicalSpace.upgradeIsCompletelyMetrizable E
  obtain rfl | _ := 𝓕.eq_or_neBot
  · simp
  refine (Filter.tendsto_iff_ultrafilter _ _ _).2 fun U hU ↦ ?_
  have h_compact : IsCompact (closure {μ n | n}) :=
    isCompact_closure_of_isTightMeasureSet (by simpa using h_tight)
  obtain ⟨μ', -, hμ' : Tendsto _ _ _⟩ := h_compact.ultrafilter_le_nhds (U.map μ)
    (.trans (by simp) (monotone_principal subset_closure))
  suffices (μ' : Measure E) = μ₀ by convert! hμ'; ext; rw [this]
  refine ext_of_forall_mem_subalgebra_integral_eq_of_pseudoEMetric_complete_countable hA
    fun g hg ↦ tendsto_nhds_unique ?_ ((hμ g hg).comp hU)
  rw [ProbabilityMeasure.tendsto_iff_forall_integral_rclike_tendsto 𝕜] at hμ'
  exact hμ' g

variable {ι : Type*} {𝓕 : Filter ι} {μ₀ : ProbabilityMeasure E}

set_option backward.isDefEq.respectTransparency.types false in
omit [FiniteDimensional ℝ E] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2366cf31c9f8f13bcedff96ebf62714c1826958` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
