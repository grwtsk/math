# HeapNode.WF.toHeap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f910aafeff88f8de2c5228bdfea9253c4e06ef7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77ca1914-e5cc-0ae6-89d9-4c69231fc64a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8698333e-8dc1-86a5-66d8-b50081cbb82b",
  "kind": "theorem",
  "lexical_name": "HeapNode.WF.toHeap",
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
  "slug": "heapnode-wf-toheap--f04a21faf5dc820ab3dca0e0",
  "source": {
    "blob": "7f910aafeff88f8de2c5228bdfea9253c4e06ef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 417,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f04a21faf5dc820ab3dca0e0c20cde2c5b0c8cb29b3314b28ae8635a4d313407",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8698333e-8dc1-86a5-66d8-b50081cbb82b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HeapNode.WF.toHeap {s : HeapNode α} (h : s.WF le a n) : s.toHeap.WF le 0 :=
  go h trivial
where
  go {res} : ∀ {n s}, s.WF le a n → res.WF le s.rank → (HeapNode.toHeap.go s s.rank res).WF le 0
  | _, .nil, _, hr => hr
  | _, .node a c s, ⟨n, rfl, _, h, h'⟩, hr =>
    go (s := s) h' ⟨Nat.le_refl _, by rw [← h'.rank_eq] at h; exact h, hr⟩

/--
The well formedness predicate for a `FindMin` value.
This is not actually a predicate, as it contains an additional data value
`rank` corresponding to the rank of the returned node, which is omitted from `findMin`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8e027aa85eaedcdad0ab30ca3c5d3c00ffc853dfde87ceee35e14bb8d88de1c3.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f910aafeff88f8de2c5228bdfea9253c4e06ef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
