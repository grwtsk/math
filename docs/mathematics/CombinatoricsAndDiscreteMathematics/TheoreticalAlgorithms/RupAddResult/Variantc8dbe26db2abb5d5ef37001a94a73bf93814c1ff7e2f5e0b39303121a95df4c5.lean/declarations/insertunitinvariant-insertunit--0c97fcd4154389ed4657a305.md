# insertUnitInvariant_insertUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d763a618-774d-648f-dbd4-8d8a58230bf1",
  "kind": "theorem",
  "lexical_name": "insertUnitInvariant_insertUnit",
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
  "slug": "insertunitinvariant-insertunit--0c97fcd4154389ed4657a305",
  "source": {
    "blob": "63a5c9bb7a4843b13273def96e793449214a2634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c97fcd4154389ed4657a3050f85b7a0a5a92bbb3b622ee24b11e789547c57f7",
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

Occurrence: `result:d763a618-774d-648f-dbd4-8d8a58230bf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertUnitInvariant_insertUnit {n : Nat} (assignments0 : Array Assignment)
    (assignments0_size : assignments0.size = n) (units : Array (Literal (PosFin n)))
    (assignments : Array Assignment) (assignments_size : assignments.size = n)
    (foundContradiction : Bool) (l : Literal (PosFin n)) :
    InsertUnitInvariant assignments0 assignments0_size units assignments assignments_size →
    let update_res := insertUnit (units, assignments, foundContradiction) l
    have update_res_size : update_res.snd.fst.size = n := by rw [size_insertUnit]; exact assignments_size
    InsertUnitInvariant assignments0 assignments0_size update_res.1 update_res.2.1 update_res_size := by
  intro h
  simp only [InsertUnitInvariant, Fin.getElem_fin, ne_eq, Bool.not_eq_true] at h
  simp only [InsertUnitInvariant, Fin.getElem_fin, ne_eq, Bool.not_eq_true]
  intro i
  specialize h i
  have i_in_bounds : i.1 < assignments.size := by omega
  have l_in_bounds : l.1.1 < assignments.size := by rw [assignments_size]; exact l.1.2.2
  rcases h with ⟨h1, h2⟩ | ⟨j, b, i_gt_zero, h1, h2, h3, h4⟩ | ⟨j1, j2, i_gt_zero, h1, h2, h3, h4, h5⟩
  · by_cases hasAssignment l.2 assignments[l.1.1]!
    next h3 =>
      apply Or.inl
      simp only [insertUnit, h3, ite_true]
      constructor
      · exact h1
      · intro j
        have hsize : (insertUnit (units, assignments, foundContradiction) l).1.size = units.size := by
          simp [insertUnit, h3]
        let j' : Fin (Array.size units) := ⟨j.1, by rw [← hsize]; exact j.2⟩
        exact h2 j'
    next h3 =>
      by_cases i.1 = l.1.1
      next i_eq_l =>
        apply Or.inr ∘ Or.inl
        have units_size_lt_updatedUnits_size : units.size < (insertUnit (units, assignments, foundContradiction) l).1.size := by
          simp only [insertUnit]
          grind
        let mostRecentUnitIdx : Fin (insertUnit (units, assignments, foundContradiction) l).1.size :=
          ⟨units.size, units_size_lt_updatedUnits_size⟩
        have i_gt_zero : i.1 > 0 := by rw [i_eq_l]; exact l.1.2.1
        refine ⟨mostRecentUnitIdx, l.2, i_gt_zero, ?_⟩
        simp +zetaDelta only [insertUnit, h3, ite_false, Array.getElem_push_eq, i_eq_l, reduceCtorEq]
        constructor
        · rfl
        · constructor
          · grind
          · constructor
            · grind
            · intro k hk
              have k_in_bounds : k.1 < units.size := by
                apply Nat.lt_of_le_of_ne
                · have k_property := k.2
                  grind
                · intro h
                  simp only [← h, not_true] at hk
              rw [Array.getElem_push_lt k_in_bounds]
              rw [i_eq_l] at h2
              exact h2 ⟨k.1, k_in_bounds⟩
      next i_ne_l =>
        apply Or.inl
        simp only [insertUnit, h3, ite_false, reduceCtorEq]
        rw [Array.getElem_modify_of_ne (Ne.symm i_ne_l)]
        constructor
        · exact h1
        · intro j
          rw [Array.getElem_push]
          by_cases h : j.val < Array.size units
          · simp only [h, dite_true]
            exact h2 ⟨j.1, h⟩
          · grind
  · by_cases hasAssignment l.2 assignments[l.1.1]!
    next h5 =>
      apply Or.inr ∘ Or.inl
      have j_lt_updatedUnits_size : j.1 < (insertUnit (units, assignments, foundContradiction) l).1.size := by
        simp only [insertUnit, h5, ite_true]
        exact j.2
      refine ⟨⟨j.1, j_lt_updatedUnits_size⟩, b,i_gt_zero, ?_⟩
      simp only [insertUnit, h5, ite_true]
      refine ⟨h1,h2,h3,?_⟩
      intro k k_ne_j
      have k_size : k.1 < units.size := by
        have k_property := k.2
        grind
      have k_ne_j : { val := k.val, isLt := k_size } ≠ j := by
        intro k_eq_j
        simp only [← Fin.val_eq_of_eq k_eq_j, not_true] at k_ne_j
      exact h4 ⟨k.1, k_size⟩ k_ne_j
    next h5 =>
      by_cases i.1 = l.1.1
      next i_eq_l =>
        apply Or.inr ∘ Or.inr
        have units_size_lt_updatedUnits_size : units.size < (insertUnit (units, assignments, foundContradiction) l).1.size := by
          simp only [insertUnit]
          grind
        let mostRecentUnitIdx : Fin (insertUnit (units, assignments, foundContradiction) l).1.size :=
          ⟨units.size, units_size_lt_updatedUnits_size⟩
        have j_lt_updatedUnits_size : j.1 < (insertUnit (units, assignments, foundContradiction) l).1.size := by
          simp only [insertUnit, h5, Bool.false_eq_true, ↓reduceIte, Array.size_push]
          exact Nat.lt_trans j.2 (Nat.lt_succ_self units.size)
        match hb : b, hl : l.2 with
        | true, true =>
          exfalso
          have assignments_i_rw : assignments[i.1]! = assignments[i.1] := by
            simp only [getElem!_def, i_in_bounds, Array.getElem?_eq_getElem]
          rw [hl, ← i_eq_l, assignments_i_rw, h2] at h5
          exact h5 (has_add _ true)
        | true, false =>
          refine ⟨⟨j.1, j_lt_updatedUnits_size⟩, mostRecentUnitIdx, i_gt_zero, ?_⟩
          simp only [insertUnit, h5, ite_false, reduceCtorEq]
          constructor
          · rw [Array.getElem_push_lt j.2, h1]
          · constructor
            · simp +zetaDelta [i_eq_l, ← hl]
              rfl
            · constructor
              · simp only [i_eq_l]
                rw [Array.getElem_modify_self]
                simp only [addAssignment, hl, ← i_eq_l, h2, ite_true]
                apply addNeg_addPos_eq_both
              · constructor
                · match h : assignments0[i.val]'_ with
                  | unassigned => rfl
                  | pos => simp +decide [h] at h3
                  | neg =>
                    simp only [addAssignment, addPosAssignment, h, ite_true] at h2
                    simp only [i_eq_l] at h2
                    simp [hasAssignment, hl, l_in_bounds, h2, hasNegAssignment] at h5
                  | both => simp +decide only [h] at h3
                · intro k k_ne_j k_ne_l
                  rw [Array.getElem_push]
                  by_cases h : k.1 < units.size
                  · simp only [h, dite_true]
                    have k_ne_j : ⟨k.1, h⟩ ≠ j := by
                      intro k_eq_j
                      simp only [← k_eq_j, not_true] at k_ne_j
                    exact h4 ⟨k.1, h⟩ k_ne_j
                  · exfalso
                    have k_property := k.2
                    simp only [h5, ite_false, Array.size_push, reduceCtorEq] at k_property
                    rcases Nat.lt_or_eq_of_le <| Nat.le_of_lt_succ k_property with k_lt_units_size | k_eq_units_size
                    · exact h k_lt_units_size
                    · simp only [← k_eq_units_size, mostRecentUnitIdx] at k_ne_l
                      exact k_ne_l rfl
        | false, true =>
          refine ⟨mostRecentUnitIdx, ⟨j.1, j_lt_updatedUnits_size⟩, i_gt_zero, ?_⟩
          simp only [insertUnit, h5, Bool.false_eq_true, ↓reduceIte, mostRecentUnitIdx]
          constructor
          · simp +zetaDelta [i_eq_l, ← hl]
            rfl
          · constructor
            · rw [Array.getElem_push_lt j.2, h1]
            · constructor
              · simp only [i_eq_l]
                rw [Array.getElem_modify_self]
                simp only [addAssignment, hl, ← i_eq_l, h2, ite_true]
                apply addPos_addNeg_eq_both
              · constructor
                · match h : assignments0[i.val]'_ with
                  | unassigned => rfl
                  | pos =>
                    simp only [addAssignment, h, ite_false, addNegAssignment, reduceCtorEq] at h2
                    simp only [i_eq_l] at h2
                    simp [hasAssignment, hl, l_in_bounds, h2, hasPosAssignment] at h5
                  | neg  => simp +decide only [h] at h3
                  | both => simp +decide only [h] at h3
                · intro k k_ne_l k_ne_j
                  rw [Array.getElem_push]
                  by_cases h : k.1 < units.size
                  · simp only [h, dite_true]
                    have k_ne_j : ⟨k.1, h⟩ ≠ j := by
                      intro k_eq_j
                      simp only [← k_eq_j, not_true] at k_ne_j
                    exact h4 ⟨k.1, h⟩ k_ne_j
                  · exfalso
                    have k_property := k.2
                    simp only [h5, ite_false, Array.size_push, reduceCtorEq] at k_property
                    rcases Nat.lt_or_eq_of_le <| Nat.le_of_lt_succ k_property with k_lt_units_size | k_eq_units_size
                    · exact h k_lt_units_size
                    · simp only [← k_eq_units_size, not_true] at k_ne_l
        | false, false =>
          exfalso
          have assignments_i_rw : assignments[i.1]! = assignments[i.1] := by
            simp [i_in_bounds]
          rw [hl, ← i_eq_l, assignments_i_rw, h2] at h5
          exact h5 (has_add _ false)
      next i_ne_l =>
        apply Or.inr ∘ Or.inl
        have j_lt_updatedUnits_size : j.1 < (insertUnit (units, assignments, foundContradiction) l).1.size := by
          simp only [insertUnit, h5, ite_false, Array.size_push, reduceCtorEq]
          exact Nat.lt_trans j.2 (Nat.lt_succ_self units.size)
        refine ⟨⟨j.1, j_lt_updatedUnits_size⟩, b,i_gt_zero, ?_⟩
        simp only [insertUnit, h5, ite_false, reduceCtorEq]
        constructor
        · rw [Array.getElem_push_lt j.2, h1]
        · constructor
          · grind
          · constructor
            · exact h3
            · intro k k_ne_j
              rw [Array.getElem_push]
              by_cases h : k.val < units.size
              · simp only [h, dite_true]
                have k_ne_j : ⟨k.1, h⟩ ≠ j := by
                  intro k_eq_j
                  simp only [← Fin.val_eq_of_eq k_eq_j, not_true] at k_ne_j
                exact h4 ⟨k.1, h⟩ k_ne_j
              · simp only [h, dite_false]
                exact Ne.symm i_ne_l
  · have j1_lt_updatedUnits_size : j1.1 < (insertUnit (units, assignments, foundContradiction) l).1.size := by
      simp only [insertUnit]
      split
      · exact j1.2
      · simp only [Array.size_push]
        exact Nat.lt_trans j1.2 (Nat.lt_succ_self units.size)
    have j2_lt_updatedUnits_size : j2.1 < (insertUnit (units, assignments, foundContradiction) l).1.size := by
      simp only [insertUnit]
      split
      · exact j2.2
      · simp only [Array.size_push]
        exact Nat.lt_trans j2.2 (Nat.lt_succ_self units.size)
    refine Or.inr <| Or.inr <| ⟨⟨j1.1, j1_lt_updatedUnits_size⟩, ⟨j2.1, j2_lt_updatedUnits_size⟩, i_gt_zero, ?_⟩
    simp only [insertUnit]
    constructor
    · split
      · exact h1
      · simp only [Array.getElem_push_lt j1.2, h1]
    · constructor
      · split
        · exact h2
        · simp only [Array.getElem_push_lt j2.2, h2]
      · constructor
        · split
          · exact h3
          · simp only
            by_cases i.1 = l.1.1
            next i_eq_l =>
              simp only [i_eq_l]
              rw [Array.getElem_modify_self]
              simp only [← i_eq_l, h3, add_both_eq_both]
            next i_ne_l => grind
        · constructor
          · exact h4
          · intro k k_ne_j1 k_ne_j2
            by_cases k.1 < units.size
            next k_in_bounds =>
              have k_ne_j1 : ⟨k.1, k_in_bounds⟩ ≠ j1 := by
                intro k_eq_j1
                simp only [← k_eq_j1, not_true] at k_ne_j1
              have k_ne_j2 : ⟨k.1, k_in_bounds⟩ ≠ j2 := by
                intro k_eq_j2
                simp only [← k_eq_j2, not_true] at k_ne_j2
              split
              · exact h5 ⟨k.1, k_in_bounds⟩ k_ne_j1 k_ne_j2
              · simp only [ne_eq]
                rw [Array.getElem_push]
                simp only [k_in_bounds, dite_true]
                exact h5 ⟨k.1, k_in_bounds⟩ k_ne_j1 k_ne_j2
            next k_not_lt_units_size =>
              split
              next h =>
                have k_property := k.2
                grind
              next h =>
                simp only
                have k_eq_units_size : k.1 = units.size := by
                  have k_property := k.2
                  grind
                simp only [k_eq_units_size, Array.getElem_push_eq]
                grind [has_both]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a5c9bb7a4843b13273def96e793449214a2634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
