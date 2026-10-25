# realizeValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54e49b0b6ad7c5507fa5acf3fc537d6e142023df84faf1c29a2477924b44b033",
  "kind": "def",
  "lexical_name": "realizeValue",
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
  "slug": "realizevalue--02bfbec4da781820e8f20fb7",
  "source": {
    "blob": "20e3e5ee85818ad6002ce0762167e0d6b4cf7186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2671,
    "line": 2617,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02bfbec4da781820e8f20fb732efe7883486504159f5dcfb83a5fdbaf5de11a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54e49b0b6ad7c5507fa5acf3fc537d6e142023df84faf1c29a2477924b44b033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2617–2671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def realizeValue [BEq α] [Hashable α] [TypeName α] [TypeName β] (forConst : Name) (key : α) (realize : MetaM β) :
    MetaM β := do
  let env ← getEnv
  if !env.areRealizationsEnabledForConst forConst then
    return (← realize)
  let coreCtx ← readThe Core.Context
  let coreCtx := {
    -- these fields should be invariant throughout the file
    fileName := coreCtx.fileName, fileMap := coreCtx.fileMap
    -- heartbeat limits inside `realizeAndReport` should be measured from this point on
    initHeartbeats := (← IO.getNumHeartbeats)
  }
  let res ← env.realizeValue forConst key (realizeAndReport (.mk <$> realize) coreCtx)
  let some res := res.get? RealizeValueResult | unreachable!
  if let some snap := res.snap? then
    let mut snap := snap
    -- localize diagnostics
    if let some range := (← getRef).getRange? then
      let fileMap ← getFileMap
      snap ← setAllDiagRanges snap (fileMap.toPosition range.start) (fileMap.toPosition range.stop)
    Core.logSnapshotTask <| .finished (stx? := none) snap
  match res.res? with
  | .ok dyn => dyn.get? β |>.getDM (unreachable!)
  | .error e => throw e
where
  -- similar to `wrapAsyncAsSnapshot` but not sufficiently so to share code
  realizeAndReport (realize : MetaM Dynamic) (coreCtx : Core.Context) env opts := do
    let coreCtx := { coreCtx with options := opts }
    let act :=
      IO.FS.withIsolatedStreams (isolateStderr := Core.stderrAsMessages.get opts) (do
        -- catch all exceptions
        let _ : MonadExceptOf _ MetaM := MonadAlwaysExcept.except
        observing do
          -- The scope at which `enableRealizationsForConst forConst` was called is essentially
          -- arbitrary, normalize here. As `realize` will not add new constants nor should it
          -- directly be connected to user input to be checked, be permissive.
          withoutExporting do
            realize)
        <* addTraceAsMessages
    let res? ← act |>.run' |>.run coreCtx { env } |>.toBaseIO
    let res ← match res? with
      | .ok ((output, res?), st) => pure {
        snap? := (← Core.mkSnapshot? output coreCtx st)
        res?
        : RealizeValueResult
      }
      | _ =>
        let _ : Inhabited RealizeValueResult := ⟨{
          snap? := (← Core.mkSnapshot? "" coreCtx { env })
          res?  := default
          : RealizeValueResult
        }⟩
        unreachable!
    return .mk (α := RealizeValueResult) res

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean#L2617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e3e5ee85818ad6002ce0762167e0d6b4cf7186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
