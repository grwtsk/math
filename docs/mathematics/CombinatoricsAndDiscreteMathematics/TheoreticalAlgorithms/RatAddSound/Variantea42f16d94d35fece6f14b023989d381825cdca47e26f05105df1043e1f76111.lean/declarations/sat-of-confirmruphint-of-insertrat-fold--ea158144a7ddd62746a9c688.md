# sat_of_confirmRupHint_of_insertRat_fold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b719eb9cd21611662027394368a5f88b6d088b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a43b3926-2eb7-b5a9-0897-f6d56c1a71f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84e66317-c72b-f2b1-b5a9-d434f8a90bfb",
  "kind": "theorem",
  "lexical_name": "sat_of_confirmRupHint_of_insertRat_fold",
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
  "slug": "sat-of-confirmruphint-of-insertrat-fold--ea158144a7ddd62746a9c688",
  "source": {
    "blob": "38b719eb9cd21611662027394368a5f88b6d088b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 186,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea158144a7ddd62746a9c688a9a2ea8a2f3d87bde05f0f80e929bbb1f9314dbd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84e66317-c72b-f2b1-b5a9-d434f8a90bfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sat_of_confirmRupHint_of_insertRat_fold {n : Nat} (f : DefaultFormula n)
    (hf : f.ratUnits = #[] ∧ AssignmentsInvariant f) (c : DefaultClause n) (rupHints : Array Nat)
    (p : PosFin n → Bool) (pf : p ⊨ f) :
    let fc := insertRatUnits f (negate c)
    let confirmRupHint_fold_res := rupHints.foldl (confirmRupHint fc.1.clauses) (fc.1.assignments, [], false, false) 0 rupHints.size
    confirmRupHint_fold_res.2.2.1 = true → p ⊨ c := by
  intro fc confirmRupHint_fold_res confirmRupHint_success
  let motive := ConfirmRupHintFoldEntailsMotive fc.1
  have h_base : motive 0 (fc.fst.assignments, [], false, false) := by
    simp only [ConfirmRupHintFoldEntailsMotive, size_assignments_insertRatUnits, hf.2.1,
      Bool.false_eq_true, false_implies, and_true, true_and, motive, fc]
    have fc_satisfies_AssignmentsInvariant : AssignmentsInvariant fc.1 :=
      assignmentsInvariant_insertRatUnits f hf (negate c)
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
    have unsat_c_in_fc := mem_of_insertRatUnits f (negate c) unsat_c unsat_c_in_fc
    simp only [List.mem_map, Prod.exists, Bool.exists_bool] at unsat_c_in_fc
    rcases unsat_c_in_fc with ⟨v, ⟨v_in_neg_c, unsat_c_eq⟩ | ⟨v_in_neg_c, unsat_c_eq⟩⟩ | unsat_c_in_f
    · simp only [negate_eq, List.mem_map, Prod.exists, Bool.exists_bool] at v_in_neg_c
      rcases v_in_neg_c with ⟨v', ⟨_, v'_eq_v⟩ | ⟨v'_in_c, v'_eq_v⟩⟩
      · simp [Literal.negate] at v'_eq_v
      · simp only [Literal.negate, Bool.not_true, Prod.mk.injEq, and_true] at v'_eq_v
        simp only [(· ⊨ ·), Clause.eval] at p_unsat_c
        specialize pc v
        rw [v'_eq_v] at v'_in_c
        have pv := pc.2 v'_in_c
        grind
    · simp only [negate_eq, List.mem_map, Prod.exists, Bool.exists_bool] at v_in_neg_c
      rcases v_in_neg_c with ⟨v', ⟨v'_in_c, v'_eq_v⟩ | ⟨_, v'_eq_v⟩⟩
      · simp only [Literal.negate, Bool.not_false, Prod.mk.injEq, and_true] at v'_eq_v
        simp only [(· ⊨ ·), Clause.eval, List.any_eq_true, Prod.exists, ← unsat_c_eq,
          not_exists] at p_unsat_c
        specialize p_unsat_c v
        rw [Clause.unit_eq] at p_unsat_c
        simp only [List.mem_singleton] at p_unsat_c
        specialize pc v
        rw [v'_eq_v] at v'_in_c
        have pv := pc.1 v'_in_c
        grind
      · grind
    · grind [formulaEntails_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b719eb9cd21611662027394368a5f88b6d088b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
