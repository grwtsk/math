# eventually_completeEquipartiteGraph_isContained_of_minDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53c40c47-859d-a4f4-6f1e-d589d9eb9922",
  "kind": "theorem",
  "lexical_name": "eventually_completeEquipartiteGraph_isContained_of_minDegree",
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
  "slug": "eventually-completeequipartitegraph-iscontained-of-mindegree--ca5912149091858a5081d5e3",
  "source": {
    "blob": "d4efa3a7530675c9f7dfa48abd4c17d4d45e8950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca5912149091858a5081d5e36d69a73a17e7f2f8b57c9dbcfb53b7ec311e0aac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53c40c47-859d-a4f4-6f1e-d589d9eb9922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem eventually_completeEquipartiteGraph_isContained_of_minDegree
    {ε : ℝ} (hε : 0 < ε) (r t : ℕ) :
    ∀ᶠ n in atTop, ∀ {G : SimpleGraph (Fin n)} [DecidableRel G.Adj],
      G.minDegree ≥ (1 - 1 / r + ε) * n
        → completeEquipartiteGraph (r + 1) t ⊑ G := by
  rcases show (r = 0 ∨ t = 0) ∨ r ≠ 0 ∧ t ≠ 0 by tauto with h0 | ⟨hr_pos, ht_pos⟩
  · rw [← Nat.le_zero_eq, ← @Nat.add_le_add_iff_right r 0 1, zero_add] at h0
    rw [eventually_atTop]
    refine ⟨(r + 1) * t, fun n hn {G} _ _ ↦ ?_⟩
    rw [completeEquipartiteGraph_eq_bot_iff.mpr h0, bot_isContained_iff_card_le,
      card_prod, Fintype.card_fin, Fintype.card_fin, Fintype.card_fin]
    exact hn
  · rw [← Nat.pos_iff_ne_zero] at hr_pos ht_pos
    -- choose `ε'` to ensure `G.minDegree` is large enough
    let ε' := 1 / (↑(r - 1) * r) + ε
    have hε' : 0 < ε' := by positivity
    -- choose `t'` larger than `t / (r * ε)`
    let t' := ⌊t / (r * ε)⌋₊ + 1
    have ht_lt_rt'ε : t < r * t' * ε := by
      rw [mul_comm (r : ℝ) (t' : ℝ), mul_assoc, ← div_lt_iff₀ (by positivity), Nat.cast_add_one]
      exact Nat.lt_floor_add_one (t / (r * ε))
    have ht'_pos : 0 < t' := by positivity
    have ⟨N', ih⟩ := eventually_atTop.mp <|
      eventually_completeEquipartiteGraph_isContained_of_minDegree hε' (r - 1) t'
    -- choose `N` at least `(t'.choose t ^ r * t + r * t') * (t '- t) / (r * t' * ε - t)` to
    -- satisfy the pigeonhole principle
    let N := max (max 1 N') ⌈(t'.choose t ^ r * t + r * t') * (t' - t) / (r * t' * ε - t)⌉₊
    refine eventually_atTop.mpr ⟨N, fun n hn {G} _ hδ ↦ ?_⟩
    have : Nonempty (Fin n) := by
      rw [← Fin.pos_iff_nonempty]
      exact hn.trans_lt' (lt_max_of_lt_left (lt_max_of_lt_left zero_lt_one))
    -- `r` is less than `1 / ε` otherwise `G.minDegree = n`
    have hrε_lt_1 : r * ε < 1 := by
      have hδ_lt_card : (G.minDegree : ℝ) < (n : ℝ) := by
        conv_rhs =>
          rw [← Fintype.card_fin n]
        exact_mod_cast G.minDegree_lt_card
      contrapose! hδ_lt_card with h1_le_rε
      rw [← div_le_iff₀' (by positivity), ← sub_nonpos,
        ← le_sub_self_iff 1, ← sub_add] at h1_le_rε
      exact hδ.trans' (le_mul_of_one_le_left n.cast_nonneg h1_le_rε)
    have ht_lt_t' : t < t' := by
      rw [mul_comm (r : ℝ) (t' : ℝ), mul_assoc] at ht_lt_rt'ε
      exact_mod_cast ht_lt_rt'ε.trans_le (mul_le_of_le_one_right (mod_cast ht'_pos.le) hrε_lt_1.le)
    -- identify a `completeEquipartiteGraph r t'` in `G` from the inductive hypothesis
    replace ih : completeEquipartiteGraph r t' ⊑ G := by
      rcases eq_or_ne r 1 with hr_eq_1 | hr_ne_1
      -- if `r = 1` then `completeEquipartiteGraph r t' = ⊥`
      · have h0 : r ≤ 1 ∨ t' = 0 := Or.inl hr_eq_1.le
        rw [completeEquipartiteGraph_eq_bot_iff.mpr h0, bot_isContained_iff_card_le,
          card_prod, Fintype.card_fin, Fintype.card_fin, hr_eq_1, one_mul, Fintype.card_fin]
        apply hn.trans'
        exact_mod_cast calc (t' : ℝ)
          _ ≤ r * t' := le_mul_of_one_le_left (by positivity) (mod_cast hr_pos)
          _ ≤ t'.choose t ^ r * t + r * t' := le_add_of_nonneg_left (by positivity)
          _ ≤ (t'.choose t ^ r * t + r * t') * (t' - t) / (r * t' * ε - t) := by
            rw [mul_div_assoc, le_mul_iff_one_le_right (by positivity),
              one_le_div (sub_pos.mpr ht_lt_rt'ε), sub_le_sub_iff_right,
              mul_comm (r : ℝ) (t' : ℝ),  mul_assoc, mul_le_iff_le_one_right (by positivity)]
            exact hrε_lt_1.le
          _ ≤ ⌈(t'.choose t ^ r * t + r * t') * (t' - t) / (r * t' * ε - t)⌉₊ := Nat.le_ceil _
          _ ≤ N := Nat.cast_le.mpr (le_max_right _ _)
      -- if `r > 1` then `G` satisfies the inductive hypothesis
      · have hδ' := calc (G.minDegree : ℝ)
          _ ≥ (1 - 1 / (r - 1) + (1 / (r - 1) - 1 / r) + ε) * n := by
              rwa [← sub_add_sub_cancel _ (1 / (r - 1) : ℝ) _] at hδ
          _ = (1 - 1 / ↑(r - 1) + ε') * n := by
              rw [← one_div_mul_sub_mul_one_div_eq_one_div_add_one_div
                (sub_ne_zero_of_ne (mod_cast hr_ne_1)) (mod_cast hr_pos.ne'),
                sub_sub_cancel, mul_one, one_div_mul_one_div_rev, mul_comm (r : ℝ) _,
                ← Nat.cast_pred hr_pos, add_assoc]
        rw [← Nat.succ_pred_eq_of_pos hr_pos]
        exact ih n (hn.trans' (le_max_of_le_left (le_max_right 1 N'))) hδ'
    obtain ⟨K⟩ := completeEquipartiteGraph_isContained_iff.mp ih
    -- find `t` vertices not in `K` adjacent to `t` vertices in each `K.parts` using the
    -- pigeonhole principle
    obtain ⟨⟨y, hy⟩, ht_le_card_filter⟩ := by
      apply ErdosStone.filter.pi.exists_le_card_fiber K hr_pos ht'_pos ht_lt_t' hδ
      rw [← div_le_iff₀ (sub_pos_of_lt ht_lt_rt'ε)]
      trans (N : ℝ)
      · exact (Nat.le_ceil _).trans (Nat.cast_le.mpr <| le_max_right _ _)
      · exact_mod_cast hn
    rw [Finset.mem_pi] at hy
    have ⟨s, hs_subset, hcards⟩ := exists_subset_card_eq ht_le_card_filter
    -- identify the `t` vertices in each `K.parts` as a `CompleteEquipartiteSubgraph r t` in `K`
    let K' : G.CompleteEquipartiteSubgraph r t := by
      refine ⟨univ.map ⟨fun p : K.parts ↦ y p.val p.prop, fun p₁ p₂ (heq : y p₁ _ = y p₂ _) ↦ ?_⟩,
        ?_, fun {p} hp ↦ ?_, fun p₁ hp₁ p₂ hp₂ hne v₁ hv₁ v₂ hv₂ ↦ ?_⟩
      · have hy₁' := mem_powersetCard.mp (hy p₁.val p₁.prop)
        have hy₂' := mem_powersetCard.mp (hy p₂.val p₂.prop)
        rw [← heq] at hy₂'
        obtain ⟨v, hv⟩ : (y p₁ _).Nonempty := by
          rw [← Finset.card_pos, hy₁'.right]
          exact ht_pos
        by_contra! hne
        absurd K.isCompleteBetween p₁.prop p₂.prop
          (Subtype.ext_iff.ne.mp hne) (hy₁'.left hv) (hy₂'.left hv)
        exact G.loopless.irrefl v
      · simp_rw [card_map, card_univ, card_coe]
        exact .inl (K.card_parts.resolve_right ht'_pos.ne')
      · simp_rw [univ_eq_attach, Finset.mem_map, mem_attach,
          Function.Embedding.coeFn_mk, true_and, Subtype.exists] at hp
        replace ⟨p, hp, hyp⟩ := hp
        rw [← hyp]
        have hy' := mem_powersetCard.mp (hy p hp)
        exact hy'.right
      · simp_rw [univ_eq_attach, coe_map, Function.Embedding.coeFn_mk,
          Set.mem_image, mem_coe, mem_attach, true_and, Subtype.exists] at hp₁ hp₂
        replace ⟨p₁, hp₁, hyp₁⟩ := hp₁
        rw [← hyp₁] at hv₁ hne
        have hy₁' := mem_powersetCard.mp (hy p₁ hp₁)
        replace ⟨p₂, hp₂, hyp₂⟩ := hp₂
        rw [← hyp₂] at hv₂ hne
        have hy₂' := mem_powersetCard.mp (hy p₂ hp₂)
        refine K.isCompleteBetween hp₁ hp₂ ?_ (hy₁'.left hv₁) (hy₂'.left hv₂)
        by_contra! heq
        simp [← heq] at hne
    -- identify the `t` vertices not in `K` and the `CompleteEquipartiteSubgraph r t` in `K`
    -- as a `CompleteEquipartiteSubgraph (r + 1) t` in `G`
    refine completeEquipartiteGraph_succ_isContained_iff.mpr
      ⟨K', s.map (.subtype _), by rwa [← card_map] at hcards, fun p' hp' v hv w hw ↦ ?_⟩
    obtain ⟨w', hw'_mem, (hw'_eq : ↑w' = w)⟩ := Finset.mem_map.mp hw
    simp_rw [K', univ_eq_attach, Finset.mem_map, mem_attach,
      Function.Embedding.coeFn_mk, true_and, Subtype.exists] at hp'
    obtain ⟨p, hp, hp'_eq⟩ : ∃ p, ∃ (h : p ∈ K.parts), y p h = p' := hp'
    apply hs_subset at hw'_mem
    simp_rw [mem_filter, mem_univ, true_and, ErdosStone.filter.pi, Subtype.mk.injEq] at hw'_mem
    rw [← hp'_eq, mem_coe, ← hw'_mem] at hv
    rw [← hw'_eq]
    exact (ErdosStone.filter.pi.mem_val K hp w' v hv).symm

end ErdosStone

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4efa3a7530675c9f7dfa48abd4c17d4d45e8950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
