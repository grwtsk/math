# ErrorCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81226276a8da2ca243843c6ba7be2643d54063e62024f1df0391d69865706212",
  "kind": "inductive",
  "lexical_name": "ErrorCode",
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
  "slug": "errorcode--0b0d90fd48f0ea243eff646a",
  "source": {
    "blob": "457765bf7baa7f06446bfcc010c9ceb5efcb1e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b0d90fd48f0ea243eff646aa714fc736e48d38a27971f8c86aa7265ab1dc35f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81226276a8da2ca243843c6ba7be2643d54063e62024f1df0391d69865706212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ErrorCode where
  /-- Invalid JSON was received by the server. An error occurred on the server while parsing the JSON text. -/
  | parseError
  /-- The JSON sent is not a valid Request object. -/
  | invalidRequest
  /-- The method does not exist / is not available. -/
  | methodNotFound
  /-- Invalid method parameter(s). -/
  | invalidParams
  /-- Internal JSON-RPC error. -/
  | internalError
  /-- Error code indicating that a server received a notification or
  request before the server has received the `initialize` request. -/
  | serverNotInitialized
  | unknownErrorCode
  -- LSP-specific codes below.
  /-- The server detected that the content of a document got
  modified outside normal conditions. A server should
  NOT send this error code if it detects a content change
  in it unprocessed messages. The result even computed
  on an older state might still be useful for the client.

  If a client decides that a result is not of any use anymore
  the client should cancel the request. -/
  | contentModified
  /-- The client has canceled a request and a server as detected the cancel. -/
  | requestCancelled
  -- Lean-specific codes below.
  | rpcNeedsReconnect
  | workerExited
  | workerCrashed
  deriving Inhabited, BEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457765bf7baa7f06446bfcc010c9ceb5efcb1e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
