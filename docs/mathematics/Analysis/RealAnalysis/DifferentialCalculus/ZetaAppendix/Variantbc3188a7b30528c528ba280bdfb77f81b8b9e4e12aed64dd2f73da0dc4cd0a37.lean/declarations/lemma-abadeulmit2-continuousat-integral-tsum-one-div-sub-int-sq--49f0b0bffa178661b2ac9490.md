# lemma_abadeulmit2_continuousAt_integral_tsum_one_div_sub_int_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed89ccc0-1291-0df9-b6e8-cdfae088dba7",
  "kind": "lemma",
  "lexical_name": "lemma_abadeulmit2_continuousAt_integral_tsum_one_div_sub_int_sq",
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
  "slug": "lemma-abadeulmit2-continuousat-integral-tsum-one-div-sub-int-sq--49f0b0bffa178661b2ac9490",
  "source": {
    "blob": "8d4e5744caad9c4a9cac4d9b39a2102c21fd6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2660,
    "line": 2550,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49f0b0bffa178661b2ac949072bcbfcd43070911cb7408e9dae79166cee986a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed89ccc0-1291-0df9-b6e8-cdfae088dba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2550–2660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_abadeulmit2_continuousAt_integral_tsum_one_div_sub_int_sq {z : ℂ}
  (hz : z ∈ integerComplement) :
  ContinuousAt (fun x' ↦ ∫ (t : ℝ) in 0..1, (fun w : ℂ ↦ ∑' (n : ℤ), 1 / (w - n) ^ 2) (z + ↑t * (x' - z))) z  := by
  have h_open : IsOpen integerComplement := Complex.isOpen_compl_range_intCast
  obtain ⟨ε, hε, h_ball⟩ := Metric.isOpen_iff.1 h_open z hz
  let S : ℂ → ℂ := fun w : ℂ ↦ ∑' (n : ℤ), 1 / (w - n) ^ 2
  let ε' := ε / 2
  have hε' : ε' > 0 := half_pos hε
  let K := Metric.closedBall z ε'
  have hK_compact : IsCompact K := by exact isCompact_closedBall z ε'
  have hK_sub : K ⊆ integerComplement := (Metric.closedBall_subset_ball (half_lt_self hε)).trans h_ball
  have hS_cont : ContinuousOn S K := by
    dsimp [S]
    refine continuousOn_tsum (u := fun (n : ℤ) ↦ (‖z - n‖ - ε')⁻¹ ^ 2) ?_ ?_ ?_
    · intro i
      simp_rw [one_div]
      apply ContinuousOn.inv₀ (by fun_prop)
      · intro x hx
        apply pow_ne_zero
        rw [sub_ne_zero]
        intro h
        apply hK_sub hx
        exact ⟨i, h.symm⟩
    · apply Summable.of_nat_of_neg_add_one
      · apply summable_of_isBigO_nat (g := fun n : ℕ ↦ (1 : ℝ) / (n : ℝ)^2) (summable_one_div_nat_pow.mpr one_lt_two)
        simp_rw [one_div, ← inv_pow]
        refine Asymptotics.IsBigO.pow ?_ 2
        apply Asymptotics.IsBigO.inv_rev
        · apply Asymptotics.IsBigO.of_bound 2
          filter_upwards [eventually_ge_atTop (Nat.ceil (2 * (‖z‖ + ε')))] with x hx
          norm_cast
          have hx_real : 2 * (‖z‖ + ε') ≤ x := by exact_mod_cast Nat.le_of_ceil_le hx
          have h_dist : ↑x - ‖z‖ ≤ ‖z - ↑x‖ := by
            rw [← Complex.norm_natCast x]
            rw [norm_sub_rev z (x : ℂ)]
            apply norm_sub_norm_le
          rw [Real.norm_of_nonneg (by linarith)]
          linarith
        · filter_upwards [eventually_gt_atTop 0] with x hx hx_zero
          norm_cast at hx_zero
          linarith
      · apply summable_of_isBigO_nat (g := fun n : ℕ ↦ (1 : ℝ) / (n + 1 : ℝ)^2)
        · exact_mod_cast (summable_nat_add_iff 1).mpr (summable_one_div_nat_pow.mpr one_lt_two)
        · simp_rw [one_div, ← inv_pow]
          refine Asymptotics.IsBigO.pow ?_ 2
          apply Asymptotics.IsBigO.inv_rev
          · apply Asymptotics.IsBigO.of_bound 2
            filter_upwards [eventually_ge_atTop (Nat.ceil (2 * (‖z‖ + ε')))] with x hx
            push_cast
            simp only [sub_neg_eq_add]
            have h_rev : ↑x + 1 - ‖z‖ ≤ ‖z + (↑x + 1)‖ := by
              rw [add_comm]
              have h_tri := norm_sub_norm_le (x + 1 : ℂ) (-z)
              rw [norm_neg, ← Nat.cast_add_one, Complex.norm_natCast] at h_tri
              simpa [sub_neg_eq_add, add_comm, Nat.cast_add_one] using h_tri
            have hx_real : 2 * (‖z‖ + ε') ≤ ↑x := by exact_mod_cast Nat.le_of_ceil_le hx
            norm_cast at *
            push_cast at *
            rw [Real.norm_of_nonneg (by linarith)]
            linarith
          · apply Filter.Eventually.of_forall
            intro x hx
            norm_cast at hx
    · intro n x hx
      dsimp
      rw [one_div, norm_inv, norm_pow, ← inv_pow]
      have h_dist : ε ≤ ‖z - ↑n‖ := by
        contrapose! hz
        have h_mem : ↑n ∈ Metric.ball z ε := by rwa [Metric.mem_ball, dist_eq_norm, norm_sub_rev]
        have h_comp := h_ball h_mem
        exact (h_comp ⟨n, rfl⟩).elim
      gcongr
      · dsimp [ε'] at *
        linarith
      · rw [Metric.mem_closedBall, dist_eq_norm] at hx
        calc ‖z - ↑n‖ - ε' ≤ ‖z - ↑n‖ - ‖x - z‖ := by linarith
                        _ ≤ ‖x - ↑n‖ := by
                          rw [norm_sub_rev x z]
                          linarith [norm_sub_le_norm_sub_add_norm_sub z x ↑n]
  have h_bound : Bornology.IsBounded (S '' K) :=
    (hK_compact.image_of_continuousOn hS_cont).isBounded
  obtain ⟨M, hM⟩ := h_bound.exists_norm_le
  apply intervalIntegral.continuousAt_of_dominated_interval
    (bound := fun _ ↦ M) (F := fun x t ↦ S (z + t * (x - z)))
    (a := 0) (b := 1)
  · filter_upwards [Metric.ball_mem_nhds z hε'] with x hx
    refine ContinuousOn.aestronglyMeasurable ?_ measurableSet_uIoc
    apply ContinuousOn.comp hS_cont (by fun_prop)
    intro t ht
    convert Convex.add_smul_sub_mem (convex_closedBall z ε') (Metric.mem_closedBall_self (le_of_lt hε')) (Metric.ball_subset_closedBall hx) ?_
    · simp only [Set.mem_Icc]
      rw [uIoc_of_le zero_le_one] at ht
      exact ⟨le_of_lt ht.1, ht.2⟩
  · filter_upwards [Metric.ball_mem_nhds z hε'] with x hx
    apply Filter.Eventually.of_forall
    intro t ht
    apply hM
    apply Set.mem_image_of_mem
    convert Convex.add_smul_sub_mem (convex_closedBall z ε') (Metric.mem_closedBall_self (le_of_lt hε')) (Metric.ball_subset_closedBall hx) ?_
    rw [uIoc_of_le zero_le_one] at ht
    exact ⟨le_of_lt ht.1, ht.2⟩
  · exact intervalIntegrable_const
  · apply Filter.Eventually.of_forall
    intro t ht
    refine ContinuousAt.comp (g := S) ?_ ?_
    · simp only [sub_self, mul_zero, add_zero]
      apply hS_cont.continuousAt
      exact Metric.closedBall_mem_nhds z hε'
    · fun_prop

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean#L2550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4e5744caad9c4a9cac4d9b39a2102c21fd6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
