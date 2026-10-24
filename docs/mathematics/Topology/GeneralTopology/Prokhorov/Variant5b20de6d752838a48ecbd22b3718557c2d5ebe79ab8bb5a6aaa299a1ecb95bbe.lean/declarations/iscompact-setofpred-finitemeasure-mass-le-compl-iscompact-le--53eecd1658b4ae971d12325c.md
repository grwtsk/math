# isCompact_setOfPred_finiteMeasure_mass_le_compl_isCompact_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca872fa6-6160-daf0-9300-7db2b19a3f04",
  "kind": "lemma",
  "lexical_name": "isCompact_setOfPred_finiteMeasure_mass_le_compl_isCompact_le",
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
  "slug": "iscompact-setofpred-finitemeasure-mass-le-compl-iscompact-le--53eecd1658b4ae971d12325c",
  "source": {
    "blob": "caeefca8ede961defa13ae3cd7890c0e421d203e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 232,
    "path": "GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53eecd1658b4ae971d12325c91378bfcd23c2189a2ca62fc2ae9b65d74e3c5e2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca872fa6-6160-daf0-9300-7db2b19a3f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompact_setOfPred_finiteMeasure_mass_le_compl_isCompact_le
    {u : ℕ → ℝ≥0} {K : ℕ → Set E} (C : ℝ≥0)
    (hu : Tendsto u atTop (𝓝 0)) (hK : ∀ n, IsCompact (K n)) (h : NormalSpace E ∨ Monotone K) :
    IsCompact {μ : FiniteMeasure E | μ.mass ≤ C ∧ ∀ n, μ (K n)ᶜ ≤ u n} := by
  /- Consider a sequence of measures with mass at most `C` and giving mass at most `uₙ` to `Kₙᶜ`,
  for which we want to find a converging subsequence.
  We want to write `⋃ n, Kₙ` as the disjoint union of `disjointed K n`, restrict the measures to
  each of these sets (which is contained in the compact set `Kₙ`), extract a converging subsequence
  there, to a limit `νₙ`, and then argue that the sequence converges to `μ := ∑ νₙ`.
  We will implement this rough idea, but there are two technical complications.
  First, we should not use a sequence and subsequences, but a ultrafilter as things are not second
  countable.
  Second, it is not obvious that the limit will satisfy the inequality `μ (Kₙᶜ) ≤ uₙ`, as this is
  not a closed condition in the space of measures in general (note that we are not assuming that
  our space is metrizable). To check this inequality, we need the technical condition that the
  space is normal or the sequence `K` is monotone. When the space is normal, the inequality can be
  proved from the weak convergence if we can ensure additionally that `μ` is
  inner regular. We will guarantee this by making sure each `νₙ` is inner regular. When the
  sequence `K` is monotone, on the other hand, the bound readily follows from the construction.
  -/
  -- We can decompose a measure as a sum of restrictions to `disjointed K n`, finite version.
  have I (μ : FiniteMeasure E) (n : ℕ) :
      ∑ i ∈ Finset.range (n + 1), μ.restrict (disjointed K i) = μ.restrict (partialSups K n) := by
    rw [← biUnion_range_succ_disjointed, FiniteMeasure.restrict_biUnion_finset]
    · exact (disjoint_disjointed K).set_pairwise _
    · exact MeasurableSet.disjointed (fun i ↦ (hK i).measurableSet)
  have A n : IsCompact (partialSups K n) := by
    simpa [partialSups_eq_accumulate] using isCompact_accumulate hK _
  -- start with a ultrafilter `f`, for which we want to prove convergence.
  apply isCompact_iff_ultrafilter_le_nhds'.2 (fun f hf ↦ ?_)
  -- the restrictions to `disjointed K n` converge along the ultrafilter, and moreover we can
  -- choose the limit to be inner regular.
  have M n : ∃ (ν : FiniteMeasure E), Measure.InnerRegular (ν : Measure E) ∧
      ν (partialSups K n)ᶜ = 0 ∧
      Tendsto (fun (ρ : FiniteMeasure E) ↦ ρ.restrict (disjointed K n)) f (𝓝 ν) := by
    -- the existence of a limit follows from the fact that these measures are supported in
    -- the compact set `partialSups K n`.
    obtain ⟨ν, hν, ν_lim⟩ : ∃ ν ∈ {ρ : FiniteMeasure E | ρ.mass ≤ C ∧ ρ (partialSups K n)ᶜ = 0},
        Tendsto (fun (ρ : FiniteMeasure E) ↦ ρ.restrict (disjointed K n)) f (𝓝 ν) := by
      simp only [Tendsto]
      rw [← Ultrafilter.coe_map]
      apply IsCompact.ultrafilter_le_nhds'
        (isCompact_setOfPred_finiteMeasure_le_of_isCompact C (A n))
      simp only [null_iff_toMeasure_null, Ultrafilter.mem_map, preimage_ofPred_eq]
      filter_upwards [hf] with ρ hρ
      simp only [restrict_mass, restrict_measure_eq,
        Measure.restrict_apply (A n).measurableSet.compl]
      refine ⟨(apply_le_mass ρ _).trans hρ.1, ?_⟩
      convert! measure_empty (μ := (ρ : Measure E))
      apply disjoint_iff.1
      apply disjoint_compl_left.mono_right
      exact le_trans sdiff_le (le_partialSups _ _)
    -- We can find an inner regular measure which coincides with the above limit wrt
    -- integration of bounded continuous functions.
    obtain ⟨ν', ν'_reg, ν'_fin, ν'K, hν'⟩ : ∃ ν', ν'.InnerRegular ∧ IsFiniteMeasure ν' ∧
        ν' (partialSups K n)ᶜ = 0 ∧ ∀ (g : E →ᵇ ℝ), ∫ x, g x ∂ν = ∫ x, g x ∂ν' := by
      apply Measure.exists_innerRegular_eq_of_isCompact _ (A n)
      rw [← MeasureTheory.FiniteMeasure.null_iff_toMeasure_null]
      exact hν.2
    -- This inner regular measure is also a limit for our ultrafilter
    let μ : FiniteMeasure E := ⟨ν', ν'_fin⟩
    refine ⟨μ, ν'_reg, by simp [μ, ν'K], ?_⟩
    apply tendsto_of_forall_integral_tendsto (fun g ↦ ?_)
    convert! tendsto_iff_forall_integral_tendsto.1 ν_lim g using 2
    exact (hν' g).symm
  -- let `νₙ` be such nice limits on `disjointed K n`.
  choose! ν ν_reg νK hν using M
  -- their sum is a finite measure, of mass at most `C`.
  have B : (Measure.sum (fun n ↦ (ν n : Measure E))) univ ≤ C := by
    -- this follows from the corresponding result for finite sums, where we can use the
    -- continuity of the mass of a finite measure under weak convergence.
    simp only [MeasurableSet.univ, Measure.sum_apply]
    have : Tendsto (fun n ↦ ∑ i ∈ Finset.range (n + 1), (ν i : Measure E) univ) atTop
        (𝓝 (∑' i, (ν i : Measure E) univ)) :=
      (ENNReal.tendsto_nat_tsum _).comp (tendsto_add_atTop_nat 1)
    apply le_of_tendsto' this (fun n ↦ ?_)
    have : ∑ i ∈ Finset.range (n + 1), (ν i : Measure E) univ
        = (∑ i ∈ Finset.range (n + 1), ν i).toMeasure univ := by simp
    rw [this]
    suffices (∑ i ∈ Finset.range (n + 1), ν i).mass ≤ C by
      convert! ENNReal.coe_le_coe.2 this
      simp
    have : Tendsto (fun (μ : FiniteMeasure E) ↦
        (∑ i ∈ Finset.range (n + 1), μ.restrict (disjointed K i)).mass) f
        (𝓝 ((∑ i ∈ Finset.range (n + 1), ν i).mass)) := by
      apply Tendsto.mass
      exact tendsto_finsetSum _ (fun i hi ↦ hν i)
    apply le_of_tendsto this
    filter_upwards [hf] with μ hμ
    rw [I, restrict_mass]
    exact le_trans (apply_mono _ (subset_univ _)) hμ.1
  -- Let `μ` be the limiting measure
  let μ : FiniteMeasure E := ⟨Measure.sum (fun n ↦ (ν n : Measure E)), ⟨B.trans_lt (by simp)⟩⟩
  -- first, we show that it is indeed a limit of the ultrafilter
  have L : Tendsto id f (𝓝 μ) := by
    -- We need to check the convergence of the integral of a bounded continuous function.
    -- Finite sums of restrictions to `disjointed K n` converge obviously to finite sums of `νₙ`,
    -- but we need to control the infinite sums. For this, we split `ε` in 3, argue that for `μ`
    -- this is the limit of finite sums, and inside the space we can uniformly truncate the sum
    -- also as the tail is controlled by `uₙ`. Once we have fixed a truncation level satisfying
    -- both conditions, we can rely on the finite sum convergence to conclude.
    apply tendsto_of_forall_integral_tendsto (fun g ↦ ?_)
    rw [Metric.tendsto_nhds]
    intro ε εpos
    -- first, control truncation of the finite sums for the limiting measure
    have I1 : ∀ᶠ n in atTop,
        dist (∫ x, g x ∂(∑ i ∈ Finset.range (n + 1), ν i)) (∫ x, g x ∂μ) < ε / 3 := by
      have : Tendsto (fun n ↦ ∫ x, g x ∂(∑ i ∈ Finset.range n, ν i)) atTop (𝓝 (∫ x, g x ∂μ)) := by
        simp only [FiniteMeasure.toMeasure_mk, μ]
        rw [integral_sum_measure (g.integrable (μ := μ))]
        simp_rw [integral_finsetSum_measure (fun i hi ↦ g.integrable _)]
        apply Summable.tendsto_sum_tsum_nat
        apply (hasSum_integral_measure _).summable
        exact g.integrable (μ := μ)
      exact Metric.tendsto_nhds.1 (this.comp (tendsto_add_atTop_nat 1)) _ (by positivity)
    -- second, truncation threshold in terms of tails `uₙ` (the relevance of this condition will
    -- appear below).
    have I2 : ∀ᶠ n in atTop, ‖g‖ * u n < ε / 3 := by
      have := (NNReal.tendsto_coe.2 hu).const_mul (‖g‖)
      simp only [NNReal.coe_zero, mul_zero] at this
      exact (tendsto_order.1 this).2 (ε / 3) (by positivity)
    -- fix a large `n` satisfying both truncation conditions
    rcases (I1.and I2).exists with ⟨n, hn, h'n⟩
    -- the finite sums up to the fixed `n` converge to the limit, by convergence of individual
    -- summands
    have : Tendsto (fun (ρ : FiniteMeasure E) ↦
        ∫ x, g x ∂(∑ i ∈ Finset.range (n + 1), ρ.restrict (disjointed K i) : FiniteMeasure E)) f
        (𝓝 (∫ x, g x ∂(∑ i ∈ Finset.range (n + 1), ν i : FiniteMeasure E))) := by
      apply tendsto_iff_forall_integral_tendsto.1 _ g
      apply tendsto_finsetSum _ (fun i hi ↦ hν i)
    -- therefore, after some point the difference is bounded by `ε / 3`.
    filter_upwards [Metric.tendsto_nhds.1 this (ε / 3) (by positivity), hf] with ρ hρ h'ρ
    -- let us show that in this case the full integrals differ by at most `ε`.
    calc dist (∫ (x : E), g x ∂ρ) (∫ (x : E), g x ∂μ)
    -- we separate away the tails from the sums up to `n`
    _ ≤ dist (∫ (x : E), g x ∂ρ)
          (∫ x, g x ∂(∑ i ∈ Finset.range (n + 1), ρ.restrict (disjointed K i)))
        + dist (∫ x, g x ∂(∑ i ∈ Finset.range (n + 1), ρ.restrict (disjointed K i)))
          (∫ x, g x ∂(∑ i ∈ Finset.range (n + 1), ν i))
        + dist (∫ x, g x ∂(∑ i ∈ Finset.range (n + 1), ν i)) (∫ (x : E), g x ∂μ) :=
      dist_triangle4 _ _ _ _
    -- each term is bounded by `ε / 3` by design.
    _ < ε / 3 + ε / 3 + ε / 3 := by
      gcongr
      · have : ρ = ρ.restrict (partialSups K n)ᶜ +
            ∑ i ∈ Finset.range (n + 1), ρ.restrict (disjointed K i) := by
          rw [I, ← FiniteMeasure.restrict_union disjoint_compl_left (A n).measurableSet]
          simp
        nth_rewrite 1 [this]
        rw [toMeasure_add, integral_add_measure (g.integrable _) (g.integrable _)]
        simp only [toMeasure_sum, dist_add_self_left]
        calc ‖∫ x, g x ∂(ρ.restrict ((partialSups K) n)ᶜ)‖
        _ ≤ ∫ x, ‖g x‖ ∂(ρ.restrict ((partialSups K) n)ᶜ) := norm_integral_le_integral_norm _
        _ ≤ ∫ x, ‖g‖ ∂(ρ.restrict ((partialSups K) n)ᶜ : Measure E) := by
          apply integral_mono_of_nonneg
          · filter_upwards with x using by positivity
          · simp
          · filter_upwards with x using norm_coe_le_norm g x
        _ = ‖g‖ * ρ ((partialSups K) n)ᶜ := by simp [mul_comm]
        _ ≤ ‖g‖ * ρ (K n)ᶜ := by gcongr; apply le_partialSups
        _ ≤ ‖g‖ * u n := by gcongr; exact h'ρ.2 n
        _ < ε / 3 := h'n
      · simpa using hρ
    _ = ε := by ring
  -- Now that we have proved the convergence, we can finish the proof of the theorem. It remains
  -- to check the mass control of the limit (which we have already done when proving finiteness)
  -- and to show that `μ (Kₙᶜ) ≤ uₙ`, which is harder.
  refine ⟨μ, ⟨?_, fun n ↦ ?_⟩, L⟩
  · simp only [mass, mk_apply, μ]
    rw [show C = (C : ℝ≥0∞).toNNReal by simp]
    exact ENNReal.toNNReal_mono (by simp) B
  -- Let us now prove that `μ (Kₙᶜ) ≤ uₙ`. We argue differently depending on whether the space is
  -- normal or if the sequence `K` is monotone.
  rcases h with h | h
  · -- To show that `μ (Kₙᶜ) ≤ uₙ` when the space is normal, we argue that `μ (Kₙᶜ)` is the
    -- supremum of the integrals of continuous functions supported in `Kₙᶜ` and bounded by `1`,
    -- as the measure is inner regular. Therefore, we are reduced to a question about integrals of
    -- continuous functions, for which we can take advantage of the weak convergence.
    have : Measure.InnerRegular (μ : Measure E) := by simp only [toMeasure_mk, μ]; infer_instance
    rw [← ENNReal.coe_le_coe, ennreal_coeFn_eq_coeFn_toMeasure,
      (hK n).isClosed.isOpen_compl.measure_eq_biSup_integral_continuous]
    simp only [compl_compl, iSup_le_iff, ENNReal.ofReal_le_coe]
    intro g g_cont gK g_nonneg g_le
    have : Tendsto (fun (ρ : FiniteMeasure E) ↦ ∫ x, g x ∂ρ) f (𝓝 (∫ x, g x ∂μ)) := by
      let g' : E →ᵇ ℝ :=
      { toFun := g
        map_bounded' := by
          refine ⟨1, fun x y ↦ ?_⟩
          simp only [dist, abs_le, neg_le_sub_iff_le_add, tsub_le_iff_right]
          exact ⟨(g_le y).trans (by simpa using g_nonneg x),
            (g_le x).trans (by simpa using g_nonneg y)⟩ }
      exact tendsto_iff_forall_integral_tendsto.1 L g'
    apply le_of_tendsto this
    filter_upwards [hf] with ρ hρ
    calc ∫ x, g x ∂ρ
    _ ≤ ∫ x, indicator (K n)ᶜ 1 x ∂ρ := by
      apply integral_mono_of_nonneg
      · filter_upwards [] with x using g_nonneg x
      · apply Integrable.indicator (integrable_const _) (hK n).measurableSet.compl
      · filter_upwards [] with x
        by_cases hx : x ∈ (K n)ᶜ
        · simpa [hx] using g_le x
        · simp only [hx, not_false_eq_true, indicator_of_notMem]
          apply le_of_eq
          apply gK
          simpa using hx
    _ = ρ (K n)ᶜ := by simp [integral_indicator (hK n).measurableSet.compl]
    _ ≤ u n := mod_cast hρ.2 n
  · -- to show that `μ (Kₙᶜ) ≤ uₙ` when the sequence `K` is monotone, we argue that the only
    -- contribution to `μ (Kₙᶜ)` comes from the measures `νᵢ` with `i > n`. Then we restrict to
    -- a finite sum `∑ i ∈ Ioc n m, νᵢ`, and argue that it is the limit of
    -- `∑ i ∈ Ioc n m, ρ.restricted (K i \ K(i - 1))`, i.e., `ρ.restricted (K m \ K n)`. The total
    -- mass converges (thanks to the weak convergence of finite sums), and the total mass of
    -- `ρ.restricted (K m \ K n)` is bounded by `ρ (Kₙᶜ) ≤ uₙ`.
    suffices (μ : Measure E) (K n)ᶜ ≤ u n by
      apply ENNReal.coe_le_coe.1
      convert! this
      simp
    simp only [toMeasure_mk, (hK n).measurableSet.compl, Measure.sum_apply, μ]
    have : Tendsto (fun m ↦ ∑ i ∈ Finset.range (m + 1), (ν i : Measure E) (K n)ᶜ) atTop
        (𝓝 (∑' i, (ν i : Measure E) (K n)ᶜ)) :=
      (ENNReal.tendsto_nat_tsum _).comp (tendsto_add_atTop_nat 1)
    apply le_of_tendsto this
    filter_upwards [Ici_mem_atTop n] with m (hm : n ≤ m)
    have : ∑ i ∈ Finset.range (m + 1), (ν i : Measure E) (K n)ᶜ
        = ∑ i ∈ Finset.Ioc n m, (ν i : Measure E) (K n)ᶜ := by
      apply (Finset.sum_subset (by grind) _).symm
      simp +contextual only [Finset.mem_range_succ_iff, Finset.mem_Ioc, not_and,
        not_true_eq_false, imp_false, not_lt, ← null_iff_toMeasure_null]
      intro i hi h'i
      apply (ν i).mono_null _ (νK i)
      rw [Monotone.partialSups_eq h]
      exact compl_subset_compl.2 (h h'i)
    rw [this]
    suffices (∑ i ∈ Finset.Ioc n m, ν i).toMeasure univ ≤ u n by
      apply le_trans _ this
      simp only [toMeasure_sum, Measure.coe_finsetSum, Finset.sum_apply]
      gcongr
      simp
    suffices (∑ i ∈ Finset.Ioc n m, ν i).mass ≤ u n by
      convert! ENNReal.coe_le_coe.2 this
      simp
    have : Tendsto (fun (μ : FiniteMeasure E) ↦
        (∑ i ∈ Finset.Ioc n m, μ.restrict (disjointed K i)).mass) f
        (𝓝 ((∑ i ∈ Finset.Ioc n m, ν i).mass)) := by
      apply Tendsto.mass
      exact tendsto_finsetSum _ (fun i hi ↦ hν i)
    apply le_of_tendsto this
    filter_upwards [hf] with μ hμ
    have : ∑ i ∈ Finset.Ioc n m, μ.restrict (disjointed K i) = μ.restrict (K m \ K n) := by
      rw [← biUnion_Ioc_disjointed_of_monotone h hm, FiniteMeasure.restrict_biUnion_finset]
      · exact (disjoint_disjointed K).set_pairwise _
      · exact MeasurableSet.disjointed (fun i ↦ (hK i).measurableSet)
    rw [this, restrict_mass]
    exact le_trans (apply_mono _ (sdiff_subset_compl (K m) (K n))) (hμ.2 n)

@[deprecated (since := "2026-07-09")]
alias isCompact_setOf_finiteMeasure_mass_le_compl_isCompact_le :=
  isCompact_setOfPred_finiteMeasure_mass_le_compl_isCompact_le

/-- **Prokhorov theorem**: Given a sequence of compact sets `Kₙ` and a sequence `uₙ` tending to
zero, the finite measures of mass `C` giving mass at most `uₙ` to the complement of `Kₙ` form a
compact set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caeefca8ede961defa13ae3cd7890c0e421d203e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
