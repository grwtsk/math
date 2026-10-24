# sum_mobius_floor_tail_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c61ae2baadd315460b22c4490f0640c924460c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29d73161-6ae8-203b-fad2-153b1b81415c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4dce965-b3f2-682f-7d94-2ad4a9306f21",
  "kind": "lemma",
  "lexical_name": "sum_mobius_floor_tail_isLittleO",
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
  "slug": "sum-mobius-floor-tail-islittleo--2baa967ef645425f718442f2",
  "source": {
    "blob": "c61ae2baadd315460b22c4490f0640c924460c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2356,
    "line": 2266,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2baa967ef645425f718442f2ddd42979fe31b12b153fe25724d3c1e9599b6119",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4dce965-b3f2-682f-7d94-2ad4a9306f21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2266–2356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_mobius_floor_tail_isLittleO (K : ℕ) (hK : 0 < K) :
    (fun x : ℝ => ∑ n ∈ Finset.Ioc ⌊x/K⌋₊ ⌊x⌋₊, (μ n : ℝ) * (⌊x / (n : ℝ)⌋ : ℝ)) =o[atTop] fun x => x := by
      have h_group : ∀ x : ℝ, x ≥ 1 → ∑ n ∈ Finset.Ioc ⌊x / (K : ℝ)⌋₊ ⌊x⌋₊, (μ n : ℝ) * ⌊x / n⌋ = ∑ k ∈ Finset.Ico 1 K, k * (∑ n ∈ Finset.Ioc ⌊x / (k + 1 : ℝ)⌋₊ ⌊x / (k : ℝ)⌋₊, (μ n : ℝ)) := by
        intro x hx
        have h_group : ∑ n ∈ Finset.Ioc ⌊x / (K : ℝ)⌋₊ ⌊x⌋₊, (μ n : ℝ) * ⌊x / n⌋ = ∑ k ∈ Finset.Ico 1 K, ∑ n ∈ Finset.Ioc ⌊x / (k + 1 : ℝ)⌋₊ ⌊x / (k : ℝ)⌋₊, (μ n : ℝ) * k := by
          have h_group : Finset.Ioc ⌊x / (K : ℝ)⌋₊ ⌊x⌋₊ = Finset.biUnion (Finset.Ico 1 K) (fun k => Finset.Ioc (⌊x / (k + 1 : ℝ)⌋₊) (⌊x / (k : ℝ)⌋₊)) := by
            ext n
            simp only [mem_Ioc, mem_biUnion, mem_Ico]
            constructor
            · intro hn
              refine ⟨⌊x / n⌋₊, ?_, ?_, ?_⟩
              all_goals generalize_proofs at *
              · rw [Nat.floor_lt', div_lt_iff₀] <;> norm_num <;> try linarith [show (n : ℝ) ≥ 1 by norm_cast; linarith]
                exact ⟨by rw [le_div_iff₀ (Nat.cast_pos.mpr <| by linarith)] ; nlinarith [Nat.floor_le (show 0 ≤ x by linarith), Nat.lt_floor_add_one x, show (n : ℝ) ≤ ⌊x⌋₊ by exact_mod_cast hn.2], by rw [Nat.floor_lt (by positivity)] at *; rw [div_lt_iff₀ (by positivity)] at *; norm_num at *; linarith⟩
              · rw [Nat.floor_lt', div_lt_iff₀] <;> norm_num <;> try linarith [Nat.lt_floor_add_one (x / n)]
                nlinarith [Nat.lt_floor_add_one (x / n), show (n : ℝ) ≥ 1 by norm_cast; linarith, div_mul_cancel₀ x (show (n : ℝ) ≠ 0 by norm_cast; linarith)]
              · refine Nat.le_floor ?_
                rw [le_div_iff₀] <;> norm_num
                · exact le_trans (mul_le_mul_of_nonneg_left (Nat.floor_le (by positivity)) (Nat.cast_nonneg _)) (by rw [mul_div_cancel₀ _ (Nat.cast_ne_zero.mpr <| by linarith)])
                · exact Nat.floor_pos.mpr (by rw [le_div_iff₀ (Nat.cast_pos.mpr <| pos_of_gt hn.1)] ; nlinarith [Nat.floor_le (show 0 ≤ x by positivity), Nat.lt_floor_add_one x, show (n : ℝ) ≤ ⌊x⌋₊ by exact_mod_cast hn.2, div_mul_cancel₀ x (show (K : ℝ) ≠ 0 by positivity)])
            · field_simp
              rintro ⟨a, ⟨ha₁, ha₂⟩, ha₃, ha₄⟩
              refine ⟨lt_of_le_of_lt ?_ ha₃, ha₄.trans ?_⟩
              · gcongr ; norm_cast
              · exact Nat.floor_mono <| div_le_self (by positivity) <| mod_cast ha₁
          rw [h_group, Finset.sum_biUnion]
          · refine Finset.sum_congr rfl fun k hk => Finset.sum_congr rfl fun n hn => ?_
            simp +zetaDelta only [ge_iff_le, mem_Ico, mem_Ioc, mul_eq_mul_left_iff, Int.cast_eq_zero] at *
            rw [Nat.floor_lt (by positivity), Nat.le_floor_iff (by positivity)] at *
            exact Or.inl <| mod_cast Int.floor_eq_iff.mpr ⟨by rw [le_div_iff₀ <| Nat.cast_pos.mpr <| Nat.pos_of_ne_zero <| by rintro rfl; norm_num at hn; linarith [show x / (k + 1 : ℝ) > 0 by positivity]] ; norm_num; nlinarith [show (k : ℝ) ≥ 1 by norm_cast; linarith, div_mul_cancel₀ x (show (k : ℝ) ≠ 0 by norm_cast; linarith), div_mul_cancel₀ x (show (k + 1 : ℝ) ≠ 0 by positivity)], by rw [div_lt_iff₀ <| Nat.cast_pos.mpr <| Nat.pos_of_ne_zero <| by rintro rfl; norm_num at hn; linarith [show x / (k + 1 : ℝ) > 0 by positivity]] ; norm_num; nlinarith [show (k : ℝ) ≥ 1 by norm_cast; linarith, div_mul_cancel₀ x (show (k : ℝ) ≠ 0 by norm_cast; linarith), div_mul_cancel₀ x (show (k + 1 : ℝ) ≠ 0 by positivity)]⟩
          · intros k hk l hl hkl; simp_all +decide [Finset.disjoint_left]
            field_simp
            intro a ha₁ ha₂ ha₃; contrapose! hkl
            rw [Nat.le_floor_iff (by positivity), Nat.floor_lt (by positivity)] at *
            rw [div_lt_iff₀ (by positivity), le_div_iff₀ (by norm_cast; linarith)] at *
            exact Nat.le_antisymm (Nat.le_of_lt_succ <| by { rw [← @Nat.cast_lt ℝ] ; push_cast; nlinarith }) (Nat.le_of_lt_succ <| by { rw [← @Nat.cast_lt ℝ] ; push_cast; nlinarith })
        simpa only [mul_comm, Finset.mul_sum _ _ _] using h_group
      have h_M_x_over_k : ∀ k : ℕ, 1 ≤ k → k < K → (fun x : ℝ => ∑ n ∈ Finset.Ioc ⌊x / (k + 1 : ℝ)⌋₊ ⌊x / (k : ℝ)⌋₊, (μ n : ℝ)) =o[atTop] (fun x => x) := by
        have h_M : (fun x : ℝ => ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (μ n : ℝ)) =o[atTop] (fun x => x) := by
          have h_M : (fun x : ℝ => ∑ n ∈ Finset.range ⌊x⌋₊, (μ n : ℝ)) =o[atTop] (fun x => x) := by
            convert mu_pnt using 1
            norm_cast
            ext; simp [Asymptotics.IsLittleO]
            norm_num [Asymptotics.IsBigOWith]
            norm_num [Norm.norm]
          have h_M : (fun x : ℝ => ∑ n ∈ Finset.range (⌊x⌋₊ + 1), (μ n : ℝ)) =o[atTop] (fun x => x) := by
            simp_all +decide only [ge_iff_le, Finset.sum_range_succ]
            refine h_M.add ?_
            rw [Asymptotics.isLittleO_iff_tendsto] <;> norm_num
            refine squeeze_zero_norm' (a := fun x : ℝ => 1 / |x|) ?_ ?_
            · norm_num [abs_div]
              exact ⟨1, fun x hx => mul_le_of_le_one_left (by positivity) (mod_cast by exact abs_moebius_le_one)⟩
            · exact tendsto_const_nhds.div_atTop (tendsto_norm_atTop_atTop)
          convert h_M.sub (show (fun x : ℝ => (μ 0 : ℝ)) =o[Filter.atTop] fun x : ℝ => x from ?_) using 2 <;> norm_num [Finset.sum_range_succ']
          erw [Finset.sum_Ico_eq_sub _ _] <;> norm_num [Finset.sum_range_succ']
        intros k hk_pos hk_lt_K
        have h_M_x_over_k : (fun x : ℝ => ∑ n ∈ Finset.Ioc ⌊x / (k + 1 : ℝ)⌋₊ ⌊x / (k : ℝ)⌋₊, (μ n : ℝ)) = (fun x : ℝ => ∑ n ∈ Finset.Icc 1 ⌊x / (k : ℝ)⌋₊, (μ n : ℝ)) - (fun x : ℝ => ∑ n ∈ Finset.Icc 1 ⌊x / (k + 1 : ℝ)⌋₊, (μ n : ℝ)) := by
          ext x
          simp only [Pi.sub_apply]
          rw [eq_sub_iff_add_eq']
          simp only [show Finset.Icc (1 : ℕ) (⌊x / (↑k + 1)⌋₊) = Finset.Ioc (0 : ℕ) (⌊x / (↑k + 1)⌋₊) by
              simpa using (Finset.Icc_add_one_left_eq_Ioc (a := (0 : ℕ)) (b := ⌊x / (↑k + 1)⌋₊)),
            show Finset.Icc (1 : ℕ) (⌊x / ↑k⌋₊) = Finset.Ioc (0 : ℕ) (⌊x / ↑k⌋₊) by
              simpa using (Finset.Icc_add_one_left_eq_Ioc (a := (0 : ℕ)) (b := ⌊x / ↑k⌋₊))]
          rw [Finset.sum_Ioc_consecutive] <;> norm_num

          by_cases hx : 0 ≤ x <;> simp_all +decide only [ge_iff_le, floor_div_natCast, not_le]
          · rw [Nat.le_div_iff_mul_le (by positivity)]
            exact Nat.le_floor <| by push_cast; nlinarith [Nat.floor_le (show 0 ≤ x / (k + 1) by positivity), Nat.lt_floor_add_one (x / (k + 1)), mul_div_cancel₀ x (by positivity : (k + 1 : ℝ) ≠ 0)]
          · rw [Nat.floor_of_nonpos (div_nonpos_of_nonpos_of_nonneg hx.le (by positivity)), Nat.floor_of_nonpos hx.le] ; norm_num
        rw [h_M_x_over_k]
        refine Asymptotics.IsLittleO.sub ?_ ?_
        · field_simp
          refine h_M.comp_tendsto (Filter.tendsto_id.atTop_mul_const (by positivity)) |> fun h => h.trans_isBigO ?_
          exact Asymptotics.isBigO_iff.mpr ⟨(k : ℝ) ⁻¹, Filter.eventually_atTop.mpr ⟨1, fun x hx => by simp +decide ; ring_nf; norm_num [show k ≠ 0 by linarith]⟩⟩
        · have := h_M.comp_tendsto (show Filter.Tendsto (fun x : ℝ => x / (k + 1)) Filter.atTop Filter.atTop from Filter.tendsto_id.atTop_div_const (by positivity))
          rw [Asymptotics.isLittleO_iff] at *
          intro c hc; filter_upwards [this (show 0 < c * (k + 1) by positivity), Filter.eventually_gt_atTop 0] with x hx₁ hx₂; simp_all +decide only [ge_iff_le, norm_eq_abs, eventually_atTop, Function.comp_apply, norm_div, cast_nonneg,
    zero_le_one, add_nonneg, abs_of_nonneg]
          exact hx₁.trans (by rw [mul_assoc, mul_div_cancel₀ _ (by positivity)])
      have h_sum_o_x : (fun x : ℝ => ∑ k ∈ Finset.Ico 1 K, (k : ℝ) * (∑ n ∈ Finset.Ioc ⌊x / (k + 1 : ℝ)⌋₊ ⌊x / (k : ℝ)⌋₊, (μ n : ℝ))) =o[atTop] (fun x => x) := by
        rw [Asymptotics.isLittleO_iff_tendsto']
        · have h_sum_little_o : ∀ k ∈ Finset.Ico 1 K, Filter.Tendsto (fun x : ℝ => (∑ n ∈ Finset.Ioc ⌊x / (k + 1 : ℝ)⌋₊ ⌊x / (k : ℝ)⌋₊, (μ n : ℝ)) / x) Filter.atTop (nhds 0) := by
            intro k hk; specialize h_M_x_over_k k (Finset.mem_Ico.mp hk |>.1) (Finset.mem_Ico.mp hk |>.2) ; rw [Asymptotics.isLittleO_iff_tendsto'] at h_M_x_over_k <;> aesop
          simpa [Finset.sum_div _ _ _, mul_div_assoc] using tendsto_finsetSum _ fun k hk => h_sum_little_o k hk |> Filter.Tendsto.const_mul _
        · filter_upwards [Filter.eventually_gt_atTop 0] with x hx hx' using absurd hx' hx.ne'
      exact h_sum_o_x.congr'
        (by filter_upwards [Filter.eventually_ge_atTop 1] with x hx using by rw [h_group x hx])
        (by norm_num)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean#L2266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61ae2baadd315460b22c4490f0640c924460c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
