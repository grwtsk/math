# forwardMessages

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2425f2ed1c30a20cf749af827f2c3892eb483cabe3fc1560cbc7bac7f5a586d",
  "kind": "def",
  "lexical_name": "forwardMessages",
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
  "slug": "forwardmessages--2dafcbee9dda8e23f1f66417",
  "source": {
    "blob": "dedb28154c483633b49a12d1689938209c1531c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 746,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dafcbee9dda8e23f1f664176864b9ddf95f9acd29e5884e3a833a8380c77a58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2425f2ed1c30a20cf749af827f2c3892eb483cabe3fc1560cbc7bac7f5a586d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def forwardMessages (fw : FileWorker) : ServerM (ServerTask WorkerEvent) := do
    let task ← ServerTask.IO.asTask (loop $ ←read)
    return task.mapCheap fun
      | Except.ok ev   => ev
      | Except.error e => WorkerEvent.ioError e
  where
    loop : ServerM WorkerEvent := do
      let mut pendingWorkerToWatchdogRequests : Std.TreeMap RequestID (ServerTask Unit × CancelToken) := ∅
      while true do
        let msg ←
          try
            fw.stdout.readLspMessageAsString
          catch _ =>
            let exitCode ← fw.waitForProc
            -- Remove surviving descendant processes, if any, such as from nested builds.
            -- On Windows, we instead rely on elan doing this.
            try fw.proc.kill catch _ => pure ()
            -- TODO: Wait for process group to finish
            match exitCode with
              | 0 => return .terminated
              | 2 => return .importsChanged
              | _ => return .crashed exitCode
        let .ok metaData := parseMessageMetaData msg
          | continue

        let (_, pendingWorkerToWatchdogRequests') ←
          StateT.run (s := pendingWorkerToWatchdogRequests) <| handleMessage msg metaData

        pendingWorkerToWatchdogRequests := ∅
        for (id, task, cancelTk) in pendingWorkerToWatchdogRequests' do
          if ← task.hasFinished then
            continue
          pendingWorkerToWatchdogRequests := pendingWorkerToWatchdogRequests.insert id (task, cancelTk)

      return .terminated

    handleMessage (msg : String) (metaData : MessageMetaData)
        : StateT (Std.TreeMap RequestID (ServerTask Unit × CancelToken)) ServerM Unit :=
      -- When the file worker is terminated by the main thread, the client can immediately launch
      -- another file worker using `didOpen`. In this case, even when this task and the old file
      -- worker process haven't terminated yet, we want to avoid emitting diagnostics and responses
      -- from the old process, so that they can't race with one another in the client.
      fw.state.atomically (m := StateT (Std.TreeMap RequestID (ServerTask Unit × CancelToken)) ServerM) do
        let s ← get
        let uri := fw.doc.uri
        if s matches .terminating then
          return
        -- Re. `o.writeLspMessage msg`:
        -- Writes to Lean I/O channels are atomic, so these won't trample on each other.
        match metaData with
        | .response id => do
          let req? ← eraseGetPendingRequest uri id
          -- In the rare scenario that we detect a file worker crash on the main thread and this task
          -- still has a response to process, it could theoretically happen that we restart the file
          -- worker, discharge all queued requests to it and then get a duplicate response.
          -- This ensures that this scenario can't occur, and we only emit responses for requests
          -- that were still pending.
          if let some req := req? then
            let resp ← handleResponseSpecialCases fw req msg
            writeSerializedMessage resp
        | .responseError id code _ _ => do
          let wasPending ← erasePendingRequest uri id
          if code matches .requestCancelled then
            let pendingWorkerToWatchdogRequests ← getThe (Std.TreeMap RequestID (ServerTask Unit × CancelToken))
            if let some (_, cancelTk) := pendingWorkerToWatchdogRequests.get? id then
              cancelTk.set
          if wasPending then
            writeSerializedMessage msg
        | .request id method =>
          if method == "$/lean/queryModule" then
            if let .ok params := parseRequestParams? LeanQueryModuleParams msg then
              let (task, cancelTk) ← handleQueryModule fw id params
              modifyThe (Std.TreeMap RequestID (ServerTask Unit × CancelToken)) (·.insert params.sourceRequestID (task, cancelTk))
          else
            if let .ok params? := parseRequestParams? (Option Json.Structured) msg then
              let globalID ← (← read).serverRequestData.modifyGet
                (·.trackOutboundRequest fw.doc.uri id)
              writeMessage (Message.request globalID method params?)
        | .notification "$/lean/ileanHeaderSetupInfo" =>
          if let .ok params := parseNotificationParams? LeanILeanHeaderSetupInfoParams msg then
            handleILeanHeaderSetupInfo fw params
        | .notification "$/lean/ileanInfoUpdate" =>
          if let .ok params := parseNotificationParams? LeanIleanInfoParams msg then
            handleIleanInfoUpdate fw params
        | .notification "$/lean/ileanInfoFinal" =>
          if let .ok params := parseNotificationParams? LeanIleanInfoParams msg then
            handleIleanInfoFinal fw params
        | .notification "$/lean/importClosure" =>
          if let .ok params := parseNotificationParams? LeanImportClosureParams msg then
            handleImportClosure fw params
        | _ =>
          writeSerializedMessage msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dedb28154c483633b49a12d1689938209c1531c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
