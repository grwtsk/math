# buildSharedLibSync

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6848cd1d1c13bfcad22105daa3613a4e7fb27db5df45d8a0f1e8f023e036b365",
  "kind": "def",
  "lexical_name": "buildSharedLibSync",
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
  "slug": "buildsharedlibsync--8d73a820e9071fd6181cb63f",
  "source": {
    "blob": "8d0b6d9c95a461dcf0c8fdecbb606ac043a2a404",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 983,
    "line": 955,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Varianta6bb844e1fa5b3129aaa2f1f20697a713bccffd95e6a2e821cd9877432b8ea35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d73a820e9071fd6181cb63fc27bf0b842fcd6c2c389408843cfa273eb32c7e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Varianta6bb844e1fa5b3129aaa2f1f20697a713bccffd95e6a2e821cd9877432b8ea35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6848cd1d1c13bfcad22105daa3613a4e7fb27db5df45d8a0f1e8f023e036b365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 955–983.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def buildSharedLibSync
  (libName : String) (libFile : FilePath)
  (linkObjs : Array FilePath) (linkLibs : Array Dynlib)
  (args : Array String := #[]) (linker := "c++")
  (plugin := false) (linkDeps := Platform.isWindows)
: JobM Dynlib := do
  -- shared libraries are platform-dependent artifacts
  addPlatformTrace
  -- Lean plugins are required to have a specific name
  -- and thus need to restored from the cache with that name
  let art ← buildArtifactUnlessUpToDate libFile (ext := sharedLibExt) (restore := true) do
    let baseArgs ← mkLinkArgs linkObjs linkLibs linkDeps
    compileSharedLib libFile (baseArgs ++ args) linker
  return {name := libName, path := art.path, deps := linkLibs, plugin}

/--
Build a shared library using `linker`.

The library will statically link in the results of `linkObjs` (e.g., object
files or static libraries) and, if `linkDeps := true`, dynamically link to the
results of `linkLibs`.

Additional arguments to the linker can be provided via `weakArgs` and `traceArgs`.
These will come *after* any other arguments. `traceArgs` will be included in
the build's input trace, `weakArgs` will not.

If `plugin := true`, the resulting `Dynlib` will be marked as a Lean plugin.
This means it is expected to have a `initialize_<libName>` symbol.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Varianta6bb844e1fa5b3129aaa2f1f20697a713bccffd95e6a2e821cd9877432b8ea35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Varianta6bb844e1fa5b3129aaa2f1f20697a713bccffd95e6a2e821cd9877432b8ea35.lean#L955).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0b6d9c95a461dcf0c8fdecbb606ac043a2a404` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
