# initializeWorker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0da44d97e4d233408a2373e1a1861148b6b8c769b7fc6e0c42d2f1deeb7e62d0",
  "kind": "def",
  "lexical_name": "initializeWorker",
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
  "slug": "initializeworker--50604e91d794a23f94c11ae3",
  "source": {
    "blob": "cf8058ac800a67394e26aa4752539ddd979877c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 449,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50604e91d794a23f94c11ae3cf8fca7b40cb5891b935f5c60c8c42e92231ec74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0da44d97e4d233408a2373e1a1861148b6b8c769b7fc6e0c42d2f1deeb7e62d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def initializeWorker (doc : DocumentMeta) (o e : FS.Stream) (initParams : InitializeParams) (opts : Options)
      : IO (WorkerContext × WorkerState) := do
    let clientHasWidgets := initParams.initializationOptions?.bind (·.hasWidgets?) |>.getD false
    let maxDocVersionRef ← IO.mkRef 0
    let freshRequestIdRef ← IO.mkRef (0 : Int)
    let stickyDiagsRef ← IO.mkRef {}
    let pendingServerRequestsRef ← IO.mkRef ∅
    let chanOut ← mkLspOutputChannel maxDocVersionRef
    let timestamp ← IO.monoMsNow
    let partialHandlersRef ← IO.mkRef <| Std.TreeMap.ofArray (cmp := compare) <|
      (← partialLspRequestHandlerMethods).map fun (method, refreshMethod, _) =>
        (method, {
          refreshMethod
          requestsInFlight := 0
          -- Emit a refresh request after a file worker restart.
          pendingRefreshInfo? := some { lastRefreshTimestamp := timestamp, successiveRefreshAttempts := 0 }
        })
    let processor := Language.Lean.process (setupImports doc opts chanOut)
    let processor ← Language.mkIncrementalProcessor processor
    let initSnap ← processor doc.mkInputContext
    let _ ← ServerTask.IO.asTask do
      let importClosure ← IO.lazyPure fun _ => getImportClosure? initSnap
      let importClosure ← importClosure.filterMapM (documentUriFromModule? ·)
      chanOut.send <| .ofMsg <| mkImportClosureNotification importClosure
    let ctx := {
      chanOut
      hLog := e
      initParams
      processor
      clientHasWidgets
      partialHandlersRef
      pendingServerRequestsRef
      maxDocVersionRef
      freshRequestIdRef
      cmdlineOpts := opts
    }
    let diagnosticsMutex ← Std.Mutex.new { stickyDiagsRef }
    let doc : EditableDocumentCore := {
      «meta» := doc, initSnap, diagnosticsMutex
    }
    let reporterCancelTk ← CancelToken.new
    let reporter ← reportSnapshots ctx doc reporterCancelTk
    return (ctx, {
      doc := { doc with reporter }
      reporterCancelTk
      pendingRequests    := Std.TreeMap.empty
      rpcSessions        := Std.TreeMap.empty
      importCachingTask? := none
    })
  where
    /-- Creates an LSP message output channel along with a reader that sends out read messages on
        the output FS stream after discarding outdated notifications. This is the only component of
        the worker with access to the output stream, so we can synchronize messages from parallel
        elaboration tasks here. -/
    mkLspOutputChannel maxDocVersion : IO (Std.Channel OutputMessage) := do
      let chanOut ← Std.Channel.new
      let _ ← chanOut.forAsync (prio := .dedicated) fun ⟨msg?, serialized⟩ => do
        -- discard outdated notifications; note that in contrast to responses, notifications can
        -- always be silently discarded
        let version? : Option Int := do
          match msg? with
          | some (.notification "textDocument/publishDiagnostics" (some params)) =>
            let params : PublishDiagnosticsParams ← fromJson? (toJson params) |>.toOption
            params.version?
          | some (.notification "$/lean/fileProgress" (some params)) =>
            let params : LeanFileProgressParams ← fromJson? (toJson params) |>.toOption
            params.textDocument.version?
          | some (.notification "$/lean/ileanInfoUpdate" (some params))
          | some (.notification "$/lean/ileanInfoFinal" (some params)) =>
            let params : LeanIleanInfoParams ← fromJson? (toJson params) |>.toOption
            some params.version
          | _ => none
        if let some version := version? then
          if version < (← maxDocVersion.get) then
            return

          -- note that because of `server.reportDelayMs`, we cannot simply set `maxDocVersion` here
          -- as that would allow outdated messages to be reported until the delay is over
        o.writeSerializedLspMessage serialized |>.catchExceptions (fun _ => pure ())
      return chanOut

    getImportClosure? (snap : Language.Lean.InitialSnapshot) : Array Name := Id.run do
      let some snap := snap.result?
        | return #[]
      let some snap ← snap.processedSnap.get.result?
        | return #[]
      let importClosure := snap.cmdState.env.allImportedModuleNames
      return importClosure

end Initialization

section ServerRequests
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf8058ac800a67394e26aa4752539ddd979877c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
