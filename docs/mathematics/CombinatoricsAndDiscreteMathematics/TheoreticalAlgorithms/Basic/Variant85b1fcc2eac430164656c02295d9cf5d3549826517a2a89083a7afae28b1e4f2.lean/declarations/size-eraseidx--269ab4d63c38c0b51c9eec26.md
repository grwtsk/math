# size_eraseIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d58dee5983aa201468b99df02a6d8c18c7a1794",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1810,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85b1fcc2eac430164656c02295d9cf5d3549826517a2a89083a7afae28b1e4f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63b5127e-6de7-0503-89a1-73dd26293093",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa204d99-6d96-6620-71cb-1efc3f4e0f6b",
  "kind": "theorem",
  "lexical_name": "size_eraseIdx",
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
  "slug": "size-eraseidx--269ab4d63c38c0b51c9eec26",
  "source": {
    "blob": "7d58dee5983aa201468b99df02a6d8c18c7a1794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1831,
    "line": 1810,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant85b1fcc2eac430164656c02295d9cf5d3549826517a2a89083a7afae28b1e4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:269ab4d63c38c0b51c9eec261cc2c7f42df28d37a1214057e55d27adaf526839",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant85b1fcc2eac430164656c02295d9cf5d3549826517a2a89083a7afae28b1e4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa204d99-6d96-6620-71cb-1efc3f4e0f6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1810–1831.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem size_eraseIdx {xs : Array α} (i : Nat) (h) : (xs.eraseIdx i h).size = xs.size - 1 := by
  induction xs, i, h using Array.eraseIdx.induct with
  | @case1 xs i h h' xs' ih =>
    unfold eraseIdx
    simp +zetaDelta [h', ih]
  | case2 xs i h h' =>
    unfold eraseIdx
    simp [h']

/--
Removes the element at a given index from an array. Does nothing if the index is out of bounds.

This function takes worst-case `O(n)` time because it back-shifts all elements at positions greater
than `i`.

Examples:
* `#["apple", "pear", "orange"].eraseIdxIfInBounds 0 = #["pear", "orange"]`
* `#["apple", "pear", "orange"].eraseIdxIfInBounds 1 = #["apple", "orange"]`
* `#["apple", "pear", "orange"].eraseIdxIfInBounds 2 = #["apple", "pear"]`
* `#["apple", "pear", "orange"].eraseIdxIfInBounds 3 = #["apple", "pear", "orange"]`
* `#["apple", "pear", "orange"].eraseIdxIfInBounds 5 = #["apple", "pear", "orange"]`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant85b1fcc2eac430164656c02295d9cf5d3549826517a2a89083a7afae28b1e4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant85b1fcc2eac430164656c02295d9cf5d3549826517a2a89083a7afae28b1e4f2.lean#L1810).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d58dee5983aa201468b99df02a6d8c18c7a1794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
