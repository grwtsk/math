# realizeConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7eb6d699fbdbf3060773f27cfbb1c97477b60f6a5cb42386af9d8be7fec049ab",
  "kind": "def",
  "lexical_name": "realizeConst",
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
  "slug": "realizeconst--ba1c22090e033c6dd115e1a1",
  "source": {
    "blob": "b9743855e4f667c6fad1cee0803ee003e513baef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2782,
    "line": 2694,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba1c22090e033c6dd115e1a18f14bc0768f493fcabfeb73742db8a2e02c44f79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7eb6d699fbdbf3060773f27cfbb1c97477b60f6a5cb42386af9d8be7fec049ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2694–2782.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def realizeConst (forConst : Name) (constName : Name) (realize : MetaM Unit) :
    MetaM Unit := do
  let env ← getEnv
  -- If `constName` is already known on this branch, avoid the trace node. We should not use
  -- `contains` as it could block as well as find realizations on other branches, which would lack
  -- the relevant local environment extension state when accessed on this branch.
  if env.containsOnBranch constName then
    return
  withTraceNode `Meta.realizeConst (fun _ => return constName) do
    let coreCtx ← readThe Core.Context
    let coreCtx := {
      -- these fields should be invariant throughout the file
      fileName := coreCtx.fileName, fileMap := coreCtx.fileMap
      -- heartbeat limits inside `realizeAndReport` should be measured from this point on
      initHeartbeats := (← IO.getNumHeartbeats)
    }
    let (env, exTask, dyn) ← env.realizeConst forConst constName (realizeAndReport coreCtx)
    -- Realizations cannot be cancelled as their result is shared across elaboration runs
    let exAct ← Core.wrapAsyncAsSnapshot (cancelTk? := none) fun
      | none => return
      | some ex => do
        logError <| ex.toMessageData (← getOptions)
    Core.logSnapshotTask {
      stx? := none
      task := (← BaseIO.mapTask (t := exTask) exAct)
      cancelTk? := none
    }
    if let some res := dyn.get? RealizeConstantResult then
      if let some snap := res.snap? then
        let mut snap := snap
        -- localize diagnostics
        if let some range := (← getRef).getRange? then
          let fileMap ← getFileMap
          snap ← setAllDiagRanges snap (fileMap.toPosition range.start) (fileMap.toPosition range.stop)
        Core.logSnapshotTask <| .finished (stx? := none) snap
      if let some e := res.error? then
        throw e
    setEnv env
where
  -- similar to `wrapAsyncAsSnapshot` but not sufficiently so to share code
  realizeAndReport (coreCtx : Core.Context) env opts := do
    let coreCtx := { coreCtx with
      options := opts
      maxHeartbeats := Core.getMaxHeartbeats opts
    }
    let act :=
      IO.FS.withIsolatedStreams (isolateStderr := Core.stderrAsMessages.get opts) (do
        -- catch all exceptions
        let _ : MonadExceptOf _ MetaM := MonadAlwaysExcept.except
        observing do
          -- Re-privatize private `constName` under the current module so that auxiliary
          -- declarations generated during realization get names scoped to the realizing module,
          -- not the original defining module. This prevents name collisions when the same
          -- constant is realized independently from two modules that are later imported together
          -- (diamond import pattern).
          let namePrefix :=
            if isPrivateName constName then mkPrivateName env constName else constName
          withDeclNameForAuxNaming namePrefix do
            withoutExporting (when := isPrivateName constName) do
              realize
          -- Meta code working on a non-exported declaration should usually do so inside
          -- `withoutExporting` but we're lenient here in case this call is the only one that needs
          -- the setting.
          if !((← getEnv).setExporting false).contains constName then
            throwError "Lean.Meta.realizeConst: {constName} was not added to the environment")
        <* addTraceAsMessages
    let res? ← act |>.run' |>.run coreCtx { env } |>.toBaseIO
    match res? with
    | .ok ((output, err?), st) => pure (st.env, .mk {
      snap?  := (← Core.mkSnapshot? output coreCtx st)
      error? := match err? with
        | .ok ()   => none
        | .error e => some e
      : RealizeConstantResult
    })
    | _ =>
      let _ : Inhabited (Environment × Dynamic) := ⟨env, .mk {
        snap?  := (← Core.mkSnapshot? "" coreCtx { env })
        error? := none
        : RealizeConstantResult
      }⟩
      unreachable!

end Meta

open Meta

namespace PPContext

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean#L2694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9743855e4f667c6fad1cee0803ee003e513baef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
