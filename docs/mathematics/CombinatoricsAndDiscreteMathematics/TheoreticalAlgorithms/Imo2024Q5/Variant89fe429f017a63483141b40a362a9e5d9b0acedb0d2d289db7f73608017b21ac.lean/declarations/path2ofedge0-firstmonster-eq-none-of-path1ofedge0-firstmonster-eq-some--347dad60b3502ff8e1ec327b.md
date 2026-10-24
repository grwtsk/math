# path2OfEdge0_firstMonster_eq_none_of_path1OfEdge0_firstMonster_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cca40d54-44c8-86c7-cec3-01c6734b1a18",
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
  "slug": "path2ofedge0-firstmonster-eq-none-of-path1ofedge0-firstmonster-eq-some--347dad60b3502ff8e1ec327b",
  "source": {
    "blob": "fd43e09546994d5f3a34803d1b5d9af4fc0b4db3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 932,
    "line": 892,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:347dad60b3502ff8e1ec327b252f66c9eba9b8296f25c5e3cf1512e62efc1e1c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cca40d54-44c8-86c7-cec3-01c6734b1a18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–932.

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
    split_ifs at hix <;> simp [Prod.ext_iff, Fin.ext_iff] at hix <;> lia
  have hi' : (i : ℕ) ≠ 2 * N := by
    intro h
    rw [← hix, fn1OfEdge0, dite_eq_left h] at hx
    have h' := MonsterData.le_N_of_mem_monsterCells hx
    simp at h'
  intro j
  by_cases h : (j : ℕ) + 2 < 2 * (x.1 : ℕ)
  · rw [fn2OfEdge0_apply_eq_fn1OfEdge0_apply_of_lt hxN h]
    simp_rw [Fin.lt_def] at hnm
    refine hnm _ ?_
    simp only
    lia
  · rw [fn2OfEdge0, dite_eq_right h]
    split_ifs with h'
    · have hx1 : 1 ≤ x.1 := by
        rw [Fin.le_def, Fin.val_one]
        lia
      rw [MonsterData.mk_mem_monsterCells_iff_of_le hx1 hxN]
      rw [MonsterData.mem_monsterCells_iff_of_le hx1 hxN] at hx
      simp_rw [hx, ← hix, fn1OfEdge0]
      split_ifs <;> simp <;> lia
    · rw [MonsterData.mk_mem_monsterCells_iff]
      simp only [not_exists]
      intro h1 hN'
      rw [← hc₁0]
      refine m.injective.ne ?_
      rw [← Subtype.coe_ne_coe, ← Fin.val_ne_iff, coe_coe_row1]
      simp only
      lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd43e09546994d5f3a34803d1b5d9af4fc0b4db3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
