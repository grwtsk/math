# path2OfEdge0_firstMonster_eq_none_of_path1OfEdge0_firstMonster_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f5466ea-3360-e127-2df0-172db5220d04",
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
  "slug": "path2ofedge0-firstmonster-eq-none-of-path1ofedge0-firstmonster-eq-some--c07e5237fe2d88b2baaeb16f",
  "source": {
    "blob": "b28fa94005ef9943d584f612403380c8a94c743a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 928,
    "line": 888,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c07e5237fe2d88b2baaeb16f842cbe6376ea345c19dd5ed74657ffeac6179924",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f5466ea-3360-e127-2df0-172db5220d04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 888–928.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean#L888).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b28fa94005ef9943d584f612403380c8a94c743a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
