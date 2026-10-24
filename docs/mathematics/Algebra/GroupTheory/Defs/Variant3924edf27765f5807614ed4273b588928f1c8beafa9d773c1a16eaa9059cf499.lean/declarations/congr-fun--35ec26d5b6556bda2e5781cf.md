# congr_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "791e07e3a771eb44b561f4f33b1fe40959650993",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e841bc58-1799-bca7-9422-27cf55ade91c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45a9ed01-dde8-1fb0-f333-a37640b08559",
  "kind": "theorem",
  "lexical_name": "congr_fun",
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
  "slug": "congr-fun--35ec26d5b6556bda2e5781cf",
  "source": {
    "blob": "791e07e3a771eb44b561f4f33b1fe40959650993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 203,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35ec26d5b6556bda2e5781cf4af9e5411ad6027e2dfcf16e5cfa79eb2e278518",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45a9ed01-dde8-1fb0-f333-a37640b08559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem congr_fun {f g : MulEquiv M N} (h : f = g) (x : M) : f x = g x :=
  DFunLike.congr_fun h x

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `791e07e3a771eb44b561f4f33b1fe40959650993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
