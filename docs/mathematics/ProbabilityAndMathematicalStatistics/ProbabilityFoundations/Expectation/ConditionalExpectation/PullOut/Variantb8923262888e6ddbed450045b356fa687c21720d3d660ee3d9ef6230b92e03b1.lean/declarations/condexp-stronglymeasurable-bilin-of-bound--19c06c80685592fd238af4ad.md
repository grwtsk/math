# condExp_stronglyMeasurable_bilin_of_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3408e94-e365-98ec-84bf-be3672bb3c9f",
  "kind": "theorem",
  "lexical_name": "condExp_stronglyMeasurable_bilin_of_bound",
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
  "slug": "condexp-stronglymeasurable-bilin-of-bound--19c06c80685592fd238af4ad",
  "source": {
    "blob": "ce9732219aad38850f6376c8baed04bfb9f2ddf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 93,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19c06c80685592fd238af4ad51f75231c09820eb5203abece62b966c28384aff",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3408e94-e365-98ec-84bf-be3672bb3c9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_stronglyMeasurable_bilin_of_bound [CompleteSpace E]
    (hm : m ≤ mΩ) [IsFiniteMeasure μ] {f : Ω → F} {g : Ω → E} (hf : StronglyMeasurable[m] f)
    (hg : Integrable g μ) (c : ℝ) (hf_bound : ∀ᵐ ω ∂μ, ‖f ω‖ ≤ c) :
    μ[fun ω ↦ B (f ω) (g ω) | m] =ᵐ[μ] fun ω ↦ B (f ω) (μ[g | m] ω) := by
  let fs := hf.approxBounded c
  have hfs_tendsto : ∀ᵐ ω ∂μ, Tendsto (fs · ω) atTop (𝓝 (f ω)) :=
    hf.tendsto_approxBounded_ae hf_bound
  by_cases hμ : μ = 0
  · simp only [hμ, ae_zero]; norm_cast
  have : (ae μ).NeBot := ae_neBot.2 hμ
  have hc : 0 ≤ c := by
    rcases hf_bound.exists with ⟨_, h⟩
    exact (norm_nonneg _).trans h
  have hfs_bound : ∀ n ω, ‖fs n ω‖ ≤ c := hf.norm_approxBounded_le hc
  have : μ[fun ω ↦ B (f ω) (μ[g | m] ω) | m] = fun ω ↦ B (f ω) (μ[g | m] ω) := by
    refine condExp_of_stronglyMeasurable hm ?_ ?_
    · exact Continuous.comp_stronglyMeasurable (g := (fun z : F × E ↦ B z.1 z.2)) (by fun_prop)
        (hf.prodMk stronglyMeasurable_condExp)
    · exact B.integrable_of_bilin_of_bdd_left c (hf.mono hm).aestronglyMeasurable hf_bound
        integrable_condExp
  rw [← this]
  refine tendsto_condExp_unique (fun n ω ↦ B (fs n ω) (g ω))
    (fun n ω ↦ B (fs n ω) (μ[g | m] ω)) (fun ω ↦ B (f ω) (g ω))
    (fun ω ↦ B (f ω) (μ[g | m] ω)) ?_ ?_ ?_ ?_ (‖B‖ * c * ‖g ·‖) ?_ (‖B‖ * c * ‖(μ[g | m]) ·‖)
    ?_ ?_ ?_ ?_
  · exact fun n ↦ B.integrable_of_bilin_of_bdd_left c
      ((fs n).stronglyMeasurable.mono hm).aestronglyMeasurable (ae_of_all _ <| hfs_bound n) hg
  · exact fun n ↦ B.integrable_of_bilin_of_bdd_left c
      ((fs n).stronglyMeasurable.mono hm).aestronglyMeasurable (ae_of_all _ <| hfs_bound n)
      integrable_condExp
  · filter_upwards [hfs_tendsto] with ω hω
    exact ((by fun_prop : Continuous (fun x ↦ B x (g ω))).tendsto (f ω)).comp hω
  · filter_upwards [hfs_tendsto] with ω hω
    exact ((by fun_prop : Continuous (fun x ↦ B x (μ[g | m] ω))).tendsto (f ω)).comp hω
  · exact hg.norm.const_mul _
  · fun_prop
  · refine fun n ↦ Eventually.of_forall fun _ ↦ ?_
    grw [B.le_opNorm₂, hfs_bound]
  · refine fun n ↦ Eventually.of_forall fun _ ↦ ?_
    grw [B.le_opNorm₂, hfs_bound]
  · intro n
    refine (condExp_stronglyMeasurable_simpleFunc_bilin B hm _ hg).trans ?_
    nth_rw 2 [condExp_of_stronglyMeasurable hm]
    · exact Continuous.comp_stronglyMeasurable (g := (fun z : F × E ↦ B z.1 z.2)) (by fun_prop)
        ((fs n).stronglyMeasurable.prodMk stronglyMeasurable_condExp)
    exact B.integrable_of_bilin_of_bdd_left c
      ((fs n).stronglyMeasurable.mono hm).aestronglyMeasurable (ae_of_all _ <| hfs_bound n)
      integrable_condExp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9732219aad38850f6376c8baed04bfb9f2ddf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
