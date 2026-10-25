# Heap.deleteMin_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3cd17927c23dbad6b37c8807f96bf999991ad53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a8eceb6343a50f3c4c6b8caf92969ebe70c36b23003a34223e606cf42760d41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5e45dc3-4fec-3772-8643-a0c6442c0ff7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6aea841-dbe1-667a-a770-7a4eb8e9616f",
  "kind": "theorem",
  "lexical_name": "Heap.deleteMin_fst",
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
  "slug": "heap-deletemin-fst--86065b5bada9bbd5751aa11a",
  "source": {
    "blob": "a3cd17927c23dbad6b37c8807f96bf999991ad53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 272,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant3a8eceb6343a50f3c4c6b8caf92969ebe70c36b23003a34223e606cf42760d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86065b5bada9bbd5751aa11a0f6249e47b5f0beffb012a6b4f664e6b7a68ac50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant3a8eceb6343a50f3c4c6b8caf92969ebe70c36b23003a34223e606cf42760d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6aea841-dbe1-667a-a770-7a4eb8e9616f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Heap.deleteMin_fst : ((s : Heap α).deleteMin le).map (·.1) = s.head? :=
  match s with
  | .nil => rfl
  | .node _ _ _ => rfl

end PairingHeapImp

open PairingHeapImp

/--
A [pairing heap](https://en.wikipedia.org/wiki/Pairing_heap) is a data structure which supports
the following primary operations:

* `insert : α → PairingHeap α → PairingHeap α`: add an element to the heap
* `deleteMin : PairingHeap α → Option (α × PairingHeap α)`:
  remove the minimum element from the heap
* `merge : PairingHeap α → PairingHeap α → PairingHeap α`: combine two heaps

The first two operations are known as a "priority queue", so this could be called
a "mergeable priority queue". The standard choice for a priority queue is a binary heap,
which supports `insert` and `deleteMin` in `O(log n)`, but `merge` is `O(n)`.
With a `PairingHeap`, `insert` and `merge` are `O(1)`, `deleteMin` is amortized `O(log n)`.

Note that `deleteMin` may be `O(n)` in a single operation. So if you need an efficient
persistent priority queue, you should use other data structures with better worst-case time.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant3a8eceb6343a50f3c4c6b8caf92969ebe70c36b23003a34223e606cf42760d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant3a8eceb6343a50f3c4c6b8caf92969ebe70c36b23003a34223e606cf42760d41.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3cd17927c23dbad6b37c8807f96bf999991ad53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
