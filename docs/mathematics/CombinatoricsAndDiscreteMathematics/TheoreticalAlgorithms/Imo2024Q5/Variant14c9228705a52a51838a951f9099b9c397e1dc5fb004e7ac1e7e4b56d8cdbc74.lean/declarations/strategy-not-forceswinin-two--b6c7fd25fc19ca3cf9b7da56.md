# Strategy.not_forcesWinIn_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9c90518c751d6a0f06014b85467b1c350a5c164",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 565,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97223f75-7c0b-f09f-be2d-a6348d3a58c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6fb2208f-e870-910d-4395-085318d46869",
  "kind": "lemma",
  "lexical_name": "Strategy.not_forcesWinIn_two",
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
  "slug": "strategy-not-forceswinin-two--b6c7fd25fc19ca3cf9b7da56",
  "source": {
    "blob": "d9c90518c751d6a0f06014b85467b1c350a5c164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 565,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6c7fd25fc19ca3cf9b7da56af107dd7ea483e177fa4208b077cbf8d0f8347f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fb2208f-e870-910d-4395-085318d46869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Strategy.not_forcesWinIn_two (s : Strategy N) (hN : 2 ≤ N) : ¬ s.ForcesWinIn 2 := by
  simp only [ForcesWinIn, WinsIn, Set.mem_range, not_forall, not_exists, Option.ne_none_iff_isSome]
  let m1 : Cell N := (s Fin.elim0).findFstEq 1
  let m2 : Cell N := (s ![m1]).findFstEq 2
  let m : MonsterData N := monsterData12 hN m1.2 m2.2
  have h1r : m1.1 = 1 := Path.findFstEq_fst _ _
  have h2r : m2.1 = 2 := Path.findFstEq_fst _ _
  have h1 : m1 ∈ m.monsterCells := by
    convert row1_mem_monsterCells_monsterData12 hN m1.2 m2.2
  have h2 : ((2 : Fin (N + 2)) : ℕ) = 2 := Nat.mod_eq_of_lt (by omega : 2 < N + 2)
  refine ⟨m, fun i ↦ ?_⟩
  fin_cases i
  · simp only [Strategy.play_zero, Path.firstMonster_eq_of_findFstEq_mem h1, Option.isSome_some]
  · simp only [Strategy.play_one]
    suffices ((s ![some m1]).firstMonster m).isSome = true by
      rwa [Path.firstMonster_eq_of_findFstEq_mem h1]
    simp_rw [m]
    by_cases h : m1.2 = m2.2
    · rw [Path.firstMonster_isSome]
      refine ⟨m1, ?_, h1⟩
      have h' : m1 = (⟨(((2 : Fin (N + 2)) : ℕ) - 1 : ℕ), by omega⟩, m2.2) := by
        simp [h2, Prod.ext_iff, h1r, h2r, h]
      nth_rw 2 [h']
      refine Path.findFstEq_fst_sub_one_mem _ ?_
      rw [ne_eq, Fin.ext_iff, h2]
      norm_num
    · rw [Path.firstMonster_isSome]
      refine ⟨m2, Path.findFstEq_mem_cells _ _, ?_⟩
      convert row2_mem_monsterCells_monsterData12 hN h using 1
      simp [Prod.ext_iff, h2r, Fin.ext_iff, h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9c90518c751d6a0f06014b85467b1c350a5c164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
