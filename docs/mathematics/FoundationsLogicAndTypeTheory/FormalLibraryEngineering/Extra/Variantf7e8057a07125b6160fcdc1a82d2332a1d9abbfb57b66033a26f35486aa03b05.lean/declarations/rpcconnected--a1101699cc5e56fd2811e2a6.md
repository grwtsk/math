# RpcConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4522acfa570eb4a4b27ad71af01d6843b7252e22ded6590e33041adcf88ee056",
  "kind": "structure",
  "lexical_name": "RpcConnected",
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
  "slug": "rpcconnected--a1101699cc5e56fd2811e2a6",
  "source": {
    "blob": "073e8ce7273bb4bd90d43c59eb307aad76da5e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf7e8057a07125b6160fcdc1a82d2332a1d9abbfb57b66033a26f35486aa03b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1101699cc5e56fd2811e2a6a9809db39f0a16db553dc67c4378c306937f9049",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf7e8057a07125b6160fcdc1a82d2332a1d9abbfb57b66033a26f35486aa03b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4522acfa570eb4a4b27ad71af01d6843b7252e22ded6590e33041adcf88ee056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RpcConnected where
  sessionId : UInt64
  deriving FromJson, ToJson

/-- `$/lean/rpc/call` client->server request.

A request to execute a procedure bound for RPC.
If an incorrect session ID is present, the server errors with `RpcNeedsReconnect`.

Extends `TextDocumentPositionParams` because in Lean,
symbols exist in the context of a position within a source file
(e.g., `foo` is defined below but not above `def foo`).
We use the position to resolve the set of defined constants,
registered RPC methods, etc.

Both the request and the response may contain `RpcEncodable` data.
It is serialized following the `RpcWireFormat`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf7e8057a07125b6160fcdc1a82d2332a1d9abbfb57b66033a26f35486aa03b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf7e8057a07125b6160fcdc1a82d2332a1d9abbfb57b66033a26f35486aa03b05.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `073e8ce7273bb4bd90d43c59eb307aad76da5e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
