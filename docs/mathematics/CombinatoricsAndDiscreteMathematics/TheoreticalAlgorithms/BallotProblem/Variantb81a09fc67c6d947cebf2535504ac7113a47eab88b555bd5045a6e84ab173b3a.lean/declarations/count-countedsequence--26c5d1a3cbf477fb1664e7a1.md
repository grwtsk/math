# count_countedSequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "191f8eb2e7a15edeb01132ced3fb80dc448d2187",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8727f354-9b5d-ff1d-ebf0-d3e5cb6c688b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c492cd6-0539-9077-d66c-bb365461b30e",
  "kind": "theorem",
  "lexical_name": "count_countedSequence",
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
  "slug": "count-countedsequence--26c5d1a3cbf477fb1664e7a1",
  "source": {
    "blob": "191f8eb2e7a15edeb01132ced3fb80dc448d2187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 204,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26c5d1a3cbf477fb1664e7a1f89eb6f668ff709397803618849a049d4c5b55d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c492cd6-0539-9077-d66c-bb365461b30e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_countedSequence : ∀ p q : ℕ, count (countedSequence p q) = (p + q).choose p
  | p, 0 => by simp [counted_right_zero, count_singleton]
  | 0, q => by simp [counted_left_zero, count_singleton]
  | p + 1, q + 1 => by
    rw [counted_succ_succ, measure_union (disjoint_bits _ _) list_int_measurableSet,
      count_injective_image List.cons_injective, count_countedSequence _ _,
      count_injective_image List.cons_injective, count_countedSequence _ _]
    · norm_cast
      rw [add_assoc, add_comm 1 q, ← Nat.choose_succ_succ, Nat.succ_eq_add_one, add_right_comm]
termination_by _ p q => p + q -- Porting note: Added `termination_by`
#align ballot.count_counted_sequence Ballot.count_countedSequence

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `191f8eb2e7a15edeb01132ced3fb80dc448d2187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
