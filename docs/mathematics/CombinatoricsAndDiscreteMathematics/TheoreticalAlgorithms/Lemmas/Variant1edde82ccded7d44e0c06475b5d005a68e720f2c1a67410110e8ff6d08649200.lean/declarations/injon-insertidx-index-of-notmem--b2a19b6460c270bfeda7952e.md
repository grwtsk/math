# injOn_insertIdx_index_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfaf0257cdc3b73c7ce53b4cf5749cc5ddac7c37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:857bda4b-86b7-d77b-ea7a-3e4bc8417447",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca3e2c2f-5fd6-af8c-2fb4-7d529ea4b50c",
  "kind": "theorem",
  "lexical_name": "injOn_insertIdx_index_of_notMem",
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
  "slug": "injon-insertidx-index-of-notmem--b2a19b6460c270bfeda7952e",
  "source": {
    "blob": "cfaf0257cdc3b73c7ce53b4cf5749cc5ddac7c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2a19b6460c270bfeda7952e02fd05560ec613036dd0c336ea7af71fcf3c2f88",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca3e2c2f-5fd6-af8c-2fb4-7d529ea4b50c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injOn_insertIdx_index_of_notMem (l : List α) (x : α) (hx : x ∉ l) :
    Set.InjOn (fun k => l.insertIdx k x) { n | n ≤ l.length } := by
  induction' l with hd tl IH
  · intro n hn m hm _
    simp_all [Set.mem_singleton_iff, Set.setOf_eq_eq_singleton, length]
  · intro n hn m hm h
    simp only [length, Set.mem_setOf_eq] at hn hm
    simp only [mem_cons, not_or] at hx
    cases n <;> cases m
    · rfl
    · simp [hx.left] at h
    · simp [Ne.symm hx.left] at h
    · simp only [true_and, eq_self_iff_true, insertIdx_succ_cons] at h
      rw [Nat.succ_inj]
      refine IH hx.right ?_ ?_ (by injection h)
      · simpa [Nat.succ_le_succ_iff] using hn
      · simpa [Nat.succ_le_succ_iff] using hm

@[deprecated (since := "2025-05-23")]
alias injOn_insertIdx_index_of_not_mem := injOn_insertIdx_index_of_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1edde82ccded7d44e0c06475b5d005a68e720f2c1a67410110e8ff6d08649200.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfaf0257cdc3b73c7ce53b4cf5749cc5ddac7c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
