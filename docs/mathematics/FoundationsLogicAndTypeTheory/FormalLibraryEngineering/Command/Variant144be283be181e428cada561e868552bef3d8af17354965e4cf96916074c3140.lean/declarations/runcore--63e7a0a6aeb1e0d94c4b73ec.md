# runCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7dcc9b8b3676ffa1e22a8ff0e4f4076f8c15ebbeeef023def1b428f3d517b7bd",
  "kind": "def",
  "lexical_name": "runCore",
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
  "slug": "runcore--63e7a0a6aeb1e0d94c4b73ec",
  "source": {
    "blob": "112bf0606c1b16af59d7953c32ac7959b6508ced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63e7a0a6aeb1e0d94c4b73ec1b8dcf2e0ef99bd71be872d26be9f0d649749a7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7dcc9b8b3676ffa1e22a8ff0e4f4076f8c15ebbeeef023def1b428f3d517b7bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def runCore (x : CoreM α) : CommandElabM α := do
  let s ← get
  let ctx ← read
  let heartbeats ← IO.getNumHeartbeats
  let env := Kernel.resetDiag s.env
  let scope := s.scopes.head!
  let coreCtx : Core.Context := {
    fileName           := ctx.fileName
    fileMap            := ctx.fileMap
    currRecDepth       := ctx.currRecDepth
    maxRecDepth        := s.maxRecDepth
    ref                := ctx.ref
    currNamespace      := scope.currNamespace
    openDecls          := scope.openDecls
    initHeartbeats     := heartbeats
    quotContext        := (← MonadQuotation.getMainModule)
    currMacroScope     := ctx.currMacroScope
    options            := scope.opts
    cancelTk?          := ctx.cancelTk?
    suppressElabErrors := ctx.suppressElabErrors }
  let x : EIO _ _ := x.run coreCtx {
    env
    ngen := s.ngen
    auxDeclNGen := s.auxDeclNGen
    nextMacroScope := s.nextMacroScope
    infoState.enabled := s.infoState.enabled
    -- accumulate lazy assignments from all `CoreM` lifts
    infoState.lazyAssignment := s.infoState.lazyAssignment
    traceState := s.traceState
    snapshotTasks := s.snapshotTasks
  }
  let (ea, coreS) ← liftM x
  modify fun s => { s with
    env                      := coreS.env
    nextMacroScope           := coreS.nextMacroScope
    ngen                     := coreS.ngen
    auxDeclNGen              := coreS.auxDeclNGen
    infoState.trees          := s.infoState.trees.append coreS.infoState.trees
    -- we assume substitution of `assignment` has already happened, but for lazy assignments we only
    -- do it at the very end
    infoState.lazyAssignment := coreS.infoState.lazyAssignment
    traceState.traces        := coreS.traceState.traces.map fun t => { t with ref := replaceRef t.ref ctx.ref }
    snapshotTasks            := coreS.snapshotTasks
    messages                 := s.messages ++ coreS.messages
  }
  return ea

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112bf0606c1b16af59d7953c32ac7959b6508ced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
