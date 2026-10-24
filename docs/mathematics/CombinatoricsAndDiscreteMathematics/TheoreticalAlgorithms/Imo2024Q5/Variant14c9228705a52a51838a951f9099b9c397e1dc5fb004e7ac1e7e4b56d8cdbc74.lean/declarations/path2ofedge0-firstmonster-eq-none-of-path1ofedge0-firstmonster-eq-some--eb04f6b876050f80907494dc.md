# path2OfEdge0_firstMonster_eq_none_of_path1OfEdge0_firstMonster_eq_some

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
      "line": 880,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4458d2b5-2514-5055-72e5-0c5da1505dfa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13de0d20-04e9-e3ee-8040-3e298811879e",
  "kind": "lemma",
  "lexical_name": "path2OfEdge0_firstMonster_eq_none_of_path1OfEdge0_firstMonster_eq_some",
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
  "slug": "path2ofedge0-firstmonster-eq-none-of-path1ofedge0-firstmonster-eq-some--eb04f6b876050f80907494dc",
  "source": {
    "blob": "d9c90518c751d6a0f06014b85467b1c350a5c164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 920,
    "line": 880,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb04f6b876050f80907494dc26e9f8d1be64e09a4c68de6a25e832fe3bf5d9f7",
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

Occurrence: `result:13de0d20-04e9-e3ee-8040-3e298811879e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma path2OfEdge0_firstMonster_eq_none_of_path1OfEdge0_firstMonster_eq_some (hN : 2 ≤ N)
    {x : Cell N} (hx2 : 2 ≤ (x.1 : ℕ)) (hxN : (x.1 : ℕ) ≤ N) {m : MonsterData N}
    (hc₁0 : m (row1 hN) = 0) (hx : (path1OfEdge0 hN).firstMonster m = some x) :
    (path2OfEdge0 hN hx2 hxN).firstMonster m = none := by
  rw [path2OfEdge0, Path.ofFn_firstMonster_eq_none]
  rw [path1OfEdge0, Path.firstMonster, Path.ofFn_cells, List.find?_ofFn_eq_some] at hx
  simp only [decide_eq_true_eq] at hx
  rcases hx with ⟨hx, i, hix, hnm⟩
  have hi : (x.1 : ℕ) = ((i : ℕ) + 1) / 2 := by
    rw [fn1OfEdge0] at hix
    split_ifs at hix <;> simp [Prod.ext_iff, Fin.ext_iff] at hix <;> omega
  have hi' : (i : ℕ) ≠ 2 * N := by
    intro h
    rw [← hix, fn1OfEdge0, dif_pos h] at hx
    have h' := MonsterData.le_N_of_mem_monsterCells hx
    simp at h'
  intro j
  by_cases h : (j : ℕ) + 2 < 2 * (x.1 : ℕ)
  · rw [fn2OfEdge0_apply_eq_fn1OfEdge0_apply_of_lt hxN h]
    simp_rw [Fin.lt_def] at hnm
    refine hnm _ ?_
    simp only
    omega
  · rw [fn2OfEdge0, dif_neg h]
    split_ifs with h'
    · have hx1 : 1 ≤ x.1 := by
        rw [Fin.le_def, Fin.val_one]
        omega
      rw [MonsterData.mk_mem_monsterCells_iff_of_le hx1 hxN]
      rw [MonsterData.mem_monsterCells_iff_of_le hx1 hxN] at hx
      simp_rw [hx, ← hix, fn1OfEdge0]
      split_ifs <;> simp <;> omega
    · rw [MonsterData.mk_mem_monsterCells_iff]
      simp only [not_exists]
      intro h1 hN'
      rw [← hc₁0]
      refine m.injective.ne ?_
      rw [← Subtype.coe_ne_coe, ← Fin.val_ne_iff, coe_coe_row1]
      simp only
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9c90518c751d6a0f06014b85467b1c350a5c164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
