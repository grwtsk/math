# mainLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47259f7963aa7b25e5de3c16acdd703126dafbfc55ed04002a795cec9222e599",
  "kind": "def",
  "lexical_name": "mainLoop",
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
  "slug": "mainloop--9b1c18c8b86b6ac0e419b7d2",
  "source": {
    "blob": "fac9af8902ecc14b1b1d0e704fe4c5dc1627ccfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1565,
    "line": 1509,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b1c18c8b86b6ac0e419b7d2b881eb91f56fdd53bd47b3e549b59ac072cacb2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47259f7963aa7b25e5de3c16acdd703126dafbfc55ed04002a795cec9222e599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1509–1565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def mainLoop (clientTask : ServerTask ServerEvent) : ServerM Unit := do
    let st ← read
    let workers ← st.fileWorkersRef.get
    let mut workerTasks := #[]
    for (_, fw) in workers do
      let some commTask := fw.commTask?
        | continue
      if (← getWorkerState fw) matches WorkerState.crashed then
        continue
      workerTasks := workerTasks.push <| commTask.mapCheap (ServerEvent.workerEvent fw)

    let ev ← ServerTask.waitAny (workerTasks.toList ++ [clientTask]) (by simp)
    match ev with
    | ServerEvent.clientMsg msg =>
      match msg with
      | Message.request id "shutdown" _ =>
        shutdown
        writeMessage { id, result := Json.null : Response Json }
      | Message.request id method (some params) =>
        handleRequest id method (toJson params)
        mainLoop (←runClientTask)
      | Message.response id result =>
        handleResponse id result
        mainLoop (←runClientTask)
      | Message.responseError id code message data? =>
        handleResponseError id code message data?
        mainLoop (←runClientTask)
      | Message.notification method (some params) =>
        handleNotification method (toJson params)
        mainLoop (←runClientTask)
      | _ => throwServerError "Got invalid JSON-RPC message"
    | ServerEvent.clientError e => throw e
    | ServerEvent.workerEvent fw ev =>
      let doc := fw.doc
      let uri := doc.uri
      match ev with
      | WorkerEvent.ioError e =>
        throwServerError s!"IO error while processing events for {uri}: {e}"
      | WorkerEvent.crashed exitCode =>
        let (errorCode, errorCausePointer) :=
          if exitCode = 1 then
            (ErrorCode.workerExited, "see stderr for exception")
          else
            (ErrorCode.workerCrashed, "likely due to a stack overflow or a bug")
        errorPendingRequests uri errorCode
          s!"Server process for {uri} crashed, {errorCausePointer}."
        writeMessage <| mkFileProgressAtPosNotification doc 0 (kind := LeanFileProgressKind.fatalError)
        setWorkerState fw .crashed
        mainLoop clientTask
      | WorkerEvent.terminated =>
        throwServerError
          "Internal server error: Got termination event for worker that should have been removed"
      | .importsChanged =>
        startFileWorker doc
        mainLoop clientTask
end MainLoop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean#L1509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac9af8902ecc14b1b1d0e704fe4c5dc1627ccfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
