# continuous_parametric_primitive_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddf653b6-7af8-2f48-eb51-4a9e1765a482",
  "kind": "theorem",
  "lexical_name": "continuous_parametric_primitive_of_continuous",
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
  "slug": "continuous-parametric-primitive-of-continuous--ba1deaabba742da712512c7b",
  "source": {
    "blob": "2fdb626dcfd6a29fc42271275f776c0e0af4969d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 525,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba1deaabba742da712512c7bb27eb70de0565d8b89f777a2b10f553246c4b6fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddf653b6-7af8-2f48-eb51-4a9e1765a482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_parametric_primitive_of_continuous
    {a₀ : ℝ} (hf : Continuous f.uncurry) :
    Continuous fun p : X × ℝ ↦ ∫ t in a₀..p.2, f p.1 t ∂μ := by
  -- We will prove continuity at a point `(q, b₀)`.
  rw [continuous_iff_continuousAt]
  rintro ⟨q, b₀⟩
  apply Metric.continuousAt_iff'.2 (fun ε εpos ↦ ?_)
  -- choose `a` and `b` such that `(a, b)` contains both `a₀` and `b₀`. We will use uniform
  -- estimates on a neighborhood of the compact set `{q} × [a, b]`.
  obtain ⟨a, a_lt⟩ := exists_lt (min a₀ b₀)
  obtain ⟨b, lt_b⟩ := exists_gt (max a₀ b₀)
  rw [lt_min_iff] at a_lt
  rw [max_lt_iff] at lt_b
  have : IsCompact ({q} ×ˢ (Icc a b)) := isCompact_singleton.prod isCompact_Icc
  -- let `M` be a bound for `f` on the compact set `{q} × [a, b]`.
  obtain ⟨M, hM⟩ := this.bddAbove_image hf.norm.continuousOn
  -- let `δ` be small enough to satisfy several properties that will show up later.
  obtain ⟨δ, δpos, hδ, h'δ, h''δ⟩ : ∃ (δ : ℝ), 0 < δ ∧ δ < 1 ∧ Icc (b₀ - δ) (b₀ + δ) ⊆ Icc a b ∧
      (M + 1) * μ.real (Icc (b₀ - δ) (b₀ + δ)) + δ * μ.real (Icc a b) < ε := by
    have A : ∀ᶠ δ in 𝓝[>] (0 : ℝ), δ ∈ Ioo 0 1 := Ioo_mem_nhdsGT zero_lt_one
    have B : ∀ᶠ δ in 𝓝 0, Icc (b₀ - δ) (b₀ + δ) ⊆ Icc a b := by
      have I : Tendsto (fun δ ↦ b₀ - δ) (𝓝 0) (𝓝 (b₀ - 0)) := tendsto_const_nhds.sub tendsto_id
      have J : Tendsto (fun δ ↦ b₀ + δ) (𝓝 0) (𝓝 (b₀ + 0)) := tendsto_const_nhds.add tendsto_id
      simp only [sub_zero, add_zero] at I J
      filter_upwards [(tendsto_order.1 I).1 _ a_lt.2, (tendsto_order.1 J).2 _ lt_b.2] with δ hδ h'δ
      exact Icc_subset_Icc hδ.le h'δ.le
    have C : ∀ᶠ δ in 𝓝 0,
        (M + 1) * μ.real (Icc (b₀ - δ) (b₀ + δ)) + δ * μ.real (Icc a b) < ε := by
      suffices Tendsto
        (fun δ ↦ (M + 1) * μ.real (Icc (b₀ - δ) (b₀ + δ)) + δ * μ.real (Icc a b))
          (𝓝 0) (𝓝 ((M + 1) * (0 : ℝ≥0∞).toReal + 0 * μ.real (Icc a b))) by
        simp only [toReal_zero, mul_zero, zero_mul, add_zero] at this
        exact (tendsto_order.1 this).2 _ εpos
      apply Tendsto.add (Tendsto.mul tendsto_const_nhds _)
        (Tendsto.mul tendsto_id tendsto_const_nhds)
      exact (tendsto_toReal zero_ne_top).comp (tendsto_measure_Icc _ _)
    rcases (A.and ((B.and C).filter_mono nhdsWithin_le_nhds)).exists with ⟨δ, hδ, h'δ, h''δ⟩
    exact ⟨δ, hδ.1, hδ.2, h'δ, h''δ⟩
  -- By compactness of `[a, b]` and continuity of `f` there, if `p` is close enough to `q`
  -- then `f p x` is `δ`-close to `f q x`, uniformly in `x ∈ [a, b]`.
  -- (Note in particular that this implies a bound `M + δ ≤ M + 1` for `f p x`).
  obtain ⟨v, v_mem, hv⟩ : ∃ v ∈ 𝓝[univ] q, ∀ p ∈ v, ∀ x ∈ Icc a b, dist (f p x) (f q x) < δ :=
    IsCompact.mem_uniformity_of_prod isCompact_Icc hf.continuousOn (mem_univ _)
      (dist_mem_uniformity δpos)
  -- for `p` in this neighborhood and `s` which is `δ`-close to `b₀`, we will show that the
  -- integrals are `ε`-close.
  have : v ×ˢ (Ioo (b₀ - δ) (b₀ + δ)) ∈ 𝓝 (q, b₀) := by
    rw [nhdsWithin_univ] at v_mem
    simp only [prod_mem_nhds_iff, v_mem, true_and]
    apply Ioo_mem_nhds <;> linarith
  filter_upwards [this]
  rintro ⟨p, s⟩ ⟨hp : p ∈ v, hs : s ∈ Ioo (b₀ - δ) (b₀ + δ)⟩
  simp only [dist_eq_norm] at hv ⊢
  have J r u v : IntervalIntegrable (f r) μ u v := (hf.uncurry_left _).intervalIntegrable _ _
  /- we compute the difference between the integrals by splitting the contribution of the change
  from `b₀` to `s` (which gives a contribution controlled by the measure of `(b₀ - δ, b₀ + δ)`,
  small enough thanks to our choice of `δ`) and the change from `q` to `p`, which is small as
  `f p x` and `f q x` are uniformly close by design. -/
  calc
  ‖∫ t in a₀..s, f p t ∂μ - ∫ t in a₀..b₀, f q t ∂μ‖
    = ‖(∫ t in a₀..s, f p t ∂μ - ∫ t in a₀..b₀, f p t ∂μ)
        + (∫ t in a₀..b₀, f p t ∂μ - ∫ t in a₀..b₀, f q t ∂μ)‖ := by congr 1; abel
  _ ≤ ‖∫ t in a₀..s, f p t ∂μ - ∫ t in a₀..b₀, f p t ∂μ‖
        + ‖∫ t in a₀..b₀, f p t ∂μ - ∫ t in a₀..b₀, f q t ∂μ‖ := norm_add_le _ _
  _ = ‖∫ t in b₀..s, f p t ∂μ‖ + ‖∫ t in a₀..b₀, (f p t - f q t) ∂μ‖ := by
      congr 2
      · rw [integral_interval_sub_left (J _ _ _) (J _ _ _)]
      · rw [integral_sub (J _ _ _) (J _ _ _)]
  _ ≤ ∫ t in Ι b₀ s, ‖f p t‖ ∂μ + ∫ t in Ι a₀ b₀, ‖f p t - f q t‖ ∂μ := by
      gcongr
      · exact norm_integral_le_integral_norm_uIoc
      · exact norm_integral_le_integral_norm_uIoc
  _ ≤ ∫ t in Icc (b₀ - δ) (b₀ + δ), ‖f p t‖ ∂μ + ∫ t in Icc a b, ‖f p t - f q t‖ ∂μ := by
      gcongr
      · apply setIntegral_mono_set
        · exact (hf.uncurry_left _).norm.integrableOn_Icc
        · exact Eventually.of_forall (fun x ↦ norm_nonneg _)
        · have : Ι b₀ s ⊆ Icc (b₀ - δ) (b₀ + δ) := by
            apply uIoc_subset_uIcc.trans (uIcc_subset_Icc ?_ ⟨hs.1.le, hs.2.le⟩ )
            simp [δpos.le]
          exact Eventually.of_forall this
      · apply setIntegral_mono_set
        · exact ((hf.uncurry_left _).sub (hf.uncurry_left _)).norm.integrableOn_Icc
        · exact Eventually.of_forall (fun x ↦ norm_nonneg _)
        · have : Ι a₀ b₀ ⊆ Icc a b := uIoc_subset_uIcc.trans
            (uIcc_subset_Icc ⟨a_lt.1.le, lt_b.1.le⟩ ⟨a_lt.2.le, lt_b.2.le⟩)
          exact Eventually.of_forall this
  _ ≤ ∫ t in Icc (b₀ - δ) (b₀ + δ), M + 1 ∂μ + ∫ _t in Icc a b, δ ∂μ := by
      gcongr ?_ + ?_
      · apply setIntegral_mono_on
        · exact (hf.uncurry_left _).norm.integrableOn_Icc
        · exact continuous_const.integrableOn_Icc
        · exact measurableSet_Icc
        · intro x hx
          calc ‖f p x‖ = ‖f q x + (f p x - f q x)‖ := by congr; abel
          _ ≤ ‖f q x‖ + ‖f p x - f q x‖ := norm_add_le _ _
          _ ≤ M + δ := by
              gcongr
              · apply hM
                change (fun x ↦ ‖Function.uncurry f x‖) (q, x) ∈ _
                apply mem_image_of_mem
                simp only [singleton_prod, mem_image, Prod.mk.injEq, true_and, exists_eq_right]
                exact h'δ hx
              · exact le_of_lt (hv _ hp _ (h'δ hx))
          _ ≤ M + 1 := by linarith
      · apply setIntegral_mono_on
        · exact ((hf.uncurry_left _).sub (hf.uncurry_left _)).norm.integrableOn_Icc
        · exact continuous_const.integrableOn_Icc
        · exact measurableSet_Icc
        · intro x hx
          exact le_of_lt (hv _ hp _ hx)
  _ = (M + 1) * μ.real (Icc (b₀ - δ) (b₀ + δ)) + δ * μ.real (Icc a b) := by simp [mul_comm]
  _ < ε := h''δ

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fdb626dcfd6a29fc42271275f776c0e0af4969d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
