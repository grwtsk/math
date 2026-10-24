# IsSeqClosed.seqClosure_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd0d40a0bf02b9ca989694919f0eebf6818824be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ceab7a5-7699-f5df-8a34-7dfdb28c984d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fe6a2e7-54a3-5c36-e9a3-7596a8488fbb",
  "kind": "theorem",
  "lexical_name": "IsSeqClosed.seqClosure_eq",
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
  "slug": "isseqclosed-seqclosure-eq--10d9513434572f51e085b9bc",
  "source": {
    "blob": "cd0d40a0bf02b9ca989694919f0eebf6818824be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10d9513434572f51e085b9bc229a108d7e779131169293bcdbf42cba14ea2e42",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fe6a2e7-54a3-5c36-e9a3-7596a8488fbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSeqClosed.seqClosure_eq {s : Set X} (hs : IsSeqClosed s) : seqClosure s = s :=
  Subset.antisymm (fun _p ⟨_x, hx, hp⟩ => hs hx hp) subset_seqClosure
#align is_seq_closed.seq_closure_eq IsSeqClosed.seqClosure_eq

/-- If a set is equal to its sequential closure, then it is sequentially closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd0d40a0bf02b9ca989694919f0eebf6818824be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
