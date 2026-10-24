# restoreAssignments_performRupCheck_base_case

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe8acc5a5be5740e022569f4427ed8c3582f9bdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1013,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d7e5560-a8cb-ee29-a794-92ec7aaae874",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62d8d0a6-2a71-2fb6-63e6-c833f8075053",
  "kind": "theorem",
  "lexical_name": "restoreAssignments_performRupCheck_base_case",
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
  "slug": "restoreassignments-performrupcheck-base-case--940ed0d983540472fc2aa58e",
  "source": {
    "blob": "fe8acc5a5be5740e022569f4427ed8c3582f9bdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1092,
    "line": 1013,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:940ed0d983540472fc2aa58e45e31df5b51915d7204660db4840562764a673ac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62d8d0a6-2a71-2fb6-63e6-c833f8075053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1013–1092.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restoreAssignments_performRupCheck_base_case {n : Nat} (f : DefaultFormula n)
    (f_assignments_size : f.assignments.size = n)
    (f' : DefaultFormula n) (_f'_def : f' = (performRupCheck f rupHints).1)
    (f'_assignments_size : f'.assignments.size = n) (derivedLits : CNF.Clause (PosFin n))
    (derivedLits_arr : Array (Literal (PosFin n)))
    (derivedLits_arr_def : derivedLits_arr = {toList := derivedLits})
    (derivedLits_satisfies_invariant :
      DerivedLitsInvariant f f_assignments_size f'.assignments f'_assignments_size derivedLits)
    (_derivedLits_arr_nodup : ∀ (i j : Fin (Array.size derivedLits_arr)), i ≠ j → derivedLits_arr[i] ≠ derivedLits_arr[j]) :
    ClearInsertInductionMotive f f_assignments_size derivedLits_arr 0 f'.assignments := by
  apply Exists.intro f'_assignments_size
  intro i
  specialize derivedLits_satisfies_invariant i
  rcases derivedLits_satisfies_invariant with ⟨h1, h2⟩ | ⟨j, j_eq_i, h1, h2, h3⟩ |
    ⟨j1, j2, j1_eq_i, j2_eq_i, j1_eq_true, j2_eq_false, h1, h2, h3⟩
  · apply Or.inl
    constructor
    · exact h1
    · intro j _
      have idx_in_list : derivedLits_arr[j] ∈ derivedLits := by
        simp only [derivedLits_arr_def, Fin.getElem_fin]
        grind
      grind
  · apply Or.inr ∘ Or.inl
    have j_lt_derivedLits_arr_size : j.1 < derivedLits_arr.size := by
      simp only [derivedLits_arr_def, List.size_toArray]
      exact j.2
    have i_gt_zero : i.1 > 0 := by rw [← j_eq_i]; exact (List.get derivedLits j).1.2.1
    refine ⟨⟨j.1, j_lt_derivedLits_arr_size⟩, List.get derivedLits j |>.2, i_gt_zero, ?_⟩
    constructor
    · apply Nat.zero_le
    · constructor
      · simp only [derivedLits_arr_def, Fin.getElem_fin, ← j_eq_i]
        rfl
      · apply And.intro h1 ∘ And.intro h2
        intro k _ k_ne_j
        have k_in_bounds : k < derivedLits.length := by
          have k_property := k.2
          grind
        have k_ne_j : ⟨k.1, k_in_bounds⟩ ≠ j := by
          apply Fin.ne_of_val_ne
          simp only
          exact Fin.val_ne_of_ne k_ne_j
        simp only [Fin.getElem_fin, ne_eq, derivedLits_arr_def]
        exact h3 ⟨k.1, k_in_bounds⟩ k_ne_j
  · apply Or.inr ∘ Or.inr
    have j1_lt_derivedLits_arr_size : j1.1 < derivedLits_arr.size := by
      simp only [derivedLits_arr_def, List.size_toArray]
      exact j1.2
    have j2_lt_derivedLits_arr_size : j2.1 < derivedLits_arr.size := by
      simp only [derivedLits_arr_def, List.size_toArray]
      exact j2.2
    have i_gt_zero : i.1 > 0 := by rw [← j1_eq_i]; exact (List.get derivedLits j1).1.2.1
    refine ⟨⟨j1.1, j1_lt_derivedLits_arr_size⟩,
            ⟨j2.1, j2_lt_derivedLits_arr_size⟩,
            i_gt_zero, Nat.zero_le j1.1, Nat.zero_le j2.1, ?_⟩
    constructor
    · simp only [derivedLits_arr_def, Fin.getElem_fin, ← j1_eq_i]
      rw [← j1_eq_true]
      rfl
    · constructor
      · simp only [derivedLits_arr_def, Fin.getElem_fin, ← j2_eq_i]
        rw [← j2_eq_false]
        rfl
      · apply And.intro h1 ∘ And.intro h2
        intro k _ k_ne_j1 k_ne_j2
        have k_in_bounds : k < derivedLits.length := by
          have k_property := k.2
          grind
        have k_ne_j1 : ⟨k.1, k_in_bounds⟩ ≠ j1 := by
          apply Fin.ne_of_val_ne
          simp only
          exact Fin.val_ne_of_ne k_ne_j1
        have k_ne_j2 : ⟨k.1, k_in_bounds⟩ ≠ j2 := by
          apply Fin.ne_of_val_ne
          simp only
          exact Fin.val_ne_of_ne k_ne_j2
        simp only [Fin.getElem_fin, ne_eq, derivedLits_arr_def]
        exact h3 ⟨k.1, k_in_bounds⟩ k_ne_j1 k_ne_j2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean#L1013).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe8acc5a5be5740e022569f4427ed8c3582f9bdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
