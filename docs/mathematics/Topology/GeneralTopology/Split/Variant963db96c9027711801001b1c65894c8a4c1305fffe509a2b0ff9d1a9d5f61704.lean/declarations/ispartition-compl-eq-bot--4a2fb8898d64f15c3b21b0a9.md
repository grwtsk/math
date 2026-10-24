# IsPartition.compl_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab34d58413b4867ce8c6c0c78f1a014571b2dd2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c8d34f9-f589-671e-5eb8-4498501d1bf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4bd1a1b-0f79-1eb0-6f65-9008ed52b6ba",
  "kind": "theorem",
  "lexical_name": "IsPartition.compl_eq_bot",
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
  "slug": "ispartition-compl-eq-bot--4a2fb8898d64f15c3b21b0a9",
  "source": {
    "blob": "ab34d58413b4867ce8c6c0c78f1a014571b2dd2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 352,
    "path": "GRWTSK/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a2fb8898d64f15c3b21b0a9181f42742844bfae16aed314d5c488169f18fe86",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4bd1a1b-0f79-1eb0-6f65-9008ed52b6ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPartition.compl_eq_bot {π : Prepartition I} (h : IsPartition π) : π.compl = ⊥ := by
  rw [← iUnion_eq_empty, iUnion_compl, h.iUnion_eq, sdiff_self]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab34d58413b4867ce8c6c0c78f1a014571b2dd2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
