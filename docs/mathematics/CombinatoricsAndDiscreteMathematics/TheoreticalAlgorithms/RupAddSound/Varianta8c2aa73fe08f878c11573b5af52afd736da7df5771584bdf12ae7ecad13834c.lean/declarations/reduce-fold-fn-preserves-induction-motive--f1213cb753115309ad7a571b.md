# reduce_fold_fn_preserves_induction_motive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e9cbe11-4854-58b0-d7b1-6b5840a6b26a",
  "kind": "theorem",
  "lexical_name": "reduce_fold_fn_preserves_induction_motive",
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
  "slug": "reduce-fold-fn-preserves-induction-motive--f1213cb753115309ad7a571b",
  "source": {
    "blob": "66745d1bb2d437fb4d1dad9c4d52328a43dd4910",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 412,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1213cb753115309ad7a571b5f9cf0a271e4ac072f4e1cf50b69f25dc5da84e5",
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

Occurrence: `result:5e9cbe11-4854-58b0-d7b1-6b5840a6b26a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_fold_fn_preserves_induction_motive {c_arr : Array (Literal (PosFin n))}
    {assignment : Array Assignment}
    (idx : Fin c_arr.size) (res : ReduceResult (PosFin n))
    (ih : ReducePostconditionInductionMotive c_arr assignment idx.1 res) :
  ReducePostconditionInductionMotive c_arr assignment (idx.1 + 1) (reduce_fold_fn assignment res c_arr[idx]) := by
  simp only [ReducePostconditionInductionMotive, Fin.getElem_fin, forall_exists_index, and_imp, Prod.forall]
  constructor
  · intro h p
    rw [reduce_fold_fn.eq_def] at h
    split at h
    · grind
    · split at h
      next heq =>
        split at h
        · grind
        next c_arr_idx_eq_false =>
          simp only [Bool.not_eq_true] at c_arr_idx_eq_false
          rcases ih.1 rfl p with ih1 | ih1
          · by_cases p ⊨ assignment
            next p_entails_assignment =>
              apply Or.inl
              intro i i_lt_idx_add_one p_entails_c_arr_i
              rcases Nat.lt_or_eq_of_le <| Nat.le_of_lt_succ i_lt_idx_add_one with i_lt_idx | i_eq_idx
              · exact ih1 i i_lt_idx p_entails_c_arr_i
              · simp only [(· ⊨ ·), i_eq_idx, c_arr_idx_eq_false] at p_entails_c_arr_i
                simp only [(· ⊨ ·), Bool.not_eq_true] at p_entails_assignment
                specialize p_entails_assignment c_arr[idx.1].1
                simp +decide only [p_entails_c_arr_i, decide_true, heq] at p_entails_assignment
            next h =>
              exact Or.inr h
          · exact Or.inr ih1
      next heq =>
        split at h
        · simp at h
        next c_arr_idx_eq_false =>
          simp only [Bool.not_eq_true', Bool.not_eq_false] at c_arr_idx_eq_false
          rcases ih.1 rfl p with ih1 | ih1
          · by_cases p ⊨ assignment
            next p_entails_assignment =>
              apply Or.inl
              intro i i_lt_idx_add_one p_entails_c_arr_i
              rcases Nat.lt_or_eq_of_le <| Nat.le_of_lt_succ i_lt_idx_add_one with i_lt_idx | i_eq_idx
              · exact ih1 i i_lt_idx p_entails_c_arr_i
              · simp only [(· ⊨ ·), i_eq_idx, c_arr_idx_eq_false] at p_entails_c_arr_i
                simp only [(· ⊨ ·), Bool.not_eq_true] at p_entails_assignment
                specialize p_entails_assignment c_arr[idx.1].1
                simp +decide only [p_entails_c_arr_i, heq] at p_entails_assignment
            next h =>
              exact Or.inr h
          · exact Or.inr ih1
      · grind
      · grind
    · grind
    · grind
  · intro i b h p hp j j_lt_idx_add_one p_entails_c_arr_j
    rw [reduce_fold_fn.eq_def] at h
    split at h
    · grind
    · split at h
      next heq =>
        split at h
        next c_arr_idx_eq_true =>
          simp only [reducedToUnit.injEq] at h
          simp only [h] at c_arr_idx_eq_true
          simp only [(· ⊨ ·), Bool.not_eq_true] at hp
          specialize hp c_arr[idx.val].1
          rw [heq] at hp
          by_cases p c_arr[idx.val].1
          next p_c_arr_idx_eq_true =>
            simp only [h] at p_c_arr_idx_eq_true
            simp only [(· ⊨ ·), c_arr_idx_eq_true, p_c_arr_idx_eq_true]
          next p_c_arr_idx_eq_false =>
            simp only [h, Bool.not_eq_true] at p_c_arr_idx_eq_false
            simp +decide only [h, p_c_arr_idx_eq_false] at hp
        · grind
      next heq =>
        split at h
        next c_arr_idx_eq_true =>
          simp only [reducedToUnit.injEq] at h
          simp only [h, Bool.not_eq_true'] at c_arr_idx_eq_true
          simp only [(· ⊨ ·), Bool.not_eq_true] at hp
          specialize hp c_arr[idx.val].1
          rw [heq] at hp
          by_cases p c_arr[idx.val].1
          next p_c_arr_idx_eq_true =>
            simp only [h] at p_c_arr_idx_eq_true
            simp +decide only [h, p_c_arr_idx_eq_true] at hp
          next p_c_arr_idx_eq_false =>
            simp only [h] at p_c_arr_idx_eq_false
            simp only [(· ⊨ ·), c_arr_idx_eq_true, p_c_arr_idx_eq_false]
        · grind
      · grind
      · simp only [reducedToUnit.injEq] at h
        rw [← h]
        rcases Nat.lt_or_eq_of_le <| Nat.le_of_lt_succ j_lt_idx_add_one with j_lt_idx | j_eq_idx
        · exfalso
          rcases ih.1 rfl p with ih1 | ih1
          · exact ih1 j j_lt_idx p_entails_c_arr_j
          · exact ih1 hp
        · grind
    next l =>
      split at h
      next heq =>
        split at h
        · grind
        next c_arr_idx_eq_false =>
          simp only [Bool.not_eq_true] at c_arr_idx_eq_false
          simp only [reducedToUnit.injEq] at h
          rcases Nat.lt_or_eq_of_le <| Nat.le_of_lt_succ j_lt_idx_add_one with j_lt_idx | j_eq_idx
          · rw [← h]
            have ih2_precondition : ∃ i : Fin c_arr.size, i.val < idx.val ∧ (p ⊨ c_arr[i]) :=
              (Exists.intro j ∘ And.intro j_lt_idx) p_entails_c_arr_j
            exact ih.2 l rfl p hp ih2_precondition
          · simp only [j_eq_idx, (· ⊨ ·), c_arr_idx_eq_false] at p_entails_c_arr_j
            simp only [(· ⊨ ·), Bool.not_eq_true] at hp
            specialize hp c_arr[idx.1].1
            simp +decide only [p_entails_c_arr_j, decide_true, heq] at hp
      next heq =>
        split at h
        · grind
        next c_arr_idx_eq_true =>
          simp only [Bool.not_eq_true', Bool.not_eq_false] at c_arr_idx_eq_true
          simp only [reducedToUnit.injEq] at h
          rcases Nat.lt_or_eq_of_le <| Nat.le_of_lt_succ j_lt_idx_add_one with j_lt_idx | j_eq_idx
          · rw [← h]
            have ih2_precondition : ∃ i : Fin c_arr.size, i.val < idx.val ∧ (p ⊨ c_arr[i]) :=
              (Exists.intro j ∘ And.intro j_lt_idx) p_entails_c_arr_j
            exact ih.2 l rfl p hp ih2_precondition
          · simp only [j_eq_idx, (· ⊨ ·), c_arr_idx_eq_true] at p_entails_c_arr_j
            simp only [(· ⊨ ·), Bool.not_eq_true] at hp
            specialize hp c_arr[idx.1].1
            simp +decide only [p_entails_c_arr_j, heq] at hp
      · grind
      · grind
    · grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66745d1bb2d437fb4d1dad9c4d52328a43dd4910` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
