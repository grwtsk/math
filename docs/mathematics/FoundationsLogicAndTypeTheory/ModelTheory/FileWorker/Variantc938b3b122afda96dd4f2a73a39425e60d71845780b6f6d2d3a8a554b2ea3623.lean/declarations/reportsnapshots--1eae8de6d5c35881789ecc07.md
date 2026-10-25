# reportSnapshots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86f7a6b765887a1b688bfe3a8eb45a24922156b958a88ebef6b82ed10bf7e380",
  "kind": "def",
  "lexical_name": "reportSnapshots",
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
  "slug": "reportsnapshots--1eae8de6d5c35881789ecc07",
  "source": {
    "blob": "cf8058ac800a67394e26aa4752539ddd979877c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 227,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1eae8de6d5c35881789ecc071b15e42e0bea898d2114a53e4a07df0cca228fc8",
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

Occurrence: `declaration:86f7a6b765887a1b688bfe3a8eb45a24922156b958a88ebef6b82ed10bf7e380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def reportSnapshots (ctx : WorkerContext) (doc : EditableDocumentCore)
      (cancelTk : CancelToken) : BaseIO (ServerTask Unit) :=
    ServerTask.BaseIO.asTask do
      IO.sleep (server.reportDelayMs.get ctx.cmdlineOpts).toUInt32 -- "Debouncing 1."
      let (_, st) ← handleTasks #[.finished none <| toSnapshotTree doc.initSnap] |>.run {}
      if (← cancelTk.isSet) then
        return ()
      -- callback at the end of reporting
      if st.hasFatal then
        discard <| ctx.chanOut.send <| .ofMsg <| mkFileProgressAtPosNotification doc.meta 0 .fatalError
      else
        discard <| ctx.chanOut.send <| .ofMsg <| mkFileProgressDoneNotification doc.meta
      unless st.hasBlocked do  -- "Debouncing 4."
        publishDiagnostics ctx doc
      -- This will overwrite existing ilean info for the file, in case something
      -- went wrong during the incremental updates.
      ctx.chanOut.sync.send <| .ofMsg <| ← mkIleanInfoFinalNotification doc.meta st.allInfoTrees
      return ()
  where
    /--
    Given an array of possibly-unfinished tasks, handles them, possibly after waiting for one of
    them to finish.
    -/
    handleTasks (ts : Array (SnapshotTask SnapshotTree)) : StateT ReportSnapshotsState BaseIO Unit := do
      if (← cancelTk.isSet) then
        return ()
      let ts ← ts.flatMapM handleFinished
      -- all `ts` are now (likely) in-progress, report them
      sendFileProgress ts
      -- check again whether this has changed before committing to waiting
      if (← ts.anyM (IO.hasFinished ·.task)) then
        handleTasks ts
      else if h : ts.size > 0 then
        if !(← get).hasBlocked then  -- "Debouncing 2."
          publishDiagnostics ctx doc
          modify fun st => { st with hasBlocked := true }
        -- wait for at least one task to finish; there is a race condition here where a task may
        -- have finished between the previous check and this line but we accept the progress
        -- notifications being temporarily out of date in this case
        let _ ← IO.waitAny (ts.map (·.task) |>.toList)
          (by simp only [Array.toList_map, List.length_map, Array.length_toList, gt_iff_lt, h])
        handleTasks ts

    /-- Recursively handles finished tasks and replaces them with their unfinished children. -/
    handleFinished (t : SnapshotTask SnapshotTree) :
        StateT ReportSnapshotsState BaseIO (Array (SnapshotTask SnapshotTree)) := do
      if (← IO.hasFinished t.task) then
        let node ← IO.wait t.task
        handleNode node
        -- limit children's reported range to that of the parent, if any, to avoid strange
        -- non-monotonic progress updates; replace `inherit` children's ranges with parent's
        let ts := node.children.map (fun t' => { t' with reportingRange :=
          -- NOTE: as `t.reportingRange?` has already gone through this transformation, it should be
          -- either `some` or `skip` at this point
          match t.reportingRange, t'.reportingRange with
          | .some r, .some r' =>
            let start := max r.start r'.start
            let stop := min r.stop r'.stop
            -- ensure `stop ≥ start`, lest we end up with negative ranges if `r` and `r'` are
            -- disjoint
            let stop := max start stop
            .some { start, stop }
          | _, .some r' => .some r'
          | r?, .inherit => r?
          | _, _ => .skip })
        ts.flatMapM handleFinished
      else
        return #[t]

    /-- Handles information of a single now-finished snapshot. -/
    handleNode (node : SnapshotTree) : StateT ReportSnapshotsState BaseIO Unit := do
      if node.element.diagnostics.msgLog.hasUnreported then
        let diags ←
          if let some memorized ← node.element.diagnostics.interactiveDiagsRef?.bindM fun ref => do
              return (← ref.get).bind (·.get? MemorizedInteractiveDiagnostics) then
            pure memorized.diags
          else
            let mut msgs := node.element.diagnostics.msgLog.toArray
            if ! ctx.initParams.capabilities.silentDiagnosticSupport then
              msgs := msgs.filter (! ·.isSilent)
            let diags ← msgs.mapM
              (Widget.msgToInteractiveDiagnostic doc.meta.text · ctx.clientHasWidgets)
            if let some cacheRef := node.element.diagnostics.interactiveDiagsRef? then
              cacheRef.set <| some <| .mk { diags : MemorizedInteractiveDiagnostics }
            pure diags
        doc.appendDiagnostics diags
        if (← get).hasBlocked then
          publishDiagnostics ctx doc

      modify fun st => { st with hasFatal := st.hasFatal || node.element.isFatal }

      if let some itree := node.element.infoTree? then
        let mut newInfoTrees := (← get).newInfoTrees.push itree
        if (← get).hasBlocked then
          ctx.chanOut.sync.send <| .ofMsg <| ← mkIleanInfoUpdateNotification doc.meta newInfoTrees
          newInfoTrees := #[]
        modify fun st => { st with newInfoTrees, allInfoTrees := st.allInfoTrees.push itree }

    /-- Reports given tasks' ranges, merging overlapping ones. -/
    sendFileProgress (tasks : Array (SnapshotTask SnapshotTree)) : StateT ReportSnapshotsState BaseIO Unit := do
      let ranges := tasks.filterMap (match ·.reportingRange with
        | .some r => some r
        | _       => none)
      let ranges := ranges.qsort (·.start < ·.start)
      let ranges := ranges.foldl (init := #[]) fun rs r => match rs[rs.size - 1]? with
        | some last =>
          if last.stop < r.start then
            rs.push r
          else
            rs.pop.push { last with stop := max last.stop r.stop }
        | none => rs.push r
      let ranges := ranges.map (·.toLspRange doc.meta.text)
      let notifs := ranges.map ({ range := ·, kind := .processing })
      ctx.chanOut.sync.send <| .ofMsg <| mkFileProgressNotification doc.meta notifs

end Elab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf8058ac800a67394e26aa4752539ddd979877c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
