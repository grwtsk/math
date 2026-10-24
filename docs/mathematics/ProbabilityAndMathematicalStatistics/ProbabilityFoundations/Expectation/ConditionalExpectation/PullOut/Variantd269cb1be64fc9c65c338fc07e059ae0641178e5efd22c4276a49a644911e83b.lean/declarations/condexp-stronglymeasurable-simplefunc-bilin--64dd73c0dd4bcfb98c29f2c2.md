# condExp_stronglyMeasurable_simpleFunc_bilin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9749dbee01c2ecd1d24e345fe436fec40718ac1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57d29241-1d0f-e420-b54e-b3de34e97801",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5e80174-9773-a55a-07a0-b300dafa389a",
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
  "slug": "condexp-stronglymeasurable-simplefunc-bilin--64dd73c0dd4bcfb98c29f2c2",
  "source": {
    "blob": "a9749dbee01c2ecd1d24e345fe436fec40718ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 52,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64dd73c0dd4bcfb98c29f2c2a2ad58e8531bad6d95e34f3beb5f235d3242180e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e80174-9773-a55a-07a0-b300dafa389a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–84.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9749dbee01c2ecd1d24e345fe436fec40718ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
