# tendsto_integral_exp_inner_smul_cocompact_of_continuous_compact_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5a8884a-7e1d-47e8-eba9-f2719a900d09",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_exp_inner_smul_cocompact_of_continuous_compact_support",
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
  "slug": "tendsto-integral-exp-inner-smul-cocompact-of-continuous-compact-support--d583d678c76fb17fa466ae97",
  "source": {
    "blob": "3cbe58cea49e0870ffdd8c94ae206a743ca5d704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d583d678c76fb17fa466ae977a1b85ee6edb9e74cc1e427e86b6974ca111adf3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5a8884a-7e1d-47e8-eba9-f2719a900d09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_exp_inner_smul_cocompact_of_continuous_compact_support (hf1 : Continuous f)
    (hf2 : HasCompactSupport f) :
    Tendsto (fun w : V => ∫ v : V, e[-⟪v, w⟫] • f v) (cocompact V) (𝓝 0) := by
  refine' NormedAddCommGroup.tendsto_nhds_zero.mpr fun ε hε => _
  suffices ∃ T : ℝ, ∀ w : V, T ≤ ‖w‖ → ‖∫ v : V, e[-⟪v, w⟫] • f v‖ < ε by
    simp_rw [← comap_dist_left_atTop_eq_cocompact (0 : V), eventually_comap, eventually_atTop,
      dist_eq_norm', sub_zero]
    exact
      let ⟨T, hT⟩ := this
      ⟨T, fun b hb v hv => hT v (hv.symm ▸ hb)⟩
  obtain ⟨R, -, hR_bd⟩ : ∃ R : ℝ, 0 < R ∧ ∀ x : V, R ≤ ‖x‖ → f x = 0
  exact hf2.exists_pos_le_norm
  let A := {v : V | ‖v‖ ≤ R + 1}
  have mA : MeasurableSet A := by
    suffices A = Metric.closedBall (0 : V) (R + 1) by
      rw [this]
      exact Metric.isClosed_ball.measurableSet
    simp_rw [Metric.closedBall, dist_eq_norm, sub_zero]
  obtain ⟨B, hB_pos, hB_vol⟩ : ∃ B : ℝ≥0, 0 < B ∧ volume A ≤ B := by
    have hc : IsCompact A := by
      simpa only [Metric.closedBall, dist_eq_norm, sub_zero] using isCompact_closedBall (0 : V) _
    let B₀ := volume A
    replace hc : B₀ < ⊤ := hc.measure_lt_top
    refine' ⟨B₀.toNNReal + 1, add_pos_of_nonneg_of_pos B₀.toNNReal.coe_nonneg one_pos, _⟩
    rw [ENNReal.coe_add, ENNReal.coe_one, ENNReal.coe_toNNReal hc.ne]
    exact le_self_add
  --* Use uniform continuity to choose δ such that `‖x - y‖ < δ` implies `‖f x - f y‖ < ε / B`.
  obtain ⟨δ, hδ1, hδ2⟩ :=
    Metric.uniformContinuous_iff.mp (hf2.uniformContinuous_of_continuous hf1) (ε / B)
      (div_pos hε hB_pos)
  refine' ⟨1 / 2 + 1 / (2 * δ), fun w hw_bd => _⟩
  have hw_ne : w ≠ 0 := by
    contrapose! hw_bd; rw [hw_bd, norm_zero]
    exact add_pos one_half_pos (one_div_pos.mpr <| mul_pos two_pos hδ1)
  have hw'_nm : ‖i w‖ = 1 / (2 * ‖w‖) := by
    rw [norm_smul, norm_div, Real.norm_of_nonneg (mul_nonneg two_pos.le <| sq_nonneg _), norm_one,
      sq, ← div_div, ← div_div, ← div_div, div_mul_cancel _ (norm_eq_zero.not.mpr hw_ne)]
  --* Rewrite integral in terms of `f v - f (v + w')`.
  -- Porting note: this was
  -- rw [norm_eq_abs, ← Complex.ofReal_one, ← ofReal_bit0, ← of_real_div,
  --   Complex.abs_of_nonneg one_half_pos.le]
  have : ‖(1 / 2 : ℂ)‖ = 1 / 2 := by norm_num
  rw [fourier_integral_eq_half_sub_half_period_translate hw_ne
      (hf1.integrable_of_hasCompactSupport hf2),
    norm_smul, this]
  have : ε = 1 / 2 * (2 * ε) := by field_simp; rw [mul_comm]
  rw [this, mul_lt_mul_left (one_half_pos : (0 : ℝ) < 1 / 2)]
  refine' lt_of_le_of_lt (norm_integral_le_integral_norm _) _
  simp_rw [norm_smul, norm_eq_abs, abs_coe_circle, one_mul]
  --* Show integral can be taken over A only.
  have int_A : ∫ v : V, ‖f v - f (v + i w)‖ = ∫ v in A, ‖f v - f (v + i w)‖ := by
    refine' (set_integral_eq_integral_of_forall_compl_eq_zero fun v hv => _).symm
    dsimp only at hv
    simp only [mem_setOf, not_le] at hv
    rw [hR_bd v _, hR_bd (v + i w) _, sub_zero, norm_zero]
    · rw [← sub_neg_eq_add]
      refine' le_trans _ (norm_sub_norm_le _ _)
      rw [le_sub_iff_add_le, norm_neg]
      refine' le_trans _ hv.le
      rw [add_le_add_iff_left, hw'_nm, ← div_div]
      refine' (div_le_one <| norm_pos_iff.mpr hw_ne).mpr _
      refine' le_trans (le_add_of_nonneg_right <| one_div_nonneg.mpr <| _) hw_bd
      exact (mul_pos (zero_lt_two' ℝ) hδ1).le
    · exact ((le_add_iff_nonneg_right _).mpr zero_le_one).trans hv.le
  rw [int_A]; clear int_A
  --* Bound integral using fact that `‖f v - f (v + w')‖` is small.
  have bdA : ∀ v : V, v ∈ A → ‖‖f v - f (v + i w)‖‖ ≤ ε / B := by
    simp_rw [norm_norm]
    simp_rw [dist_eq_norm] at hδ2
    refine' fun x _ => (hδ2 _).le
    rw [sub_add_cancel', norm_neg, hw'_nm, ← div_div, div_lt_iff (norm_pos_iff.mpr hw_ne), ←
      div_lt_iff' hδ1, div_div]
    refine' (lt_add_of_pos_left _ _).trans_le hw_bd
    exact one_half_pos
  have bdA2 := norm_set_integral_le_of_norm_le_const (hB_vol.trans_lt ENNReal.coe_lt_top) bdA ?_
  swap;
  · apply Continuous.aestronglyMeasurable
    exact
      continuous_norm.comp <|
        Continuous.sub hf1 <| Continuous.comp hf1 <| continuous_id'.add continuous_const
  have : ‖_‖ = ∫ v : V in A, ‖f v - f (v + i w)‖ :=
    Real.norm_of_nonneg (set_integral_nonneg mA fun x _ => norm_nonneg _)
  rw [this] at bdA2
  refine' bdA2.trans_lt _
  rw [div_mul_eq_mul_div, div_lt_iff (NNReal.coe_pos.mpr hB_pos), mul_comm (2 : ℝ), mul_assoc,
    mul_lt_mul_left hε]
  rw [← ENNReal.toReal_le_toReal] at hB_vol
  · refine' hB_vol.trans_lt _
    rw [(by rfl : (↑B : ENNReal).toReal = ↑B), two_mul]
    exact lt_add_of_pos_left _ hB_pos
  exacts [(hB_vol.trans_lt ENNReal.coe_lt_top).ne, ENNReal.coe_lt_top.ne]
#align tendsto_integral_exp_inner_smul_cocompact_of_continuous_compact_support tendsto_integral_exp_inner_smul_cocompact_of_continuous_compact_support

variable (f)

/-- Riemann-Lebesgue lemma for functions on a real inner-product space: the integral
`∫ v, exp (-2 * π * ⟪w, v⟫ * I) • f v` tends to 0 as `w → ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cbe58cea49e0870ffdd8c94ae206a743ca5d704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
