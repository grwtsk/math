# sat_of_confirmRupHint_insertRup_fold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f62e5f5-f03d-c051-41b4-711fff0b0592",
  "kind": "theorem",
  "lexical_name": "sat_of_confirmRupHint_insertRup_fold",
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
  "slug": "sat-of-confirmruphint-insertrup-fold--d9300b4511784071077967d0",
  "source": {
    "blob": "66745d1bb2d437fb4d1dad9c4d52328a43dd4910",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 694,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9300b4511784071077967d01d4dc01d2f4002acb4f2290ccd2a3d8b0ac15060",
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

Occurrence: `result:6f62e5f5-f03d-c051-41b4-711fff0b0592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sat_of_confirmRupHint_insertRup_fold {n : Nat} (f : DefaultFormula n)
    (f_readyForRupAdd : ReadyForRupAdd f) (c : DefaultClause n) (rupHints : Array Nat)
    (p : PosFin n → Bool) (pf : p ⊨ f) :
    let fc := insertRupUnits f (negate c)
    let confirmRupHint_fold_res := rupHints.foldl (confirmRupHint fc.1.clauses) (fc.1.assignments, [], false, false) 0 rupHints.size
    confirmRupHint_fold_res.2.2.1 = true → p ⊨ c := by
  intro fc confirmRupHint_fold_res confirmRupHint_success
  let motive := ConfirmRupHintFoldEntailsMotive fc.1
  have h_base : motive 0 (fc.fst.assignments, [], false, false) := by
    simp only [ConfirmRupHintFoldEntailsMotive, size_assignments_insertRupUnits,
      f_readyForRupAdd.2.1, Bool.false_eq_true, false_implies, and_true, true_and, motive, fc]
    have fc_satisfies_AssignmentsInvariant :=
      assignmentsInvariant_insertRupUnits_of_assignmentsInvariant f f_readyForRupAdd (negate c)
    exact limplies_of_assignmentsInvariant fc.1 fc_satisfies_AssignmentsInvariant
  have h_inductive (idx : Fin rupHints.size) (acc : Array Assignment × CNF.Clause (PosFin n) × Bool × Bool) (ih : motive idx.1 acc) :=
    confirmRupHint_preserves_motive fc.1 rupHints idx acc ih
  rcases Array.foldl_induction motive h_base h_inductive with ⟨_, h1, h2⟩
  have fc_incompatible_confirmRupHint_fold_res := (h2 confirmRupHint_success)
  rw [Incompatible.symm] at fc_incompatible_confirmRupHint_fold_res
  have fc_unsat :=
    unsat_of_limplies_and_incompatible (PosFin n) fc.1 confirmRupHint_fold_res.1 h1 fc_incompatible_confirmRupHint_fold_res p
  by_cases pc : p ⊨ c
  · exact pc
  · exfalso -- Derive contradiction from pc, pf, and fc_unsat
    simp only [(· ⊨ ·), Clause.eval, List.any_eq_true, Prod.exists, Bool.exists_bool, not_exists,
      not_or, not_and, Bool.not_eq_true] at pc
    simp only [formulaEntails_def, List.all_eq_true, decide_eq_true_eq, Classical.not_forall,
      ] at fc_unsat
    rcases fc_unsat with ⟨unsat_c, unsat_c_in_fc, p_unsat_c⟩
    have unsat_c_in_fc := mem_of_insertRupUnits f (negate c) unsat_c unsat_c_in_fc
    simp only [List.mem_map, Prod.exists, Bool.exists_bool] at unsat_c_in_fc
    rcases unsat_c_in_fc with ⟨v, ⟨v_in_neg_c, unsat_c_eq⟩ | ⟨v_in_neg_c, unsat_c_eq⟩⟩ | unsat_c_in_f
    · simp only [negate_eq, List.mem_map, Prod.exists, Bool.exists_bool] at v_in_neg_c
      rcases v_in_neg_c with ⟨v', ⟨_, v'_eq_v⟩ | ⟨v'_in_c, v'_eq_v⟩⟩
      · simp [Literal.negate] at v'_eq_v
      · simp only [Literal.negate, Bool.not_true, Prod.mk.injEq, and_true] at v'_eq_v
        simp only [(· ⊨ ·), Clause.eval, List.any_eq_true, decide_eq_true_eq, Prod.exists,
          Bool.exists_bool, ← unsat_c_eq, not_exists, not_or, not_and] at p_unsat_c
        specialize p_unsat_c v
        rw [Clause.unit_eq] at p_unsat_c
        simp only [List.mem_singleton, forall_const, Prod.mk.injEq] at p_unsat_c
        simp only [Bool.not_eq_false] at p_unsat_c
        specialize pc v
        rw [v'_eq_v] at v'_in_c
        have pv := pc.2 v'_in_c
        simp only [p_unsat_c] at pv
        cases pv
    · simp only [negate_eq, List.mem_map, Prod.exists, Bool.exists_bool] at v_in_neg_c
      rcases v_in_neg_c with ⟨v', ⟨v'_in_c, v'_eq_v⟩ | ⟨_, v'_eq_v⟩⟩
      · simp only [Literal.negate, Bool.not_false, Prod.mk.injEq, and_true] at v'_eq_v
        simp only [(· ⊨ ·), Clause.eval, List.any_eq_true, decide_eq_true_eq, Prod.exists,
          Bool.exists_bool, ← unsat_c_eq, not_exists, not_or, not_and] at p_unsat_c
        specialize p_unsat_c v
        rw [Clause.unit_eq] at p_unsat_c
        simp only [List.mem_singleton, forall_const, Prod.mk.injEq] at p_unsat_c
        specialize pc v
        rw [v'_eq_v] at v'_in_c
        have pv := pc.1 v'_in_c
        simp only [p_unsat_c] at pv
        cases pv
      · grind [Literal.negate]
    · grind [formulaEntails_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66745d1bb2d437fb4d1dad9c4d52328a43dd4910` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
