# lemma_abadeulmit2_integral_tsum_inv_sub_int_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6b5b5a8-bde3-112e-2482-e72e861b4f9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:021537c5-fb99-2987-7a04-ae6b07907ff2",
  "kind": "lemma",
  "lexical_name": "lemma_abadeulmit2_integral_tsum_inv_sub_int_sq",
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
  "slug": "lemma-abadeulmit2-integral-tsum-inv-sub-int-sq--0a0b3eb916b7f896af71b26d",
  "source": {
    "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2448,
    "line": 2228,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0b3eb916b7f896af71b26db6b3c795856297ec95aeacd075ca89da44c6ca17",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:021537c5-fb99-2987-7a04-ae6b07907ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2228–2448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_abadeulmit2_integral_tsum_inv_sub_int_sq {z w : ℂ}
  (_hz : z ∈ integerComplement)
  (hw : w ∈ integerComplement)
  (h_path : ∀ t : ℝ, t ∈ Set.Icc 0 1 → w + ↑t * (z - w) ∉ range (fun n : ℤ => (n : ℂ))) :
  (z - w) * ∫ (t : ℝ) in 0..1, ∑' (n : ℤ), 1 / (w + ↑t * (z - w) - ↑n) ^ 2 =
  ∑' (n : ℤ), (1 / (w - ↑n) - 1 / (z - ↑n)) := by
  let path : ℝ → ℂ := fun t => w + (t : ℂ) * (z - w)
  let g : ℤ → ℝ → ℂ := fun n t => 1 / (path t - (n : ℂ)) ^ 2
  have h_cont_path : ContinuousOn path (Set.Icc 0 1) := by fun_prop
  have h_bound_path : Bornology.IsBounded (path '' Set.Icc 0 1) :=
    (isCompact_Icc.image_of_continuousOn h_cont_path).isBounded
  obtain ⟨M, hM⟩ := h_bound_path.exists_norm_le
  have h_integrable (n : ℤ) : IntervalIntegrable (g n) volume 0 1 := by
    apply ContinuousOn.intervalIntegrable
    rw [Set.uIcc_of_le (zero_le_one : (0 : ℝ) ≤ 1)]
    apply ContinuousOn.div
    · fun_prop
    · apply ContinuousOn.pow
      apply ContinuousOn.sub
      · exact h_cont_path
      · apply continuousOn_const
    · intro t ht
      apply pow_ne_zero
      rw [sub_ne_zero]
      intro h_eq
      exact h_path t ht ⟨n, h_eq.symm⟩
  have h_summable : Summable (fun n ↦ ∫ t in Set.Ioc 0 1, ‖g n t‖) := by
    simp_rw [g, norm_div, norm_one, norm_pow]
    let C := 2 * M
    have h_le : ∀ (n : ℤ), ‖n‖ > C → ∀ t ∈ Set.Icc 0 1, ‖(n : ℂ) - path t‖⁻¹ ^ 2 ≤ 4 / ‖n‖ ^ 2 := by
      intro n hn t ht
      have h_path_t : ‖path t‖ ≤ M := hM (path t) (Set.mem_image_of_mem path ht)
      have h_dist : ‖n‖ - M ≤ ‖(n : ℂ) - path t‖ := by
        calc ‖(n : ℂ) - path t‖ ≥ ‖(n : ℂ)‖ - ‖path t‖ := norm_sub_norm_le ..
          _ = (‖n‖ : ℝ) - ‖path t‖ := by
            rw [norm_intCast, Int.norm_eq_abs]
          _ ≥ ‖n‖ - M := by gcongr
      have h_dist_pos : 0 < ‖n‖ - M := by dsimp [C] at hn; linarith [norm_nonneg (path t)]
      rw [inv_eq_one_div, one_div_pow]
      rw [show 4 / ‖n‖ ^ 2 = 1 / (‖n‖ ^ 2 / 4) by
        field_simp]
      apply div_le_div₀ (by norm_num) (by norm_num)
      · apply div_pos (pow_pos (by dsimp [C] at hn; linarith [norm_nonneg (path t)]) 2) (by norm_num)
      · rw [show ‖n‖ ^ 2 / 4 = (‖n‖ / 2) ^ 2 by field_simp; ring]
        apply pow_le_pow_left₀ (by apply div_nonneg (norm_nonneg _) (by norm_num))
        calc ‖n‖ / 2 = ‖n‖ - ‖n‖ / 2 := by ring
          _ ≤ ‖n‖ - M := by dsimp [C] at hn; linarith [norm_nonneg (path t)]
          _ ≤ ‖(n : ℂ) - path t‖ := h_dist
    apply Summable.of_norm_bounded_eventually (g := fun n : ℤ ↦ 4 / ‖n‖ ^ 2)
    · apply Summable.mul_left
      simp only [Int.norm_eq_abs, sq_abs]
      simpa only [one_div] using (summable_one_div_int_pow (p := 2)).mpr one_lt_two
    · rw [Filter.eventually_cofinite]
      let S : Set ℤ := {n | ‖n‖ ≤ C}
      have hS : S.Finite := by
        have h_sub : S ⊆ Set.Icc (-⌈C⌉ - 1) (⌈C⌉ + 1) := by
          intro n hn
          dsimp [S] at hn
          rw [← dist_zero_right, ← Metric.mem_closedBall] at hn
          rw [Int.closedBall_eq_Icc] at hn
          rw [Set.mem_Icc] at hn ⊢
          simp only [Int.cast_zero, zero_sub, zero_add] at hn
          constructor
          · trans ⌈-C⌉
            · rw [Int.ceil_neg]
              linarith [Int.floor_le_ceil C]
            · exact hn.1
          · trans ⌊C⌋
            · exact hn.2
            · linarith [Int.floor_le_ceil C]
        exact (Set.finite_Icc _ _).subset h_sub
      apply hS.subset
      intro n hn
      rw [Set.mem_setOf_eq] at hn
      by_contra h_n_not_le
      dsimp [S] at h_n_not_le
      rw [not_le] at h_n_not_le
      have h_n_large : ‖n‖ > C := h_n_not_le
      have h_int : ‖∫ (t : ℝ) in Set.Ioc 0 1, g n t‖ ≤ ∫ (t : ℝ) in Set.Ioc 0 1, ‖g n t‖ :=
        norm_integral_le_integral_norm _
      have hn_bound : ∫ (t : ℝ) in Set.Ioc 0 1, ‖g n t‖ ≤ 4 / ‖n‖ ^ 2 := by
        have h_int_const : ∫ (t : ℝ) in Set.Ioc 0 1, (4 / ‖n‖ ^ 2) = 4 / ‖n‖ ^ 2 := by
           simp
        rw [← h_int_const]
        apply MeasureTheory.integral_mono_ae
        · exact ((h_integrable n).1).norm
        · apply MeasureTheory.integrableOn_const
          · exact ne_of_lt measure_Ioc_lt_top
          · simp
        · simp only [measurableSet_Ioc, ae_restrict_eq, one_div, norm_inv, norm_pow, g, path]
          refine Filter.eventually_inf_principal.mpr ?_
          filter_upwards with x
          intro hx
          have hx_Icc : x ∈ Set.Icc 0 1 := ⟨le_of_lt hx.1, hx.2⟩
          specialize h_le n h_n_large x hx_Icc
          simp only [path] at h_le
          rw [norm_sub_rev]
          rw [← inv_pow]
          exact h_le
      apply hn
      refine le_trans ?_ hn_bound
      simp only [g, one_div]
      refine le_of_eq ?_
      simp_rw [norm_inv, norm_pow]
      rw [Real.norm_of_nonneg (by positivity)]
  rw [intervalIntegral.integral_of_le (zero_le_one : (0:ℝ) ≤ 1)]
  rw [MeasureTheory.integral_tsum]
  · rw [← tsum_mul_left]
    congr 1
    ext n
    rw [← intervalIntegral.integral_of_le (zero_le_one : (0:ℝ) ≤ 1)]
    rw [← intervalIntegral.integral_const_mul (z - w)]
    let F (t : ℝ) := -1 / (path t - n)
    have h_deriv : ∀ t ∈ Set.uIcc 0 1, HasDerivAt F ((z - w) * g n t) t := by
      rw [Set.uIcc_of_le (zero_le_one : (0:ℝ)≤1)]
      intro t ht
      dsimp [F, g, path]
      have h_denom_ne_zero : path t - (n : ℂ) ≠ 0 := by
        rw [sub_ne_zero]
        intro h_eq
        exact h_path t ht ⟨n, h_eq.symm⟩
      have h_d_path : HasDerivAt path (z - w) t := by
        dsimp [path]
        apply HasDerivAt.const_add
        convert (hasDerivAt_ofReal t).mul_const (z - w) using 1
        ring
      have h_d_path_sub : HasDerivAt (fun x ↦ path x - (n : ℂ)) (z - w) t := h_d_path.sub_const (n : ℂ)
      have h_inv_deriv : HasDerivAt (fun x ↦ (path x - (n : ℂ))⁻¹) (-(z - w) / (path t - (n : ℂ))^2) t := by
        have h_inv := (hasDerivAt_inv h_denom_ne_zero).hasFDerivAt.restrictScalars ℝ
        convert HasFDerivAt.comp_hasDerivAt t h_inv h_d_path_sub using 1
        simp [ContinuousLinearMap.restrictScalars]
        field_simp
        ring
      convert h_inv_deriv.neg using 1
      · ext x; simp [path]
        field_simp
      · simp [path]; ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt h_deriv ((h_integrable n).const_mul (z - w))]
    dsimp [F, path]
    ring_nf
  · intro i
    exact (h_integrable i).1.aestronglyMeasurable
  · have h_eq : (∑' (i : ℤ), ∫⁻ (a : ℝ) in Set.Ioc 0 1, ‖1 / (w + ↑a * (z - w) - ↑i) ^ 2‖ₑ ∂volume) =
      ∑' (i : ℤ), (ENNReal.ofReal (∫ (t : ℝ) in Set.Ioc 0 1, ‖g i t‖)) := by
      congr with i
      symm
      have convexity_w : ∀ x : ℝ, x ∈ Set.Ioc 0 1 → w + ↑x * (z - w) - ↑i ≠ 0 := by
        intro x hx h
        have : w + ↑x * (z - w) ∈ Set.range (fun (n : ℤ) ↦ (n : ℂ)) :=
          ⟨i, by simp only; rw [sub_eq_zero] at h; exact h.symm ⟩
        apply h_path x (Set.Ioc_subset_Icc_self hx) this
      rw [MeasureTheory.ofReal_integral_eq_lintegral_ofReal (f := fun t : ℝ ↦ ‖g i t‖)]
      · apply setLIntegral_congr_fun_ae (by simp)
        apply Filter.Eventually.of_forall
        intro x hx
        simp only [one_div, norm_inv, norm_pow, g, path]
        rw [enorm_inv]
        · conv_rhs => arg 1; rw [← ofReal_norm_eq_enorm, norm_pow]
          apply ENNReal.ofReal_inv_of_pos
          apply sq_pos_of_pos
          apply norm_pos_iff.mpr (convexity_w x hx)
        · simp [convexity_w x hx]
      · let S := path '' Set.Icc 0 1
        have h_compact : IsCompact S := isCompact_Icc.image_of_continuousOn h_cont_path
        have h_not_mem : (i : ℂ) ∉ S := by
          simp only [Set.mem_image, Set.mem_Icc, not_exists, not_and, and_imp, S]
          intro t h0 h1 heq
          rcases lt_or_eq_of_le h0 with ht_pos | rfl
          · exact convexity_w t ⟨ht_pos, h1⟩ (sub_eq_zero.mpr heq)
          · dsimp [path] at heq
            simp only [zero_mul, add_zero] at heq
            rw [heq] at hw
            exact hw ⟨i, rfl⟩
        have h_dist : 0 < Metric.infDist (i : ℂ) S := by
          refine lt_of_le_of_ne Metric.infDist_nonneg ?_
          intro h
          have hS_ne : S.Nonempty := (Set.nonempty_Icc.mpr zero_le_one).image path
          rw [← h_compact.isClosed.closure_eq, Metric.mem_closure_iff_infDist_zero hS_ne] at h_not_mem
          exact h_not_mem h.symm
        let δ := Metric.infDist (i : ℂ) S
        let C := 1 / δ ^ 2
        apply MeasureTheory.IntegrableOn.of_bound (C := C) (hs := by simp)
        · refine ContinuousOn.aestronglyMeasurable ?_ (by simp)
          · apply ContinuousOn.norm
            have hcont_path' :
              ContinuousOn path (Set.Ioc 0 1) :=
              h_cont_path.mono (by intro t ht; exact Set.Ioc_subset_Icc_self ht)
            have hcont_sub :
              ContinuousOn (fun t ↦ path t - (i : ℂ)) (Set.Ioc 0 1) :=
                hcont_path'.sub continuousOn_const
            have hcont_pow :
              ContinuousOn (fun t ↦ (path t - (i : ℂ))^2) (Set.Ioc 0 1) := hcont_sub.pow 2
            have hne :
              ∀ t ∈ Set.Ioc 0 1, (path t - (i : ℂ)) ≠ 0 := by
              intro t ht
              simpa [path] using convexity_w t ht
            have hcont_inv :
              ContinuousOn (fun t ↦ ((path t - (i : ℂ))^2)⁻¹) (Set.Ioc 0 1) :=
              hcont_pow.inv₀ (by
                intro t ht
                have h := hne t ht
                exact pow_ne_zero 2 h)
            simpa [g, div_eq_mul_inv] using hcont_inv
        · filter_upwards [MeasureTheory.ae_restrict_mem (measurableSet_Ioc : MeasurableSet (Set.Ioc (0 : ℝ) 1))] with t ht
          simp only [g, norm_div, norm_one, norm_pow]
          dsimp [C]
          apply div_le_div₀ (by exact zero_le_one) (by simp) (by positivity)
          apply pow_le_pow_left₀ (by positivity)
          rw [norm_sub_rev, ← dist_eq_norm]
          rw [abs_of_nonneg dist_nonneg]
          apply Metric.infDist_le_dist_of_mem
          apply Set.mem_image_of_mem
          exact Set.Ioc_subset_Icc_self ht
      · exact Eventually.of_forall fun t ↦ norm_nonneg _
    rw [h_eq]
    simp_rw [ENNReal.ofReal_eq_coe_nnreal (MeasureTheory.integral_nonneg_of_ae (Eventually.of_forall fun t ↦ norm_nonneg _))]
    rw [ENNReal.tsum_coe_ne_top_iff_summable, ← NNReal.summable_coe]
    apply Summable.congr h_summable
    intro i
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean#L2228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0f3aece12c9562ccb5ca1c7447b813a4348cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
