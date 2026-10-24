# smoothingFn_mul_asympBound_isBigO_T

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b4c4d02baa758897d153bfb24b08abd4567d49e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8741a576-10a7-a6d4-4a65-f8b78cac8283",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc0bc616-18a3-72e1-7286-d611237e5cf5",
  "kind": "lemma",
  "lexical_name": "smoothingFn_mul_asympBound_isBigO_T",
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
  "slug": "smoothingfn-mul-asympbound-isbigo-t--023c47f42a02ddc8f2ea2d99",
  "source": {
    "blob": "9b4c4d02baa758897d153bfb24b08abd4567d49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1460,
    "line": 1316,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:023c47f42a02ddc8f2ea2d99cb42305e3b4b185678396c8acb9dbcb38531da6e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc0bc616-18a3-72e1-7286-d611237e5cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1316–1460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smoothingFn_mul_asympBound_isBigO_T :
    (fun (n : ℕ) => (1 + ε n) * asympBound g a b n) =O[atTop] T := by
  let b' := b (min_bi b) / 2
  have hb_pos : 0 < b' := R.bi_min_div_two_pos
  rw [isBigO_atTop_iff_eventually_exists_pos]
  obtain ⟨c₁, hc₁, h_sumTransform_aux⟩ := R.eventually_atTop_sumTransform_le
  filter_upwards [eventually_ge_atTop R.n₀,                                 -- n₀_ge_Rn₀
      (tendsto_nat_floor_mul_atTop b' hb_pos).eventually_gt_atTop 0,        -- h_b_floor
      eventually_forall_ge_atTop.mpr eventually_one_add_smoothingFn_pos,    -- h_smoothing_pos
      (tendsto_nat_floor_mul_atTop b' hb_pos).eventually_forall_ge_atTop
        eventually_one_add_smoothingFn_pos,                                 -- h_smoothing_pos'
      eventually_forall_ge_atTop.mpr R.eventually_asympBound_pos,            -- h_asympBound_pos
      eventually_forall_ge_atTop.mpr R.eventually_asympBound_r_pos,          -- h_asympBound_r_pos
      (tendsto_nat_floor_mul_atTop b' hb_pos).eventually_forall_ge_atTop
        R.eventually_asympBound_pos,                                         -- h_asympBound_floor
      eventually_gt_atTop 0,                                                -- n₀_pos
      eventually_forall_ge_atTop.mpr R.eventually_one_add_smoothingFn_r_pos,  -- h_smoothing_r_pos
      eventually_forall_ge_atTop.mpr R.rpow_p_mul_one_add_smoothingFn_ge,   -- bound2
      (tendsto_nat_floor_mul_atTop b' hb_pos).eventually_forall_ge_atTop
        eventually_one_add_smoothingFn_pos,                                 -- h_smoothingFn_floor
      eventually_forall_ge_atTop.mpr h_sumTransform_aux,                    -- h_sumTransform
      eventually_forall_ge_atTop.mpr R.eventually_bi_mul_le_r,              -- h_bi_le_r
      eventually_forall_ge_atTop.mpr (eventually_ge_atTop ⌈exp 1⌉₊)]        -- h_exp
    with n₀ n₀_ge_Rn₀ h_b_floor h_smoothing_pos h_smoothing_pos' h_asympBound_pos h_asympBound_r_pos
      h_asympBound_floor n₀_pos h_smoothing_r_pos bound2 h_smoothingFn_floor h_sumTransform
      h_bi_le_r h_exp
  have h_base_nonempty := R.base_nonempty n₀_pos
  -- Min of the ratio T(n) / asympBound(n) over the base case n ∈ [b * n₀, n₀)
  set base_min : ℝ :=
    (Finset.Ico (⌊b' * n₀⌋₊) n₀).inf' h_base_nonempty
      (fun n => T n / ((1 + ε n) * asympBound g a b n)) with base_min_def
  -- The big-O constant we are aiming for: min of the base case ratio and what we need to cancel
  -- out the g(n) term in the calculation below
  let C := min (2 * c₁)⁻¹ base_min
  have hC_pos : 0 < C := by
    refine lt_min (by positivity) ?_
    obtain ⟨m, hm_mem, hm⟩ :=
      Finset.exists_mem_eq_inf' h_base_nonempty (fun n => T n / ((1 + ε n) * asympBound g a b n))
    calc 0 < T m / ((1 + ε m) * asympBound g a b m) := by
              have H₁ : 0 < T m := by exact R.T_pos _
              have H₂ : 0 < 1 + ε m := by rw [Finset.mem_Ico] at hm_mem
                                          exact h_smoothing_pos' m hm_mem.1
              have H₃ : 0 < asympBound g a b m := by
                refine R.asympBound_pos m ?_
                calc 0 < ⌊b' * n₀⌋₊ := by exact h_b_floor
                     _ ≤ m := by rw [Finset.mem_Ico] at hm_mem; exact hm_mem.1
              positivity
         _ = base_min := by rw [base_min_def, hm]
  refine ⟨C, hC_pos, fun n hn => ?_⟩
  -- Base case: statement is true for `b' * n₀ ≤ n < n₀`
  have h_base : ∀ n ∈ Finset.Ico (⌊b' * n₀⌋₊) n₀, C * ((1 + ε n) * asympBound g a b n) ≤ T n := by
    intro n hn
    rw [Finset.mem_Ico] at hn
    have htmp1 : 0 < 1 + ε n := h_smoothingFn_floor n hn.1
    have htmp2 : 0 < asympBound g a b n := h_asympBound_floor n hn.1
    rw [← _root_.le_div_iff₀ (by positivity)]
    rw [← Finset.mem_Ico] at hn
    calc T n / ((1 + ε ↑n) * asympBound g a b n)
           ≥ (Finset.Ico (⌊b' * n₀⌋₊) n₀).inf' h_base_nonempty
                  fun z => T z / ((1 + ε z) * asympBound g a b z) :=
                    Finset.inf'_le_of_le _ (b := n) hn <| le_refl _
         _ ≥ C := min_le_right _ _
  have h_asympBound_pos' : 0 < asympBound g a b n := h_asympBound_pos n hn
  have h_one_sub_smoothingFn_pos' : 0 < 1 + ε n := h_smoothing_pos n hn
  rw [Real.norm_of_nonneg (R.T_nonneg n), Real.norm_of_nonneg (by positivity)]
  -- We now prove all other cases by induction
  induction n using Nat.strongRecOn with
  | ind n h_ind =>
    have b_mul_n₀_le_ri i : ⌊b' * ↑n₀⌋₊ ≤ r i n := by
      exact_mod_cast calc ⌊b' * ↑n₀⌋₊ ≤ b' * n₀ := Nat.floor_le <| by positivity
                                  _ ≤ b' * n := by gcongr
                                  _ ≤ r i n := h_bi_le_r n hn i
    have g_pos : 0 ≤ g n := R.g_nonneg n (by positivity)
    calc
      T n = (∑ i, a i * T (r i n)) + g n := by exact R.h_rec n <| n₀_ge_Rn₀.trans hn
        _ ≥ (∑ i, a i * (C * ((1 + ε (r i n)) * asympBound g a b (r i n)))) + g n := by
            -- Apply the induction hypothesis, or use the base case depending on how large `n` is
              gcongr (∑ i, a i * ?_) + g n with i _
              · exact le_of_lt <| R.a_pos _
              · cases lt_or_le (r i n) n₀ with
                | inl ri_lt_n₀ => exact h_base _ <| Finset.mem_Ico.mpr ⟨b_mul_n₀_le_ri i, ri_lt_n₀⟩
                | inr n₀_le_ri =>
                  exact h_ind (r i n) (R.r_lt_n _ _ (n₀_ge_Rn₀.trans hn)) n₀_le_ri
                    (h_asympBound_r_pos _ hn _) (h_smoothing_r_pos n hn i)
        _ = (∑ i, a i * (C * ((1 + ε (r i n)) * ((r i n) ^ (p a b)
                  * (1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1))))))) + g n := by
              simp_rw [asympBound_def']
        _ = (∑ i, C * a i * ((r i n)^(p a b) * (1 + ε (r i n))
                  * ((1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1)))))) + g n := by
              congr; ext; ring
        _ ≥ (∑ i, C * a i * ((b i) ^ (p a b) * n ^ (p a b) * (1 + ε n)
                  * ((1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1)))))) + g n := by
              gcongr (∑ i, C * a i * (?_ *
                  ((1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1)))))) + g n with i
              · have := R.a_pos i
                positivity
              · refine add_nonneg zero_le_one <| Finset.sum_nonneg fun j _ => ?_
                rw [div_nonneg_iff]
                exact Or.inl ⟨R.g_nonneg j (by positivity), by positivity⟩
              · exact bound2 n hn i
        _ = (∑ i, C * a i * ((b i) ^ (p a b) * n ^ (p a b) * (1 + ε n)
                  * ((1 + ((∑ u ∈ range n, g u / u ^ ((p a b) + 1))
                  - (∑ u ∈ Finset.Ico (r i n) n, g u / u ^ ((p a b) + 1))))))) + g n := by
              congr; ext i; congr
              refine eq_sub_of_add_eq ?_
              rw [add_comm]
              exact add_eq_of_eq_sub <| Finset.sum_Ico_eq_sub _
                <| le_of_lt <| R.r_lt_n i n <| n₀_ge_Rn₀.trans hn
        _ = (∑ i, C * a i * ((b i) ^ (p a b) * (1 + ε n)
                  * ((n ^ (p a b) * (1 + (∑ u ∈ range n, g u / u ^ ((p a b) + 1)))
                  - n ^ (p a b) * (∑ u ∈ Finset.Ico (r i n) n, g u / u ^ ((p a b) + 1))))))
                  + g n := by
              congr; ext; ring
        _ = (∑ i, C * a i * ((b i) ^ (p a b) * (1 + ε n)
                  * ((asympBound g a b n - sumTransform (p a b) g (r i n) n)))) + g n := by
              simp_rw [asympBound_def', sumTransform_def]
        _ ≥ (∑ i, C * a i * ((b i) ^ (p a b) * (1 + ε n)
                  * ((asympBound g a b n - c₁ * g n)))) + g n := by
              gcongr with i
              · have := R.a_pos i
                positivity
              · have := R.b_pos i
                positivity
              · exact h_sumTransform n hn i
        _ = (∑ i, C * (1 + ε n) * ((asympBound g a b n - c₁ * g n))
                  * (a i * (b i) ^ (p a b))) + g n := by congr; ext; ring
        _ = C * (1 + ε n) * (asympBound g a b n - c₁ * g n) + g n := by
              rw [← Finset.mul_sum, R.sumCoeffsExp_p_eq_one, mul_one]
        _ = C * (1 + ε n) * asympBound g a b n + (1 - C * c₁ * (1 + ε n)) * g n := by ring
        _ ≥ C * (1 + ε n) * asympBound g a b n + 0 := by
              gcongr
              refine mul_nonneg ?_ g_pos
              rw [sub_nonneg]
              calc C * c₁ * (1 + ε n) ≤ C * c₁ * 2 := by
                        gcongr
                        refine one_add_smoothingFn_le_two ?_
                        calc exp 1 ≤ ⌈exp 1⌉₊ := by exact Nat.le_ceil _
                                 _ ≤ n := by exact_mod_cast h_exp n hn
                    _ = C * (2 * c₁) := by ring
                    _ ≤ (2 * c₁)⁻¹ * (2 * c₁) := by gcongr; exact min_le_left _ _
                    _ = c₁⁻¹ * c₁ := by ring
                    _ = 1 := inv_mul_cancel₀ (by positivity)
        _ = C * ((1 + ε n) * asympBound g a b n) := by ring

/-- The **Akra-Bazzi theorem**: `T ∈ O(n^p (1 + ∑_u^n g(u) / u^{p+1}))` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean#L1316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b4c4d02baa758897d153bfb24b08abd4567d49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
