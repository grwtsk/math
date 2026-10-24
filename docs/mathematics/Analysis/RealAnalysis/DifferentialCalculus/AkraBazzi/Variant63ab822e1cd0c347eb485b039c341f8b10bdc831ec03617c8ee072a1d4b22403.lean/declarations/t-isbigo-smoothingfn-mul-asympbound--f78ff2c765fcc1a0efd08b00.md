# T_isBigO_smoothingFn_mul_asympBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef9cfdeb-6777-d0fb-c40b-e397e04a30b0",
  "kind": "lemma",
  "lexical_name": "T_isBigO_smoothingFn_mul_asympBound",
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
  "slug": "t-isbigo-smoothingfn-mul-asympbound--f78ff2c765fcc1a0efd08b00",
  "source": {
    "blob": "470ce2f8aaada3e7158edb7db4dcdb2e3543282e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1323,
    "line": 1191,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f78ff2c765fcc1a0efd08b002878b85cc9100f6656dbb631703c99b076cd2a11",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef9cfdeb-6777-d0fb-c40b-e397e04a30b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1191–1323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma T_isBigO_smoothingFn_mul_asympBound :
    T =O[atTop] (fun n => (1 - ε n) * asympBound g a b n) := by
  let b' := b (min_bi b) / 2
  have hb_pos : 0 < b' := R.bi_min_div_two_pos
  rw [isBigO_atTop_iff_eventually_exists]
  obtain ⟨c₁, hc₁, h_sumTransform_aux⟩ := R.eventually_atTop_sumTransform_ge
  filter_upwards [eventually_ge_atTop R.n₀,       -- n₀_ge_Rn₀
      eventually_forall_ge_atTop.mpr eventually_one_sub_smoothingFn_pos,    -- h_smoothing_pos
      eventually_forall_ge_atTop.mpr
        <| eventually_one_sub_smoothingFn_gt_const (1/2) (by norm_num),    -- h_smoothing_gt_half
      eventually_forall_ge_atTop.mpr R.eventually_asympBound_pos,            -- h_asympBound_pos
      eventually_forall_ge_atTop.mpr R.eventually_asympBound_r_pos,          -- h_asympBound_r_pos
      (tendsto_nat_floor_mul_atTop b' hb_pos).eventually_forall_ge_atTop
        R.eventually_asympBound_pos,   -- h_asympBound_floor
      eventually_gt_atTop 0,                                                -- n₀_pos
      eventually_forall_ge_atTop.mpr R.eventually_one_sub_smoothingFn_r_pos,  -- h_smoothing_r_pos
      eventually_forall_ge_atTop.mpr R.rpow_p_mul_one_sub_smoothingFn_le,    -- bound1
      (tendsto_nat_floor_mul_atTop b' hb_pos).eventually_forall_ge_atTop
        eventually_one_sub_smoothingFn_pos,   -- h_smoothingFn_floor
      eventually_forall_ge_atTop.mpr h_sumTransform_aux,                     -- h_sumTransform
      eventually_forall_ge_atTop.mpr R.eventually_bi_mul_le_r]               -- h_bi_le_r
    with n₀ n₀_ge_Rn₀ h_smoothing_pos h_smoothing_gt_half
      h_asympBound_pos h_asympBound_r_pos h_asympBound_floor n₀_pos h_smoothing_r_pos
      bound1 h_smoothingFn_floor h_sumTransform h_bi_le_r
  -- Max of the ratio `T(n) / asympBound(n)` over the base case `n ∈ [b * n₀, n₀)`
  have h_base_nonempty := R.base_nonempty n₀_pos
  let base_max : ℝ :=
    (Finset.Ico (⌊b' * n₀⌋₊) n₀).sup' h_base_nonempty
      fun n => T n / ((1 - ε n) * asympBound g a b n)
  -- The big-O constant we are aiming for: max of the base case ratio and what we need to
  -- cancel out the `g(n)` term in the calculation below
  set C := max (2 * c₁⁻¹) base_max with hC
  refine ⟨C, fun n hn => ?_⟩
  -- Base case: statement is true for `b' * n₀ ≤ n < n₀`
  have h_base : ∀ n ∈ Finset.Ico (⌊b' * n₀⌋₊) n₀, T n ≤ C * ((1 - ε n) * asympBound g a b n) := by
    intro n hn
    rw [Finset.mem_Ico] at hn
    have htmp1 : 0 < 1 - ε n := h_smoothingFn_floor n hn.1
    have htmp2 : 0 < asympBound g a b n := h_asympBound_floor n hn.1
    rw [← _root_.div_le_iff₀ (by positivity)]
    rw [← Finset.mem_Ico] at hn
    calc T n / ((1 - ε ↑n) * asympBound g a b n)
           ≤ (Finset.Ico (⌊b' * n₀⌋₊) n₀).sup' h_base_nonempty
                (fun z => T z / ((1 - ε z) * asympBound g a b z)) :=
                  Finset.le_sup'_of_le _ (b := n) hn le_rfl
         _ ≤ C := le_max_right _ _
  have h_asympBound_pos' : 0 < asympBound g a b n := h_asympBound_pos n hn
  have h_one_sub_smoothingFn_pos' : 0 < 1 - ε n := h_smoothing_pos n hn
  rw [Real.norm_of_nonneg (R.T_nonneg n), Real.norm_of_nonneg (by positivity)]
  -- We now prove all other cases by induction
  induction n using Nat.strongRecOn with
  | ind n h_ind =>
    have b_mul_n₀_le_ri i : ⌊b' * ↑n₀⌋₊ ≤ r i n := by
      exact_mod_cast calc ⌊b' * (n₀ : ℝ)⌋₊ ≤ b' * n₀ := Nat.floor_le <| by positivity
                                  _ ≤ b' * n         := by gcongr
                                  _ ≤ r i n          := h_bi_le_r n hn i
    have g_pos : 0 ≤ g n := R.g_nonneg n (by positivity)
    calc
      T n = (∑ i, a i * T (r i n)) + g n := by exact R.h_rec n <| n₀_ge_Rn₀.trans hn
        _ ≤ (∑ i, a i * (C * ((1 - ε (r i n)) * asympBound g a b (r i n)))) + g n := by
            -- Apply the induction hypothesis, or use the base case depending on how large n is
            gcongr (∑ i, a i * ?_) + g n with i _
            · exact le_of_lt <| R.a_pos _
            · if ri_lt_n₀ : r i n < n₀ then
                exact h_base _ <| by
                  simp_all only [gt_iff_lt, Nat.ofNat_pos, div_pos_iff_of_pos_right,
                    eventually_atTop, sub_pos, one_div, mem_Ico, and_imp,
                    forall_true_left, mem_univ, and_self, b', C, base_max]
              else
                push_neg at ri_lt_n₀
                exact h_ind (r i n) (R.r_lt_n _ _ (n₀_ge_Rn₀.trans hn)) ri_lt_n₀
                  (h_asympBound_r_pos _ hn _) (h_smoothing_r_pos n hn i)
        _ = (∑ i, a i * (C * ((1 - ε (r i n)) * ((r i n) ^ (p a b)
                * (1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1))))))) + g n := by
            simp_rw [asympBound_def']
        _ = (∑ i, C * a i * ((r i n) ^ (p a b) * (1 - ε (r i n))
                * ((1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1)))))) + g n := by
            congr; ext; ring
        _ ≤ (∑ i, C * a i * ((b i) ^ (p a b) * n ^ (p a b) * (1 - ε n)
                * ((1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1)))))) + g n := by
            gcongr (∑ i, C * a i * (?_
                * ((1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1)))))) + g n with i
            · have := R.a_pos i
              positivity
            · refine add_nonneg zero_le_one <| Finset.sum_nonneg fun j _ => ?_
              rw [div_nonneg_iff]
              exact Or.inl ⟨R.g_nonneg j (by positivity), by positivity⟩
            · exact bound1 n hn i
        _ = (∑ i, C * a i * ((b i) ^ (p a b) * n ^ (p a b) * (1 - ε n)
                * ((1 + ((∑ u ∈ range n, g u / u ^ ((p a b) + 1))
                - (∑ u ∈ Finset.Ico (r i n) n, g u / u ^ ((p a b) + 1))))))) + g n := by
            congr; ext i; congr
            refine eq_sub_of_add_eq ?_
            rw [add_comm]
            exact add_eq_of_eq_sub <| Finset.sum_Ico_eq_sub _
              <| le_of_lt <| R.r_lt_n i n <| n₀_ge_Rn₀.trans hn
        _ = (∑ i, C * a i * ((b i) ^ (p a b) * (1 - ε n) * ((n ^ (p a b)
                * (1 + (∑ u ∈ range n, g u / u ^ ((p a b) + 1)))
                - n ^ (p a b) * (∑ u ∈ Finset.Ico (r i n) n, g u / u ^ ((p a b) + 1))))))
                + g n := by
            congr; ext; ring
        _ = (∑ i, C * a i * ((b i) ^ (p a b) * (1 - ε n)
                * ((asympBound g a b n - sumTransform (p a b) g (r i n) n)))) + g n := by
            simp_rw [asympBound_def', sumTransform_def]
        _ ≤ (∑ i, C * a i * ((b i) ^ (p a b) * (1 - ε n)
                * ((asympBound g a b n - c₁ * g n)))) + g n := by
            gcongr with i
            · have := R.a_pos i
              positivity
            · have := R.b_pos i
              positivity
            · exact h_sumTransform n hn i
        _ = (∑ i, C * (1 - ε n) * ((asympBound g a b n - c₁ * g n))
                * (a i * (b i) ^ (p a b))) + g n := by
            congr; ext; ring
        _ = C * (1 - ε n) * (asympBound g a b n - c₁ * g n) + g n := by
            rw [← Finset.mul_sum, R.sumCoeffsExp_p_eq_one, mul_one]
        _ = C * (1 - ε n) * asympBound g a b n + (1 - C * c₁ * (1 - ε n)) * g n := by ring
        _ ≤ C * (1 - ε n) * asympBound g a b n + 0 := by
            gcongr
            refine mul_nonpos_of_nonpos_of_nonneg ?_ g_pos
            rw [sub_nonpos]
            calc 1 ≤ 2 * (c₁⁻¹ * c₁) * (1/2) := by
                    rw [inv_mul_cancel₀ (by positivity : c₁ ≠ 0)]; norm_num
                 _ = (2 * c₁⁻¹) * c₁ * (1/2) := by ring
                 _ ≤ C * c₁ * (1 - ε n) := by gcongr
                                              · rw [hC]; exact le_max_left _ _
                                              · exact le_of_lt <| h_smoothing_gt_half n hn
        _ = C * ((1 - ε n) * asympBound g a b n) := by ring

/-- The main proof of the lower bound part of the Akra-Bazzi theorem. The factor
`1 + ε n` does not change the asymptotic order, but is needed for the induction step to go
through. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean#L1191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470ce2f8aaada3e7158edb7db4dcdb2e3543282e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
