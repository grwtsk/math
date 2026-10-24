# le_of_suffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0c70cab534ca340b58da8a0f603583dd3905fd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 432,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff5614b4c9d752f7e8dd90fc3093b4548144d35c9caf5a6c65fefaa2a8434006.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74b0b6bf-997e-ea99-fa5a-cf9d9c5d322e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58f17eb1-37af-15b8-e25f-fd08de6eb9b8",
  "kind": "lemma",
  "lexical_name": "le_of_suffix",
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
  "slug": "le-of-suffix--92747cff970efe28c2e59dda",
  "source": {
    "blob": "c0c70cab534ca340b58da8a0f603583dd3905fd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 432,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantff5614b4c9d752f7e8dd90fc3093b4548144d35c9caf5a6c65fefaa2a8434006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92747cff970efe28c2e59ddac32f13f561609a8cf832e9502be322127853a7d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantff5614b4c9d752f7e8dd90fc3093b4548144d35c9caf5a6c65fefaa2a8434006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58f17eb1-37af-15b8-e25f-fd08de6eb9b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_of_suffix (h : p.toList <:+ q.toList) : p ≤ q := by
  obtain ⟨r', h⟩ := h
  have hc : (q.toList.take (q.toList.length - p.toList.length)).count U =
      (q.toList.take (q.toList.length - p.toList.length)).count D := by
    have hq := q.count_U_eq_count_D
    rw [← h] at hq ⊢
    rw [count_append, count_append, p.count_U_eq_count_D, Nat.add_right_cancel_iff] at hq
    simp [hq]
  let r : DyckWord := q.take _ hc
  have e : r' = r := by
    simp_rw [r, take, ← h, length_append, add_tsub_cancel_right, take_left']
  rw [e] at h; replace h : r + p = q := DyckWord.ext h; rw [← h]; exact le_add_self ..

/-- Partial order on Dyck words: `p ≤ q` if a (possibly empty) sequence of
`insidePart` and `outsidePart` operations can turn `q` into `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantff5614b4c9d752f7e8dd90fc3093b4548144d35c9caf5a6c65fefaa2a8434006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantff5614b4c9d752f7e8dd90fc3093b4548144d35c9caf5a6c65fefaa2a8434006.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c70cab534ca340b58da8a0f603583dd3905fd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
