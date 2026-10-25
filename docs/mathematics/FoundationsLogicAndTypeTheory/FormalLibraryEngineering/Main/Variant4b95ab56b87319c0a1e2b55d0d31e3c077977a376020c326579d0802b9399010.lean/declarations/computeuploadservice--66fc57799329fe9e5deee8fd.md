# computeUploadService

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:681496d8bef7be78747dfe46ea0366cd60ce638b632495cf648b9a8fdc8d696c",
  "kind": "def",
  "lexical_name": "computeUploadService",
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
  "slug": "computeuploadservice--66fc57799329fe9e5deee8fd",
  "source": {
    "blob": "7351b888130b276772224890d37d069298d4fddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 591,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66fc57799329fe9e5deee8fd9aa04912a96fab59d55c20349418faabe9a52d2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:681496d8bef7be78747dfe46ea0366cd60ce638b632495cf648b9a8fdc8d696c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def computeUploadService
  (service? : Option String) (lakeEnv : Env) (lakeCfg : LoadedLakeConfig)
: CliStateM CacheService := do
  if let some service := service? then
    let some service := lakeCfg.cacheServices.find? (.mkSimple service)
      | error (serviceNotFound service lakeCfg.config.cache.services)
    let some key := lakeEnv.cacheKey?
      | error "uploads require an authentication key configured through `LAKE_CACHE_KEY`"
    return service.withKey key
  else
    match lakeEnv.cacheKey?, lakeEnv.cacheArtifactEndpoint?, lakeEnv.cacheRevisionEndpoint? with
    | some key, some artifactEndpoint, some revisionEndpoint =>
      return .uploadService key artifactEndpoint revisionEndpoint
    | key?, none, none =>
      if let some service := lakeCfg.defaultCacheUploadService? then
        let some key := key?
          | error "uploads require an authentication key configured through `LAKE_CACHE_KEY`"
        return service.withKey key
      else
        error "no default upload service configured; the `--service` option must be set"
    | key?, artifactEndpoint?, revisionEndpoint? =>
      error (invalidEndpointConfig key? artifactEndpoint? revisionEndpoint?)
where
  invalidEndpointConfig key? artifactEndpoint? revisionEndpoint? :=
    s!"invalid endpoint configuration:\
    \n  LAKE_CACHE_KEY is {if key?.isNone then "unset" else "set"}\
    \n  LAKE_CACHE_ARTIFACT_ENDPOINT={artifactEndpoint?.getD ""}\
    \n  LAKE_CACHE_REVISION_ENDPOINT={revisionEndpoint?.getD ""}\n\
    To upload, these environment variables must be set to non-empty strings."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant4b95ab56b87319c0a1e2b55d0d31e3c077977a376020c326579d0802b9399010.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7351b888130b276772224890d37d069298d4fddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
