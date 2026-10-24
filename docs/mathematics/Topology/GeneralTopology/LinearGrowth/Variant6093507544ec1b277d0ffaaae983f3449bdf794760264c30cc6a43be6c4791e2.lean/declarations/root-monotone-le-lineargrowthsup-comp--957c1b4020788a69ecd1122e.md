# _root_.Monotone.le_linearGrowthSup_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "643d6cd76262da4b02fb7814a98ee9d2c89e8664",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 490,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/6093507544ec1b277d0ffaaae983f3449bdf794760264c30cc6a43be6c4791e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc8ff181-9e7f-993c-e5c7-069a6a95980e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:143814bf-20de-364c-fd8d-55a178464c31",
  "kind": "lemma",
  "lexical_name": "_root_.Monotone.le_linearGrowthSup_comp",
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
  "slug": "root-monotone-le-lineargrowthsup-comp--957c1b4020788a69ecd1122e",
  "source": {
    "blob": "643d6cd76262da4b02fb7814a98ee9d2c89e8664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 490,
    "path": "GRWTSK/Topology/GeneralTopology/LinearGrowth/Variant6093507544ec1b277d0ffaaae983f3449bdf794760264c30cc6a43be6c4791e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:957c1b4020788a69ecd1122e21a82be400ff9ba94ce7eb6eb5af09b0792f5c2f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearGrowth/Variant6093507544ec1b277d0ffaaae983f3449bdf794760264c30cc6a43be6c4791e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:143814bf-20de-364c-fd8d-55a178464c31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Monotone.le_linearGrowthSup_comp (h : Monotone u)
    (hv : (linearGrowthInf fun n ↦ v n : EReal) ≠ 0) :
    (linearGrowthInf fun n ↦ v n : EReal) * linearGrowthSup u ≤ linearGrowthSup (u ∘ v) := by
  have v_0 := hv.symm.lt_of_le (linearGrowthInf_natCast_nonneg v)
  -- WLOG, `u` is non-bot, and we can apply `mul_le_of_forall_lt_of_nonneg`.
  by_cases u_0 : u = ⊥
  · rw [u_0, linearGrowthSup_bot, mul_bot_of_pos v_0]; exact bot_le
  apply EReal.mul_le_of_forall_lt_of_nonneg v_0.le
    (linearGrowthSup_comp_nonneg h u_0 (tendsto_atTop_of_linearGrowthInf_natCast_pos hv))
  intro a ⟨a_0, a_v⟩ b ⟨b_0, b_u⟩
  apply Frequently.le_linearGrowthSup
  obtain ⟨a', a_a', a_v'⟩ := exists_between a_v
  -- We get an epsilon of room: if `m` is large enough, then `a * n < a' * n ≤ v n`.
  -- Using `b_u`, we can find arbitrarily large values `n` such that `b * n ≤ u n`.
  -- If such an `n` is large enough, then we can find an integer `k` such that
  -- `a'⁻¹ * n ≤ k ≤ a⁻¹ * n`, or, in other words, `a * k ≤ n ≤ a' * k`.
  -- Then `v k ≥ a' * k ≥ n`, so `u (v k) ≥ u n ≥ b * n ≥ b * a * k`.
  have a_top' := ne_top_of_lt a_v'
  have a_0' := a_0.trans a_a'
  have a_a_inv' : a'⁻¹ < a⁻¹ := inv_strictAntiOn (Set.mem_Ioi.2 a_0) (Set.mem_Ioi.2 a_0') a_a'
  replace a_v' : ∀ᶠ n : ℕ in atTop, a' * n ≤ v n := by
    filter_upwards [eventually_lt_of_lt_liminf a_v', eventually_gt_atTop 0] with n a_vn' n_0
    exact (le_div_iff_mul_le (Nat.cast_pos'.2 n_0) (natCast_ne_top n)).1 a_vn'.le
  suffices h : (∀ᶠ n : ℕ in atTop, a' * n ≤ v n) → ∃ᶠ n : ℕ in atTop, a * b * n ≤ (u ∘ v) n
    from h a_v'
  rw [← frequently_imp_distrib]
  replace b_u := ((frequently_mul_le b_u).and_eventually (eventually_gt_atTop 0)).and_eventually
    <| EReal.eventually_atTop_exists_nat_between a_a_inv' (inv_nonneg_of_nonneg a_0.le)
  refine frequently_atTop.2 fun M ↦ ?_
  obtain ⟨M', aM_M'⟩ := exists_nat_ge_mul a_top' M
  obtain ⟨n, n_M', ⟨bn_un, _⟩, k, an_k', k_an⟩ := frequently_atTop.1 b_u M'
  refine ⟨k, ?_, fun ak_vk' ↦ ?_⟩
  · rw [mul_comm a', ← le_div_iff_mul_le a_0' a_top', EReal.div_eq_inv_mul] at aM_M'
    apply Nat.cast_le.1 <| aM_M'.trans <| an_k'.trans' _
    gcongr
  · rw [comp_apply, mul_comm a b, mul_assoc b a]
    rw [← EReal.div_eq_inv_mul, div_le_iff_le_mul a_0' a_top'] at an_k'
    rw [← EReal.div_eq_inv_mul, le_div_iff_mul_le a_0 (ne_top_of_lt a_a'), mul_comm] at k_an
    have n_vk := Nat.cast_le.1 (an_k'.trans ak_vk')
    exact le_trans (by gcongr) <| bn_un.trans (h n_vk)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearGrowth/Variant6093507544ec1b277d0ffaaae983f3449bdf794760264c30cc6a43be6c4791e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearGrowth/Variant6093507544ec1b277d0ffaaae983f3449bdf794760264c30cc6a43be6c4791e2.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `643d6cd76262da4b02fb7814a98ee9d2c89e8664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
