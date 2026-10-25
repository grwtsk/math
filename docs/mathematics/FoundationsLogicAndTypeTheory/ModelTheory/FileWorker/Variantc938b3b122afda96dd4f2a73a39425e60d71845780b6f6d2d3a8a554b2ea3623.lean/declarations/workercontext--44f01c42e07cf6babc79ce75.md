# WorkerContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61a16512588abff443e0ee155910c60e712df8f8800aef0c74b090297b17d142",
  "kind": "structure",
  "lexical_name": "WorkerContext",
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
  "slug": "workercontext--44f01c42e07cf6babc79ce75",
  "source": {
    "blob": "cf8058ac800a67394e26aa4752539ddd979877c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44f01c42e07cf6babc79ce7584c1c1fa5558a6cec888d62a6bf02882be15f418",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61a16512588abff443e0ee155910c60e712df8f8800aef0c74b090297b17d142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WorkerContext where
  /-- Synchronized output channel for LSP messages. Notifications for outdated versions are
    discarded on read. -/
  chanOut                  : Std.Channel OutputMessage
  /--
  Latest document version received by the client, used for filtering out notifications from
  previous versions.
  -/
  maxDocVersionRef         : IO.Ref Int
  freshRequestIdRef        : IO.Ref Int
  partialHandlersRef       : IO.Ref (Std.TreeMap String PartialHandlerInfo)
  pendingServerRequestsRef : IO.Ref (Std.TreeMap RequestID (IO.Promise (ServerRequestResponse Json)))
  hLog                     : FS.Stream
  initParams               : InitializeParams
  processor                : Parser.InputContext → BaseIO Lean.Language.Lean.InitialSnapshot
  clientHasWidgets         : Bool
  /--
  Options defined on the worker cmdline (i.e. not including options from `setup-file`), used for
  context-free tasks such as editing delay.
  -/
  cmdlineOpts              : Options

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf8058ac800a67394e26aa4752539ddd979877c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
