# assignmentsInvariant_insertRatUnits

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
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19d572f1-faa4-5420-ef1a-bb87c3602f8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a52256b3-fc22-525b-4f6b-e6ef25d21c22",
  "kind": "theorem",
  "lexical_name": "assignmentsInvariant_insertRatUnits",
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
  "slug": "assignmentsinvariant-insertratunits--ecfbbc5ab71b101b3d22ac72",
  "source": {
    "blob": "38b719eb9cd21611662027394368a5f88b6d088b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecfbbc5ab71b101b3d22ac727ff2f41b0c801084bc584123a57c4f60539fc3b4",
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

Occurrence: `result:a52256b3-fc22-525b-4f6b-e6ef25d21c22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem assignmentsInvariant_insertRatUnits {n : Nat} (f : DefaultFormula n)
    (hf : f.ratUnits = #[] ∧ AssignmentsInvariant f) (units : CNF.Clause (PosFin n)) :
    AssignmentsInvariant (insertRatUnits f units).1 := by
  have h := insertRatUnits_postcondition f ⟨hf.1, hf.2.1⟩ units
  have hsize : (insertRatUnits f units).1.assignments.size = n := by rw [size_assignments_insertRatUnits, hf.2.1]
  apply Exists.intro hsize
  intro i b hb p hp
  simp only [(· ⊨ ·), Clause.eval] at hp
  simp only [toList, List.append_assoc,
    List.any_eq_true, Prod.exists, Bool.exists_bool, decide_eq_true_eq,
    List.all_eq_true, List.mem_append, List.mem_filterMap, id_eq, exists_eq_right, List.mem_map] at hp
  have pf : p ⊨ f := by
    simp only [(· ⊨ ·), Clause.eval]
    simp only [toList, List.append_assoc,
      List.any_eq_true, Prod.exists, Bool.exists_bool,
      decide_eq_true_eq, List.all_eq_true, List.mem_append, List.mem_filterMap, id_eq, exists_eq_right, List.mem_map]
    intro c cf
    rcases cf with cf | cf | cf
    · specialize hp c (Or.inl cf)
      exact hp
    · specialize hp c <| (Or.inr ∘ Or.inl) cf
      exact hp
    · grind
  rcases h ⟨i.1, i.2.2⟩ with ⟨h1, h2⟩ | ⟨j, b', i_gt_zero, h1, h2, h3, h4⟩ | ⟨j1, j2, i_gt_zero, h1, h2, _, _, _⟩
  · rw [h1] at hb
    exact hf.2.2 i b hb p pf
  · rw [h2] at hb
    by_cases b = b'
    next b_eq_b' =>
      let j_unit := unit (insertRatUnits f units).1.ratUnits[j]
      have j_unit_def : j_unit = unit (insertRatUnits f units).1.ratUnits[j] := rfl
      have j_unit_in_insertRatUnits_res :
        ∃ i : PosFin n,
          (i, false) ∈ (insertRatUnits f units).1.ratUnits.toList ∧ unit (i, false) = j_unit ∨
          (i, true) ∈ (insertRatUnits f units).1.ratUnits.toList ∧ unit (i, true) = j_unit := by
        apply Exists.intro i
        rw [j_unit_def, h1]
        by_cases hb' : b'
        · rw [hb']
          apply Or.inr
          constructor
          · have h1 : (insertRatUnits f units).fst.ratUnits[j] = (i, true) := by
              rw [hb'] at h1
              simp only [h1, Prod.mk.injEq, and_true]
              rfl
            rw [← h1]
            apply Array.getElem_mem_toList
          · rfl
        · simp only [Bool.not_eq_true] at hb'
          rw [hb']
          apply Or.inl
          constructor
          · have h1 : (insertRatUnits f units).fst.ratUnits[j] = (i, false) := by
              rw [hb'] at h1
              simp only [h1, Prod.mk.injEq, and_true]
              rfl
            rw [← h1]
            apply Array.getElem_mem_toList
          · rfl
      specialize hp j_unit ((Or.inr ∘ Or.inr) j_unit_in_insertRatUnits_res)
      simp only [Fin.getElem_fin, j_unit] at hp
      simp only [Fin.getElem_fin] at h1
      rcases hp with ⟨i', hp⟩
      simp only [h1, Clause.toList, unit_eq, List.mem_singleton, Prod.mk.injEq] at hp
      rcases hp with ⟨hp1, hp2⟩ | ⟨hp1, hp2⟩
      · simp only [b_eq_b', ← hp1.2, (· ⊨ ·)]
        rw [hp1.1] at hp2
        exact hp2
      · simp only [b_eq_b', ← hp1.2, (· ⊨ ·)]
        rw [hp1.1] at hp2
        exact hp2
    next b_ne_b' =>
      apply hf.2.2 i b _ p pf
      have b'_def : b' = (decide ¬b = true) := by cases b <;> cases b' <;> simp at *
      rw [has_iff_has_add_complement, ← b'_def, hb]
  · let j1_unit := unit (insertRatUnits f units).1.ratUnits[j1]
    have j1_unit_def : j1_unit = unit (insertRatUnits f units).1.ratUnits[j1] := rfl
    have j1_unit_in_insertRatUnits_res :
      ∃ i : PosFin n,
        (i, false) ∈ (insertRatUnits f units).1.ratUnits.toList ∧ unit (i, false) = j1_unit ∨
        (i, true) ∈ (insertRatUnits f units).1.ratUnits.toList ∧ unit (i, true) = j1_unit := by
      apply Exists.intro i ∘ Or.inr
      rw [j1_unit_def, h1]
      constructor
      · have h1 : (insertRatUnits f units).fst.ratUnits[j1] = (i, true) := by
          rw [h1]
          simp only [Prod.mk.injEq, and_true]
          rfl
        rw [← h1]
        apply Array.getElem_mem_toList
      · rfl
    let j2_unit := unit (insertRatUnits f units).1.ratUnits[j2]
    have j2_unit_def : j2_unit = unit (insertRatUnits f units).1.ratUnits[j2] := rfl
    have j2_unit_in_insertRatUnits_res :
      ∃ i : PosFin n,
        (i, false) ∈ (insertRatUnits f units).1.ratUnits.toList ∧ unit (i, false) = j2_unit ∨
        (i, true) ∈ (insertRatUnits f units).1.ratUnits.toList ∧ unit (i, true) = j2_unit := by
      apply Exists.intro i ∘ Or.inl
      rw [j2_unit_def, h2]
      constructor
      · have h2 : (insertRatUnits f units).fst.ratUnits[j2] = (i, false) := by
          rw [h2]
          simp only [Prod.mk.injEq, and_true]
          rfl
        rw [← h2]
        apply Array.getElem_mem_toList
      · rfl
    have hp1 := hp j1_unit ((Or.inr ∘ Or.inr) j1_unit_in_insertRatUnits_res)
    have hp2 := hp j2_unit ((Or.inr ∘ Or.inr) j2_unit_in_insertRatUnits_res)
    rcases hp1 with ⟨i1, hp1⟩
    rcases hp2 with ⟨i2, hp2⟩
    simp only [Fin.getElem_fin] at h1 h2
    simp only [Clause.toList, unit_eq, List.mem_singleton,
      j1_unit, j2_unit] at hp1 hp2
    simp_all
    simp [hp2.1, ← hp1.1, hp1.2] at hp2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b719eb9cd21611662027394368a5f88b6d088b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
