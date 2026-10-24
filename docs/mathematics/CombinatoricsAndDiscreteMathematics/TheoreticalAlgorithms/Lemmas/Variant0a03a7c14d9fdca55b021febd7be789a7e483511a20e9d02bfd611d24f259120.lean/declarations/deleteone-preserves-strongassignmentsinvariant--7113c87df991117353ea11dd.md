# deleteOne_preserves_strongAssignmentsInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a5a6407-fec4-d8bb-d8eb-d56eb38c2124",
  "kind": "theorem",
  "lexical_name": "deleteOne_preserves_strongAssignmentsInvariant",
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
  "slug": "deleteone-preserves-strongassignmentsinvariant--7113c87df991117353ea11dd",
  "source": {
    "blob": "70e58e5f969a920f53cfdf6fa2cc207c2a42f132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 369,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7113c87df991117353ea11dd6d8770f6e51f3dcd052b05792d1385ba2c96069f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a5a6407-fec4-d8bb-d8eb-d56eb38c2124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deleteOne_preserves_strongAssignmentsInvariant {n : Nat} (f : DefaultFormula n) (id : Nat) :
    StrongAssignmentsInvariant f → StrongAssignmentsInvariant (deleteOne f id) := by
  intro hf
  rcases hf with ⟨hsize, hf⟩
  have hsize' : (deleteOne f id).assignments.size = n := by
    simp only [← hsize]
    exact deleteOne_preserves_assignments_size f id
  apply Exists.intro hsize'
  intro i b hb
  have i_in_bounds : i.1 < f.assignments.size := by rw [hsize]; exact i.2.2
  simp only [deleteOne]
  match heq : f.clauses[id]! with
  | none =>
    simp only
    simp only [deleteOne, heq] at hb
    exact hf i b hb
  | some c =>
    by_cases hl : ∃ l : Literal (PosFin n), c = unit l
    · rcases hl with ⟨l, hl⟩
      simp only [unit] at hl
      simp only [hl]
      simp only [deleteOne, heq, hl] at hb
      by_cases l.1.1 = i.1
      next l_eq_i =>
        simp only [l_eq_i, Array.getElem_modify_self] at hb
        have l_ne_b : l.2 ≠ b := by grind [not_has_remove]
        replace l_ne_b := Bool.eq_not_of_ne l_ne_b
        simp only [l_ne_b] at hb
        have hb := has_remove_irrelevant f.assignments[i.1] b hb
        specialize hf i b hb
        simp only [toList, List.append_assoc, List.mem_append, List.mem_filterMap, id_eq,
          exists_eq_right, List.mem_map, Prod.exists, Bool.exists_bool] at hf
        simp only [toList, List.append_assoc, List.mem_append, List.mem_filterMap, id_eq,
          exists_eq_right, List.mem_map, Prod.exists, Bool.exists_bool]
        rcases hf with hf | hf
        · apply Or.inl
          simp only [Array.set!, Array.setIfInBounds]
          split
          · rcases List.getElem_of_mem hf with ⟨idx, hbound, hidx⟩
            have idx_in_bounds : idx < List.length (List.set f.clauses.toList id none) := by grind
            rw [List.mem_iff_get]
            apply Exists.intro ⟨idx, idx_in_bounds⟩
            grind [unit]
          · exact hf
        · exact Or.inr hf
      next l_ne_i =>
        simp only [Array.getElem_modify_of_ne l_ne_i] at hb
        specialize hf i b hb
        simp only [toList, List.append_assoc, List.mem_append, List.mem_filterMap, id_eq,
          exists_eq_right, List.mem_map, Prod.exists, Bool.exists_bool] at hf
        simp only [toList, List.append_assoc, List.mem_append, List.mem_filterMap, id_eq,
          exists_eq_right, List.mem_map, Prod.exists, Bool.exists_bool]
        rcases hf with hf | hf
        · apply Or.inl
          simp only [Array.set!, Array.setIfInBounds]
          split
          · rcases List.getElem_of_mem hf with ⟨idx, hbound, hidx⟩
            rw [List.mem_iff_get]
            have idx_in_bounds : idx < List.length (List.set f.clauses.toList id none) := by grind
            apply Exists.intro ⟨idx, idx_in_bounds⟩
            grind [unit]
          · exact hf
        · exact Or.inr hf
    · simp only [Prod.exists, Bool.exists_bool, not_exists, not_or, unit] at hl
      split
      next some_eq_none => simp at some_eq_none
      next l _ _ heq =>
        simp only [Option.some.injEq] at heq
        rw [heq] at hl
        specialize hl l.1
        simp only [DefaultClause.mk.injEq, List.cons.injEq, and_true] at hl
        by_cases hl2 : l.2
        · simp only [← hl2, not_true, and_false] at hl
        · simp only [Bool.not_eq_true] at hl2
          simp only [← hl2, not_true, false_and] at hl
      · have deleteOne_f_rw : deleteOne f id = ⟨Array.set! f.clauses id none, f.rupUnits, f.ratUnits, f.assignments⟩ := by
          simp only [deleteOne]
          grind
        simp only [deleteOne_f_rw] at hb
        specialize hf i b hb
        simp only [toList, List.append_assoc, List.mem_append, List.mem_filterMap, id_eq,
          exists_eq_right, List.mem_map, Prod.exists, Bool.exists_bool] at hf
        simp only [toList, List.append_assoc, List.mem_append, List.mem_filterMap, id_eq,
          exists_eq_right, List.mem_map, Prod.exists, Bool.exists_bool]
        rcases hf with hf | hf
        · left
          by_cases hid : id < f.clauses.size
          · rw [Array.mem_toList_iff] at hf ⊢
            rcases Array.getElem_of_mem hf with ⟨idx, hbound, hidx⟩
            simp only [Array.set!_eq_setIfInBounds, Array.setIfInBounds_def, hid, ↓reduceDIte]
            rw [Array.mem_iff_getElem]
            exists idx, (by simp [hbound])
            by_cases id_eq_idx : id = idx
            · exfalso
              subst id_eq_idx
              simp only [hid, getElem!_pos, hidx, Option.some.injEq] at heq
              rw [← heq] at hl
              specialize hl i
              cases b <;> simp [unit] at hl
            · rw [Array.getElem_set_ne hid hbound id_eq_idx]
              exact hidx
          · rw [Array.set!_eq_setIfInBounds, Array.setIfInBounds_eq_of_size_le (h := by omega)]
            exact hf
        · exact Or.inr hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e58e5f969a920f53cfdf6fa2cc207c2a42f132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
