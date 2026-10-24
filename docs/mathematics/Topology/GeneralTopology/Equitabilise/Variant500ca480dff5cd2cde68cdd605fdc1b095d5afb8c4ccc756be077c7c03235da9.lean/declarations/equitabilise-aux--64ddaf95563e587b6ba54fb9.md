# equitabilise_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a95d4de4313b67236c28a5b4ef792a89b9932d2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57e54542-f970-5c64-296d-5c28bd8a1396",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ed23b95-f38d-444c-7676-2b4cbb52b41f",
  "kind": "theorem",
  "lexical_name": "equitabilise_aux",
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
  "slug": "equitabilise-aux--64ddaf95563e587b6ba54fb9",
  "source": {
    "blob": "a95d4de4313b67236c28a5b4ef792a89b9932d2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64ddaf95563e587b6ba54fb9abeff069a25e97f2f60296461e0b5499b160a74f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed23b95-f38d-444c-7676-2b4cbb52b41f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equitabilise_aux (hs : a * m + b * (m + 1) = #s) :
    ∃ Q : Finpartition s,
      (∀ x : Finset α, x ∈ Q.parts → #x = m ∨ #x = m + 1) ∧
        (∀ x, x ∈ P.parts → #(x \ {y ∈ Q.parts | y ⊆ x}.biUnion id) ≤ m) ∧
          #{i ∈ Q.parts | #i = m + 1} = b := by
  -- Get rid of the easy case `m = 0`
  obtain rfl | m_pos := m.eq_zero_or_pos
  · refine ⟨⊥, by simp, ?_, by simpa [Finset.filter_true_of_mem] using hs.symm⟩
    simp only [le_zero_iff, card_eq_zero, mem_biUnion, mem_filter, id,
      and_assoc, sdiff_eq_empty_iff_subset, subset_iff]
    exact fun x hx a ha =>
      ⟨{a}, mem_map_of_mem _ (P.le hx ha), singleton_subset_iff.2 ha, mem_singleton_self _⟩
  -- Prove the case `m > 0` by strong induction on `s`
  induction s using Finset.strongInduction generalizing a b with | H s ih => _
  -- If `a = b = 0`, then `s = ∅` and we can partition into zero parts
  by_cases hab : a = 0 ∧ b = 0
  · -- Rewrite using `← bot_eq_empty` because we have theorems about `Finpartition ⊥`,
    -- and nothing about `Finpartition ∅`, even though they are defeq in this case.
    -- TODO: specialize the `Finpartition ⊥` lemmas to `Finpartition ∅`?
    simp only [hab.1, hab.2, add_zero, zero_mul, eq_comm, card_eq_zero, ← bot_eq_empty] at hs
    subst hs
    exact ⟨Finpartition.empty _, by simp, by simp [Unique.eq_default P, -bot_eq_empty],
      by simp [hab.2]⟩
  simp_rw [not_and_or, ← Ne.eq_def, ← pos_iff_ne_zero] at hab
  -- `n` will be the size of the smallest part
  set n := if 0 < a then m else m + 1 with hn
  -- Some easy facts about it
  obtain ⟨hn₀, hn₁, hn₂, hn₃⟩ : 0 < n ∧ n ≤ m + 1 ∧ n ≤ a * m + b * (m + 1) ∧
      ite (0 < a) (a - 1) a * m + ite (0 < a) b (b - 1) * (m + 1) = #s - n := by
    rw [hn, ← hs]
    split_ifs with h <;> rw [tsub_mul, one_mul]
    · refine ⟨m_pos, le_succ _, le_add_right (Nat.le_mul_of_pos_left _ ‹0 < a›), ?_⟩
      rw [tsub_add_eq_add_tsub (Nat.le_mul_of_pos_left _ h)]
    · refine ⟨succ_pos', le_rfl,
        le_add_left (Nat.le_mul_of_pos_left _ <| hab.resolve_left ‹¬0 < a›), ?_⟩
      rw [← add_tsub_assoc_of_le (Nat.le_mul_of_pos_left _ <| hab.resolve_left ‹¬0 < a›)]
  /- We will call the inductive hypothesis on a partition of `s \ t` for a carefully chosen `t ⊆ s`.
    To decide which, however, we must distinguish the case where all parts of `P` have size `m` (in
    which case we take `t` to be an arbitrary subset of `s` of size `n`) from the case where at
    least one part `u` of `P` has size `m + 1` (in which case we take `t` to be an arbitrary subset
    of `u` of size `n`). The rest of each branch is just tedious calculations to satisfy the
    induction hypothesis. -/
  by_cases! h : ∀ u ∈ P.parts, #u < m + 1
  · obtain ⟨t, hts, htn⟩ := exists_subset_card_eq (hn₂.trans_eq hs)
    have ht : t.Nonempty := by rwa [← card_pos, htn]
    have hcard : ite (0 < a) (a - 1) a * m + ite (0 < a) b (b - 1) * (m + 1) = #(s \ t) := by
      rw [card_sdiff_of_subset ‹t ⊆ s›, htn, hn₃]
    obtain ⟨R, hR₁, _, hR₃⟩ :=
      @ih (s \ t) (sdiff_ssubset hts ‹t.Nonempty›) (if 0 < a then a - 1 else a)
        (if 0 < a then b else b - 1) (P.avoid t) hcard
    refine ⟨R.extend ht.ne_empty sdiff_disjoint (sdiff_sup_cancel hts), ?_, ?_, ?_⟩
    · simp only [extend_parts, mem_insert, forall_eq_or_imp, and_iff_left hR₁, htn, hn]
      exact ite_eq_or_eq _ _ _
    · exact fun x hx => (card_le_card sdiff_subset).trans (Nat.lt_succ_iff.1 <| h _ hx)
    simp_rw [extend_parts, filter_insert, htn, n, m.succ_ne_self.symm.ite_eq_right_iff]
    split_ifs with ha
    · rw [hR₃, ite_eq_left ha]
    rw [card_insert_of_notMem, hR₃, ite_eq_right ha, tsub_add_cancel_of_le]
    · exact hab.resolve_left ha
    · intro H; exact ht.ne_empty (le_sdiff_right.1 <| R.le <| filter_subset _ _ H)
  obtain ⟨u, hu₁, hu₂⟩ := h
  obtain ⟨t, htu, htn⟩ := exists_subset_card_eq (hn₁.trans hu₂)
  have ht : t.Nonempty := by rwa [← card_pos, htn]
  have hcard : ite (0 < a) (a - 1) a * m + ite (0 < a) b (b - 1) * (m + 1) = #(s \ t) := by
    rw [card_sdiff_of_subset (htu.trans <| P.le hu₁), htn, hn₃]
  obtain ⟨R, hR₁, hR₂, hR₃⟩ :=
    @ih (s \ t) (sdiff_ssubset (htu.trans <| P.le hu₁) ht) (if 0 < a then a - 1 else a)
      (if 0 < a then b else b - 1) (P.avoid t) hcard
  refine
    ⟨R.extend ht.ne_empty sdiff_disjoint (sdiff_sup_cancel <| htu.trans <| P.le hu₁), ?_, ?_, ?_⟩
  · simp only [mem_insert, forall_eq_or_imp, extend_parts, and_iff_left hR₁, htn, hn]
    exact ite_eq_or_eq _ _ _
  · conv in _ ∈ _ => rw [← insert_erase hu₁]
    simp only [mem_insert, forall_eq_or_imp, extend_parts]
    refine ⟨?_, fun x hx => (card_le_card ?_).trans <| hR₂ x ?_⟩
    · simp only [filter_insert, ite_eq_left htu, biUnion_insert, id]
      obtain rfl | hut := eq_or_ne u t
      · rw [sdiff_eq_empty_iff_subset.2 subset_union_left]
        exact bot_le
      refine
        (card_le_card fun i => ?_).trans
          (hR₂ (u \ t) <| P.mem_avoid.2 ⟨u, hu₁, fun i => hut <| i.antisymm htu, rfl⟩)
      simpa using fun hi₁ hi₂ hi₃ =>
        ⟨⟨hi₁, hi₂⟩, fun x hx hx' => hi₃ _ hx <| hx'.trans sdiff_subset⟩
    · apply sdiff_subset_sdiff Subset.rfl (biUnion_subset_biUnion_of_subset_left _ _)
      exact filter_subset_filter _ (subset_insert _ _)
    simp only [avoid, ofErase, mem_erase, mem_image, bot_eq_empty]
    exact
      ⟨(nonempty_of_mem_parts _ <| mem_of_mem_erase hx).ne_empty, _, mem_of_mem_erase hx,
        (disjoint_of_subset_right htu <|
            P.disjoint (mem_of_mem_erase hx) hu₁ <| ne_of_mem_erase hx).sdiff_eq_left⟩
  simp only [extend_parts, filter_insert, htn, hn, m.succ_ne_self.symm.ite_eq_right_iff]
  split_ifs with h
  · rw [hR₃, ite_eq_left h]
  · rw [card_insert_of_notMem, hR₃, ite_eq_right h, Nat.sub_add_cancel (hab.resolve_left h)]
    intro H; exact ht.ne_empty (le_sdiff_right.1 <| R.le <| filter_subset _ _ H)

variable (h : a * m + b * (m + 1) = #s)

/-- Given a partition `P` of `s`, as well as a proof that `a * m + b * (m + 1) = #s`, build a
new partition `Q` of `s` where each part has size `m` or `m + 1`, every part of `P` is the union of
parts of `Q` plus at most `m` extra elements, there are `b` parts of size `m + 1` and (provided
`m > 0`, because a partition does not have parts of size `0`) there are `a` parts of size `m` and
hence `a + b` parts in total. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a95d4de4313b67236c28a5b4ef792a89b9932d2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
