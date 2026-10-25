# get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f47ff99d292f178c0ab66be9299523a222d34d078a1d17cdd99106ae0785bd2",
  "kind": "def",
  "lexical_name": "get",
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
  "slug": "get--b6ef5d062d8ad675bfe1ad69",
  "source": {
    "blob": "b7370c986bdc2e8c39464a90b5767a960e98ae56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 473,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6ef5d062d8ad675bfe1ad69ac34c312d76324b77d4024455ccdd18b3a44c3fa",
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

Occurrence: `declaration:2f47ff99d292f178c0ab66be9299523a222d34d078a1d17cdd99106ae0785bd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def get : CliM PUnit := do
  processOptions lakeOption
  let opts ← getThe LakeOptions
  let mappings? ← takeArg?
  noArgsRem do
  let cfg ← mkLoadConfig opts
  let ws ← loadWorkspace cfg
  let cache := ws.lakeCache
  let overwrite := opts.overwrite?.getD true
  unless overwrite do
    -- artifacts of skipped mappings with `--no-overwrite` cannot be cleanly handled
    error "`--no-overwrite` is not supported for `cache get`"
  if let some file := mappings? then liftM (m := LoggerIO) do
    if opts.mappingsOnly then
      error "`--mappings-only` is not supported with a mappings file; use `lake cache add` instead"
    if opts.platform?.isSome || opts.toolchain?.isSome then
      logWarning "the `--platform` and `--toolchain` options do nothing for `cache get` with a mappings file"
      if opts.failLv ≤ .warning then
        failure
    let some remoteScope := opts.scope?
      | error "to use `cache get` with a mappings file, `--scope` or `--repo` must be set"
    let service : CacheService ← id do
      if let some service := opts.service? then
        let some service := ws.findCacheService? service
          | error (serviceNotFound service ws.lakeConfig.config.cache.services)
        return service
      else if let some artifactEndpoint := ws.lakeEnv.cacheArtifactEndpoint? then
        logWarning endpointDeprecation
        return .downloadArtsService artifactEndpoint ws.lakeEnv.cacheService?
      else
        return ws.defaultCacheService
    let map ← CacheMap.load file
    cache.writeMap ws.root.cacheScope map service.name? (some remoteScope) overwrite
    let descrs ← map.collectOutputDescrs
    service.downloadArtifacts descrs cache remoteScope opts.forceDownload
  else
    let platform := opts.platform?.getD .system
    let toolchain := opts.toolchain?.getD ws.cacheToolchain
    let service : CacheService ← id do
      if let some service := opts.service? then
        let some service := ws.findCacheService? service
          | error (serviceNotFound service ws.lakeConfig.config.cache.services)
        return service
      else
        match ws.lakeEnv.cacheArtifactEndpoint?, ws.lakeEnv.cacheRevisionEndpoint? with
        | some artifactEndpoint, some revisionEndpoint =>
          logWarning endpointDeprecation
          if opts.mappingsOnly then
            error "`--mappings-only` requires services to be configured
              via the Lake system configuration (not environment variables)"
          return .downloadService artifactEndpoint revisionEndpoint ws.lakeEnv.cacheService?
        | none, none =>
            return ws.defaultCacheService
        | some artifactEndpoint, none =>
          logWarning endpointDeprecation
          error (invalidEndpointConfig artifactEndpoint "")
        | none, some revisionEndpoint =>
          logWarning endpointDeprecation
          error (invalidEndpointConfig "" revisionEndpoint)
    if let some remoteScope := opts.scope? then
      if !remoteScope.isRepo && service.isReservoir then
        -- `--scope` with Reservoir would imply downloading artifacts for a different package.
        -- This is likely user error (they meant `--repo`) rather than something actually useful.
        error "to use `cache get` with `--scope`, a custom endpoint must be set (not Reservoir); \
          if you instead want to download artifacts for a fork of the package, use `--repo`"
      let pkg := ws.root
      let repo := GitRepo.mk pkg.dir
      let platform := cachePlatform pkg platform
      let toolchain := cacheToolchain pkg toolchain
      let map ← id do
        if let some rev := opts.rev? then
          let rev ← repo.resolveRevision rev
          let some map ← service.downloadRevisionOutputs? rev cache pkg.cacheScope remoteScope platform toolchain
            | error s!"{remoteScope}: outputs not found for revision {rev}"
          return map
        else
          findOutputs cache service pkg remoteScope opts platform toolchain
      cache.writeMap pkg.cacheScope map service.name? (some remoteScope) overwrite
      unless opts.mappingsOnly do
        let descrs ← map.collectOutputDescrs
        service.downloadArtifacts descrs cache remoteScope opts.forceDownload
    else if service.isReservoir then
      -- TODO: Parallelize?
      let ok ← ws.packages.foldlM (start := 1) (init := true) (m := LoggerIO) fun ok pkg => do
        let some remoteScope := pkg.reservoirScope?
          | logInfo s!"{pkg.prettyName}: skipping non-Reservoir dependency`"
            return ok
        let platform := cachePlatform pkg platform
        let toolchain := cacheToolchain pkg toolchain
        try
          let map ← findOutputs cache service pkg remoteScope opts platform toolchain
          cache.writeMap pkg.cacheScope map service.name? (some remoteScope) overwrite
          unless opts.mappingsOnly do
            let descrs ← map.collectOutputDescrs
            service.downloadArtifacts descrs cache remoteScope opts.forceDownload
          return ok
        catch _ =>
          return false
      unless ok do
        error "failed to download artifacts for some dependencies"
    else
      error "to use `cache get` with a custom endpoint, the `--scope` or `--repo` option must be set"
where
  invalidEndpointConfig artifactEndpoint revisionEndpoint :=
    s!"invalid endpoint configuration:\
    \n  LAKE_CACHE_ARTIFACT_ENDPOINT={artifactEndpoint}\
    \n  LAKE_CACHE_REVISION_ENDPOINT={revisionEndpoint}\n\
    To use `cache get` with a custom endpoint, both environment variables \
    must be set to non-empty strings. To use Reservoir, neither should be set."
  findOutputs cache service pkg remoteScope opts platform toolchain : LoggerIO CacheMap := do
    let repo := GitRepo.mk pkg.dir
    if (← repo.hasDiff) then
      logWarning s!"{pkg.prettyName}: package has changes; \
        only artifacts for committed code will be downloaded"
      if opts.failLv ≤ .warning then
        failure
    let n := opts.maxRevs
    let revs ← repo.getHeadRevisions n
    let map? ← revs.findSomeM? fun rev =>
      service.downloadRevisionOutputs? rev cache pkg.cacheScope remoteScope platform toolchain opts.forceDownload
    let some map := map?
      | let revisions :=
          if n = 0 || revs.size < n then "for any revision" else s!"in {n} revisions from HEAD"
        error s!"{remoteScope}: no outputs found {revisions}"
    return map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7370c986bdc2e8c39464a90b5767a960e98ae56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
