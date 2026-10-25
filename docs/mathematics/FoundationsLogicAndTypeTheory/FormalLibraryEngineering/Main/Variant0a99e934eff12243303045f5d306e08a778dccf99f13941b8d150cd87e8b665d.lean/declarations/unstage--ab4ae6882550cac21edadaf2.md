# unstage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e44bc000b4733d07674686e7574325caf4de1f7fefc14afaf5c293aef168a890",
  "kind": "def",
  "lexical_name": "unstage",
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
  "slug": "unstage--ab4ae6882550cac21edadaf2",
  "source": {
    "blob": "b7370c986bdc2e8c39464a90b5767a960e98ae56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 786,
    "line": 739,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab4ae6882550cac21edadaf23067b3785cadb1324e4085023b323b268f9cbbfa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e44bc000b4733d07674686e7574325caf4de1f7fefc14afaf5c293aef168a890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–786.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def unstage : CliM PUnit := do
  processOptions lakeOption
  let opts ← getThe LakeOptions
  let stagingDir ← FilePath.mk <$> takeArg "staging directory"
  let pkg? ← takeArg?
  noArgsRem do
  let cfg ← mkLoadConfig opts
  let ws ← loadWorkspace cfg
  let pkg ← match pkg? with
    | some pkg => parsePackageSpec ws pkg
    | _ => pure ws.root
  let localScope := pkg.cacheScope
  if opts.scope?.isSome && opts.service?.isNone then
    error "`--scope` and `--repo` require `--service`"
  let service? ← id do
    let some service := opts.service?
      | return none
    unless (ws.findCacheService? service).isSome do
      error (serviceNotFound service ws.lakeConfig.config.cache.services)
    return some (.ofString service)
  let map ← CacheMap.load (stagingDir / stagingOutputsFile)
  let descrs ← map.collectOutputDescrs
  let artDir := ws.lakeCache.artifactDir
  IO.FS.createDirAll artDir
  let overwrite := opts.overwrite?.getD false
  let ok ← descrs.foldlM (init := true) fun ok descr => do
    let cachePath := artDir/ descr.relPath
    let stagingPath := stagingDir / descr.relPath
    if (← cachePath.pathExists) then
      if overwrite then
        -- Cache artifacts are read-only, so the old artifact must be deleted first.
        IO.FS.removeFile cachePath
      else
        return ok
    match (← copyFile stagingPath cachePath |>.toBaseIO) with
    | .ok _ =>
      return ok
    | .error (.noFileOrDirectory ..) =>
      logError s!"output artifact not found in staging directory: {stagingPath}"
      return false
    | .error e =>
      logError s!"failed to copy artifact: {e}"
      return false
  unless ok do
    logError "failed to copy all outputs to the staging directory"
    exit 1
  ws.lakeCache.writeMap localScope map service? opts.scope? overwrite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7370c986bdc2e8c39464a90b5767a960e98ae56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
