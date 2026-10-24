# horizontal_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cb44e74-4f5c-d214-781b-ada24dceaee7",
  "kind": "theorem",
  "lexical_name": "horizontal_strip",
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
  "slug": "horizontal-strip--c729ed520ee3f0b7d9d2c801",
  "source": {
    "blob": "7f32921e752cd12d6e087e8468d3fe443cf558bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 130,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c729ed520ee3f0b7d9d2c801eaabd14554dd20e14fce543f9620bd1351bae54a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cb44e74-4f5c-d214-781b-ada24dceaee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem horizontal_strip (hfd : DiffContOnCl ℂ f (im ⁻¹' Ioo a b))
    (hB : ∃ c < π / (b - a), ∃ B,
      f =O[comap (Abs.abs ∘ re) atTop ⊓ 𝓟 (im ⁻¹' Ioo a b)] fun z ↦ expR (B * expR (c * |z.re|)))
    (hle_a : ∀ z : ℂ, im z = a → ‖f z‖ ≤ C) (hle_b : ∀ z, im z = b → ‖f z‖ ≤ C) (hza : a ≤ im z)
    (hzb : im z ≤ b) : ‖f z‖ ≤ C := by
  -- If `im z = a` or `im z = b`, then we apply `hle_a` or `hle_b`, otherwise `im z ∈ Ioo a b`.
  rw [le_iff_eq_or_lt] at hza hzb
  cases' hza with hza hza; · exact hle_a _ hza.symm
  cases' hzb with hzb hzb; · exact hle_b _ hzb
  wlog hC₀ : 0 < C generalizing C
  · refine' le_of_forall_le_of_dense fun C' hC' => this (fun w hw => _) (fun w hw => _) _
    · exact (hle_a _ hw).trans hC'.le
    · exact (hle_b _ hw).trans hC'.le
    · refine' ((norm_nonneg (f (a * I))).trans (hle_a _ _)).trans_lt hC'
      rw [mul_I_im, ofReal_re]
  -- After a change of variables, we deal with the strip `a - b < im z < a + b` instead
  -- of `a < im z < b`
  obtain ⟨a, b, rfl, rfl⟩ : ∃ a' b', a = a' - b' ∧ b = a' + b' :=
    ⟨(a + b) / 2, (b - a) / 2, by ring, by ring⟩
  have hab : a - b < a + b := hza.trans hzb
  have hb : 0 < b := by simpa only [sub_eq_add_neg, add_lt_add_iff_left, neg_lt_self_iff] using hab
  rw [add_sub_sub_cancel, ← two_mul, div_mul_eq_div_div] at hB
  have hπb : 0 < π / 2 / b := div_pos Real.pi_div_two_pos hb
  -- Choose some `c B : ℝ` satisfying `hB`, then choose `max c 0 < d < π / 2 / b`.
  rcases hB with ⟨c, hc, B, hO⟩
  obtain ⟨d, ⟨hcd, hd₀⟩, hd⟩ : ∃ d, (c < d ∧ 0 < d) ∧ d < π / 2 / b := by
    simpa only [max_lt_iff] using exists_between (max_lt hc hπb)
  have hb' : d * b < π / 2 := (lt_div_iff hb).1 hd
  set aff := (fun w => d * (w - a * I) : ℂ → ℂ)
  set g := fun (ε : ℝ) (w : ℂ) => exp (ε * (exp (aff w) + exp (-aff w)))
  /- Since `g ε z → 1` as `ε → 0⁻`, it suffices to prove that `‖g ε z • f z‖ ≤ C`
    for all negative `ε`. -/
  suffices : ∀ᶠ ε : ℝ in 𝓝[<] (0 : ℝ), ‖g ε z • f z‖ ≤ C
  · refine' le_of_tendsto (Tendsto.mono_left _ nhdsWithin_le_nhds) this
    apply ((continuous_ofReal.mul continuous_const).cexp.smul continuous_const).norm.tendsto'
    simp
  filter_upwards [self_mem_nhdsWithin] with ε ε₀; change ε < 0 at ε₀
  -- An upper estimate on `‖g ε w‖` that will be used in two branches of the proof.
  obtain ⟨δ, δ₀, hδ⟩ :
    ∃ δ : ℝ,
      δ < 0 ∧ ∀ ⦃w⦄, im w ∈ Icc (a - b) (a + b) → abs (g ε w) ≤ expR (δ * expR (d * |re w|)) := by
    refine'
      ⟨ε * Real.cos (d * b),
        mul_neg_of_neg_of_pos ε₀
          (Real.cos_pos_of_mem_Ioo <| abs_lt.1 <| (abs_of_pos (mul_pos hd₀ hb)).symm ▸ hb'),
        fun w hw => _⟩
    replace hw : |im (aff w)| ≤ d * b
    · rw [← Real.closedBall_eq_Icc] at hw
      rwa [ofReal_mul_im, sub_im, mul_I_im, ofReal_re, _root_.abs_mul, abs_of_pos hd₀,
        mul_le_mul_left hd₀]
    simpa only [ofReal_mul_re, _root_.abs_mul, abs_of_pos hd₀, sub_re, mul_I_re, ofReal_im,
      zero_mul, neg_zero, sub_zero] using
      abs_exp_mul_exp_add_exp_neg_le_of_abs_im_le ε₀.le hw hb'.le
  -- `abs (g ε w) ≤ 1` on the lines `w.im = a ± b` (actually, it holds everywhere in the strip)
  have hg₁ : ∀ w, im w = a - b ∨ im w = a + b → abs (g ε w) ≤ 1 := by
    refine' fun w hw => (hδ <| hw.by_cases _ _).trans (Real.exp_le_one_iff.2 _)
    exacts [fun h => h.symm ▸ left_mem_Icc.2 hab.le, fun h => h.symm ▸ right_mem_Icc.2 hab.le,
      mul_nonpos_of_nonpos_of_nonneg δ₀.le (Real.exp_pos _).le]
  /- Our apriori estimate on `f` implies that `g ε w • f w → 0` as `|w.re| → ∞` along the strip. In
    particular, its norm is less than or equal to `C` for sufficiently large `|w.re|`. -/
  obtain ⟨R, hzR, hR⟩ :
    ∃ R : ℝ, |z.re| < R ∧ ∀ w, |re w| = R → im w ∈ Ioo (a - b) (a + b) → ‖g ε w • f w‖ ≤ C := by
    refine' ((eventually_gt_atTop _).and _).exists
    rcases hO.exists_pos with ⟨A, hA₀, hA⟩
    simp only [isBigOWith_iff, eventually_inf_principal, eventually_comap, mem_Ioo, ← abs_lt,
      mem_preimage, (· ∘ ·), Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)] at hA
    suffices :
        Tendsto (fun R => expR (δ * expR (d * R) + B * expR (c * R) + Real.log A)) atTop (𝓝 0)
    · filter_upwards [this.eventually (ge_mem_nhds hC₀), hA] with R hR Hle w hre him
      calc
        ‖g ε w • f w‖ ≤ expR (δ * expR (d * R) + B * expR (c * R) + Real.log A) := ?_
        _ ≤ C := hR
      rw [norm_smul, Real.exp_add, ← hre, Real.exp_add, Real.exp_log hA₀, mul_assoc, mul_comm _ A]
      exact mul_le_mul (hδ <| Ioo_subset_Icc_self him) (Hle _ hre him) (norm_nonneg _)
        (Real.exp_pos _).le
    refine' Real.tendsto_exp_atBot.comp _
    suffices H : Tendsto (fun R => δ + B * (expR ((d - c) * R))⁻¹) atTop (𝓝 (δ + B * 0))
    · rw [mul_zero, add_zero] at H
      refine' Tendsto.atBot_add _ tendsto_const_nhds
      simpa only [id, (· ∘ ·), add_mul, mul_assoc, ← div_eq_inv_mul, ← Real.exp_sub, ← sub_mul,
        sub_sub_cancel]
        using H.neg_mul_atTop δ₀ <| Real.tendsto_exp_atTop.comp <|
          tendsto_const_nhds.mul_atTop hd₀ tendsto_id
    refine' tendsto_const_nhds.add (tendsto_const_nhds.mul _)
    exact tendsto_inv_atTop_zero.comp <| Real.tendsto_exp_atTop.comp <|
      tendsto_const_nhds.mul_atTop (sub_pos.2 hcd) tendsto_id
  have hR₀ : 0 < R := (_root_.abs_nonneg _).trans_lt hzR
  /- Finally, we apply the bounded version of the maximum modulus principle to the rectangle
    `(-R, R) × (a - b, a + b)`. The function is bounded by `C` on the horizontal sides by assumption
    (and because `‖g ε w‖ ≤ 1`) and on the vertical sides by the choice of `R`. -/
  have hgd : Differentiable ℂ (g ε) :=
    ((((differentiable_id.sub_const _).const_mul _).cexp.add
            ((differentiable_id.sub_const _).const_mul _).neg.cexp).const_mul _).cexp
  replace hd : DiffContOnCl ℂ (fun w => g ε w • f w) (Ioo (-R) R ×ℂ Ioo (a - b) (a + b))
  exact (hgd.diffContOnCl.smul hfd).mono (inter_subset_right _ _)
  convert norm_le_of_forall_mem_frontier_norm_le ((bounded_Ioo _ _).reProdIm (bounded_Ioo _ _)) hd
    (fun w hw => _) _
  · rw [frontier_reProdIm, closure_Ioo (neg_lt_self hR₀).ne, frontier_Ioo hab, closure_Ioo hab.ne,
      frontier_Ioo (neg_lt_self hR₀)] at hw
    by_cases him : w.im = a - b ∨ w.im = a + b
    · rw [norm_smul, ← one_mul C]
      exact mul_le_mul (hg₁ _ him) (him.by_cases (hle_a _) (hle_b _)) (norm_nonneg _) zero_le_one
    · replace hw : w ∈ {-R, R} ×ℂ Icc (a - b) (a + b); exact hw.resolve_left fun h => him h.2
      have hw' := eq_endpoints_or_mem_Ioo_of_mem_Icc hw.2; rw [← or_assoc] at hw'
      exact hR _ ((abs_eq hR₀.le).2 hw.1.symm) (hw'.resolve_left him)
  · rw [closure_reProdIm, closure_Ioo hab.ne, closure_Ioo (neg_lt_self hR₀).ne]
    exact ⟨abs_le.1 hzR.le, ⟨hza.le, hzb.le⟩⟩
#align phragmen_lindelof.horizontal_strip PhragmenLindelof.horizontal_strip

/-- **Phragmen-Lindelöf principle** in a strip `U = {z : ℂ | a < im z < b}`.
Let `f : ℂ → E` be a function such that

* `f` is differentiable on `U` and is continuous on its closure;
* `‖f z‖` is bounded from above by `A * exp(B * exp(c * |re z|))` on `U` for some `c < π / (b - a)`;
* `f z = 0` on the boundary of `U`.

Then `f` is equal to zero on the closed strip `{z : ℂ | a ≤ im z ≤ b}`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f32921e752cd12d6e087e8468d3fe443cf558bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
