# LoadConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f24c594f3f5daf918e9a5ab228a51ec789d4669fd9d097782b7931934cf2a763",
  "kind": "structure",
  "lexical_name": "LoadConfig",
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
  "slug": "loadconfig--24e7244e4774729fea304aee",
  "source": {
    "blob": "5dafcee71dc5135213b6afbf5efb8c4bb9ce9fc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant49aeea1c45c95ad5476f2946735b035b78cc385759648bcc8f60547592dc6e85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24e7244e4774729fea304aee8b3f569b585912ebe499c5f8f3456088ea5ce851",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant49aeea1c45c95ad5476f2946735b035b78cc385759648bcc8f60547592dc6e85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f24c594f3f5daf918e9a5ab228a51ec789d4669fd9d097782b7931934cf2a763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure LoadConfig where
  /-- The Lake environment of the load process. -/
  lakeEnv : Lake.Env
  /--
  The CLI arguments Lake was run with.
  Used to perform a restart of Lake on a toolchain update.
  A value of {lean}`none` means that Lake is not restartable via the CLI.
  -/
  lakeArgs? : Option (Array String) := none
  /-- The absolute path to the root directory of the Lake workspace. -/
  wsDir : FilePath
  /-- The index of the package in the workspace. Used to disambiguate packages with the same name. -/
  pkgIdx : Nat := 0
  /--
  The assigned name of the package.
  If {lean}`Name.anonymous`, the package's own name will be used.
  -/
  pkgName : Name := .anonymous
  /-- The loaded package's directory (relative to the workspace directory). -/
  relPkgDir : FilePath := "."
  /-- The absolute path to the loaded package's directory. -/
  pkgDir : FilePath := wsDir / relPkgDir
  /-- The package's Lake configuration file (relative to its directory). -/
  relConfigFile : FilePath := defaultConfigFile
  /-- The full path to the loaded package's Lake configuration file. -/
  configFile : FilePath := pkgDir / relConfigFile
  /-
  The format of the package's configuration file.

  If {lean}`none`, the format will be determined by the file's extension.
  -/
  configLang? : Option ConfigLang := none
  /-- The package's Lake manifest file (relative to its directory). -/
  relManifestFile : FilePath := defaultManifestFile
  /-- Additional package overrides for this workspace load. -/
  packageOverrides : Array PackageEntry := #[]
  /-- A set of key-value Lake configuration options (i.e., {lit}`-K` settings). -/
  lakeOpts : NameMap String := {}
  /-- The Lean options with which to elaborate the configuration file. -/
  leanOpts : Options := {}
  /-- Whether Lake should re-elaborate configuration files instead of using cached OLeans. -/
  reconfigure : Bool := false
  /-- Whether to update dependencies when loading the workspace. -/
  updateDeps : Bool := false
  /--
  Whether to update the workspace's {lit}`lean-toolchain` when dependencies are updated.

  If {lean}`true` and a toolchain update occurs, Lake will need to be restarted.
  -/
  updateToolchain : Bool := true
  /-- The package's scope (e.g., in Reservoir). -/
  scope : String := ""
  /-- The URL to this package's Git remote (if any). -/
  remoteUrl : String := ""

namespace LoadConfig

/-- The package's Lake directory (for Lake temporary files). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant49aeea1c45c95ad5476f2946735b035b78cc385759648bcc8f60547592dc6e85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant49aeea1c45c95ad5476f2946735b035b78cc385759648bcc8f60547592dc6e85.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dafcee71dc5135213b6afbf5efb8c4bb9ce9fc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
