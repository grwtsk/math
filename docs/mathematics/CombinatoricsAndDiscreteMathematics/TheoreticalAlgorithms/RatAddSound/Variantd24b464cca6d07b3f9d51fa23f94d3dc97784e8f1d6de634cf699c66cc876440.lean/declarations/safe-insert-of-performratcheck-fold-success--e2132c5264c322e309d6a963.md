# safe_insert_of_performRatCheck_fold_success

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17b2b27a-46ba-7c95-9230-65ff06d3f904",
  "kind": "theorem",
  "lexical_name": "safe_insert_of_performRatCheck_fold_success",
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
  "slug": "safe-insert-of-performratcheck-fold-success--e2132c5264c322e309d6a963",
  "source": {
    "blob": "0ba143a5e2f63cd00abe496a1a92efba4f69e737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 484,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2132c5264c322e309d6a963fb359133f53f5b90c1e1db7cf5accca6bf139b66",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17b2b27a-46ba-7c95-9230-65ff06d3f904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem safe_insert_of_performRatCheck_fold_success {n : Nat} (f : DefaultFormula n)
    (f_readyForRatAdd : ReadyForRatAdd f) (c : DefaultClause n) (pivot : Literal (PosFin n))
    (rupHints : Array Nat) (ratHints : Array (Nat × Array Nat))
    (pivot_in_c : pivot ∈ Clause.toList c)
    (ratHintsExhaustive_eq_true : ratHintsExhaustive f pivot ratHints = true)
    (performRatCheck_fold_success :
      (Array.foldl
        (fun x ratHint => if x.2 = true then performRatCheck x.1 (Literal.negate pivot) ratHint else (x.1, false))
        ((performRupCheck (insertRupUnits f (negate c)).1 rupHints).1, true) ratHints 0 (Array.size ratHints)).2 = true) :
    Equisat (PosFin n) f (insert f c) := by
  constructor
  · intro h p pfc
    specialize h p
    simp only [(· ⊨ ·), List.all_eq_true, decide_eq_true_eq, Classical.not_forall,
      exists_prop] at h pfc
    rcases h with ⟨c', c'_in_f, pc'⟩
    have c'_in_fc : c' ∈ toList (insert f c) := by rw [insert_iff]; exact Or.inr c'_in_f
    exact pc' <| pfc c' c'_in_fc
  · intro fc_unsat p pf
    by_cases pc : p ⊨ c
    · specialize fc_unsat p
      simp only [(· ⊨ ·),
        Bool.decide_coe, List.all_eq_true, Classical.not_forall, exists_prop] at fc_unsat
      rcases fc_unsat with ⟨c', c'_in_fc, pc'⟩
      rw [insert_iff] at c'_in_fc
      rcases c'_in_fc with c'_eq_c | c'_in_f
      · simp only [c'_eq_c] at pc'
        exact pc' pc
      · simp only [(· ⊨ ·),
          Bool.decide_coe, List.all_eq_true] at pf
        exact pc' <| pf c' c'_in_f
    · rw [← Clause.limplies_iff_mem] at pivot_in_c
      let p' : (PosFin n) → Bool := fun a => if a = pivot.1 then pivot.2 else p a
      have p'_entails_c : p' ⊨ c := by
        specialize pivot_in_c p'
        simp only [(· ⊨ ·), ite_eq_left_iff, not_true, false_implies, forall_const, p'] at pivot_in_c
        exact pivot_in_c
      specialize fc_unsat p'
      simp only [formulaEntails_def, List.all_eq_true, decide_eq_true_eq, Classical.not_forall,
        ] at fc_unsat
      rcases fc_unsat with ⟨c', c'_in_fc, p'_not_entails_c'⟩
      simp only [insert_iff] at c'_in_fc
      rcases c'_in_fc with c'_eq_c | c'_in_f
      · rw [← c'_eq_c] at p'_entails_c
        exact p'_not_entails_c' p'_entails_c
      · have pc' : p ⊨ c' := by
          rw [DefaultFormula.formulaEntails_def, List.all_eq_true] at pf
          exact of_decide_eq_true <| pf c' c'_in_f
        have negPivot_in_c' : Literal.negate pivot ∈ Clause.toList c' := mem_of_necessary_assignment pc' p'_not_entails_c'
        have h : p ⊨ (c'.delete (Literal.negate pivot)) := by
          rcases existsRatHint_of_ratHintsExhaustive f f_readyForRatAdd pivot ratHints
            ratHintsExhaustive_eq_true c' c'_in_f negPivot_in_c' with ⟨i, hc'⟩
          have h_performRupCheck_res :
            (performRupCheck (insertRupUnits f (negate c)).fst rupHints).fst.ratUnits = #[] ∧
            (performRupCheck (insertRupUnits f (negate c)).fst rupHints).fst.assignments.size = n := by
            simp only [ratUnits_performRupCheck, ratUnits_insertRupUnits, f_readyForRatAdd.1,
              size_assignments_performRupCheck, size_assignments_insertRupUnits, f_readyForRatAdd.2.2.1, and_self]
          have performRatCheck_success :=
            performRatCheck_success_of_performRatCheck_fold_success (performRupCheck (insertRupUnits f (negate c)).1 rupHints).1
              h_performRupCheck_res (Literal.negate pivot) ratHints i performRatCheck_fold_success
          have performRupCheck_res_satisfies_AssignmentsInvariant :
            AssignmentsInvariant (performRupCheck (insertRupUnits f (negate c)).1 rupHints).1 := by
            apply assignmentsInvariant_performRupCheck_of_assignmentsInvariant (insertRupUnits f (negate c)).1
            apply assignmentsInvariant_insertRupUnits_of_assignmentsInvariant f f_readyForRatAdd.2
          have h :=
            c_without_negPivot_of_performRatCheck_success (performRupCheck (insertRupUnits f (negate c)).fst rupHints).1
              ⟨h_performRupCheck_res.1, performRupCheck_res_satisfies_AssignmentsInvariant⟩ (Literal.negate pivot) ratHints[i]
              performRatCheck_success
          simp only [clauses_performRupCheck, clauses_insertRupUnits, Fin.getElem_fin] at h
          apply h c' hc' p
          simp only [(· ⊨ ·), Clause.eval]
          simp only [List.any_eq_true, Prod.exists, Bool.exists_bool,
            decide_eq_true_eq, List.all_eq_true, decide_eq_true_eq]
          intro c'' hc''
          simp only [toList, clauses_performRupCheck, rupUnits_performRupCheck,
            ratUnits_performRupCheck] at hc''
          rw [← toList] at hc''
          have hc'' := mem_of_insertRupUnits f (negate c) c'' hc''
          rcases hc'' with c''_in_negc | c''_in_f
          · simp only [(· ⊨ ·), Clause.eval] at pc
            simp only [List.any_eq_true, decide_eq_true_eq, Prod.exists, Bool.exists_bool, not_exists,
              not_or, not_and, Clause.toList, DefaultClause.toList] at pc
            simp only [negate, Literal.negate, List.map_map, List.mem_map, Function.comp_apply, Prod.exists,
              Bool.exists_bool, Bool.not_false, Bool.not_true] at c''_in_negc
            rcases c''_in_negc with ⟨l, ⟨l_in_negc, l_def⟩ | ⟨l_in_negc, l_def⟩⟩
            · apply Exists.intro l ∘ Or.inr
              simp only [← l_def, Clause.unit_eq, List.mem_singleton, true_and]
              have h := (pc l).1 l_in_negc
              simp only [Bool.not_eq_false] at h
              assumption
            · apply Exists.intro l ∘ Or.inl
              simp only [← l_def, Clause.unit_eq, List.mem_singleton, true_and]
              have h := (pc l).2 l_in_negc
              simp only [Bool.not_eq_true] at h
              assumption
          · simp only [(· ⊨ ·), Clause.eval] at pf
            simp only [List.any_eq_true, Prod.exists, Bool.exists_bool, decide_eq_true_eq, List.all_eq_true] at pf
            apply pf
            assumption
        have p'_entails_c'_del_negPivot : p' ⊨ c'.delete (Literal.negate pivot) := entails_of_irrelevant_assignment h
        exact p'_not_entails_c' <| Clause.entails_of_entails_delete p'_entails_c'_del_negPivot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ba143a5e2f63cd00abe496a1a92efba4f69e737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
