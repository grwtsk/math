# path0_firstMonster_eq_apply_row1

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
      "line": 737,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3451eced-ec1f-ba12-1dad-cb918ddc3b4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd694ac6-361b-8e1a-5686-a15f38ccd11b",
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
  "slug": "path0-firstmonster-eq-apply-row1--9e49792fdaca0ed9e576c2c9",
  "source": {
    "blob": "d9c90518c751d6a0f06014b85467b1c350a5c164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 768,
    "line": 737,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e49792fdaca0ed9e576c2c92e1091b1e5830f0b8a54353377b171b8bd2c85ac",
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

Occurrence: `result:dd694ac6-361b-8e1a-5686-a15f38ccd11b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–768.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma path0_firstMonster_eq_apply_row1 (hN : 2 ≤ N) (m : MonsterData N) :
    (path0 hN).firstMonster m = some (1, m (row1 hN)) := by
  simp_rw [path0, Path.firstMonster, Path.ofFn]
  have h : (1, m (row1 hN)) = fn0 N ⟨(m (row1 hN) : ℕ) + 1, by omega⟩ := by
    simp_rw [fn0]
    split_ifs <;> simp [Prod.ext_iff] at *; omega
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
      rw [eq_comm, Nat.sub_eq_iff_eq_add (by omega)] at hij
      have hr : row1 hN = ⟨↑i, hix⟩ := by
        simp_rw [Subtype.ext_iff, Fin.ext_iff, hi]
        rfl
      rw [Fin.lt_def, hij, add_lt_add_iff_right, Fin.val_fin_lt, hr] at hj
      exact Nat.lt_irrefl _ hj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9c90518c751d6a0f06014b85467b1c350a5c164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
