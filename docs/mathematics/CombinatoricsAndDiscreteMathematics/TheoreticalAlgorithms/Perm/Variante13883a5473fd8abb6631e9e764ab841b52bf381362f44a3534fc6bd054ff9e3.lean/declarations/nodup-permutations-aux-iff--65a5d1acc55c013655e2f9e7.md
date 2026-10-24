# nodup_permutations'Aux_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7fb77dd-e6bd-3af9-5512-ff34d9917f91",
  "kind": "theorem",
  "lexical_name": "nodup_permutations'Aux_iff",
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
  "slug": "nodup-permutations-aux-iff--65a5d1acc55c013655e2f9e7",
  "source": {
    "blob": "0ef91f6ed37dde24d8ba79d67a1f28e00b970e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1447,
    "line": 1416,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65a5d1acc55c013655e2f9e7351872688fdfaf6529ae018047fac8651aeaff12",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7fb77dd-e6bd-3af9-5512-ff34d9917f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1416–1447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_permutations'Aux_iff {s : List α} {x : α} : Nodup (permutations'Aux x s) ↔ x ∉ s := by
  refine' ⟨fun h => _, nodup_permutations'Aux_of_not_mem _ _⟩
  intro H
  obtain ⟨k, hk, hk'⟩ := nthLe_of_mem H
  rw [nodup_iff_nthLe_inj] at h
  suffices k = k + 1 by simp at this
  refine' h k (k + 1) _ _ _
  · simpa [Nat.lt_succ_iff] using hk.le
  · simpa using hk
  rw [nthLe_permutations'Aux, nthLe_permutations'Aux]
  have hl : length (insertNth k x s) = length (insertNth (k + 1) x s) := by
    rw [length_insertNth _ _ hk.le, length_insertNth _ _ (Nat.succ_le_of_lt hk)]
  refine' ext_nthLe hl fun n hn hn' => _
  rcases lt_trichotomy n k with (H | rfl | H)
  · rw [nthLe_insertNth_of_lt _ _ _ _ H (H.trans hk),
      nthLe_insertNth_of_lt _ _ _ _ (H.trans (Nat.lt_succ_self _))]
  · rw [nthLe_insertNth_self _ _ _ hk.le, nthLe_insertNth_of_lt _ _ _ _ (Nat.lt_succ_self _) hk,
      hk']
  · rcases(Nat.succ_le_of_lt H).eq_or_lt with (rfl | H')
    · rw [nthLe_insertNth_self _ _ _ (Nat.succ_le_of_lt hk)]
      convert hk' using 1
      exact nthLe_insertNth_add_succ _ _ _ 0 _
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_lt H'
      erw [length_insertNth _ _ hk.le, Nat.succ_lt_succ_iff, Nat.succ_add] at hn
      rw [nthLe_insertNth_add_succ]
      convert nthLe_insertNth_add_succ s x k m.succ (by simpa using hn) using 2
      · simp [Nat.add_succ, Nat.succ_add]
      · simp [add_left_comm, add_comm]
      · simpa [Nat.succ_add] using hn
#align list.nodup_permutations'_aux_iff List.nodup_permutations'Aux_iff

set_option linter.deprecated false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean#L1416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef91f6ed37dde24d8ba79d67a1f28e00b970e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
