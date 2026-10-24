# sat_of_insertRat

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
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9bf799a-4a45-47be-cef5-0b065684c0a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f882077-164a-5f9b-8a87-a4867fe1a1e9",
  "kind": "theorem",
  "lexical_name": "sat_of_insertRat",
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
  "slug": "sat-of-insertrat--552a9b8fe7608c1f8d0e1056",
  "source": {
    "blob": "38b719eb9cd21611662027394368a5f88b6d088b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:552a9b8fe7608c1f8d0e1056c82487f9be880f93b8a9277f26356d768741f7aa",
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

Occurrence: `result:2f882077-164a-5f9b-8a87-a4867fe1a1e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sat_of_insertRat {n : Nat} (f : DefaultFormula n)
    (hf : f.ratUnits = #[] ∧ AssignmentsInvariant f) (c : DefaultClause n) (p : PosFin n → Bool)
    (pf : p ⊨ f) :
    (insertRatUnits f (negate c)).2 = true → p ⊨ c := by
  simp only [insertRatUnits]
  intro insertUnit_fold_success
  rcases contradiction_of_insertUnit_fold_success f.assignments hf.2.1 f.ratUnits false (negate c) (by intro; contradiction)
    insertUnit_fold_success with ⟨i, hboth⟩
  have i_in_bounds : i.1 < f.assignments.size := by rw [hf.2.1]; exact i.2.2
  have h0 : InsertUnitInvariant f.assignments hf.2.1 f.ratUnits f.assignments hf.2.1 := by
    intro i
    simp only [Fin.getElem_fin, ne_eq, true_and, Bool.not_eq_true, exists_and_right]
    apply Or.inl
    intro j
    rw [hf.1] at j
    exact Fin.elim0 j
  have insertUnit_fold_satisfies_invariant := insertUnitInvariant_insertUnit_fold f.assignments hf.2.1 f.ratUnits
    f.assignments hf.2.1 false (negate c) h0
  rcases insertUnit_fold_satisfies_invariant ⟨i.1, i.2.2⟩ with ⟨h1, h2⟩ | ⟨j, b, i_gt_zero, h1, h2, h3, h4⟩ |
    ⟨j1, j2, i_gt_zero, h1, h2, _, _, _⟩
  · rw [h1] at hboth
    simp only at hboth
    have hpos : hasAssignment true (f.assignments[i.1]'i_in_bounds) = true := by simp only [hboth]; decide
    have hneg : hasAssignment false (f.assignments[i.1]'i_in_bounds) = true := by simp only [hboth]; decide
    have p_entails_i_true := hf.2.2 i true hpos p pf
    have p_entails_i_false := hf.2.2 i false hneg p pf
    simp only [Entails.eval] at p_entails_i_true p_entails_i_false
    simp [p_entails_i_true] at p_entails_i_false
  · simp only [(· ⊨ ·), Clause.eval, List.any_eq_true, Prod.exists, Bool.exists_bool, Bool.decide_coe]
    apply Exists.intro i
    have ib_in_insertUnit_fold : (i, b) ∈ (List.foldl insertUnit (f.ratUnits, f.assignments, false) (negate c)).1.toList := by
      have i_rw : i = ⟨i.1, i.2⟩ := rfl
      rw [i_rw, ← h1]
      apply List.get_mem
    have ib_in_insertUnit_fold := mem_insertUnit_fold_units f.ratUnits f.assignments false (negate c) (i, b) ib_in_insertUnit_fold
    simp only [negate, Literal.negate, List.mem_map, Prod.mk.injEq, Prod.exists, Bool.exists_bool,
      Bool.not_false, Bool.not_true, hf.1, List.toList_toArray, List.not_mem_nil, or_false]
      at ib_in_insertUnit_fold
    rw [hboth] at h2
    rcases ib_in_insertUnit_fold with ⟨i', ⟨i_false_in_c, i'_eq_i, b_eq_true⟩ | ⟨i_true_in_c, i'_eq_i, b_eq_false⟩⟩
    · apply Or.inl
      rw [i'_eq_i] at i_false_in_c
      apply And.intro i_false_in_c
      simp only [addAssignment, ← b_eq_true, addPosAssignment, ite_true] at h2
      split at h2
      · simp at h2
      next heq =>
        have hasNegAssignment_fi : hasAssignment false (f.assignments[i.1]'i_in_bounds) := by
          simp +decide only [hasAssignment, hasPosAssignment, heq]
        have p_entails_i := hf.2.2 i false hasNegAssignment_fi p pf
        simp only [(· ⊨ ·)] at p_entails_i
        simp only [p_entails_i, decide_true]
      next heq =>
        exfalso
        rw [heq] at h3
        exact h3 (has_both b)
      · simp at h2
    · apply Or.inr
      rw [i'_eq_i] at i_true_in_c
      apply And.intro i_true_in_c
      simp only [addAssignment, ← b_eq_false, addNegAssignment, ite_false, reduceCtorEq] at h2
      split at h2
      next heq =>
        have hasPosAssignment_fi : hasAssignment true (f.assignments[i.1]'i_in_bounds) := by
          simp only [hasAssignment, hasPosAssignment, ite_true, heq]
        have p_entails_i := hf.2.2 i true hasPosAssignment_fi p pf
        simp only [(· ⊨ ·)] at p_entails_i
        exact p_entails_i
      · simp at h2
      next heq =>
        exfalso
        rw [heq] at h3
        exact h3 (has_both b)
      · simp at h2
  · exfalso
    have i_true_in_insertUnit_fold : (i, true) ∈ (List.foldl insertUnit (f.ratUnits, f.assignments, false) (negate c)).1.toList := by
      have i_rw : i = ⟨i.1, i.2⟩ := rfl
      rw [i_rw, ← h1]
      apply List.get_mem
    have i_false_in_insertUnit_fold : (i, false) ∈ (List.foldl insertUnit (f.ratUnits, f.assignments, false) (negate c)).1.toList := by
      have i_rw : i = ⟨i.1, i.2⟩ := rfl
      rw [i_rw, ← h2]
      apply List.get_mem
    simp only [hf.1, negate] at i_true_in_insertUnit_fold i_false_in_insertUnit_fold
    have i_true_in_insertUnit_fold :=
      mem_insertUnit_fold_units #[] f.assignments false (c.clause.map Literal.negate) (i, true) i_true_in_insertUnit_fold
    have i_false_in_insertUnit_fold :=
      mem_insertUnit_fold_units #[] f.assignments false (c.clause.map Literal.negate) (i, false) i_false_in_insertUnit_fold
    simp only [Literal.negate, List.mem_map, Prod.mk.injEq, Bool.not_eq_true', Prod.exists,
      exists_eq_right_right, exists_eq_right, List.not_mem_nil, or_false,
      Bool.not_eq_false'] at i_true_in_insertUnit_fold i_false_in_insertUnit_fold
    have c_not_tautology := Clause.not_tautology c (i, true)
    simp only [Clause.toList] at c_not_tautology
    rcases c_not_tautology with i_true_not_in_c | i_false_not_in_c
    · exact i_true_not_in_c i_false_in_insertUnit_fold
    · exact i_false_not_in_c i_true_in_insertUnit_fold

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b719eb9cd21611662027394368a5f88b6d088b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
