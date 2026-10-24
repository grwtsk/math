# clear_insert_inductive_case

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b0cfa6d-ab1a-7948-d717-afde235dbd6a",
  "kind": "theorem",
  "lexical_name": "clear_insert_inductive_case",
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
  "slug": "clear-insert-inductive-case--d709f17b7b02f4a7f315257f",
  "source": {
    "blob": "63a5c9bb7a4843b13273def96e793449214a2634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 460,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d709f17b7b02f4a7f315257f9939c721b16a5d8ec5b4c29e203cd6d0c5e64f0a",
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

Occurrence: `result:6b0cfa6d-ab1a-7948-d717-afde235dbd6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clear_insert_inductive_case {n : Nat} (f : DefaultFormula n) (f_assignments_size : f.assignments.size = n)
    (units : Array (Literal (PosFin n))) (units_nodup : ∀ i : Fin units.size, ∀ j : Fin units.size, i ≠ j → units[i] ≠ units[j])
    (idx : Fin units.size) (assignments : Array Assignment)
    (ih : ClearInsertInductionMotive f f_assignments_size units idx.1 assignments) :
    ClearInsertInductionMotive f f_assignments_size units (idx.1 + 1) (clearUnit assignments units[idx]) := by
  rcases ih with ⟨hsize, ih⟩
  have hsize' : Array.size (clearUnit assignments units[idx]) = n := by
    rw [← size_clearUnit assignments units[idx]] at hsize
    exact hsize
  apply Exists.intro hsize'
  intro i
  specialize ih i
  simp only [Fin.getElem_fin, ne_eq, exists_and_left, exists_and_right] at ih
  rcases ih with
    ⟨ih1, ih2⟩ | ⟨j, j_ge_idx, ⟨b, ⟨i_gt_zero, ih1⟩, ih2, ih3, ih4⟩⟩ |
    ⟨j1, j1_ge_idx, j2, j2_ge_idx, i_gt_zero, ih1, ih2, ih3, ih4, ih5⟩
  · apply Or.inl
    constructor
    · simp only [clearUnit, Array.getInternal_eq_getElem]
      specialize ih2 idx (Nat.le_refl idx.val)
      have i_in_bounds : i.1 < assignments.size := by
        rw [hsize]
        exact i.2
      have h := Array.getElem_modify_of_ne ih2 (removeAssignment units[idx.val].2) (by simpa using i_in_bounds)
      grind
    · intro j j_ge_idx_add_one
      exact ih2 j (Nat.le_of_succ_le j_ge_idx_add_one)
  · by_cases idx = j
    next idx_eq_j =>
      apply Or.inl
      constructor
      · simp only [Fin.getElem_fin, clearUnit, idx_eq_j, Array.getInternal_eq_getElem, ih1]
        rw [Array.getElem_modify_self, ih2, remove_add_cancel]
        exact ih3
      · intro k k_ge_idx_add_one
        have k_ge_idx : k.val ≥ idx.val := by grind
        have k_ne_j : k ≠ j := by grind
        exact ih4 k k_ge_idx k_ne_j
    next idx_ne_j =>
      refine Or.inr <| Or.inl <| ⟨j,b,i_gt_zero,?_⟩
      constructor
      · grind
      · constructor
        · exact ih1
        · constructor
          · simp only [clearUnit, Array.getInternal_eq_getElem]
            grind
          · constructor
            · exact ih3
            · intro k k_ge_idx_add_one k_ne_j
              exact ih4 k (Nat.le_of_succ_le k_ge_idx_add_one) k_ne_j
  · by_cases idx = j1
    next idx_eq_j1 =>
      have idx_ne_j2 : idx ≠ j2 := by grind
      refine Or.inr <| Or.inl <| ⟨j2, false, i_gt_zero, ?_⟩
      constructor
      · apply Nat.le_of_lt_succ
        rw [← Nat.succ_eq_add_one]
        apply Nat.succ_lt_succ ∘ Nat.lt_of_le_of_ne j2_ge_idx
        intro idx_eq_j2
        exact idx_ne_j2 (Fin.eq_of_val_eq idx_eq_j2)
      · constructor
        · simp only [Fin.getElem_fin]
          exact ih2
        · constructor
          · simp only [Fin.getElem_fin, clearUnit, idx_eq_j1, Array.getInternal_eq_getElem, ih1]
            rw [Array.getElem_modify_self, ih3, ih4]
            decide
          · constructor
            · simp [hasAssignment, hasNegAssignment, ih4]
            · intro k k_ge_idx_add_one k_ne_j2
              intro h1
              by_cases units[k.1].2
              next h2 =>
                have k_ne_j1 : k ≠ j1 := by grind
                have h3 := units_nodup k j1 k_ne_j1
                simp only [Fin.getElem_fin, ih1, ← h1, ← h2, ne_eq] at h3
                exact h3 rfl
              next h2 =>
                have h3 := units_nodup k j2 k_ne_j2
                simp only [Bool.not_eq_true] at h2
                simp only [Fin.getElem_fin, ih2, ← h1, ← h2, ne_eq] at h3
                exact h3 rfl
    next idx_ne_j1 =>
      by_cases idx = j2
      next idx_eq_j2 =>
        refine Or.inr <| Or.inl <| ⟨j1, true, i_gt_zero, ?_⟩
        constructor
        · apply Nat.le_of_lt_succ
          rw [← Nat.succ_eq_add_one]
          apply Nat.succ_lt_succ ∘ Nat.lt_of_le_of_ne j1_ge_idx
          intro idx_eq_j1
          exact idx_ne_j1 (Fin.eq_of_val_eq idx_eq_j1)
        · constructor
          · simp only [Fin.getElem_fin]
            exact ih1
          · constructor
            · simp only [Fin.getElem_fin, clearUnit, idx_eq_j2, Array.getInternal_eq_getElem, ih2]
              rw [Array.getElem_modify_self, ih3, ih4]
              decide
            · constructor
              · simp only [hasAssignment, hasNegAssignment, ih4]
                decide
              · intro k k_ge_idx_add_one k_ne_j1
                intro h1
                by_cases units[k.1].2
                next h2 =>
                  have h3 := units_nodup k j1 k_ne_j1
                  simp only [Fin.getElem_fin, ih1, ← h1, ← h2, ne_eq] at h3
                  exact h3 rfl
                next h2 =>
                  have k_ne_j2 : k ≠ j2 := by grind
                  have h3 := units_nodup k j2 k_ne_j2
                  simp only [Bool.not_eq_true] at h2
                  simp only [Fin.getElem_fin, ih2, ← h1, ← h2, ne_eq] at h3
                  exact h3 rfl
      next idx_ne_j2 =>
        refine Or.inr <| Or.inr <| ⟨j1, j2,i_gt_zero, ?_⟩
        constructor
        · grind
        · constructor
          · grind
          · constructor
            · simp only [Fin.getElem_fin]
              exact ih1
            · constructor
              · simp only [Fin.getElem_fin]
                exact ih2
              · constructor
                · simp only [clearUnit, Array.getInternal_eq_getElem]
                  grind
                · constructor
                  · exact ih4
                  · intro k k_ge_idx_add_one
                    exact ih5 k <| Nat.le_of_succ_le k_ge_idx_add_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a5c9bb7a4843b13273def96e793449214a2634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
