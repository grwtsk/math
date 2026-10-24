# MulAction.IsPreprimitive.is_two_motive_of_is_motive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d110204b11b0326e04097af6cc308d300493e86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7060c22e5e801b5ad0e106c47d9a5f4d8c2974962880b6b91377830bdeda7bea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc3cd90f-5252-9621-74b9-59f52fac4454",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f44fe95-1abd-3444-61e7-657148418f78",
  "kind": "theorem",
  "lexical_name": "MulAction.IsPreprimitive.is_two_motive_of_is_motive",
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
  "slug": "mulaction-ispreprimitive-is-two-motive-of-is-motive--f43af43ec9b9ba77e36150f2",
  "source": {
    "blob": "3d110204b11b0326e04097af6cc308d300493e86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 100,
    "path": "GRWTSK/Algebra/GroupTheory/Jordan/Variant7060c22e5e801b5ad0e106c47d9a5f4d8c2974962880b6b91377830bdeda7bea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f43af43ec9b9ba77e36150f2c0d2c656339c41d448ee890cee449a4897f5c1d9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Jordan/Variant7060c22e5e801b5ad0e106c47d9a5f4d8c2974962880b6b91377830bdeda7bea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f44fe95-1abd-3444-61e7-657148418f78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulAction.IsPreprimitive.is_two_motive_of_is_motive
    (hG : IsPreprimitive G α) {s : Set α} {n : ℕ}
    (hsn : s.ncard = n + 1) (hsn' : n + 2 < Nat.card α) :
    (IsPretransitive (fixingSubgroup G s) (ofFixingSubgroup G s)
      → IsMultiplyPretransitive G α 2)
    ∧ (IsPreprimitive (fixingSubgroup G s) (ofFixingSubgroup G s)
      → IsMultiplyPreprimitive G α 2) := by
  induction n using Nat.strong_induction_on generalizing α G with
  | h n hrec =>
  have : Finite α := Nat.finite_of_card_ne_zero <| ne_zero_of_lt hsn'
  have hs_ne_univ : s ≠ Set.univ := by
    intro hs
    rw [hs, Set.ncard_univ] at hsn
    simp only [hsn, add_lt_add_iff_left, Nat.not_ofNat_lt_one] at hsn'
  have hs_nonempty : s.Nonempty := by
    simp [← Set.ncard_pos s.toFinite, hsn]
  -- The result is assumed by induction for sets of ncard ≤ n
  rcases Nat.lt_or_ge (n + 1) 2 with hn | hn
  · -- When n + 1 < 2 (imposes n = 0)
    have hn : n = 0 := by
      rwa [Nat.succ_lt_succ_iff, Nat.lt_one_iff] at hn
    simp only [hn, zero_add, Set.ncard_eq_one] at hsn
    obtain ⟨a, hsa⟩ := hsn
    suffices IsPretransitive (fixingSubgroup G s) (ofFixingSubgroup G s) →
      IsMultiplyPretransitive G α 2 by
      refine ⟨this, fun hs_prim ↦ ?_⟩
      rw [hsa] at hs_prim
      rw [isMultiplyPreprimitive_succ_iff_ofStabilizer G α le_rfl (a := a),
        is_one_preprimitive_iff]
      exact IsPreprimitive.of_surjective
          ofFixingSubgroup_of_singleton_bijective.surjective
    rw [hsa]
    rw [ofStabilizer.isMultiplyPretransitive (a := a)]
    rw [is_one_pretransitive_iff]
    exact IsPretransitive.of_surjective_map
      ofFixingSubgroup_of_singleton_bijective.surjective
  rcases Nat.lt_or_ge (2 * (n + 1)) (Nat.card α) with hn1 | hn2
  · -- CASE where 2 * s.ncard < Nat.card α
    -- get a, b ∈ s, a ≠ b
    have : 1 < s.ncard := by rwa [hsn]
    rw [Set.one_lt_ncard] at this
    obtain ⟨a, ha, b, hb, hab⟩ := this
    -- apply Rudio to get g ∈ G such that a ∈ g • s, b ∉ g • s
    obtain ⟨g, hga, hgb⟩ :=
      exists_mem_smul_and_notMem_smul (G := G) s.toFinite hs_nonempty hs_ne_univ hab
    let t := s ∩ g • s
    have ht : t.Finite := s.toFinite.inter_of_left (g • s)
    have htm : t.ncard = t.ncard - 1 + 1 := by
      apply (Nat.sub_eq_iff_eq_add ?_).mp rfl
      rw [Nat.one_le_iff_ne_zero]
      apply Set.ncard_ne_zero_of_mem (a := a) _ ht
      exact ⟨ha, hga⟩
    have hmn : t.ncard - 1 < n := by
      rw [Nat.lt_iff_add_one_le, ← htm, Nat.le_iff_lt_add_one, ← hsn]
      apply Set.ncard_lt_ncard _
      exact ⟨Set.inter_subset_left, fun h ↦ hgb (Set.inter_subset_right (h hb))⟩
    have htm' : t.ncard - 1 + 2 < Nat.card α := lt_trans (Nat.add_lt_add_right hmn 2) hsn'
    suffices IsPretransitive ↥(fixingSubgroup G s) ↥(ofFixingSubgroup G s) →
      IsMultiplyPretransitive G α 2 by
      refine ⟨this, fun hs_prim ↦ ?_⟩
      have ht_prim : IsPreprimitive (fixingSubgroup G t) (ofFixingSubgroup G t) := by
        apply IsPreprimitive.isPreprimitive_ofFixingSubgroup_inter hs_prim
        apply Set.union_ne_univ_of_ncard_add_ncard_lt
        rwa [Set.ncard_smul_set, hsn, ← two_mul]
      apply (hrec (t.ncard - 1) hmn hG htm htm').2 ht_prim
    intro hs_trans
    have ht_trans : IsPretransitive (fixingSubgroup G t) (ofFixingSubgroup G t) :=
      IsPretransitive.isPretransitive_ofFixingSubgroup_inter hs_trans (by
        apply Set.union_ne_univ_of_ncard_add_ncard_lt
        rwa [Set.ncard_smul_set, hsn, ← two_mul])
    apply (hrec (t.ncard - 1) hmn hG htm ?_).1 ht_trans
    apply lt_trans _ hsn'
    exact Nat.add_lt_add_right hmn 2
  · -- CASE : 2 * s.ncard ≥ Nat.card α
    have : Set.Nontrivial sᶜ := by
      rwa [← Set.one_lt_encard_iff_nontrivial, ← sᶜ.toFinite.cast_ncard_eq, Nat.one_lt_cast,
        ← Nat.add_lt_add_iff_left, Set.ncard_add_ncard_compl, add_comm, hsn, add_comm]
    -- get a, b ∈ sᶜ, a ≠ b
    obtain ⟨a, ha : a ∈ sᶜ, b, hb : b ∈ sᶜ, hab⟩ := this
    -- apply Rudio to get g ∈ G such that a ∈ g • sᶜ, b ∉ g • sᶜ
    obtain ⟨g, hga, hgb⟩ := exists_mem_smul_and_notMem_smul (G := G)
      sᶜ.toFinite (Set.nonempty_of_mem ha)
      (by simpa [Set.nonempty_iff_ne_empty] using hs_nonempty)
      hab
    let t := s ∩ g • s
    have ha : a ∉ s ∪ g • s := by
      simp only [Set.smul_set_compl, Set.mem_compl_iff] at hga ha
      simp [ha, hga]
    have htm : t.ncard = t.ncard - 1 + 1 := by
      apply (Nat.sub_eq_iff_eq_add ?_).mp rfl
      rw [Nat.one_le_iff_ne_zero, ← Nat.pos_iff_ne_zero, Set.ncard_pos]
      apply Set.nonempty_inter_of_le_ncard_add_ncard
      · rw [Set.ncard_smul_set, ← two_mul, hsn]; exact hn2
      · exact fun h ↦ ha (by rw [h]; trivial)
    have hmn : t.ncard - 1 < n := by
      rw [Nat.lt_iff_add_one_le, ← htm, Nat.le_iff_lt_add_one, ← hsn]
      apply Set.ncard_lt_ncard _
      refine ⟨Set.inter_subset_left, fun h ↦ hb ?_⟩
      suffices s = g • s by
        rw [this]
        simpa only [Set.smul_set_compl, Set.mem_compl_iff, Set.not_notMem] using hgb
      apply Set.eq_of_subset_of_ncard_le _ _ (g • s).toFinite
      · exact subset_trans h Set.inter_subset_right
      · rw [Set.ncard_smul_set]
    have htm' : t.ncard - 1 + 2 < Nat.card α := lt_trans (Nat.add_lt_add_right hmn 2) hsn'
    have hsgs_ne_top : s ∪ g • s ≠ ⊤ := fun h ↦ ha (h ▸ Set.mem_univ a)
    suffices IsPretransitive ↥(fixingSubgroup G s) ↥(ofFixingSubgroup G s) →
      IsMultiplyPretransitive G α 2 by
      refine ⟨this, fun hs_prim ↦ ?_⟩
      apply (hrec _ hmn hG htm htm').2
      exact IsPreprimitive.isPreprimitive_ofFixingSubgroup_inter
          hs_prim hsgs_ne_top
    intro hs_trans
    apply (hrec _ hmn hG htm htm').1
    exact IsPretransitive.isPretransitive_ofFixingSubgroup_inter hs_trans hsgs_ne_top

/-- A criterion due to Jordan for being 2-pretransitive (Wielandt, 13.1) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Jordan/Variant7060c22e5e801b5ad0e106c47d9a5f4d8c2974962880b6b91377830bdeda7bea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Jordan/Variant7060c22e5e801b5ad0e106c47d9a5f4d8c2974962880b6b91377830bdeda7bea.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d110204b11b0326e04097af6cc308d300493e86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
