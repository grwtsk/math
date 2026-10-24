# exists_integrable_exp_sq_of_map_rotation_eq_self_of_isProbabilityMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e9403b9-e9ef-6304-7e2b-73c239312af4",
  "kind": "lemma",
  "lexical_name": "exists_integrable_exp_sq_of_map_rotation_eq_self_of_isProbabilityMeasure",
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
  "slug": "exists-integrable-exp-sq-of-map-rotation-eq-self-of-isprobabilitymeasure--53d275d6d25f0e3f87e6b4bf",
  "source": {
    "blob": "559e64cf17d595dbfc07c9242084a40ca67adfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 605,
    "line": 557,
    "path": "GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53d275d6d25f0e3f87e6b4bfa8fb53cd821446c51f54aca77964ba4ba7070170",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e9403b9-e9ef-6304-7e2b-73c239312af4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_integrable_exp_sq_of_map_rotation_eq_self_of_isProbabilityMeasure
    [IsProbabilityMeasure μ]
    (h_rot : (μ.prod μ).map (ContinuousLinearMap.rotation (-(π / 4))) = μ.prod μ) :
    ∃ C, 0 < C ∧ Integrable (fun x ↦ rexp (C * ‖x‖ ^ 2)) μ := by
  -- If there exists `a > 0` such that `2⁻¹ < μ {x | ‖x‖ ≤ a} < 1`, we can call the previous lemma.
  by_cases h_meas_Ioo : ∃ a, 0 < a ∧ 2⁻¹ < μ {x | ‖x‖ ≤ a} ∧ μ {x | ‖x‖ ≤ a} < 1
  · obtain ⟨a, ha_pos, ha_gt, ha_lt⟩ : ∃ a, 0 < a ∧ 2⁻¹ < μ {x | ‖x‖ ≤ a} ∧ μ {x | ‖x‖ ≤ a} < 1 :=
      h_meas_Ioo
    exact exists_integrable_exp_sq_of_map_rotation_eq_self' h_rot ha_pos ha_gt ha_lt
  -- Otherwise, we can find `b > 0` such that the ball of radius `b` has full measure
  obtain ⟨b, hb⟩ : ∃ b, μ {x | ‖x‖ ≤ b} = 1 := by
    by_contra h_ne
    push Not at h_meas_Ioo h_ne
    suffices μ .univ ≤ 2⁻¹ by simp at this
    have h_le a : μ {x | ‖x‖ ≤ a} ≤ 2⁻¹ := by
      have h_of_pos a' (ha : 0 < a') : μ {x | ‖x‖ ≤ a'} ≤ 2⁻¹ := by
        by_contra h_lt
        refine h_ne a' ?_
        exact le_antisymm prob_le_one (h_meas_Ioo a' ha (not_le.mp h_lt))
      rcases le_or_gt a 0 with ha | ha
      · calc μ {x | ‖x‖ ≤ a}
        _ ≤ μ {x | ‖x‖ ≤ 1} := measure_mono fun x hx ↦ hx.trans (ha.trans (by positivity))
        _ ≤ 2⁻¹ := h_of_pos _ (by positivity)
      · exact h_of_pos a ha
    have h_univ : (Set.univ : Set E) = ⋃ a : ℕ, {x | ‖x‖ ≤ a} := by
      ext x
      simp only [Set.mem_univ, Set.mem_iUnion, Set.mem_ofPred_eq, true_iff]
      exact exists_nat_ge _
    rw [h_univ, Monotone.measure_iUnion]
    · simp [h_le]
    · intro a b hab x hx
      simp only [Set.mem_ofPred_eq] at hx ⊢
      exact hx.trans (mod_cast hab)
  -- So we can take `C = 1` and show that `x ↦ exp (‖x‖ ^ 2)` is integrable, since it is bounded.
  have hb' : ∀ᵐ x ∂μ, ‖x‖ ≤ b := by
    rwa [ae_iff_prob_eq_one]
    refine measurable_to_prop ?_
    rw [show (fun x : E ↦ ‖x‖ ≤ b) ⁻¹' {True} = {x : E | ‖x‖ ≤ b} by ext; simp]
    exact measurableSet_le (by fun_prop) (by fun_prop)
  refine ⟨1, by positivity, ?_⟩
  refine integrable_of_le_of_le (g₁ := 0) (g₂ := fun _ ↦ rexp (b ^ 2)) (by fun_prop)
    ?_ ?_ (integrable_const _) (integrable_const _)
  · exact ae_of_all _ fun _ ↦ by positivity
  · filter_upwards [hb'] with x hx
    simp only [one_mul]
    gcongr

/-- **Fernique's theorem** for finite measures whose product is invariant by rotation: there exists
`C > 0` such that the function `x ↦ exp (C * ‖x‖ ^ 2)` is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559e64cf17d595dbfc07c9242084a40ca67adfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
