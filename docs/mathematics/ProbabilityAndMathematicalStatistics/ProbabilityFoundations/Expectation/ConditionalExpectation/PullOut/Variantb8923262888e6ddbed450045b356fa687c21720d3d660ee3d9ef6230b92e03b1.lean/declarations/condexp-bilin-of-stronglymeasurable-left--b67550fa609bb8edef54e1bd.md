# condExp_bilin_of_stronglyMeasurable_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:939d29f8-3f50-3373-d411-9d4617fa858f",
  "kind": "theorem",
  "lexical_name": "condExp_bilin_of_stronglyMeasurable_left",
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
  "slug": "condexp-bilin-of-stronglymeasurable-left--b67550fa609bb8edef54e1bd",
  "source": {
    "blob": "ce9732219aad38850f6376c8baed04bfb9f2ddf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 159,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b67550fa609bb8edef54e1bd3424d932f93e3eeada33a6ce13340f1d9178a202",
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

Occurrence: `result:939d29f8-3f50-3373-d411-9d4617fa858f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_bilin_of_stronglyMeasurable_left [CompleteSpace E] {f : Ω → F} {g : Ω → E}
    (hf : StronglyMeasurable[m] f) (hfg : Integrable (fun ω ↦ B (f ω) (g ω)) μ)
    (hg : Integrable g μ) :
    μ[fun ω ↦ B (f ω) (g ω) | m] =ᵐ[μ] fun ω ↦ B (f ω) (μ[g | m] ω) := by
  by_cases hm : m ≤ mΩ; swap; · exact ae_of_all _ <| by simp [condExp_of_not_le hm]
  by_cases hμm : SigmaFinite (μ.trim hm)
  swap; · exact ae_of_all _ <| by simp [condExp_of_not_sigmaFinite hm hμm]
  obtain ⟨sets, sets_prop, h_univ⟩ := hf.exists_spanning_measurableSet_norm_le hm μ
  simp_rw [forall_and] at sets_prop
  obtain ⟨h_meas, h_finite, h_norm⟩ := sets_prop
  suffices ∀ n, ∀ᵐ ω ∂μ, ω ∈ sets n → (μ[fun ω ↦ B (f ω) (g ω) | m]) ω = B (f ω) (μ[g | m] ω) by
    rw [← ae_all_iff] at this
    filter_upwards [this] with ω hω
    obtain ⟨i, hi⟩ : ∃ i, ω ∈ sets i := by
      have h_mem : ω ∈ ⋃ i, sets i := by rw [h_univ]; exact Set.mem_univ _
      simpa using h_mem
    exact hω i hi
  refine fun n ↦ ae_imp_of_ae_restrict ?_
  suffices (μ.restrict (sets n))[fun ω ↦ B (f ω) (g ω) | m] =ᵐ[μ.restrict (sets n)]
      fun ω ↦ B (f ω) ((μ.restrict (sets n))[g | m] ω) by
    refine (condExp_restrict_ae_eq_restrict hm (h_meas n) hfg).symm.trans ?_
    filter_upwards [this, (condExp_restrict_ae_eq_restrict hm (h_meas n) hg)] with ω hω1 hω2
    rw [hω1, hω2]
  suffices (μ.restrict (sets n))[fun ω ↦ B ((sets n).indicator f ω) (g ω) | m]
      =ᵐ[μ.restrict (sets n)] fun ω ↦ B ((sets n).indicator f ω) ((μ.restrict (sets n))[g | m] ω) by
    refine EventuallyEq.trans (condExp_congr_ae ?_) (this.trans ?_)
    · filter_upwards [indicator_ae_eq_restrict (f := f) <| hm _ <| h_meas n] with ω hω
      rw [hω]
    · filter_upwards [indicator_ae_eq_restrict (f := f) <| hm _ <| h_meas n] with ω hω
      rw [hω]
  have : IsFiniteMeasure (μ.restrict (sets n)) := by
    constructor
    rw [Measure.restrict_apply_univ]
    exact h_finite n
  refine condExp_stronglyMeasurable_bilin_of_bound B hm (hf.indicator (h_meas n))
    hg.integrableOn n ?_
  filter_upwards with ω
  by_cases hωs : ω ∈ sets n <;> simp [hωs, h_norm]

/-- Pull-out property of the conditional expectation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9732219aad38850f6376c8baed04bfb9f2ddf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
