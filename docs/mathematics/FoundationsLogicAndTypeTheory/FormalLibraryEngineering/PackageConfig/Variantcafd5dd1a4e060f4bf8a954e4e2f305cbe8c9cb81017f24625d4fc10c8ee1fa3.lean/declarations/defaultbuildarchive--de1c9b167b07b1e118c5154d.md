# defaultBuildArchive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e2d256e802f740b00fb73348f812a64b7b5101060cd8179e7056dfa1c49e136",
  "kind": "def",
  "lexical_name": "defaultBuildArchive",
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
  "slug": "defaultbuildarchive--de1c9b167b07b1e118c5154d",
  "source": {
    "blob": "d930f92503ea77784b15b4812cf29a796e74e340",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageConfig/Variantcafd5dd1a4e060f4bf8a954e4e2f305cbe8c9cb81017f24625d4fc10c8ee1fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de1c9b167b07b1e118c5154d1459d50cd2ac917ceaaa61f153ebe50d90b5c655",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageConfig/Variantcafd5dd1a4e060f4bf8a954e4e2f305cbe8c9cb81017f24625d4fc10c8ee1fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e2d256e802f740b00fb73348f812a64b7b5101060cd8179e7056dfa1c49e136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline] public def defaultBuildArchive (name : Name) : String :=
  s!"{name.toString false}-{System.Platform.target}.tar.gz"

set_option linter.unusedVariables false in
/-- A `Package`'s declarative configuration. -/
public configuration PackageConfig (p : Name) (n : Name) extends WorkspaceConfig, LeanConfig where
  /-- **For internal use.** Whether this package is Lean itself. -/
  bootstrap : Bool := false

  /-- An `Array` of target names to build whenever the package is used. -/
  extraDepTargets : Array Name := #[]

  /--
  Whether to compile each of the package's module into a native shared library
  that is loaded whenever the module is imported. This speeds up evaluation of
  metaprograms and enables the interpreter to run functions marked `@[extern]`.

  Defaults to `false`.
  -/
  precompileModules : Bool := false

  /--
  Additional arguments to pass to the Lean language server
  (i.e., `lean --server`) launched by `lake serve`, both for this package and
  also for any packages browsed from this one in the same session.
  -/
  moreGlobalServerArgs, moreServerArgs : Array String := #[]

  /--
  The directory containing the package's Lean source files.
  Defaults to the package's directory.

  (This will be passed to `lean` as the `-R` option.)
  -/
  srcDir : FilePath := "."

  /--
  The directory to which Lake should output the package's build results.
  Defaults to `defaultBuildDir` (i.e., `.lake/build`).
  -/
  buildDir : FilePath := defaultBuildDir

  /--
  The build subdirectory to which Lake should output the package's
  binary Lean libraries (e.g., `.olean`, `.ilean` files).
  Defaults to  `defaultLeanLibDir` (i.e., `lib`).
  -/
  leanLibDir : FilePath := defaultLeanLibDir

  /--
  The build subdirectory to which Lake should output the package's
  native libraries (e.g., `.a`, `.so`, `.dll` files).
  Defaults to `defaultNativeLibDir` (i.e., `lib`).
  -/
  nativeLibDir : FilePath := defaultNativeLibDir

  /--
  The build subdirectory to which Lake should output the package's binary executable.
  Defaults to `defaultBinDir` (i.e., `bin`).
  -/
  binDir : FilePath := defaultBinDir

  /--
  The build subdirectory to which Lake should output
  the package's intermediary results (e.g., `.c` and `.o` files).
  Defaults to `defaultIrDir` (i.e., `ir`).
  -/
  irDir : FilePath := defaultIrDir

  /--
  The URL of the GitHub repository to upload and download releases of this package.
  If `none` (the default), for downloads, Lake uses the URL the package was download
  from (if it is a dependency) and for uploads, uses `gh`'s default.
  -/
  releaseRepo, releaseRepo? : Option String := none

  /--
  A custom name for the build archive for the GitHub cloud release.
  If `none` (the default), Lake defaults to `{(pkg-)name}-{System.Platform.target}.tar.gz`.
  -/
  buildArchive, buildArchive? : Option String := none

  /--
  Whether to prefer downloading a prebuilt release (from GitHub) rather than
  building this package from the source when this package is used as a dependency.
  -/
  preferReleaseBuild : Bool := false

  /--
  The name of the script, executable, or library by `lake test` when
  this package is the workspace root. To point to a definition in another
  package, use the syntax `<pkg>/<def>`.

  A script driver will be run by `lake test` with the arguments
  configured in `testDriverArgs`  followed by any specified on the CLI
  (e.g., via  `lake lint -- <args>...`). An executable driver will be built
  and then run like a script. A library will just be built.
  -/
  testDriver, testRunner : String := ""

  /--
  Arguments to pass to the package's test driver.
  These arguments will come before those passed on the command line via
  `lake test -- <args>...`.
  -/
  testDriverArgs : Array String := #[]

  /--
  The name of the script or executable used by `lake lint` when this package
  is the workspace root. To point to a definition in another package, use the
  syntax `<pkg>/<def>`.

  A script driver will be run by `lake lint` with the arguments
  configured in `lintDriverArgs` followed by any specified on the CLI
  (e.g., via  `lake lint -- <args>...`). An executable driver will be built
  and then run like a script.
  -/
  lintDriver : String := ""

  /--
  Arguments to pass to the package's linter.
  These arguments will come before those passed on the command line via
  `lake lint -- <args>...`.
  -/
  lintDriverArgs : Array String := #[]

  /--
  The package version. Versions have the form:

  ```
  v!"<major>.<minor>.<patch>[-<specialDescr>]"
  ```

  A version with a `-` suffix is considered a "prerelease".

  Lake suggest the following guidelines for incrementing versions:

  * **Major version increment** *(e.g., v1.3.0 → v2.0.0)*
    Indicates significant breaking changes in the package.
    Package users are not expected to update to the new version
    without manual intervention.

  * **Minor version increment** *(e.g., v1.3.0 → v1.4.0)*
    Denotes notable changes that are expected to be
    generally backwards compatible.
    Package users are expected to update to this version automatically
    and should be able to fix any breakages and/or warnings easily.

  * **Patch version increment** *(e.g., v1.3.0 → v1.3.1)*
    Reserved for bug fixes and small touchups.
    Package users are expected to update automatically and should not expect
    significant breakage, except in the edge case of users relying on the
    behavior of patched bugs.

  **Note that backwards-incompatible changes may occur at any version increment.**
  The is because the current nature of Lean (e.g., transitive imports,
  rich metaprogramming, reducibility in proofs), makes it infeasible to
  define a completely stable interface for a package.
  Instead, the different version levels indicate a change's intended significance
  and how difficult migration is expected to be.

  Versions of form the `0.x.x` are considered development versions prior to
  first official release. Like prerelease, they are not expected to closely
  follow the above guidelines.

  Packages without a defined version default to `0.0.0`.
  -/
  version : StdVer := {}

  /--
  Git tags of this package's repository that should be treated as versions.
  Package indices (e.g., Reservoir) can make use of this information to determine
  the Git revisions corresponding to released versions.

  Defaults to tags that are "version-like".
  That is, start with a `v` followed by a digit.
  -/
  versionTags : StrPat := defaultVersionTags

  /-- A short description for the package (e.g., for Reservoir). -/
  description : String := ""

  /--
  Custom keywords associated with the package.
  Reservoir can make use of a package's keywords to group related packages
  together and make it easier for users to discover them.

  Good keywords include the domain (e.g., `math`, `software-verification`,
  `devtool`), specific subtopics (e.g., `topology`,  `cryptology`), and
  significant implementation details (e.g., `dsl`, `ffi`, `cli`).
  For instance, Lake's keywords could be `devtool`, `cli`, `dsl`,
  `package-manager`, and `build-system`.
  -/
  keywords : Array String := #[]

  /--
  A URL to information about the package.

  Reservoir will already include a link to the package's GitHub repository
  (if the package is sourced from there). Thus, users are advised to specify
  something else for this (if anything).
  -/
  homepage : String := ""

  /--
  The package's license (if one).
  Should be a valid [SPDX License Expression][1].

  Reservoir requires that packages uses an OSI-approved license to be
  included in its index, and currently only supports single identifier
  SPDX expressions. For, a list of OSI-approved SPDX license identifiers,
  see the [SPDX LIcense List][2].

  [1]: https://spdx.github.io/spdx-spec/v3.0/annexes/SPDX-license-expressions/
  [2]: https://spdx.org/licenses/
  -/
  license : String := ""

  /--
  Files containing licensing information for the package.

  These should be the license files that users are expected to include when
  distributing package sources, which may be more then one file for some licenses.
  For example, the Apache 2.0 license requires the reproduction of a `NOTICE`
  file along with the license (if such a file exists).

  Defaults to `#["LICENSE"]`.
  -/
  licenseFiles : Array FilePath := #["LICENSE"]

  /--
  The path to the package's README.

  A README should be a Markdown file containing an overview of the package.
  Reservoir displays the rendered HTML of this file on a package's page.
  A nonstandard location can be used to provide a different README for Reservoir
  and GitHub.

  Defaults to `README.md`.
  -/
  readmeFile : FilePath := "README.md"

  /--
  Whether Reservoir should include the package in its index.
  When set to `false`, Reservoir will not add the package to its index
  and will remove it if it was already there (when Reservoir is next updated).
  -/
  reservoir : Bool := true

  /--
  Whether to enables Lake's local, offline artifact cache for the package.

  Artifacts (i.e., build products) of packages will be shared across
  local copies by storing them in a cache associated with the Lean toolchain.
  This can significantly reduce initial build times and disk space usage when
  working with multiple copies of large projects or large dependencies.

  As a caveat, build targets which support the artifact cache will not be stored
  in their usual location within the build directory. Thus, projects with custom build
  scripts that rely on specific location of artifacts may wish to disable this feature.

  If `none` (the default), this will fallback to (in order):
  * The `LAKE_ARTIFACT_CACHE` environment variable (if set).
  * The workspace root's `enableArtifactCache` configuration (if set and this package is a dependency).
  * **Lake's default**: The package can use artifacts from the cache, but cannot write to it.
  -/
  enableArtifactCache?, enableArtifactCache : Option Bool := none

  /--
  Whether, when the local artifact cache is enabled, Lake should copy all cached
  artifacts into the build directory. This ensures the build results are available
  to external consumers who expect them in the build directory.

  If `none` (the default), this will fallback to (in order):
  * The `LAKE_RESTORE_ARTIFACTS` environment variable (if set).
  * The workspace root's `restoreAllArtifacts` configuration (if set and this package is a dependency).
  * **Lake's default**: `false`.
  -/
  restoreAllArtifacts?, restoreAllArtifacts : Option Bool := none

  /--
  Whether native libraries (of this package) should be prefixed with `lib` on Windows.

  Unlike Unix, Windows does not require native libraries to start with `lib` and,
  by convention, they usually do not. However, for consistent naming across all platforms,
  users may wish to enable this.

  Defaults to `false`.
  -/
  libPrefixOnWindows : Bool := false

  /--
  Whether downstream packages can `import all` modules of this package.

  If enabled, downstream users will be able to access the `private` internals of modules,
  including definition bodies not marked as `@[expose]`.
  This may also, in the future, prevent compiler optimization which rely on `private`
  definitions being inaccessible outside their own package.

  Defaults to `false`.
  -/
  allowImportAll : Bool := false

  /--
  Whether to run Lake's built-in linter on the package.

  * `true` — Always run built-in lints. When a lint driver is also configured,
    built-in lints run before the driver.
  * `false` — Never run built-in lints by default. `lake check-lint` will exit
    with a nonzero code if no lint driver is configured either.
  * `none` (default) — Currently equivalent to `false`. In a future release, `none`
    will run built-in lints when no lint driver is configured (i.e., act like `true`
    as a fallback).
  -/
  builtinLint?, builtinLint : Option Bool := none

  /--
  Whether this package is expected to function only on a single toolchain
  (the package's toolchain).

  This informs Lake's toolchain update procedure (in `lake update`) to prioritize
  this package's toolchain. It also avoids the need to separate input-to-output mappings
  for this package by toolchain version in the Lake cache.

  Defaults to `false`.
  -/
  fixedToolchain : Bool := false

deriving Inhabited

/-- The package's name as specified by the author. -/
@[deprecated "Deprecated without replacement" (since := "2025-12-10")]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageConfig/Variantcafd5dd1a4e060f4bf8a954e4e2f305cbe8c9cb81017f24625d4fc10c8ee1fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageConfig/Variantcafd5dd1a4e060f4bf8a954e4e2f305cbe8c9cb81017f24625d4fc10c8ee1fa3.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d930f92503ea77784b15b4812cf29a796e74e340` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
