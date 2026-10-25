# loadLakeConfigCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac59a8eaf5458f294bb6241567bd802b39d907121c30cd574158b6413fec3e7a",
  "kind": "def",
  "lexical_name": "loadLakeConfigCore",
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
  "slug": "loadlakeconfigcore--513b3b1549397fe4d1d65219",
  "source": {
    "blob": "6f71007adf3d52a827763c246fd0f0ba924699bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 521,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:513b3b1549397fe4d1d65219705fc44b03c4811140761f294c794f47ecef2e3c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac59a8eaf5458f294bb6241567bd802b39d907121c30cd574158b6413fec3e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def loadLakeConfigCore (path : FilePath) (lakeEnv : Lake.Env) : LogIO LoadedLakeConfig := do
  let input ← IO.FS.readFile path
  let ictx := mkInputContext input path.toString
  match (← loadToml ictx |>.toBaseIO) with
  | .ok table =>
    let .ok config errs := EStateM.run (s := #[]) do
      LakeConfig.decodeToml table
    if errs.isEmpty then
      let defaultService := .reservoirService lakeEnv.reservoirApiUrl
      let cacheServices : CacheServiceMap ← config.cache.services.foldlM (init := ∅) fun map cfg => do
        let validateUrl name key url := do
          if url.isEmpty then
            error s!"cache service `{name}` is missing field `{key}`"
          else
            return if url.back == '/' then url.dropEnd 1 |>.copy else url
        match cfg.kind with
        | .reservoir => do
          let apiEndpoint ← validateUrl cfg.name "apiEndpoint" cfg.apiEndpoint
          let service := .reservoirService apiEndpoint (some (.ofString cfg.name))
          return map.insert (.mkSimple cfg.name) service
        | .s3 => do
          let artifactEndpoint ← validateUrl cfg.name "artifactEndpoint" cfg.artifactEndpoint
          let revisionEndpoint ← validateUrl cfg.name "revisionEndpoint" cfg.revisionEndpoint
          let service :=  .downloadService artifactEndpoint revisionEndpoint (some (.ofString cfg.name))
          return map.insert (.mkSimple cfg.name) service
        | _ =>
          error s!"cache service `{cfg.name}` is missing field `kind`"
      let defaultCacheService ← id do
        let name := config.cache.defaultService
        if name.isEmpty then
          return cacheServices.get? `reservoir |>.getD defaultService
        else
          let some service := cacheServices.get? (.mkSimple name)
            | error s!"the configured default cache service `{name}` is not defined; \
                please add a `cache.service` with that name"
          return service
      let defaultCacheUploadService? ← id do
        let name := config.cache.defaultUploadService
        if name.isEmpty then
          return none
        else
          let some service := cacheServices.get? (.mkSimple name)
            | error s!"the configured default cache upload service `{name}` is not defined; \
                please add a `cache.service` with that name"
          return some service
      if cacheServices.contains `reservoir then
        return {config, defaultCacheService, defaultCacheUploadService?, cacheServices}
      else
         let cacheServices := cacheServices.insert `reservoir defaultService
         let defaultServiceConfig := {name := "reservoir", kind := .reservoir, apiEndpoint := lakeEnv.reservoirApiUrl}
         let config := {config with cache.services := config.cache.services.push defaultServiceConfig}
         return {config, defaultCacheService, defaultCacheUploadService?, cacheServices}
    else
      errorWithLog <| errs.forM fun {ref, msg} =>
        let pos := ictx.fileMap.toPosition <| ref.getPos?.getD 0
        logError <| mkErrorStringWithPos ictx.fileName pos msg
  | .error log =>
    errorWithLog <| log.forM fun msg => do logError (← msg.toString)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f71007adf3d52a827763c246fd0f0ba924699bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
