# tendsto_sum_pi_div_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4794056feca3cbe1d361b6025dd92504520f7033",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bd63310e87278c97921444bb9ec7503d2bed8f12296e846ca269eb89d15bcf8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31c0dc8c-70e9-855b-1eb8-0e06458b2016",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7126c696-8a8a-0f0a-507c-075f252475df",
  "kind": "theorem",
  "lexical_name": "tendsto_sum_pi_div_four",
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
  "slug": "tendsto-sum-pi-div-four--6e66c4039cc8e198ac19f20c",
  "source": {
    "blob": "4794056feca3cbe1d361b6025dd92504520f7033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/Leibniz/Variant3bd63310e87278c97921444bb9ec7503d2bed8f12296e846ca269eb89d15bcf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e66c4039cc8e198ac19f20c269c2ed3d7b6c5de24e63df2d6fcd96c3b6ec123",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Leibniz/Variant3bd63310e87278c97921444bb9ec7503d2bed8f12296e846ca269eb89d15bcf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7126c696-8a8a-0f0a-507c-075f252475df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_sum_pi_div_four :
    Tendsto (fun k => ∑ i in Finset.range k, (-(1 : ℝ)) ^ i / (2 * i + 1)) atTop (𝓝 (π / 4)) := by
  rw [tendsto_iff_norm_tendsto_zero, ← tendsto_zero_iff_norm_tendsto_zero]
  -- (1) We introduce a useful sequence `u` of values in [0,1], then prove that another sequence
  --     constructed from `u` tends to `0` at `+∞`
  let u := fun k : ℕ => (k : NNReal) ^ (-1 / (2 * (k : ℝ) + 1))
  have H : Tendsto (fun k : ℕ => (1 : ℝ) - u k + u k ^ (2 * (k : ℝ) + 1)) atTop (𝓝 0) := by
    convert (((tendsto_rpow_div_mul_add (-1) 2 1 two_ne_zero.symm).neg.const_add 1).add
        tendsto_inv_atTop_zero).comp tendsto_nat_cast_atTop_atTop using 1
    · ext k
      simp only [NNReal.coe_nat_cast, Function.comp_apply, NNReal.coe_rpow]
      rw [← rpow_mul (Nat.cast_nonneg k) (-1 / (2 * (k : ℝ) + 1)) (2 * (k : ℝ) + 1),
        @div_mul_cancel _ _ (2 * (k : ℝ) + 1) _
          (by norm_cast; simp only [Nat.succ_ne_zero, not_false_iff]),
        rpow_neg_one k, sub_eq_add_neg]
    · simp only [add_zero, add_right_neg]
  -- (2) We convert the limit in our goal to an inequality
  refine' squeeze_zero_norm _ H
  intro k
  -- Since `k` is now fixed, we henceforth denote `u k` as `U`
  let U := u k
  -- (3) We introduce an auxiliary function `f`
  let b (i : ℕ) x := (-(1 : ℝ)) ^ i * x ^ (2 * i + 1) / (2 * i + 1)
  let f x := arctan x - ∑ i in Finset.range k, b i x
  suffices f_bound : |f 1 - f 0| ≤ (1 : ℝ) - U + U ^ (2 * (k : ℝ) + 1)
  · rw [← norm_neg]
    convert f_bound using 1
    simp
  -- We show that `U` is indeed in [0,1]
  have hU1 : (U : ℝ) ≤ 1 := by
    by_cases hk : k = 0
    · simp [hk]
    · exact rpow_le_one_of_one_le_of_nonpos
        (by norm_cast; exact Nat.succ_le_iff.mpr (Nat.pos_of_ne_zero hk)) (le_of_lt
          (@div_neg_of_neg_of_pos _ _ (-(1 : ℝ)) (2 * k + 1) (neg_neg_iff_pos.mpr zero_lt_one)
            (by norm_cast; exact Nat.succ_pos')))
  have hU2 := NNReal.coe_nonneg U
  -- (4) We compute the derivative of `f`, denoted by `f'`
  let f' := fun x : ℝ => (-x ^ 2) ^ k / (1 + x ^ 2)
  have has_deriv_at_f : ∀ x, HasDerivAt f (f' x) x := by
    intro x
    have has_deriv_at_b : ∀ i ∈ Finset.range k, HasDerivAt (b i) ((-x ^ 2) ^ i) x := by
      intro i _
      convert HasDerivAt.const_mul ((-1 : ℝ) ^ i / (2 * i + 1))
          (HasDerivAt.pow (2 * i + 1) (hasDerivAt_id x)) using 1
      · ext y
        simp only [id.def]
        ring
      · simp
        rw [← mul_assoc, @div_mul_cancel _ _ (2 * (i : ℝ) + 1) _ (by norm_cast; linarith),
          pow_mul x 2 i, ← mul_pow (-1 : ℝ) (x ^ 2) i]
        ring_nf
    convert (hasDerivAt_arctan x).sub (HasDerivAt.sum has_deriv_at_b) using 1
    have g_sum :=
      @geom_sum_eq _ _ (-x ^ 2) ((neg_nonpos.mpr (sq_nonneg x)).trans_lt zero_lt_one).ne k
    simp only at g_sum ⊢
    rw [g_sum, ← neg_add' (x ^ 2) 1, add_comm (x ^ 2) 1, sub_eq_add_neg, neg_div', neg_div_neg_eq]
    ring
  have hderiv1 : ∀ x ∈ Icc (U : ℝ) 1, HasDerivWithinAt f (f' x) (Icc (U : ℝ) 1) x := fun x _ =>
    (has_deriv_at_f x).hasDerivWithinAt
  have hderiv2 : ∀ x ∈ Icc 0 (U : ℝ), HasDerivWithinAt f (f' x) (Icc 0 (U : ℝ)) x := fun x _ =>
    (has_deriv_at_f x).hasDerivWithinAt
  -- (5) We prove a general bound for `f'` and then more precise bounds on each of two subintervals
  have f'_bound : ∀ x ∈ Icc (-1 : ℝ) 1, |f' x| ≤ |x| ^ (2 * k) := by
    intro x _
    rw [abs_div, IsAbsoluteValue.abv_pow abs (-x ^ 2) k, abs_neg, IsAbsoluteValue.abv_pow abs x 2,
      ← pow_mul]
    refine' div_le_of_nonneg_of_le_mul (abs_nonneg _) (pow_nonneg (abs_nonneg _) _) _
    refine' le_mul_of_one_le_right (pow_nonneg (abs_nonneg _) _) _
    rw_mod_cast [abs_of_nonneg (add_nonneg zero_le_one (sq_nonneg x) : (0 : ℝ) ≤ _)]
    exact (le_add_of_nonneg_right (sq_nonneg x) : (1 : ℝ) ≤ _)
  have hbound1 : ∀ x ∈ Ico (U : ℝ) 1, |f' x| ≤ 1 := by
    rintro x ⟨hx_left, hx_right⟩
    have hincr := pow_le_pow_of_le_left (le_trans hU2 hx_left) (le_of_lt hx_right) (2 * k)
    rw [one_pow (2 * k), ← abs_of_nonneg (le_trans hU2 hx_left)] at hincr
    rw [← abs_of_nonneg (le_trans hU2 hx_left)] at hx_right
    linarith [f'_bound x (mem_Icc.mpr (abs_le.mp (le_of_lt hx_right)))]
  have hbound2 : ∀ x ∈ Ico 0 (U : ℝ), |f' x| ≤ U ^ (2 * k) := by
    rintro x ⟨hx_left, hx_right⟩
    have hincr := pow_le_pow_of_le_left hx_left (le_of_lt hx_right) (2 * k)
    rw [← abs_of_nonneg hx_left] at hincr hx_right
    rw [← abs_of_nonneg hU2] at hU1 hx_right
    exact (f'_bound x (mem_Icc.mpr (abs_le.mp (le_trans (le_of_lt hx_right) hU1)))).trans hincr
  -- (6) We twice apply the Mean Value Theorem to obtain bounds on `f` from the bounds on `f'`
  have mvt1 := norm_image_sub_le_of_norm_deriv_le_segment' hderiv1 hbound1 _ (right_mem_Icc.mpr hU1)
  have mvt2 := norm_image_sub_le_of_norm_deriv_le_segment' hderiv2 hbound2 _ (right_mem_Icc.mpr hU2)
  -- The following algebra is enough to complete the proof
  calc
    |f 1 - f 0| = |f 1 - f U + (f U - f 0)| := by simp
    _ ≤ 1 * (1 - U) + U ^ (2 * k) * (U - 0) :=
      (le_trans (abs_add (f 1 - f U) (f U - f 0)) (add_le_add mvt1 mvt2))
    _ = 1 - U + (U : ℝ) ^ (2 * k) * U := by simp
    _ = 1 - u k + u k ^ (2 * (k : ℝ) + 1) := by rw [← pow_succ' (U : ℝ) (2 * k)]; norm_cast
#align real.tendsto_sum_pi_div_four Real.tendsto_sum_pi_div_four

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Leibniz/Variant3bd63310e87278c97921444bb9ec7503d2bed8f12296e846ca269eb89d15bcf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Leibniz/Variant3bd63310e87278c97921444bb9ec7503d2bed8f12296e846ca269eb89d15bcf8.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4794056feca3cbe1d361b6025dd92504520f7033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
