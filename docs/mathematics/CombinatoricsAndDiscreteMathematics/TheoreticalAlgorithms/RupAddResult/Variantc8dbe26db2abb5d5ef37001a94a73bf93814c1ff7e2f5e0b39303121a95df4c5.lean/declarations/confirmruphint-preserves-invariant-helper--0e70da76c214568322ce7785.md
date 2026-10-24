# confirmRupHint_preserves_invariant_helper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d78df15-bf94-2c5d-b100-a71c78fe38a2",
  "kind": "theorem",
  "lexical_name": "confirmRupHint_preserves_invariant_helper",
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
  "slug": "confirmruphint-preserves-invariant-helper--0e70da76c214568322ce7785",
  "source": {
    "blob": "63a5c9bb7a4843b13273def96e793449214a2634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 672,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e70da76c214568322ce77850e327ab28e2c4a8290a948c84e811f174dd6a0e8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d78df15-bf94-2c5d-b100-a71c78fe38a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 672–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem confirmRupHint_preserves_invariant_helper {n : Nat} (f : DefaultFormula n)
    (f_assignments_size : f.assignments.size = n)
    (acc : Array Assignment × CNF.Clause (PosFin n) × Bool × Bool) (hsize : acc.1.size = n)
    (l : Literal (PosFin n)) (ih : DerivedLitsInvariant f f_assignments_size acc.1 hsize acc.2.1)
    (h : ¬hasAssignment l.snd acc.fst[l.fst.val]! = true) :
    have hsize' : (Array.modify acc.1 l.1.1 (addAssignment l.snd)).size = n := by rw [Array.size_modify]; exact hsize
    DerivedLitsInvariant f f_assignments_size (Array.modify acc.fst l.1.1 (addAssignment l.snd)) hsize' (l :: acc.2.fst) := by
  intro _ i
  have i_in_bounds : i.1 < acc.1.size := by rw [hsize]; exact i.2
  have l_in_bounds : l.1.1 < acc.1.size := by rw [hsize]; exact l.1.2.2
  rcases ih i with ⟨h1, h2⟩ | ⟨j, j_eq_i, h1, h2, h3⟩ | ⟨j1, j2, j1_eq_i, j2_eq_i, j1_eq_true, j2_eq_false, h1, h2, h3⟩
  · by_cases l.1.1 = i.1
    next l_eq_i =>
      have zero_lt_length_list : 0 < (l :: acc.snd.fst).length := by
        simp only [List.length_cons]
        exact Nat.zero_lt_succ (List.length acc.snd.fst)
      apply Or.inr ∘ Or.inl ∘ Exists.intro ⟨0, zero_lt_length_list⟩
      constructor
      · simp only [List.get, l_eq_i]
      · constructor
        · simp only [l_eq_i, Array.getElem_modify_self, List.get, h1]
        · constructor
          · grind
          · intro k k_ne_zero
            have k_eq_succ : ∃ k' : Nat, ∃ k'_succ_in_bounds : k' + 1 < (l :: acc.2.1).length, k = ⟨k' + 1, k'_succ_in_bounds⟩ := by
              have k_val_ne_zero : k.1 ≠ 0 := by
                intro k_eq_zero
                simp only [List.length_cons, Fin.zero_eta, ne_eq] at k_ne_zero
                apply k_ne_zero
                apply Fin.eq_of_val_eq
                simp [k_eq_zero]
              rcases Nat.exists_eq_succ_of_ne_zero k_val_ne_zero with ⟨k', k_eq_k'_succ⟩
              rw [Nat.succ_eq_add_one] at k_eq_k'_succ
              have k'_succ_in_bounds : k' + 1 < (l :: acc.2.1).length := by rw [← k_eq_k'_succ]; exact k.2
              apply Exists.intro k' ∘ Exists.intro k'_succ_in_bounds
              apply Fin.eq_of_val_eq
              exact k_eq_k'_succ
            rcases k_eq_succ with ⟨k', k'_succ_in_bounds, k_eq_succ⟩
            rw [k_eq_succ, List.get_cons_succ]
            have k'_in_bounds : k' < acc.2.1.length := by grind
            exact h2 (acc.2.1.get ⟨k', k'_in_bounds⟩) (by grind)
    next l_ne_i => grind
  · let l' := acc.2.1.get j
    have zero_in_bounds : 0 < (l :: acc.2.1).length := by grind
    have j_succ_in_bounds : j.1 + 1 < (l :: acc.2.1).length := by
      simp only [List.length_cons]
      exact Nat.succ_lt_succ j.2
    by_cases l.1.1 = i.1
    next l_eq_i =>
      apply Or.inr ∘ Or.inr
      have l_ne_l' : l.2 ≠ l'.2 := by grind [has_add]
      by_cases l.2
      next l_eq_true =>
        rw [l_eq_true] at l_ne_l'
        have l'_eq_false : l'.2 = false := by rw [← Bool.not_eq_true]; exact Ne.symm l_ne_l'
        apply Exists.intro ⟨0, zero_in_bounds⟩
        apply Exists.intro ⟨j.1 + 1, j_succ_in_bounds⟩
        constructor
        · grind
        · constructor
          · grind
          · simp only [List.get, List.length_cons, ne_eq]
            apply And.intro l_eq_true ∘ And.intro l'_eq_false
            constructor
            · simp only [l'] at l'_eq_false
              simp only [l_eq_i, addAssignment, l_eq_true, ite_true, Array.getElem_modify_self, h1,
                l'_eq_false]
              apply addPos_addNeg_eq_both
            · constructor
              · simp only [l'] at l'_eq_false
                simp only [l'_eq_false, hasAssignment] at h2
                simp only [hasAssignment, l_eq_true, ↓reduceIte, l_eq_i, getElem!_def, i_in_bounds,
                  Array.getElem?_eq_getElem, h1, addAssignment, l'_eq_false, reduceCtorEq,
                  hasPos_addNeg] at h
                exact unassigned_of_has_neither _ h h2
              · intro k k_ne_zero k_ne_j_succ
                have k_eq_succ : ∃ k' : Nat, ∃ k'_succ_in_bounds : k' + 1 < (l :: acc.2.1).length, k = ⟨k' + 1, k'_succ_in_bounds⟩ := by
                  have k_val_ne_zero : k.1 ≠ 0 := by
                    intro k_eq_zero
                    simp only [← k_eq_zero, not_true] at k_ne_zero
                  rcases Nat.exists_eq_succ_of_ne_zero k_val_ne_zero with ⟨k', k_eq_k'_succ⟩
                  rw [Nat.succ_eq_add_one k'] at k_eq_k'_succ
                  have k'_succ_in_bounds : k' + 1 < (l :: acc.2.1).length := by rw [← k_eq_k'_succ]; exact k.2
                  apply Exists.intro k' ∘ Exists.intro k'_succ_in_bounds
                  apply Fin.eq_of_val_eq
                  exact k_eq_k'_succ
                rcases k_eq_succ with ⟨k', k'_succ_in_bounds, k_eq_succ⟩
                rw [k_eq_succ]
                simp only [List.get, ne_eq]
                have k'_in_bounds : k' < acc.2.1.length := by grind
                have k'_ne_j : ⟨k', k'_in_bounds⟩ ≠ j := by grind
                exact h3 ⟨k', k'_in_bounds⟩ k'_ne_j
      next l_eq_false =>
        simp only [Bool.not_eq_true] at l_eq_false
        rw [l_eq_false] at l_ne_l'
        have l'_eq_true : l'.2 = true := by grind
        refine ⟨⟨j.1 + 1, j_succ_in_bounds⟩, ⟨0, zero_in_bounds⟩, ?_⟩
        constructor
        · grind
        · constructor
          · grind
          · simp only [List.get, List.length_cons, ne_eq]
            apply And.intro l'_eq_true ∘ And.intro l_eq_false
            constructor
            · simp only [l'] at l'_eq_true
              simp only [l_eq_i, addAssignment, l'_eq_true, ite_true, Array.getElem_modify_self, h1,
                l_eq_false]
              apply addNeg_addPos_eq_both
            · constructor
              · simp only [l'] at l'_eq_true
                simp only [hasAssignment, l'_eq_true, ite_true] at h2
                simp only [hasAssignment, l_eq_false, reduceCtorEq, ↓reduceIte, l_eq_i,
                  getElem!_def, i_in_bounds, Array.getElem?_eq_getElem, h1, addAssignment,
                  l'_eq_true, hasNeg_addPos] at h
                exact unassigned_of_has_neither _ h2 h
              · intro k k_ne_j_succ k_ne_zero
                have k_eq_succ : ∃ k' : Nat, ∃ k'_succ_in_bounds : k' + 1 < (l :: acc.2.1).length, k = ⟨k' + 1, k'_succ_in_bounds⟩ := by
                  have k_val_ne_zero : k.1 ≠ 0 := by
                    intro k_eq_zero
                    simp only [← k_eq_zero, not_true] at k_ne_zero
                  rcases Nat.exists_eq_succ_of_ne_zero k_val_ne_zero with ⟨k', k_eq_k'_succ⟩
                  rw [Nat.succ_eq_add_one k'] at k_eq_k'_succ
                  have k'_succ_in_bounds : k' + 1 < (l :: acc.2.1).length := by rw [← k_eq_k'_succ]; exact k.2
                  apply Exists.intro k' ∘ Exists.intro k'_succ_in_bounds
                  apply Fin.eq_of_val_eq
                  exact k_eq_k'_succ
                rcases k_eq_succ with ⟨k', k'_succ_in_bounds, k_eq_succ⟩
                rw [k_eq_succ]
                simp only [List.get, ne_eq]
                have k'_in_bounds : k' < acc.2.1.length := by grind
                have k'_ne_j : ⟨k', k'_in_bounds⟩ ≠ j := by grind
                exact h3 ⟨k', k'_in_bounds⟩ k'_ne_j
    next l_ne_i =>
      apply Or.inr ∘ Or.inl ∘ Exists.intro ⟨j.1 + 1, j_succ_in_bounds⟩
      simp only [List.get]
      constructor
      · exact j_eq_i
      · constructor
        · grind
        · apply And.intro h2
          intro k k_ne_j_succ
          by_cases k.1 = 0
          next k_eq_zero =>
            have k_eq_zero : k = ⟨0, zero_in_bounds⟩ := by
              apply Fin.eq_of_val_eq
              simp only [List.length_cons]
              exact k_eq_zero
            simp only [k_eq_zero, List.length_cons, List.get, ne_eq]
            exact l_ne_i
          next k_ne_zero =>
            have k_eq_succ : ∃ k' : Nat, ∃ k'_succ_in_bounds : k' + 1 < (l :: acc.2.1).length, k = ⟨k' + 1, k'_succ_in_bounds⟩ := by
              have k_val_ne_zero : k.1 ≠ 0 := by grind
              rcases Nat.exists_eq_succ_of_ne_zero k_val_ne_zero with ⟨k', k_eq_k'_succ⟩
              rw [Nat.succ_eq_add_one] at k_eq_k'_succ
              have k'_succ_in_bounds : k' + 1 < (l :: acc.2.1).length := by rw [← k_eq_k'_succ]; exact k.2
              apply Exists.intro k' ∘ Exists.intro k'_succ_in_bounds
              apply Fin.eq_of_val_eq
              exact k_eq_k'_succ
            rcases k_eq_succ with ⟨k', k'_succ_in_bounds, k_eq_succ⟩
            rw [k_eq_succ]
            simp only [List.get, ne_eq]
            have k'_in_bounds : k' < acc.2.1.length := by grind
            have k'_ne_j : ⟨k', k'_in_bounds⟩ ≠ j := by grind
            exact h3 ⟨k', k'_in_bounds⟩ k'_ne_j
  · have j1_succ_in_bounds : j1.1 + 1 < (l :: acc.2.1).length := by
      simp only [List.length_cons]
      exact Nat.succ_lt_succ j1.2
    have j2_succ_in_bounds : j2.1 + 1 < (l :: acc.2.1).length := by
      simp only [List.length_cons]
      exact Nat.succ_lt_succ j2.2
    let j1_succ : Fin (l :: acc.2.1).length := ⟨j1.1 + 1, j1_succ_in_bounds⟩
    let j2_succ : Fin (l :: acc.2.1).length := ⟨j2.1 + 1, j2_succ_in_bounds⟩
    apply Or.inr ∘ Or.inr ∘ Exists.intro j1_succ ∘ Exists.intro j2_succ
    simp only [List.length_cons, ne_eq]
    apply And.intro j1_eq_i ∘ And.intro j2_eq_i ∘ And.intro j1_eq_true ∘ And.intro j2_eq_false
    have l_ne_i : l.1.1 ≠ i.1 := by
      intro l_eq_i
      simp only [hasAssignment, Bool.not_eq_true] at h
      split at h
      all_goals
        simp +decide [l_eq_i, i_in_bounds, h1] at h
    constructor
    · grind
    · constructor
      · exact h2
      · intro k k_ne_j1_succ k_ne_j2_succ
        have zero_in_bounds : 0 < (l :: acc.2.1).length := by grind
        by_cases k = ⟨0, zero_in_bounds⟩
        next k_eq_zero => grind
        next k_ne_zero =>
          have k_eq_succ : ∃ k' : Nat, ∃ k'_succ_in_bounds : k' + 1 < (l :: acc.2.1).length, k = ⟨k' + 1, k'_succ_in_bounds⟩ := by
            have k_val_ne_zero : k.1 ≠ 0 := by
              intro k_eq_zero
              simp only [← k_eq_zero, not_true] at k_ne_zero
            rcases Nat.exists_eq_succ_of_ne_zero k_val_ne_zero with ⟨k', k_eq_k'_succ⟩
            rw [Nat.succ_eq_add_one k'] at k_eq_k'_succ
            have k'_succ_in_bounds : k' + 1 < (l :: acc.2.1).length := by rw [← k_eq_k'_succ]; exact k.2
            apply Exists.intro k' ∘ Exists.intro k'_succ_in_bounds
            apply Fin.eq_of_val_eq
            exact k_eq_k'_succ
          rcases k_eq_succ with ⟨k', k'_succ_in_bounds, k_eq_succ⟩
          rw [k_eq_succ]
          simp only [List.get, ne_eq]
          have k'_in_bounds : k' < acc.2.1.length := by grind
          have k'_ne_j1 : ⟨k', k'_in_bounds⟩ ≠ j1 := by grind
          have k'_ne_j2 : ⟨k', k'_in_bounds⟩ ≠ j2 := by grind
          exact h3 ⟨k', k'_in_bounds⟩ k'_ne_j1 k'_ne_j2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean#L672).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a5c9bb7a4843b13273def96e793449214a2634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
