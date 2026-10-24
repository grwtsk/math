# Path.firstMonster_eq_of_findFstEq_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9034f450ecae0936b1f28e8c38199e491c1a891a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22e8157c-086c-66a0-4e6a-1ba9ea974998",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d22eb96-dfa3-b339-61c4-a54e681ffd8e",
  "kind": "lemma",
  "lexical_name": "Path.firstMonster_eq_of_findFstEq_mem",
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
  "slug": "path-firstmonster-eq-of-findfsteq-mem--488fa260ef6fc97c0e07d4c0",
  "source": {
    "blob": "9034f450ecae0936b1f28e8c38199e491c1a891a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 337,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488fa260ef6fc97c0e07d4c0aec9d0320ded1eea8681b236b5775a61e74f5104",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d22eb96-dfa3-b339-61c4-a54e681ffd8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Path.firstMonster_eq_of_findFstEq_mem {p : Path N} {m : MonsterData N}
    (h : p.findFstEq 1 ∈ m.monsterCells) : p.firstMonster m = some (p.findFstEq 1) := by
  induction p using Path.tail_induction
  case base p h0 =>
    have hl := p.one_lt_length_cells
    have adj : Adjacent p.cells[0] p.cells[1] :=
      List.isChain_iff_getElem.1 p.valid_move_seq 0 (by lia)
    simp_rw [Adjacent, Nat.dist] at adj
    have hc0 : (p.cells[0].1 : ℕ) = 0 := by
      convert! Fin.ext_iff.1 p.head_first_row
      exact List.getElem_zero _
    have hc1 : (p.cells[1].1 : ℕ) ≠ 0 := Fin.val_ne_iff.2 h0
    have h1 : (p.cells[1].1 : ℕ) = 1 := by lia
    simp_rw [firstMonster, findFstEq]
    rcases p with ⟨cells, nonempty, head_first_row, last_last_row, valid_move_seq⟩
    rcases cells with ⟨⟩ | ⟨head, tail⟩
    · simp at nonempty
    · simp only [List.head_cons] at head_first_row
      simp only [List.getElem_cons_succ] at h1
      simp only [List.length_cons, lt_add_iff_pos_left, List.length_pos_iff_ne_nil] at hl
      simp only [m.notMem_monsterCells_of_fst_eq_zero head_first_row, decide_false,
        Bool.false_eq_true, not_false_eq_true, List.find?_cons_of_neg, head_first_row,
        Fin.zero_eq_one_iff, Nat.reduceEqDiff, Option.some_get]
      simp only [findFstEq, head_first_row, Fin.zero_eq_one_iff, Nat.reduceEqDiff, decide_false,
        Bool.false_eq_true, not_false_eq_true, List.find?_cons_of_neg] at h
      rcases tail with ⟨⟩ | ⟨htail, ttail⟩
      · simp at hl
      · simp only [List.getElem_cons_zero] at h1
        have h1' : htail.1 = 1 := by simp [Fin.ext_iff, h1]
        simp only [h1', decide_true, List.find?_cons_of_pos, Option.get_some] at h
        simp only [h1', h, decide_true, List.find?_cons_of_pos]
  case ind p ht =>
    have h1 : (1 : Fin (N + 2)) ≠ 0 := by simp
    rw [p.tail_findFstEq h1, p.tail_firstMonster m] at ht
    exact ht h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9034f450ecae0936b1f28e8c38199e491c1a891a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
