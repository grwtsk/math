# path0_firstMonster_eq_apply_row1

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
      "line": 741,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef75bd00-be98-285a-edb7-4380dc4d787c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8a44570-4f73-a4e8-7f03-e7477dee0112",
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
  "slug": "path0-firstmonster-eq-apply-row1--0ff2b881357dfc29f3636dd8",
  "source": {
    "blob": "9034f450ecae0936b1f28e8c38199e491c1a891a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 741,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ff2b881357dfc29f3636dd86b4ed41ab57c542834bf0d430a16349be65a5de3",
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

Occurrence: `result:c8a44570-4f73-a4e8-7f03-e7477dee0112`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 741–772.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean#L741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9034f450ecae0936b1f28e8c38199e491c1a891a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
