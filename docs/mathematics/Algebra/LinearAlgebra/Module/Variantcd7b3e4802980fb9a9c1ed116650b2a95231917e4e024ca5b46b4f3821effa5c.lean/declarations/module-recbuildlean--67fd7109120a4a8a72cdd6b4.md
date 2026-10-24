# Module.recBuildLean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:269a0549f5ac101784ba1cb205d81856e2ba5fd7352724c8d03de50d55800ff5",
  "kind": "def",
  "lexical_name": "Module.recBuildLean",
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
  "slug": "module-recbuildlean--67fd7109120a4a8a72cdd6b4",
  "source": {
    "blob": "1266fd0bf4094833269c7f4467edf175e110db67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1116,
    "line": 987,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67fd7109120a4a8a72cdd6b41e0a9ca7e6a81211c4aefdf1f9cbd80fc62ec3fa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:269a0549f5ac101784ba1cb205d81856e2ba5fd7352724c8d03de50d55800ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 987–1116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Module.recBuildLean (mod : Module) : FetchM (Job ModuleOutputArtifacts) := do
  /-
  Remark: `withRegisterJob` must register `presetupJob` to display module builds
  in the job monitor. However, it must also include the fetching of the job to
  ensure all logs end up under its caption in the job monitor.
  -/
  withRegisterJob mod.name.toString do
  let presetupJob ← mod.presetup.fetch
  presetupJob.mapM fun presetup => do
    setTrace presetup.trace
    let arts ← fetchCore presetup
    let arts ← trackOutputsIfEnabled arts
    let arts ← adjustMTime arts
    return arts
where
  fetchFromCache? presetup savedTrace restoreAll : JobM (ModuleOutputArtifacts ⊕ SavedTrace) := do
    let inputHash := (← getTrace).hash
    let some ltarOrArts ← getArtifacts? inputHash savedTrace mod.pkg
      | return .inr savedTrace
    match (ltarOrArts : ModuleOutputs) with
    | .ltar ltar =>
      updateAction .unpack
      mod.clearOutputArtifacts
      mod.unpackLtar ltar.path inputHash
      -- Note: This branch implies that only the ltar output is (validly) cached.
      -- Thus, we use only the new trace unpacked from the ltar to resolve further artifacts.
      let savedTrace ← readTraceFile mod.traceFile
      let arts? ← getArtifactsUsingTrace? inputHash savedTrace mod.pkg
      if let some (arts : ModuleOutputArtifacts) := arts? then
        -- on initial unpack from cache ensure all artifacts uniformly
        -- end up in the build directory and, if writable, the cache
        let arts ← mod.restoreAllArtifacts {arts with ltar? := some ltar}
        if (← mod.pkg.isArtifactCacheWritable) then
          let arts ← mod.cacheOutputArtifacts presetup.isModule restoreAll
          -- Note: Cache service metadata is not preserved on an output update because it would
          -- result in downloading module outputs that are not available on the remote.
          (← getLakeCache).writeOutputs mod.pkg.cacheScope inputHash arts.descrs (overwrite := true)
          return .inl arts
        else
          return .inl arts
      else
        return .inr savedTrace
    | .arts arts =>
      unless (← savedTrace.replayCachedIfUpToDate inputHash) do
        mod.clearOutputArtifacts
        writeFetchTrace mod.traceFile inputHash (toJson arts.descrs)
      let arts ←
        if restoreAll then
          mod.restoreAllArtifacts arts
        else
          mod.restoreNeededArtifacts arts
      return .inl arts
  fetchCore (presetup : ModulePreSetup) : JobM ModuleOutputArtifacts := do
    let depTrace ← getTrace
    have : GetMTime Module := ⟨Module.getMTime (isModule := presetup.isModule)⟩
    have : CheckExists Module := ⟨Module.checkExists (isModule := presetup.isModule)⟩
    let savedTrace ← readTraceFile mod.traceFile
    if (← mod.pkg.isArtifactCacheWritable) then
      let restore ← mod.pkg.restoreAllArtifacts
      match (← fetchFromCache? presetup savedTrace restore) with
      | .inl arts =>
        return arts
      | .inr savedTrace =>
        let status ← savedTrace.replayIfUpToDate' (oldTrace := presetup.srcMTime) mod depTrace
        if status.isUpToDate then
          unless (← mod.checkArtifactsExist presetup.isModule) do
            -- Restoring from the archive stamps the trace with the current input
            -- hash, so only do it on a verified hash match; an mtime-only match
            -- leaves the hash unconfirmed, so rebuild instead.
            if status == .hashUpToDate then
              mod.unpackLtar mod.ltarFile depTrace.hash
            else
              discard <| mod.buildLean presetup
        else
          discard <| mod.buildLean presetup
        if status.isCacheable then
          let arts ← mod.cacheOutputArtifacts presetup.isModule restore
          (← getLakeCache).writeOutputs mod.pkg.cacheScope depTrace.hash arts.descrs
          return arts
        else
          mod.computeArtifacts presetup.isModule
    else
      let status ← savedTrace.replayIfUpToDate' (oldTrace := presetup.srcMTime) mod depTrace
      if status.isUpToDate then
        unless (← mod.checkArtifactsExist presetup.isModule) do
          -- As above: restore only on a verified hash match; an mtime-only match
          -- rebuilds instead.
          if status == .hashUpToDate then
            mod.unpackLtar mod.ltarFile depTrace.hash
          else
            discard <| mod.buildLean presetup
        mod.computeArtifacts presetup.isModule
      else
        if (← mod.pkg.isArtifactCacheReadable) then
          match (← fetchFromCache? presetup savedTrace true) with
          | .inl arts =>
              return arts
          | .inr savedTrace =>
            if (← savedTrace.replayIfUpToDate (oldTrace := presetup.srcMTime) mod depTrace) then
              mod.computeArtifacts presetup.isModule
            else
              mod.buildLean presetup
        else
          mod.buildLean presetup
  trackOutputsIfEnabled arts : JobM ModuleOutputArtifacts := do
    if mod.pkg.isRoot then
      if let some ref := (← getBuildContext).outputsRef? then
        let inputHash := (← getTrace).hash
        if let some ltar := arts.ltar? then
          ref.insert inputHash ltar.descr
          return arts
        else
          let ltar ← id do
            if (← mod.ltarFile.pathExists) then
              computeArtifact mod.ltarFile "ltar"
            else
              mod.packLtar arts
          ref.insert inputHash ltar.descr (mod.platformIndependent.getD false)
          return {arts with ltar? := some ltar}
    return arts
  adjustMTime arts : JobM ModuleOutputArtifacts := do
    match (← getMTime mod.traceFile |>.toBaseIO) with
    | .ok mtime =>
      return arts.setMTime mtime
    | .error (.noFileOrDirectory ..) => -- trace file may not exist
      return arts
    | .error e =>
      error s!"failed to retrieve module artifact modification time: {e}"

/-- The `ModuleFacetConfig` for the builtin `leanArtsFacet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean#L987).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1266fd0bf4094833269c7f4467edf175e110db67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
