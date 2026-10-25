# compute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c9e159032be325b4d3e1c49e2996424311c93c2bc463c158deba4b1ae35d2ef",
  "kind": "def",
  "lexical_name": "compute",
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
  "slug": "compute--710a29cc9b6a56ecb58879eb",
  "source": {
    "blob": "15c5cdeef7733f59de7f2e56ee791cd56e73cb33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:710a29cc9b6a56ecb58879eb88c830fa62d775a1f0e9da32dc23abdedf19c8ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c9e159032be325b4d3e1c49e2996424311c93c2bc463c158deba4b1ae35d2ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def compute
  (lake : LakeInstall) (lean : LeanInstall) (elan? : Option ElanInstall)
  (noCache : Option Bool := none)
: EIO String Env := do
  let reservoirBaseUrl ← getUrlD "RESERVOIR_API_BASE_URL" "https://reservoir.lean-lang.org/api"
  let toolchain ← computeToolchain
  let userHome? ← getUserHome?
  addCacheDirs userHome? toolchain {
    lake, lean, elan?,
    pkgUrlMap := ← computePkgUrlMap
    reservoirApiUrl := ← getUrlD "RESERVOIR_API_URL" s!"{reservoirBaseUrl}/v1"
    noCache := (noCache <|> (← IO.getEnv "LAKE_NO_CACHE").bind envToBool?).getD false
    enableArtifactCache? := (← IO.getEnv "LAKE_ARTIFACT_CACHE").bind envToBool?
    restoreAllArtifacts? := (← IO.getEnv "LAKE_RESTORE_ARTIFACTS").bind envToBool?
    lakeConfig? := (← IO.getEnv "LAKE_CONFIG") <|> userHome?.map (· / ".lake" / "config.toml" |>.toString)
    cacheKey? := (← IO.getEnv "LAKE_CACHE_KEY").map (·.trimAscii.copy)
    cacheArtifactEndpoint? := (← IO.getEnv "LAKE_CACHE_ARTIFACT_ENDPOINT").map normalizeUrl
    cacheRevisionEndpoint? := (← IO.getEnv "LAKE_CACHE_REVISION_ENDPOINT").map normalizeUrl
    cacheService? := (← IO.getEnv "LAKE_CACHE_SERVICE").map (.ofString ·.trimAscii.copy)
    githashOverride := (← IO.getEnv "LEAN_GITHASH").getD ""
    toolchain
    initLeanPath := ← getSearchPath "LEAN_PATH",
    initLeanSrcPath := ← getSearchPath "LEAN_SRC_PATH",
    initSharedLibPath := ← getSearchPath sharedLibPathEnvVar,
    initPath := ← getSearchPath "PATH"
  }
where
  addCacheDirs userHome? toolchain env := do
    if let some dir ← IO.getEnv "LAKE_CACHE_DIR" then
      if dir.isEmpty then
        return {env with noSystemCache := true}
      else
        return {env with lakeCache? := some ⟨dir⟩, lakeSystemCache? := some ⟨dir⟩}
    else if let some cache := cacheOfToolchain? elan? toolchain then
      let lakeSystemCache? ← cacheOfSystem? <$> getSystemCacheHomeAux? userHome?
      return {env with lakeCache? := some cache, lakeSystemCache?}
    else if let some cache ← cacheOfSystem? <$> getSystemCacheHomeAux? userHome? then
      return {env with lakeCache? := some cache, lakeSystemCache? := some cache}
    else
      return env
  computePkgUrlMap := do
    let some urlMapStr ← IO.getEnv "LAKE_PKG_URL_MAP" | return {}
    match Json.parse urlMapStr |>.bind fromJson? with
    | .ok urlMap => return urlMap
    | .error e => throw s!"'LAKE_PKG_URL_MAP' has invalid JSON: {e}"
  @[macro_inline] getUrlD var default := do
    if let some url ← IO.getEnv var then
      return normalizeUrl url
    else
       return default
  normalizeUrl url :=
    if url.back == '/' then url.dropEnd 1 |>.copy else url

/-- The toolchain identifier for the Lake cache corresponding to the environment's toolchain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15c5cdeef7733f59de7f2e56ee791cd56e73cb33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
