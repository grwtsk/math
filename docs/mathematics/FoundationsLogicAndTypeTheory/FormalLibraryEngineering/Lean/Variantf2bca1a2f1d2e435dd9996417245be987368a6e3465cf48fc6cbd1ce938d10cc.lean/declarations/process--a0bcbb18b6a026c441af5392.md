# process

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b49eeea0cd0777f214dd6b8313e1837859feaeba90812a55a7238a9be46fa33",
  "kind": "def",
  "lexical_name": "process",
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
  "slug": "process--a0bcbb18b6a026c441af5392",
  "source": {
    "blob": "4a7b553d8946e330f1de283cb38807371c7e00b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 791,
    "line": 388,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantf2bca1a2f1d2e435dd9996417245be987368a6e3465cf48fc6cbd1ce938d10cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0bcbb18b6a026c441af53925ddfbe48b16ef0a4857eda0a4978ddc7c921f0df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantf2bca1a2f1d2e435dd9996417245be987368a6e3465cf48fc6cbd1ce938d10cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b49eeea0cd0777f214dd6b8313e1837859feaeba90812a55a7238a9be46fa33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–791.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def process
    (setupImports : HeaderSyntax → ProcessingT IO (Except HeaderProcessedSnapshot SetupImportsResult))
    (old? : Option InitialSnapshot) : ProcessingM InitialSnapshot := do
  parseHeader old? |>.run (old?.map (·.ictx))
where
  parseHeader (old? : Option HeaderParsedSnapshot) : LeanProcessingM HeaderParsedSnapshot := do
    let ctx ← read
    let ictx := ctx.toInputContext
    let unchanged old newStx newParserState :=
      -- when header syntax is unchanged, reuse import processing task as is and continue with
      -- parsing the first command, synchronously if possible
      -- NOTE: even if the syntax tree is functionally unchanged, its concrete structure and the new
      -- parser state may still have changed because of trailing whitespace and comments etc., so
      -- they are passed separately from `old`
      if let some oldSuccess := old.result? then
        -- make sure to update ranges of all reused tasks
        let progressRange? := .some ⟨newParserState.pos, ctx.endPos⟩
        return {
          ictx
          stx := newStx
          diagnostics := .empty
          metaSnap := .finished newStx {
            diagnostics := old.diagnostics
          }
          result? := some {
            parserState := newParserState
            processedSnap := (← oldSuccess.processedSnap.bindIO
                (cancelTk? := none) (reportingRange := progressRange?) (sync := true) fun oldProcessed => do
              if let some oldProcSuccess := oldProcessed.result? then
                -- also wait on old command parse snapshot as parsing is cheap and may allow for
                -- elaboration reuse
                oldProcSuccess.firstCmdSnap.bindIO (sync := true)
                    (cancelTk? := none) (reportingRange := progressRange?) fun oldCmd => do
                  let prom ← IO.Promise.new
                  let cancelTk ← IO.CancelToken.new
                  parseCmd oldCmd newParserState oldProcSuccess.cmdState prom (sync := true)
                    cancelTk #[] ctx
                  return .finished none {
                    diagnostics := .empty
                    metaSnap := .finished newStx {
                      diagnostics := oldProcessed.diagnostics
                    }
                    result? := some {
                      cmdState := oldProcSuccess.cmdState
                      firstCmdSnap := { stx? := none, task := prom.result!, cancelTk? := cancelTk } } }
              else
                return .finished newStx oldProcessed) } }
      else return old

    -- fast path: if we have parsed the header successfully...
    if let some old := old? then
      if let some oldSuccess := old.result? then
        if let some (some processed) ← old.processedResult.get? then
          -- ...and the edit is after the second-next command (see note [Incremental Parsing])...
          if let some nextCom ← processed.firstCmdSnap.get? then
            if let some nextNextCom ← nextCom.nextCmdSnap?.bindM (·.get?) then
              if (← isBeforeEditPos nextNextCom.parserState.pos) then
                -- ...go immediately to next snapshot
                return (← unchanged old old.stx oldSuccess.parserState)

    withHeaderExceptions ({ · with ictx, stx := .missing, result? := none, metaSnap := default }) do
      -- parsing the header should be cheap enough to do synchronously
      let (stx, parserState, msgLog) ← Parser.parseHeader ictx
      if msgLog.hasErrors then
        return {
          ictx, stx
          diagnostics := .empty
          metaSnap := .finished stx {
            diagnostics := (← Snapshot.Diagnostics.ofMessageLog msgLog)
          }
          result? := none
        }

      let trimmedStx := stx.raw.unsetTrailing
      -- semi-fast path: go to next snapshot if syntax tree is unchanged
      -- NOTE: We compare modulo `unsetTrailing` in order to ensure that changes in trailing
      -- whitespace do not invalidate the header. This is safe because we only pass the trimmed
      -- syntax tree to `processHeader` below, so there cannot be any references to the trailing
      -- whitespace in its result. We still store the untrimmed syntax tree in the snapshot in order
      -- to uphold the invariant that concatenating all top-level snapshots' syntax trees results in
      -- the original file.
      if let some old := old? then
        if trimmedStx.eqWithInfo old.stx.unsetTrailing then
          -- Here we must make sure to pass the *new* syntax and parser state; see NOTE in
          -- `unchanged`
          return (← unchanged old stx parserState)
        -- on first change, make sure to cancel old invocation
        old.result?.forM (·.processedSnap.cancelRec)
      return {
        ictx, stx
        diagnostics := .empty
        metaSnap := .finished stx {
          diagnostics := (← Snapshot.Diagnostics.ofMessageLog msgLog)
        }
        result? := some {
          parserState
          processedSnap := (← processHeader ⟨trimmedStx⟩ stx parserState)
        }
      }

  processHeader (stx : HeaderSyntax) (origStx : HeaderSyntax) (parserState : Parser.ModuleParserState) :
      LeanProcessingM (SnapshotTask HeaderProcessedSnapshot) := do
    let ctx ← read
    SnapshotTask.ofIO none none (.some ⟨0, ctx.endPos⟩) <|
    ReaderT.run (r := ctx) <|  -- re-enter reader in new task
    withHeaderExceptions (α := HeaderProcessedSnapshot) ({ · with result? := none, metaSnap := default }) do
      let setup ← match (← setupImports stx) with
        | .ok setup => pure setup
        | .error snap => return snap

      let startTime := (← IO.monoNanosNow).toFloat / 1000000000
      let mut opts := setup.opts
      -- allows `headerEnv` to be leaked, which would live until the end of the process anyway
      let (headerEnv, msgLog) ← Elab.processHeaderCore (leakEnv := true)
        stx.startPos setup.imports setup.isModule setup.opts .empty ctx.toInputContext
        setup.trustLevel setup.plugins setup.mainModuleName setup.package? setup.importArts
        (headerStx? := stx) (origHeaderStx? := origStx)
      let stopTime := (← IO.monoNanosNow).toFloat / 1000000000
      let diagnostics := (← Snapshot.Diagnostics.ofMessageLog msgLog)
      if msgLog.hasErrors then
        return { diagnostics, result? := none, metaSnap := default }

      let mut traceState := default
      if trace.profiler.isExporting setup.opts then
        traceState := {
          traces := #[{
            ref := .missing,
            msg := .trace { cls := `Import, startTime, stopTime }
              (.ofFormat "importing") #[]
            : TraceElem
          }].toPArray'
        }
      -- now that imports have been loaded, check options again
      opts ← reparseOptions opts
      let cmdState := Elab.Command.mkState headerEnv msgLog opts
      let cmdState := { cmdState with
        infoState := {
          enabled := true
          trees := #[Elab.InfoTree.context (.commandCtx {
            env     := headerEnv
            fileMap := ctx.fileMap
            ngen    := { namePrefix := `_import }
          }) (Elab.InfoTree.node
              (Elab.Info.ofCommandInfo { elaborator := `header, stx })
              (stx.raw[2].getArgs.toList.map (fun importStx =>
                Elab.InfoTree.node (Elab.Info.ofCommandInfo {
                  elaborator := `import
                  stx := importStx
                }) #[].toPArray'
              )).toPArray'
          )].toPArray'
        }
        traceState
      }
      let prom ← IO.Promise.new
      let cancelTk ← IO.CancelToken.new
      parseCmd none parserState cmdState prom (sync := true) cancelTk #[] ctx
      return {
        diagnostics := .empty
        metaSnap := .finished stx {
          diagnostics
          infoTree? := cmdState.infoState.trees[0]!
        }
        result? := some {
          cmdState
          firstCmdSnap := { stx? := none, task := prom.result!, cancelTk? := cancelTk }
        }
      }

  parseCmd (old? : Option CommandParsedSnapshot) (parserState : Parser.ModuleParserState)
      (cmdState : Command.State) (prom : IO.Promise CommandParsedSnapshot) (sync : Bool)
      (parseCancelTk : IO.CancelToken) (cmds : Array Syntax) : LeanProcessingM Unit := do
    let ctx ← read

    let unchanged old newParserState : BaseIO Unit :=
      -- when syntax is unchanged, reuse command processing task as is
      -- NOTE: even if the syntax tree is functionally unchanged, the new parser state may still
      -- have changed because of trailing whitespace and comments etc., so it is passed separately
      -- from `old`
      if let some oldNext := old.nextCmdSnap? then do
        let newProm ← IO.Promise.new
        let cancelTk ← IO.CancelToken.new
        -- can reuse range, syntax unchanged
        BaseIO.chainTask (sync := true) old.elabSnap.resultSnap.task fun oldResult =>
          -- also wait on old command parse snapshot as parsing is cheap and may allow for
          -- elaboration reuse
          BaseIO.chainTask (sync := true) oldNext.task fun oldNext => do
            parseCmd oldNext newParserState oldResult.cmdState newProm sync cancelTk
              (cmds.push old.stx) ctx
        prom.resolve <| { old with nextCmdSnap? := some {
          stx? := none
          reportingRange := .some ⟨newParserState.pos, ctx.endPos⟩
          task := newProm.result!
          cancelTk? := cancelTk
        } }
      else prom.resolve old  -- terminal command, we're done!

    -- fast path, do not even start new task for this snapshot (see [Incremental Parsing])
    if let some old := old? then
      if let some nextCom ← old.nextCmdSnap?.bindM (·.get?) then
        if let some nextNextCom ← nextCom.nextCmdSnap?.bindM (·.get?) then
          if (← isBeforeEditPos nextNextCom.parserState.pos) then
            return (← unchanged old old.parserState)

    let beginPos := parserState.pos
    let scope := cmdState.scopes.head!
    let pmctx := {
      env := cmdState.env, options := scope.opts, currNamespace := scope.currNamespace
      openDecls := scope.openDecls
    }
    let (stx, parserState, msgLog) :=
      profileit "parsing" scope.opts fun _ =>
        Parser.parseCommand ctx.toInputContext pmctx parserState .empty

    -- semi-fast path
    if let some old := old? then
      -- NOTE: as `parserState.pos` includes trailing whitespace, this forces reprocessing even if
      -- only that whitespace changes, which is wasteful but still necessary because it may
      -- influence the range of error messages such as from a trailing `exact`
      if stx.eqWithInfo old.stx then
        -- Here we must make sure to pass the *new* parser state; see NOTE in `unchanged`
        return (← unchanged old parserState)
      -- On first change, immediately cancel old invocation for all subsequent commands. This
      -- includes setting the global parse cancellation token, which is stored in
      -- `next?` below. Thus we can be sure that no further commands will start to elaborate in the
      -- old invocation from this point on.
      old.nextCmdSnap?.forM (·.cancelRec)
      -- For the current command, we depend on the elaborator to either reuse parts of `old` or
      -- cancel them as soon as reuse can be ruled out.

    -- check for cancellation, most likely during elaboration of previous command, before starting
    -- processing of next command
    if (← parseCancelTk.isSet) then
      if let some old := old? then
        -- all of `old` is discarded, so cancel all of it
        toSnapshotTree old |>.children.forM (·.cancelRec)

      -- this is a bit ugly as we don't want to adjust our API with `Option`s just for cancellation
      -- (as no-one should look at this result in that case) but anything containing `Environment`
      -- is not `Inhabited`
      prom.resolve <| {
        diagnostics := .empty, stx := .missing, parserState
        elabSnap := {
          diagnostics := .empty
          elabSnap := default
          resultSnap := .finished none { diagnostics := .empty, cmdState }
          infoTreeSnap := .finished none { diagnostics := .empty }
          reportSnap := default
        }
        nextCmdSnap? := none
      }
      return

    -- Start new task when leaving fast-forwarding path; see "General notes" above
    let _ ← (if sync then BaseIO.asTask else (.pure <$> ·)) do
      -- definitely resolved in `doElab` task
      let elabPromise ← IO.Promise.new
      let resultPromise ← IO.Promise.new
      let finishedPromise ← IO.Promise.new
      let reportPromise ← IO.Promise.new
      let minimalSnapshots := internal.cmdlineSnapshots.get cmdState.scopes.head!.opts
      let (stx', parserState') := if minimalSnapshots && !Parser.isTerminalCommand stx then
        (default, default)
      else
        (stx, parserState)
      -- report terminal tasks on first line of decl such as not to hide incremental tactics'
      -- progress
      let initRange? := .ofOptionInheriting <| getNiceCommandStartPos? stx |>.map fun pos => ⟨pos, pos⟩
      let next? ← if Parser.isTerminalCommand stx then pure none
        -- for now, wait on "command finished" snapshot before parsing next command
        else some <$> IO.Promise.new
      let nextCmdSnap? := next?.map ({
        stx? := none
        reportingRange := .some ⟨parserState.pos, ctx.endPos⟩
        cancelTk? := parseCancelTk
        task := ·.result!
      })
      let diagnostics ← Snapshot.Diagnostics.ofMessageLog msgLog

      -- use per-command cancellation token for elaboration so that cancellation of further commands
      -- does not affect current command
      let elabCmdCancelTk ← IO.CancelToken.new
      prom.resolve {
        diagnostics, nextCmdSnap?
        stx := stx', parserState := parserState'
        elabSnap := {
          diagnostics := .empty
          elabSnap := { stx? := stx', task := elabPromise.result!, cancelTk? := some elabCmdCancelTk }
          resultSnap := { stx? := stx', reportingRange := initRange?, task := resultPromise.result!, cancelTk? := none }
          infoTreeSnap := { stx? := stx', reportingRange := initRange?, task := finishedPromise.result!, cancelTk? := none }
          reportSnap := { stx? := none, reportingRange := initRange?, task := reportPromise.result!, cancelTk? := none }
        }
      }
      let cmdState ← doElab stx cmds cmdState beginPos
        { old? := old?.map fun old => ⟨old.stx, old.elabSnap.elabSnap⟩, new := elabPromise }
        elabCmdCancelTk ctx

      let mut reportedCmdState := cmdState
      let cmdline := internal.cmdlineSnapshots.get scope.opts && !Parser.isTerminalCommand stx
      if cmdline then
        -- discard all metadata apart from the environment; see `internal.cmdlineSnapshots`
        reportedCmdState := { env := reportedCmdState.env, maxRecDepth := 0 }
      resultPromise.resolve {
        diagnostics := (← Snapshot.Diagnostics.ofMessageLog cmdState.messages)
        traces := cmdState.traceState
        cmdState := reportedCmdState
      }

      -- report info tree when relevant tasks are finished
      BaseIO.chainTask (sync := true) (t := cmdState.infoState.substituteLazy) fun infoSt => do
        let infoTree := infoSt.trees[0]!
        let opts := cmdState.scopes.head!.opts
        let mut msgLog := MessageLog.empty
        if checkTraceOption (← inheritedTraceOptions.get) opts `Elab.info then
          if let .ok msg ← infoTree.format.toBaseIO then
            let data := .tagged `trace <| .trace { cls := `Elab.info } .nil #[msg]
            msgLog := msgLog.add {
              fileName := ctx.fileName
              severity := MessageSeverity.information
              pos      := ctx.fileMap.toPosition beginPos
              data     := data
            }
        finishedPromise.resolve {
          diagnostics := (← Snapshot.Diagnostics.ofMessageLog msgLog)
          infoTree? := infoTree
        }

      -- report traces when *all* tasks are finished
      let traceTask ←
        if checkTraceOption (← inheritedTraceOptions.get) cmdState.scopes.head!.opts `Elab.snapshotTree then
          -- We want to trace all of `CommandParsedSnapshot` but `traceTask` is part of it, so let's
          -- create a temporary snapshot tree containing all tasks but it
          let snaps := #[
            { stx? := stx', task := elabPromise.result!.map (sync := true) toSnapshotTree, cancelTk? := none },
            { stx? := stx', task := resultPromise.result!.map (sync := true) toSnapshotTree, cancelTk? := none },
            { stx? := stx', task := finishedPromise.result!.map (sync := true) toSnapshotTree, cancelTk? := none }] ++
            cmdState.snapshotTasks
          let tree := SnapshotTree.mk { diagnostics := .empty } snaps
          BaseIO.bindTask (← tree.waitAll) fun _ => do
            let .ok (_, s) ← EIO.toBaseIO <| tree.trace |>.run
              { ctx with options := cmdState.scopes.head!.opts } { env := cmdState.env }
              | pure <| .pure <| .mk { diagnostics := .empty } #[]
            let mut msgLog := MessageLog.empty
            for trace in s.traceState.traces do
              msgLog := msgLog.add {
                fileName := ctx.fileName
                severity := MessageSeverity.information
                pos      := ctx.fileMap.toPosition beginPos
                data     := trace.msg
              }
            return .pure <| .mk { diagnostics := (← Snapshot.Diagnostics.ofMessageLog msgLog) } #[]
        else
          pure <| .pure <| .mk { diagnostics := .empty } #[]
      reportPromise.resolve <|
        .mk { diagnostics := .empty } <|
          cmdState.snapshotTasks.push {
            stx? := none
            reportingRange := initRange?
            task := traceTask
            cancelTk? := none
          }
      if let some next := next? then
        -- We're definitely off the fast-forwarding path now
        parseCmd none parserState cmdState next (sync := false) elabCmdCancelTk (cmds.push stx) ctx

  doElab (stx : Syntax) (cmds : Array Syntax) (cmdState : Command.State) (beginPos : String.Pos.Raw)
      (snap : SnapshotBundle DynamicSnapshot) (cancelTk : IO.CancelToken) :
      LeanProcessingM Command.State := do
    let ctx ← read
    let scope := cmdState.scopes.head!
    -- reset per-command state
    let cmdStateRef ← IO.mkRef { cmdState with
      messages := .empty, traceState := {}, snapshotTasks := #[] }
    let cmdCtx : Elab.Command.Context := { ctx with
      cmdPos       := beginPos
      snap?        := if internal.cmdlineSnapshots.get scope.opts then none else snap
      cancelTk?    := some cancelTk
    }
    let (output, _) ←
      IO.FS.withIsolatedStreams (isolateStderr := Core.stderrAsMessages.get scope.opts) do
        EIO.toBaseIO do
          withLoggingExceptions
            (getResetInfoTrees *> Elab.Command.elabCommandTopLevel stx cmds)
            cmdCtx cmdStateRef
    let cmdState ← cmdStateRef.get
    let mut messages := cmdState.messages
    if !output.isEmpty then
      messages := messages.add {
        fileName := ctx.fileName
        severity := MessageSeverity.information
        pos      := ctx.fileMap.toPosition beginPos
        data     := output
      }
    let cmdState : Command.State := { cmdState with messages }
    -- definitely resolve eventually
    snap.new.resolve <| .ofTyped { diagnostics := .empty : SnapshotLeaf }

    -- The reported `cmdState` in the snapshot may be minimized as seen above, so we return the full
    -- state here for further processing on the same thread
    return cmdState

/--
Convenience function for tool uses of the language processor that skips header handling.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantf2bca1a2f1d2e435dd9996417245be987368a6e3465cf48fc6cbd1ce938d10cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantf2bca1a2f1d2e435dd9996417245be987368a6e3465cf48fc6cbd1ce938d10cc.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7b553d8946e330f1de283cb38807371c7e00b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
