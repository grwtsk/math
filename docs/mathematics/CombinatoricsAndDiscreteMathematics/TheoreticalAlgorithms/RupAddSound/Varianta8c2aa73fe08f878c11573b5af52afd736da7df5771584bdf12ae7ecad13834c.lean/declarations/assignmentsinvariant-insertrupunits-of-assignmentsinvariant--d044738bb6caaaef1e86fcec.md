# assignmentsInvariant_insertRupUnits_of_assignmentsInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36ce5cef-68c3-90b0-1847-dd5517cf45d1",
  "kind": "theorem",
  "lexical_name": "assignmentsInvariant_insertRupUnits_of_assignmentsInvariant",
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
  "slug": "assignmentsinvariant-insertrupunits-of-assignmentsinvariant--d044738bb6caaaef1e86fcec",
  "source": {
    "blob": "66745d1bb2d437fb4d1dad9c4d52328a43dd4910",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 244,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d044738bb6caaaef1e86fcecca463629e3f6a2e061bf5deb6408274ea2ccb8e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ce5cef-68c3-90b0-1847-dd5517cf45d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem assignmentsInvariant_insertRupUnits_of_assignmentsInvariant {n : Nat} (f : DefaultFormula n) (f_readyForRupAdd : ReadyForRupAdd f)
    (units : CNF.Clause (PosFin n)) :
    AssignmentsInvariant (insertRupUnits f units).1 := by
  have h := insertUnitInvariant_insertRupUnits f f_readyForRupAdd units
  have hsize : (insertRupUnits f units).1.assignments.size = n := by rw [size_assignments_insertRupUnits, f_readyForRupAdd.2.1]
  apply Exists.intro hsize
  intro i b hb p hp
  simp only [(· ⊨ ·), Clause.eval] at hp
  simp only [toList, List.append_assoc, List.any_eq_true, Prod.exists,
    Bool.exists_bool, List.all_eq_true, List.mem_append, List.mem_filterMap, id_eq, exists_eq_right,
    List.mem_map, decide_eq_true_eq] at hp
  have pf : p ⊨ f := by
    simp only [(· ⊨ ·), Clause.eval]
    simp only [toList, List.append_assoc, List.any_eq_true, Prod.exists, Bool.exists_bool,
      decide_eq_true_eq, List.all_eq_true, List.mem_append, List.mem_filterMap, id_eq, exists_eq_right, List.mem_map]
    intro c cf
    rcases cf with cf | cf | cf
    · specialize hp c (Or.inl cf)
      exact hp
    · simp only [f_readyForRupAdd.1, List.toList_toArray, List.not_mem_nil, false_and, or_self, exists_false] at cf
    · specialize hp c <| (Or.inr ∘ Or.inr) cf
      exact hp
  rcases h ⟨i.1, i.2.2⟩ with ⟨h1, h2⟩ | ⟨j, b', i_gt_zero, h1, h2, h3, h4⟩ | ⟨j1, j2, i_gt_zero, h1, h2, _, _, _⟩
  · rw [h1] at hb
    exact (assignmentsInvariant_of_strongAssignmentsInvariant f f_readyForRupAdd.2).2 i b hb p pf
  · rw [h2] at hb
    by_cases b = b'
    next b_eq_b' =>
      let j_unit := unit (insertRupUnits f units).1.rupUnits[j]
      have j_unit_def : j_unit = unit (insertRupUnits f units).1.rupUnits[j] := rfl
      have j_unit_in_insertRupUnits_res :
        ∃ i : PosFin n,
          (i, false) ∈ (insertRupUnits f units).1.rupUnits.toList ∧ unit (i, false) = j_unit ∨
          (i, true) ∈ (insertRupUnits f units).1.rupUnits.toList ∧ unit (i, true) = j_unit := by
        apply Exists.intro i
        rw [j_unit_def, h1]
        by_cases hb' : b'
        · rw [hb']
          apply Or.inr
          constructor
          · have h1 : (insertRupUnits f units).fst.rupUnits[j] = (i, true) := by
              rw [hb'] at h1
              rw [h1]
              simp only [Prod.mk.injEq, and_true]
              rfl
            rw [← h1]
            apply Array.getElem_mem_toList
          · rfl
        · simp only [Bool.not_eq_true] at hb'
          rw [hb']
          apply Or.inl
          constructor
          · have h1 : (insertRupUnits f units).fst.rupUnits[j] = (i, false) := by
              rw [hb'] at h1
              rw [h1]
              simp only [Prod.mk.injEq, and_true]
              rfl
            rw [← h1]
            apply Array.getElem_mem_toList
          · rfl
      specialize hp j_unit ((Or.inr ∘ Or.inl) j_unit_in_insertRupUnits_res)
      simp only [Fin.getElem_fin, j_unit] at hp
      simp only [Fin.getElem_fin] at h1
      rcases hp with ⟨i', hp⟩
      simp only [h1, Clause.toList, unit_eq, List.mem_singleton,
        Prod.mk.injEq] at hp
      rcases hp with ⟨hp1, hp2⟩ | ⟨hp1, hp2⟩
      · simp only [b_eq_b', ← hp1.2, Entails.eval]
        rw [hp1.1] at hp2
        exact hp2
      · simp only [b_eq_b', ← hp1.2, Entails.eval]
        rw [hp1.1] at hp2
        exact hp2
    next b_ne_b' =>
      apply (assignmentsInvariant_of_strongAssignmentsInvariant f f_readyForRupAdd.2).2 i b _ p pf
      have b'_def : b' = (decide ¬b = true) := by
        cases b <;> cases b' <;> simp at *
      rw [has_iff_has_add_complement, ← b'_def, hb]
  · let j1_unit := unit (insertRupUnits f units).1.rupUnits[j1]
    have j1_unit_def : j1_unit = unit (insertRupUnits f units).1.rupUnits[j1] := rfl
    have j1_unit_in_insertRupUnits_res :
      ∃ i : PosFin n,
        (i, false) ∈ (insertRupUnits f units).1.rupUnits.toList ∧ unit (i, false) = j1_unit ∨
        (i, true) ∈ (insertRupUnits f units).1.rupUnits.toList ∧ unit (i, true) = j1_unit := by
      apply Exists.intro i ∘ Or.inr
      rw [j1_unit_def, h1]
      constructor
      · have h1 : (insertRupUnits f units).fst.rupUnits[j1] = (i, true) := by
          rw [h1]
          simp only [Prod.mk.injEq, and_true]
          rfl
        rw [← h1]
        apply Array.getElem_mem_toList
      · rfl
    let j2_unit := unit (insertRupUnits f units).1.rupUnits[j2]
    have j2_unit_def : j2_unit = unit (insertRupUnits f units).1.rupUnits[j2] := rfl
    have j2_unit_in_insertRupUnits_res :
      ∃ i : PosFin n,
        (i, false) ∈ (insertRupUnits f units).1.rupUnits.toList ∧ unit (i, false) = j2_unit ∨
        (i, true) ∈ (insertRupUnits f units).1.rupUnits.toList ∧ unit (i, true) = j2_unit := by
      apply Exists.intro i ∘ Or.inl
      rw [j2_unit_def, h2]
      constructor
      · have h2 : (insertRupUnits f units).fst.rupUnits[j2] = (i, false) := by
          rw [h2]
          simp only [Prod.mk.injEq, and_true]
          rfl
        rw [← h2]
        apply Array.getElem_mem_toList
      · rfl
    have hp1 := hp j1_unit ((Or.inr ∘ Or.inl) j1_unit_in_insertRupUnits_res)
    have hp2 := hp j2_unit ((Or.inr ∘ Or.inl) j2_unit_in_insertRupUnits_res)
    simp only [Fin.getElem_fin, j1_unit, j2_unit] at hp1 hp2
    rcases hp1 with ⟨i1, hp1⟩
    rcases hp2 with ⟨i2, hp2⟩
    simp only [Fin.getElem_fin] at h1
    simp only [Fin.getElem_fin] at h2
    simp only [Clause.toList, h1, unit_eq, List.mem_cons, Prod.mk.injEq, Bool.false_eq_true,
      and_false, List.not_mem_nil, or_self, false_and, and_true, or_false, false_or, h2,
      Bool.true_eq_false] at hp1 hp2
    simp only [hp2.1, ← hp1.1, true_and] at hp2
    simp [hp1.2] at hp2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66745d1bb2d437fb4d1dad9c4d52328a43dd4910` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
