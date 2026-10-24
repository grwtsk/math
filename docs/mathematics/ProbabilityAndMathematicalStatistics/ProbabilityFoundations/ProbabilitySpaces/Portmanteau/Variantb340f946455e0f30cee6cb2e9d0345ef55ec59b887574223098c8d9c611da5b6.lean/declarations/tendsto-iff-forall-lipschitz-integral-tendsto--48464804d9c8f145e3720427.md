# tendsto_iff_forall_lipschitz_integral_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cee50d3d-9780-dcb6-599f-e05a1e5e16f2",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_forall_lipschitz_integral_tendsto",
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
  "slug": "tendsto-iff-forall-lipschitz-integral-tendsto--48464804d9c8f145e3720427",
  "source": {
    "blob": "cd4a6d1837c264488b6cefcf7402bf52a1549d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 755,
    "line": 696,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48464804d9c8f145e37204274f2459fbe82965b4209d5cf91e96d69af1a65164",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cee50d3d-9780-dcb6-599f-e05a1e5e16f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–755.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_forall_lipschitz_integral_tendsto {γ Ω : Type*} {mΩ : MeasurableSpace Ω}
    [PseudoEMetricSpace Ω] [OpensMeasurableSpace Ω] {F : Filter γ} [F.IsCountablyGenerated]
    {μs : γ → ProbabilityMeasure Ω} {μ : ProbabilityMeasure Ω} :
    Tendsto μs F (𝓝 μ) ↔
      ∀ f : Ω → ℝ, (∃ (C : ℝ), ∀ x y, dist (f x) (f y) ≤ C) → (∃ L, LipschitzWith L f) →
        Tendsto (fun i ↦ ∫ ω, f ω ∂(μs i)) F (𝓝 (∫ ω, f ω ∂μ)) := by
  constructor
  · -- A bounded Lipschitz function is in particular a bounded continuous function, and we already
    -- know that weak convergence implies convergence of their integrals
    intro h f hf_bounded hf_lip
    simp_rw [ProbabilityMeasure.tendsto_iff_forall_integral_tendsto] at h
    let f' : BoundedContinuousFunction Ω ℝ :=
    { toFun := f
      continuous_toFun := hf_lip.choose_spec.continuous
      map_bounded' := hf_bounded }
    simpa using! h f'
  -- To prove the other direction, we prove convergence of the measure of closed sets.
  -- We approximate the indicator function of a closed set by bounded Lipschitz functions.
  rcases F.eq_or_neBot with rfl | hne
  · simp
  refine fun h ↦ tendsto_of_forall_isClosed_limsup_real_le' fun s hs ↦ ?_
  refine le_of_forall_pos_le_add fun ε ε_pos ↦ ?_
  let fs : ℕ → Ω → ℝ := fun n ω ↦ thickenedIndicator (δ := (1 : ℝ) / (n + 1)) (by positivity) s ω
  have key₁ : Tendsto (fun n ↦ ∫ ω, fs n ω ∂μ) atTop (𝓝 ((μ : Measure Ω).real s)) :=
    tendsto_integral_thickenedIndicator_of_isClosed μ hs (δs := fun n ↦ (1 : ℝ) / (n + 1))
      (fun _ ↦ by positivity) tendsto_one_div_add_atTop_nhds_zero_nat
  have room₁ : (μ : Measure Ω).real s < (μ : Measure Ω).real s + ε / 2 := by simp [ε_pos]
  obtain ⟨M, hM⟩ := eventually_atTop.mp <| key₁.eventually_lt_const room₁
  have key₂ : Tendsto (fun i ↦ ∫ ω, fs M ω ∂(μs i)) F (𝓝 (∫ ω, fs M ω ∂μ)) :=
    h (fs M) ⟨1, fun x y ↦ ?_⟩
      ⟨_, lipschitzWith_thickenedIndicator (δ := (1 : ℝ) / (M + 1)) (by positivity) s⟩
  swap
  · simp only [Real.dist_eq, abs_le]
    have h1 x : fs M x ≤ 1 := thickenedIndicator_le_one _ _ _
    have h2 x : 0 ≤ fs M x := by simp [fs]
    grind
  have room₂ : ∫ a, fs M a ∂μ < ∫ a, fs M a ∂μ + ε / 2 := by simp [ε_pos]
  have ev_near : ∀ᶠ x in F, (μs x : Measure Ω).real s ≤ ∫ a, fs M a ∂μ + ε / 2 := by
    refine (key₂.eventually_le_const room₂).mono fun x hx ↦ le_trans ?_ hx
    rw [← integral_indicator_one hs.measurableSet]
    refine integral_mono ?_ (integrable_thickenedIndicator _ _) ?_
    · exact (integrable_indicator_iff hs.measurableSet).mpr (integrable_const _).integrableOn
    · have h : _ ≤ fs M :=
        indicator_le_thickenedIndicator (δ := (1 : ℝ) / (M + 1)) (by positivity) s
      simpa using! h
  apply (Filter.limsup_le_of_le ?_ ev_near).trans
  · apply (add_le_add (hM M rfl.le).le (le_refl (ε / 2))).trans_eq
    ring
  · exact isCoboundedUnder_le_of_le F (x := 0) (by simp)

end Lipschitz

section convergenceCriterion

open scoped Finset

variable {Ω ι : Type*} [MeasurableSpace Ω]

/-- Given a π-system, if a sequence of measures converges along all elements of the π-system, then
it also converges along finite unions of elements of the π-system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4a6d1837c264488b6cefcf7402bf52a1549d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
