# restoreAssignments_performRupCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd8ccc70-4fc0-bbb3-9ac6-1d2cf96bff79",
  "kind": "theorem",
  "lexical_name": "restoreAssignments_performRupCheck",
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
  "slug": "restoreassignments-performrupcheck--2228cea99d3aca9437adc99d",
  "source": {
    "blob": "63a5c9bb7a4843b13273def96e793449214a2634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1138,
    "line": 1101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2228cea99d3aca9437adc99d618259c50d4d555460fbccae35757368f2964dcd",
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

Occurrence: `result:fd8ccc70-4fc0-bbb3-9ac6-1d2cf96bff79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1101–1138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restoreAssignments_performRupCheck {n : Nat} (f : DefaultFormula n) (f_assignments_size : f.assignments.size = n)
    (rupHints : Array Nat) :
    restoreAssignments (performRupCheck f rupHints).1.assignments (performRupCheck f rupHints).2.1
      =
    f.assignments := by
  rw [restoreAssignments]
  let f' := (performRupCheck f rupHints).1
  have f'_def : f' = (performRupCheck f rupHints).1 := rfl
  have f'_assignments_size : f'.assignments.size = n :=
    by rw [size_assignments_performRupCheck f rupHints, f_assignments_size]
  have derivedLits_satisfies_invariant := derivedLitsInvariant_performRupCheck f f_assignments_size rupHints f'_assignments_size
  simp only at derivedLits_satisfies_invariant
  generalize (performRupCheck f rupHints).2.1 = derivedLits at *
  rw [← f'_def, Array.foldl_toList]
  let derivedLits_arr : Array (Literal (PosFin n)) := {toList := derivedLits}
  have derivedLits_arr_def : derivedLits_arr = {toList := derivedLits} := rfl
  have derivedLits_arr_nodup := nodup_derivedLits f f_assignments_size rupHints f'_assignments_size derivedLits
    derivedLits_satisfies_invariant derivedLits_arr derivedLits_arr_def
  let motive := ClearInsertInductionMotive f f_assignments_size derivedLits_arr
  have h_base :=
    restoreAssignments_performRupCheck_base_case f f_assignments_size f' f'_def f'_assignments_size derivedLits
      derivedLits_arr derivedLits_arr_def derivedLits_satisfies_invariant derivedLits_arr_nodup
  have h_inductive (idx : Fin derivedLits_arr.size) (assignments : Array Assignment) (ih : motive idx.val assignments) :=
    clear_insert_inductive_case f f_assignments_size derivedLits_arr derivedLits_arr_nodup idx assignments ih
  rcases Array.foldl_induction motive h_base h_inductive with ⟨h_size, h⟩
  apply Array.ext
  · rw [← Array.foldl_toList, size_clearUnit_foldl f'.assignments clearUnit size_clearUnit derivedLits,
      f'_assignments_size, f_assignments_size]
  · intro i hi1 hi2
    rw [f_assignments_size] at hi2
    specialize h ⟨i, hi2⟩
    rcases h with ⟨h1, _⟩ | ⟨j, b, i_gt_zero, j_ge_derivedLits_size, _⟩ | ⟨j1, j2, i_gt_zero, j1_ge_derivedLits_size, _⟩
    · grind
    · exfalso
      exact (Nat.not_lt_of_le j_ge_derivedLits_size) j.2
    · exfalso
      exact (Nat.not_lt_of_le j1_ge_derivedLits_size) j1.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean#L1101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a5c9bb7a4843b13273def96e793449214a2634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
