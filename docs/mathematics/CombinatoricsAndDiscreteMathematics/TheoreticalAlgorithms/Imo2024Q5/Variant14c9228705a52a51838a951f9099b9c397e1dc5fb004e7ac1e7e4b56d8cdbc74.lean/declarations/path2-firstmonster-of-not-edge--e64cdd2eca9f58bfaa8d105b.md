# path2_firstMonster_of_not_edge

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
      "line": 821,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dea6aaa6-3071-14a3-8cfb-db7be484cb6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3999282-24f6-2b83-3f9d-3735e4789f34",
  "kind": "lemma",
  "lexical_name": "path2_firstMonster_of_not_edge",
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
  "slug": "path2-firstmonster-of-not-edge--e64cdd2eca9f58bfaa8d105b",
  "source": {
    "blob": "d9c90518c751d6a0f06014b85467b1c350a5c164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 858,
    "line": 821,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e64cdd2eca9f58bfaa8d105b13e78ea5683a3a3a44ea1bb775619a1c48673516",
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

Occurrence: `result:f3999282-24f6-2b83-3f9d-3735e4789f34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 821–858.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma path2_firstMonster_of_not_edge (hN : 2 ≤ N) {m : MonsterData N} (hc₁0 : m (row1 hN) ≠ 0)
    (hc₁N : (m (row1 hN) : ℕ) ≠ N) (r : Fin (N + 2)) :
    (path2 hN (m (row1 hN)) r).firstMonster m = none ∨
      (path2 hN (m (row1 hN)) r).firstMonster m =
        some (⟨2, by omega⟩, ⟨(m (row1 hN) : ℕ) + 1, by omega⟩) := by
  suffices h : ∀ c ∈ (path2 hN (m (row1 hN)) r).cells, c ∉ m.monsterCells ∨
      c = (⟨2, by omega⟩, ⟨(m (row1 hN) : ℕ) + 1, by omega⟩) by
    simp only [Path.firstMonster]
    by_cases hn : List.find? (fun x ↦ decide (x ∈ m.monsterCells))
                             (path2 hN (m (row1 hN)) r).cells = none
    · exact .inl hn
    · rw [← ne_eq, Option.ne_none_iff_exists'] at hn
      rcases hn with ⟨x, hx⟩
      have hxm := List.find?_some hx
      have hx' := h _ (List.mem_of_find?_eq_some hx)
      simp only [decide_eq_true_eq] at hxm
      simp only [hxm, not_true_eq_false, false_or] at hx'
      rw [hx'] at hx
      exact .inr hx
  simp only [path2, hc₁0, ↓reduceDIte, hc₁N, ↓reduceIte, path2OfNotEdge, Path.ofFn_cells,
    List.forall_mem_ofFn_iff, fn2OfNotEdge]
  intro j
  split_ifs with h
  · rcases j with ⟨j, hj⟩
    simp only at h
    interval_cases j
    · exact .inl (m.notMem_monsterCells_of_fst_eq_zero rfl)
    · simp only [Fin.mk_one, Prod.mk.injEq, Fin.ext_iff, Fin.val_one, OfNat.one_ne_ofNat,
        and_true, or_false]
      have hN' : 1 ≤ N := by omega
      rw [m.mk_mem_monsterCells_iff_of_le (le_refl _) hN', ← ne_eq, ← Fin.val_ne_iff]
      exact Nat.ne_add_one _
    · exact .inr rfl
  · refine .inl ?_
    simp only [MonsterData.monsterCells, Set.mem_range, Prod.mk.injEq, Fin.ext_iff,
      EmbeddingLike.apply_eq_iff_eq, exists_eq_right, coe_coe_row1]
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean#L821).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9c90518c751d6a0f06014b85467b1c350a5c164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
