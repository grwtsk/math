# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a206eea63e3af5559004401027cdf76499b2f5a3e7dfe0c92e5d8b5b2f1b6568",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--88cd6dcb3cf3361baec46417",
  "source": {
    "blob": "457765bf7baa7f06446bfcc010c9ceb5efcb1e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88cd6dcb3cf3361baec464177cde6ade89eaf03d89de584955268ffd04e8f845",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a206eea63e3af5559004401027cdf76499b2f5a3e7dfe0c92e5d8b5b2f1b6568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FromJson ErrorCode := ⟨fun
  | num (-32700 : Int) => return ErrorCode.parseError
  | num (-32600 : Int) => return ErrorCode.invalidRequest
  | num (-32601 : Int) => return ErrorCode.methodNotFound
  | num (-32602 : Int) => return ErrorCode.invalidParams
  | num (-32603 : Int) => return ErrorCode.internalError
  | num (-32002 : Int) => return ErrorCode.serverNotInitialized
  | num (-32001 : Int) => return ErrorCode.unknownErrorCode
  | num (-32801 : Int) => return ErrorCode.contentModified
  | num (-32800 : Int) => return ErrorCode.requestCancelled
  | num (-32900 : Int) => return ErrorCode.rpcNeedsReconnect
  | num (-32901 : Int) => return ErrorCode.workerExited
  | num (-32902 : Int) => return ErrorCode.workerCrashed
  | _  => throw "expected error code"⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457765bf7baa7f06446bfcc010c9ceb5efcb1e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
