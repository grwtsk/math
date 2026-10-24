# path0_firstMonster_eq_apply_row1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:770ac407-aba4-d191-77a7-914e79fdb4a3",
  "kind": "lemma",
  "lexical_name": "path0_firstMonster_eq_apply_row1",
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
  "slug": "path0-firstmonster-eq-apply-row1--85bf3bb8589f915816cf93b6",
  "source": {
    "blob": "fd43e09546994d5f3a34803d1b5d9af4fc0b4db3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 749,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85bf3bb8589f915816cf93b6c8c84cd862de867c984960fa55aadb5769eb7a38",
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

Occurrence: `result:770ac407-aba4-d191-77a7-914e79fdb4a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma path0_firstMonster_eq_apply_row1 (hN : 2 ≤ N) (m : MonsterData N) :
    (path0 hN).firstMonster m = some (1, m (row1 hN)) := by
  simp_rw [path0, Path.firstMonster, Path.ofFn]
  have h : (1, m (row1 hN)) = fn0 N ⟨(m (row1 hN) : ℕ) + 1, by lia⟩ := by
    simp_rw [fn0]
    split_ifs <;> simp [Prod.ext_iff] at *; lia
  rw [h, List.find?_ofFn_eq_some_of_injective (injective_fn0 N)]
  refine ⟨?_, fun j hj ↦ ?_⟩
  · rw [fn0]
    split_ifs
    · simp [Prod.ext_iff] at *
    · have hm1 : (1, m (row1 hN)) ∈ m.monsterCells := Set.mem_range_self (row1 hN)
      simpa [Prod.ext_iff] using hm1
  · rw [fn0]
    split_ifs with h₁
    · simp [h₁, MonsterData.monsterCells]
    · have hjN2 : (j : ℕ) < N + 2 := by
        rw [Fin.lt_def] at hj
        refine hj.trans ?_
        simp
      simp only [MonsterData.monsterCells, h₁, ↓reduceIte, hjN2, ↓reduceDIte, Set.mem_range,
        Prod.mk.injEq, Fin.ext_iff, Fin.val_one, Subtype.exists, Set.mem_Icc, exists_and_left,
        decide_eq_true_eq, not_exists, not_and]
      rintro i hi hix hij
      simp only [Fin.ext_iff, Fin.val_zero] at h₁
      rw [eq_comm, Nat.sub_eq_iff_eq_add (by lia)] at hij
      have hr : row1 hN = ⟨↑i, hix⟩ := by
        simp_rw [Subtype.ext_iff, Fin.ext_iff, hi]
        rfl
      rw [Fin.lt_def, hij, add_lt_add_iff_right, Fin.val_fin_lt, hr] at hj
      exact Nat.lt_irrefl _ hj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd43e09546994d5f3a34803d1b5d9af4fc0b4db3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
