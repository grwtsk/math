# runLintersAsync

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1bd61d092efd26f49b5aa28a03d4289b98ec19aa276e6686c0a21f926e5a18c",
  "kind": "def",
  "lexical_name": "runLintersAsync",
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
  "slug": "runlintersasync--1f0c4f4111906b40d0b45426",
  "source": {
    "blob": "64dd38ae66f95db8e5109b5b0e7ec2e229855a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 370,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f0c4f4111906b40d0b454261a4460175132916b826e0cc1e46cc1201017c42e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1bd61d092efd26f49b5aa28a03d4289b98ec19aa276e6686c0a21f926e5a18c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runLintersAsync (stx : Syntax) (cmds : Array Syntax) : CommandElabM Unit := do
  if !Elab.async.get (← getOptions) then
    withoutModifyingEnv do
      runLinters stx
      if Parser.isTerminalCommand stx then
        runModuleLinters cmds
    return

  -- linters should have access to the complete info tree and message log
  let mut snaps := (← get).snapshotTasks
  if let some elabSnap := (← read).snap? then
    snaps := snaps.push { stx? := none, cancelTk? := none, task := elabSnap.new.result!.map (sync := true) toSnapshotTree }
  let tree := SnapshotTree.mk { diagnostics := .empty } snaps
  let treeTask ← tree.waitAll

  -- We only start one task for all linters for now as most linters are fast and we simply want
  -- to unblock elaboration of the next command
  let cancelTk ← IO.CancelToken.new
  let lintAct ← wrapAsyncAsSnapshot (cancelTk? := cancelTk) fun infoSt => do
    let messages := tree.getAll.map (·.diagnostics.msgLog) |>.foldl (· ++ ·) .empty
    -- do not double-report
    let messages := messages.markAllReported
    modify fun st => { st with messages := st.messages ++ messages }
    modifyInfoState fun _ => infoSt
    runLinters stx
    if Parser.isTerminalCommand stx then
        runModuleLinters cmds

  let task ← BaseIO.bindTask (sync := true) (t := (← getInfoState).substituteLazy) fun infoSt =>
    BaseIO.mapTask (t := treeTask) fun _ =>
      lintAct infoSt
  logSnapshotTask { stx? := none, task, cancelTk? := cancelTk }

/--
Registers a command elaborator for the given syntax node kind.

A command elaborator should have type `Lean.Elab.Command.CommandElab` (which is
`Lean.Syntax → Lean.Elab.Term.CommandElabM Unit`), i.e. should take syntax of the given syntax
node kind as a parameter and perform an action.

The `elab_rules` and `elab` commands should usually be preferred over using this attribute
directly.
-/
@[builtin_doc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64dd38ae66f95db8e5109b5b0e7ec2e229855a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
