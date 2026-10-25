# setupFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:641ad7902b4090e950d7449725d4d6a61d7b4398ebf002622653111f0d950c5a",
  "kind": "def",
  "lexical_name": "setupFile",
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
  "slug": "setupfile--c662eb32a4b74a9292388ecd",
  "source": {
    "blob": "27d3e89530105b7ea9fe9f951b9459c1ee1f9cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serve/Variant013ee743584ca9d0f19ce886aa795cdb93f59e3c389965667626d09912e0d600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c662eb32a4b74a9292388ecd8d2148ce2399ce5a7a492e6b56c3b530b47a036a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serve/Variant013ee743584ca9d0f19ce886aa795cdb93f59e3c389965667626d09912e0d600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:641ad7902b4090e950d7449725d4d6a61d7b4398ebf002622653111f0d950c5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def setupFile
  (loadConfig : LoadConfig) (leanFile : FilePath)
  (header? : Option ModuleHeader := none) (buildConfig : BuildConfig := {})
: BaseIO ExitCode := do
  let path ← resolvePath leanFile
  let configFile ← realConfigFile loadConfig.configFile
  if configFile.toString.isEmpty then
    return noConfigFileCode
  else if configFile == path then do
    let setup : ModuleSetup := {
      name := configModuleName
      plugins :=  #[loadConfig.lakeEnv.lake.sharedLib]
    }
    print! (toJson setup).compress
  else if let some errLog := (← IO.getEnv invalidConfigEnvVar) then
    eprint! errLog
    eprint! "Failed to configure the Lake workspace. \
      Please restart the server after fixing the error above.\n"
    return 1
  else
    let some ws ← loadWorkspace loadConfig |>.toBaseIO buildConfig.toLogConfig
      | eprint! "Failed to load the Lake workspace.\n"
        return 1
    let setup := ws.runBuild (cfg := buildConfig) do
      setupServerModule leanFile.toString path header?
    match (← setup.toBaseIO) with
    | .ok setup =>
      print! (toJson setup).compress
    | .error _ =>
      eprint! "Failed to build module dependencies.\n"
      return 1
where
  print! msg := do
    match (← IO.println msg |>.toBaseIO) with
    | .ok _ =>
      return 0
    | .error e =>
      panic! s!"Failed to print `setup-file` result: {e}"
      return 1
  eprint! msg := do
    IO.eprint msg |>.catchExceptions fun e =>
      panic! s!"Failed to print `setup-file` error: {e}\nOriginal error:\n{msg}"

/--
Start the Lean LSP for the `Workspace` loaded from `config`
with the given additional `args`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serve/Variant013ee743584ca9d0f19ce886aa795cdb93f59e3c389965667626d09912e0d600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serve/Variant013ee743584ca9d0f19ce886aa795cdb93f59e3c389965667626d09912e0d600.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d3e89530105b7ea9fe9f951b9459c1ee1f9cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
