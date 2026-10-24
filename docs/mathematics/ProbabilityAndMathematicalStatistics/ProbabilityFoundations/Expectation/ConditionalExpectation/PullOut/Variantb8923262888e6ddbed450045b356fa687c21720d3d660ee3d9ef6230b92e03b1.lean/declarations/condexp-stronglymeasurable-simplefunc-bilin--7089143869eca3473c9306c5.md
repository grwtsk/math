# condExp_stronglyMeasurable_simpleFunc_bilin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac3af3c9-72e4-d482-139a-9840aca94223",
  "kind": "theorem",
  "lexical_name": "condExp_stronglyMeasurable_simpleFunc_bilin",
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
  "slug": "condexp-stronglymeasurable-simplefunc-bilin--7089143869eca3473c9306c5",
  "source": {
    "blob": "ce9732219aad38850f6376c8baed04bfb9f2ddf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 60,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7089143869eca3473c9306c5b79f9508083064de705e898242d3024a8a53f191",
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

Occurrence: `result:ac3af3c9-72e4-d482-139a-9840aca94223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_stronglyMeasurable_simpleFunc_bilin [CompleteSpace E]
    (hm : m ≤ mΩ) (f : @SimpleFunc Ω m F) {g : Ω → E} (hg : Integrable g μ) :
    μ[fun ω ↦ B (f ω) (g ω) | m] =ᵐ[μ] fun ω ↦ B (f ω) (μ[g | m] ω) := by
  have : ∀ (s c) (f : Ω → E),
      (fun ω ↦ B (Set.indicator s (Function.const Ω c) ω) (f ω)) =
        s.indicator (fun ω ↦ B c (f ω)) := by
    intro s c f
    ext ω
    by_cases hω : ω ∈ s <;> simp [hω]
  apply @SimpleFunc.induction _ _ m _ (fun f ↦ _)
    (fun c s hs ↦ ?_) (fun g₁ g₂ _ h_eq₁ h_eq₂ ↦ ?_) f
  · simp only [SimpleFunc.const_zero, SimpleFunc.coe_piecewise, SimpleFunc.coe_const,
      SimpleFunc.coe_zero, Set.piecewise_eq_indicator]
    rw [this, this]
    refine (condExp_indicator ((B c).integrable_comp hg) hs).trans ?_
    filter_upwards [(B c).comp_condExp_comm hg (m := m)] with ω hω
    simp only [Function.comp_apply] at hω
    simp only [Set.indicator, hω, Function.comp_def]
  · have h_add := @SimpleFunc.coe_add _ _ m _ g₁ g₂
    calc
      μ[fun ω ↦ B (g₁ ω + g₂ ω) (g ω) | m] =ᵐ[μ]
          μ[fun ω ↦ B (g₁ ω) (g ω) | m] + μ[fun ω ↦ B (g₂ ω) (g ω) | m] := by
        simp_rw [B.map_add]
        obtain ⟨C₁, hC₁⟩ := @SimpleFunc.exists_forall_norm_le _ _ m _ g₁
        obtain ⟨C₂, hC₂⟩ := @SimpleFunc.exists_forall_norm_le _ _ m _ g₂
        exact condExp_add
          (B.integrable_of_bilin_of_bdd_left C₁ (g₁.stronglyMeasurable.mono hm).aestronglyMeasurable
            (ae_of_all _ hC₁) hg)
          (B.integrable_of_bilin_of_bdd_left C₂ (g₂.stronglyMeasurable.mono hm).aestronglyMeasurable
            (ae_of_all _ hC₂) hg) m
      _ =ᵐ[μ] fun ω ↦ B (g₁ ω) (μ[g | m] ω) + B (g₂ ω) (μ[g | m] ω) := EventuallyEq.add h_eq₁ h_eq₂
      _ =ᵐ[μ] fun ω ↦ B ((g₁ + g₂) ω) (μ[g | m] ω) := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9732219aad38850f6376c8baed04bfb9f2ddf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
