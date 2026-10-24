# LevyProkhorov.continuous_equiv_symm_probabilityMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5479fee7-3db5-cbe7-6636-ccd4a6d7a8b5",
  "kind": "lemma",
  "lexical_name": "LevyProkhorov.continuous_equiv_symm_probabilityMeasure",
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
  "slug": "levyprokhorov-continuous-equiv-symm-probabilitymeasure--89f04e25772bc209548ebf87",
  "source": {
    "blob": "122cb03ed4e30f9bd309bbab3335759e5d4091df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 555,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89f04e25772bc209548ebf87eac4106909bdd96cc5f22bdd929b9fcf28009d24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5479fee7-3db5-cbe7-6636-ccd4a6d7a8b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LevyProkhorov.continuous_equiv_symm_probabilityMeasure :
    Continuous (LevyProkhorov.equiv (α := ProbabilityMeasure Ω)).symm := by
  -- We check continuity of `id : ProbabilityMeasure Ω → LevyProkhorov (ProbabilityMeasure Ω)` at
  -- each point `P : ProbabilityMeasure Ω`.
  rw [continuous_iff_continuousAt]
  intro P
  -- To check continuity, fix `ε > 0`. To leave some wiggle room, be ready to use `ε/3 > 0` instead.
  rw [continuousAt_iff']
  intro ε ε_pos
  have third_ε_pos : 0 < ε / 3 := by linarith
  have third_ε_pos' : 0 < ENNReal.ofReal (ε / 3) := ofReal_pos.mpr third_ε_pos
  -- First use separability to choose a countable partition of `Ω` into measurable
  -- subsets `Es n ⊆ Ω` of small diameter, `diam (Es n) < ε/3`.
  obtain ⟨Es, Es_mble, Es_bdd, Es_diam, Es_cover, Es_disjoint⟩ :=
    SeparableSpace.exists_measurable_partition_diam_le Ω third_ε_pos
  -- Instead of the whole space `Ω = ⋃ n ∈ ℕ, Es n`, focus on a large but finite
  -- union `⋃ n < N, Es n`, chosen in such a way that the complement has small `P`-mass,
  -- `P (⋃ n < N, Es n)ᶜ < ε/3`.
  obtain ⟨N, hN⟩ : ∃ N, P.toMeasure (⋃ j ∈ Iio N, Es j)ᶜ < ENNReal.ofReal (ε/3) := by
    have exhaust := @tendsto_measure_biUnion_Ici_zero_of_pairwise_disjoint Ω _ P.toMeasure _
                    Es (fun n ↦ (Es_mble n).nullMeasurableSet) Es_disjoint
    simp only [tendsto_atTop_nhds, Function.comp_apply] at exhaust
    obtain ⟨N, hN⟩ := exhaust (Iio (ENNReal.ofReal (ε / 3))) third_ε_pos' isOpen_Iio
    refine ⟨N, ?_⟩
    have rewr : ⋃ i, ⋃ (_ : N ≤ i), Es i = (⋃ i, ⋃ (_ : i < N), Es i)ᶜ := by
      simpa only [mem_Iio, compl_Iio, mem_Ici] using
        (biUnion_compl_eq_of_pairwise_disjoint_of_iUnion_eq_univ Es_cover Es_disjoint (Iio N)).symm
    simpa only [mem_Iio, ← rewr, gt_iff_lt] using hN N le_rfl
  -- With the finite `N` fixed above, consider the finite collection of open sets of the form
  -- `Gs J = thickening (ε/3) (⋃ j ∈ J, Es j)`, where `J ⊆ {0, 1, ..., N-1}`.
  have Js_finite : Set.Finite {J | J ⊆ Iio N} := Finite.finite_subsets <| finite_Iio N
  set Gs := (fun (J : Set ℕ) ↦ thickening (ε/3) (⋃ j ∈ J, Es j)) '' {J | J ⊆ Iio N}
  have Gs_open : ∀ (J : Set ℕ), IsOpen (thickening (ε/3) (⋃ j ∈ J, Es j)) :=
    fun J ↦ isOpen_thickening
  -- Any open set `G ⊆ Ω` determines a neighborhood of `P` consisting of those `Q` that
  -- satisfy `P G < Q G + ε/3`.
  have mem_nhds_P (G : Set Ω) (G_open : IsOpen G) :
      {Q | P.toMeasure G < Q.toMeasure G + ENNReal.ofReal (ε/3)} ∈ 𝓝 P :=
    P.toMeasure_add_pos_gt_mem_nhds G_open third_ε_pos'
  -- Assume that `Q` is in the neighborhood of `P` such that for each `J ⊆ {0, 1, ..., N-1}`
  -- we have `P (Gs J) < Q (Gs J) + ε/3`.
  filter_upwards [(Finset.iInter_mem_sets Js_finite.toFinset).mpr <|
                    fun J _ ↦ mem_nhds_P _ (Gs_open J)] with Q hQ
  simp only [Finite.mem_toFinset, mem_setOf_eq, thickening_iUnion, mem_iInter] at hQ
  -- Note that in order to show that the Lévy-Prokhorov distance `LPdist P Q` is small (`≤ 2*ε/3`),
  -- it suffices to show that for arbitrary subsets `B ⊆ Ω`, the measure `P B` is bounded above up
  -- to a small error by the `Q`-measure of a small thickening of `B`.
  apply lt_of_le_of_lt ?_ (show 2*(ε/3) < ε by linarith)
  rw [dist_comm]
  -- Fix an arbitrary set `B ⊆ Ω`, and an arbitrary `δ > 2*ε/3` to gain some room for error
  -- and for thickening.
  apply levyProkhorovDist_le_of_forall_le _ _ (by linarith) (fun δ B δ_gt _ ↦ ?_)
  -- Let `JB ⊆ {0, 1, ..., N-1}` consist of those indices `j` such that `B` intersects `Es j`.
  -- Then the open set `Gs JB` approximates `B` rather well:
  -- except for what happens in the small complement `(⋃ n < N, Es n)ᶜ`, the set `B` is
  -- contained in `Gs JB`, and conversely `Gs JB` only contains points within `δ` from `B`.
  set JB := {i | B ∩ Es i ≠ ∅ ∧ i ∈ Iio N}
  have B_subset : B ⊆ (⋃ i ∈ JB, thickening (ε/3) (Es i)) ∪ (⋃ j ∈ Iio N, Es j)ᶜ := by
    suffices B ⊆ (⋃ i ∈ JB, thickening (ε/3) (Es i)) ∪ (⋃ j ∈ Ici N, Es j) by
      refine this.trans <| union_subset_union le_rfl ?_
      intro ω hω
      simp only [mem_Ici, mem_iUnion, exists_prop] at hω
      obtain ⟨i, i_large, ω_in_Esi⟩ := hω
      by_contra con
      simp only [mem_Iio, compl_iUnion, mem_iInter, mem_compl_iff, not_forall, not_not,
                  exists_prop] at con
      obtain ⟨j, j_small, ω_in_Esj⟩ := con
      exact disjoint_left.mp (Es_disjoint (show j ≠ i by omega)) ω_in_Esj ω_in_Esi
    intro ω ω_in_B
    obtain ⟨i, hi⟩ := show ∃ n, ω ∈ Es n by simp only [← mem_iUnion, Es_cover, mem_univ]
    simp only [mem_Ici, mem_union, mem_iUnion, exists_prop]
    by_cases i_small : i ∈ Iio N
    · refine Or.inl ⟨i, ?_, self_subset_thickening third_ε_pos _ hi⟩
      simp only [mem_Iio, mem_setOf_eq, JB]
      refine ⟨nonempty_iff_ne_empty.mp <| Set.nonempty_of_mem <| mem_inter ω_in_B hi, i_small⟩
    · exact Or.inr ⟨i, by simpa only [mem_Iio, not_lt] using i_small, hi⟩
  have subset_thickB : ⋃ i ∈ JB, thickening (ε / 3) (Es i) ⊆ thickening δ B := by
    intro ω ω_in_U
    simp only [mem_setOf_eq, mem_iUnion, exists_prop] at ω_in_U
    obtain ⟨k, ⟨B_intersects, _⟩, ω_in_thEk⟩ := ω_in_U
    rw [mem_thickening_iff] at ω_in_thEk ⊢
    obtain ⟨w, w_in_Ek, w_near⟩ := ω_in_thEk
    obtain ⟨z, ⟨z_in_B, z_in_Ek⟩⟩ := nonempty_iff_ne_empty.mpr B_intersects
    refine ⟨z, z_in_B, lt_of_le_of_lt (dist_triangle ω w z) ?_⟩
    apply lt_of_le_of_lt (add_le_add w_near.le <|
            (dist_le_diam_of_mem (Es_bdd k) w_in_Ek z_in_Ek).trans <| Es_diam k)
    linarith
  -- We use the resulting upper bound `P B ≤ P (Gs JB) + P (small complement)`.
  apply (measure_mono B_subset).trans ((measure_union_le _ _).trans ?_)
  -- From the choice of `Q` in a suitable neighborhood, we have `P (Gs JB) < Q (Gs JB) + ε/3`.
  specialize hQ _ (show JB ⊆ Iio N from fun _ h ↦ h.2)
  -- Now it remains to add the pieces and use the above estimates.
  apply (add_le_add hQ.le hN.le).trans
  rw [add_assoc, ← ENNReal.ofReal_add third_ε_pos.le third_ε_pos.le, ← two_mul]
  apply add_le_add (measure_mono subset_thickB) (ofReal_le_ofReal _)
  exact δ_gt.le

/-- The topology of the Lévy-Prokhorov metric on probability measures on a separable space
coincides with the topology of convergence in distribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `122cb03ed4e30f9bd309bbab3335759e5d4091df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
