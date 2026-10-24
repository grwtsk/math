# winningStrategy_play_one_eq_none_or_play_two_eq_none_of_edge_zero

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
      "line": 925,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af3eca2c-64f4-f079-37a2-ffc887d7dda4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bfbcdbe-a20b-d867-25d2-52d73693cff5",
  "kind": "lemma",
  "lexical_name": "winningStrategy_play_one_eq_none_or_play_two_eq_none_of_edge_zero",
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
  "slug": "winningstrategy-play-one-eq-none-or-play-two-eq-none-of-edge-zero--cf1d1d7b0235ac9f42183484",
  "source": {
    "blob": "9034f450ecae0936b1f28e8c38199e491c1a891a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 969,
    "line": 925,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf1d1d7b0235ac9f4218348429db89f6738b14d167673d1277dba02c2c588e7f",
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

Occurrence: `result:2bfbcdbe-a20b-d867-25d2-52d73693cff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 925–969.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma winningStrategy_play_one_eq_none_or_play_two_eq_none_of_edge_zero (hN : 2 ≤ N)
    {m : MonsterData N} (hc₁0 : m (row1 hN) = 0) :
    (winningStrategy hN).play m 3 ⟨1, by simp⟩ = none ∨
      (winningStrategy hN).play m 3 ⟨2, by simp⟩ = none := by
  rw [or_iff_not_imp_left]
  intro h
  rw [← ne_eq, Option.ne_none_iff_exists] at h
  rcases h with ⟨x, hx⟩
  rw [winningStrategy_play_one] at hx
  rw [winningStrategy_play_two, ← hx, Option.getD_some]
  rw [path1, dite_eq_left hc₁0] at hx
  have h1 := Path.mem_of_firstMonster_eq_some (hx.symm)
  have hx2N : 2 ≤ (x.1 : ℕ) ∧ (x.1 : ℕ) ≤ N := by
    rw [path1OfEdge0, Path.ofFn_cells, List.mem_ofFn] at h1
    rcases h1 with ⟨⟨i, rfl⟩, hm⟩
    refine ⟨?_, m.le_N_of_mem_monsterCells hm⟩
    rcases i with ⟨i, hi⟩
    have hi : 3 ≤ i := by
      by_contra hi
      interval_cases i <;> rw [fn1OfEdge0] at hm <;> split_ifs at hm with h
      · simp at h
        lia
      · simp_rw [zero_add] at hm
        exact m.notMem_monsterCells_of_fst_eq_zero rfl hm
      · simp [eqComm] at h
      · dsimp only [Nat.reduceAdd, Nat.reduceDiv, Fin.mk_one] at hm
        have h1N : 1 ≤ N := by lia
        rw [m.mk_mem_monsterCells_iff_of_le (le_refl _) h1N] at hm
        rw [row1, hm, Fin.ext_iff] at hc₁0
        simp at hc₁0
      · simp at h
        lia
      · simp only at hm
        norm_num at hm
        have h1N : 1 ≤ N := by lia
        rw [m.mk_mem_monsterCells_iff_of_le (le_refl _) h1N] at hm
        rw [row1, hm] at hc₁0
        simp at hc₁0
    rw [fn1OfEdge0]
    split_ifs <;> simp <;> lia
  rw [path2, ite_eq_left hc₁0, path2OfEdge0Def, dite_eq_left hx2N]
  exact path2OfEdge0_firstMonster_eq_none_of_path1OfEdge0_firstMonster_eq_some hN hx2N.1
    hx2N.2 hc₁0 hx.symm

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean#L925).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9034f450ecae0936b1f28e8c38199e491c1a891a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
