# initializeWorker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3dacac7ec62a58fcbe08db205a75c06816af628c855a491fb2351aa4a879317",
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
  "slug": "initializeworker--80562a6eef08bb7f3d2b9ef1",
  "source": {
    "blob": "d3ccbe3ecb534e94337108b08e68657d0584bbed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 457,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80562a6eef08bb7f3d2b9ef1ba9fe17c8e4c5838b041afff3e55276b385d039b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3dacac7ec62a58fcbe08db205a75c06816af628c855a491fb2351aa4a879317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–548.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ccbe3ecb534e94337108b08e68657d0584bbed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
