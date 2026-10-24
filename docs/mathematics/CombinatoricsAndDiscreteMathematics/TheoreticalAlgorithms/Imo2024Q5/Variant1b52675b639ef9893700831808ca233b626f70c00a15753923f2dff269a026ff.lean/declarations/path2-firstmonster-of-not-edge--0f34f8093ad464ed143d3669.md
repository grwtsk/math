# path2_firstMonster_of_not_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a55903b-fb99-e422-8912-bb46b1b7449f",
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
  "slug": "path2-firstmonster-of-not-edge--0f34f8093ad464ed143d3669",
  "source": {
    "blob": "b28fa94005ef9943d584f612403380c8a94c743a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 829,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f34f8093ad464ed143d36693b5e9d199738db43060c9e0dbec1fc564ddb1e75",
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

Occurrence: `result:0a55903b-fb99-e422-8912-bb46b1b7449f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 829–866.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean#L829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b28fa94005ef9943d584f612403380c8a94c743a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
