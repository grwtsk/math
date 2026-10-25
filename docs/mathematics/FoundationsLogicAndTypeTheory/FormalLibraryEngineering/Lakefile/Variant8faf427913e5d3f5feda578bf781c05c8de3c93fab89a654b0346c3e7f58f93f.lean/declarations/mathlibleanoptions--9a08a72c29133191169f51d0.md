# mathlibLeanOptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:441c0f8f61d875d1e0e8693758e6d3064b75e45ba8f391fea46318f507ec3c9e",
  "kind": "abbrev",
  "lexical_name": "mathlibLeanOptions",
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
  "slug": "mathlibleanoptions--9a08a72c29133191169f51d0",
  "source": {
    "blob": "8637feb3fb0f66b536b44b588d2d7b884cdd0f1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8faf427913e5d3f5feda578bf781c05c8de3c93fab89a654b0346c3e7f58f93f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a08a72c29133191169f51d073a5d561df78bff1dbffbcbd5cfc14fcf90d897f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8faf427913e5d3f5feda578bf781c05c8de3c93fab89a654b0346c3e7f58f93f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:441c0f8f61d875d1e0e8693758e6d3064b75e45ba8f391fea46318f507ec3c9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev mathlibLeanOptions := #[
    ⟨`pp.unicode.fun, true⟩, -- pretty-prints `fun a ↦ b`
    ⟨`autoImplicit, false⟩,
    ⟨`maxSynthPendingDepth, .ofNat 3⟩
  ] ++ -- options that are used in `lake build`
    mathlibOnlyLinters.map fun s ↦ { s with name := `weak ++ s.name }

package mathlib where
  testDriver := "MathlibTest"
  -- These are additional settings which do not affect the lake hash,
  -- so they can be enabled in CI and disabled locally or vice versa.
  -- Warning: Do not put any options here that actually change the olean files,
  -- or inconsistent behavior may result
  -- weakLeanArgs := #[]

/-!
## Mathlib libraries
-/

@[default_target]
lean_lib Mathlib where
  -- Enforce Mathlib's default linters and style options.
  leanOptions := mathlibLeanOptions

-- NB. When adding further libraries, check if they should be excluded from `getLeanLibs` in
-- `scripts/mk_all.lean`.
lean_lib Cache
lean_lib LongestPole

lean_lib MathlibTest where
  globs := #[.submodules `MathlibTest]

lean_lib Archive where
  leanOptions := mathlibLeanOptions

lean_lib Counterexamples where
  leanOptions := mathlibLeanOptions

/-- Additional documentation in the form of modules that only contain module docstrings. -/
lean_lib docs where
  roots := #[`docs]

/-!
## Executables provided by Mathlib
-/

/--
`lake exe autolabel 150100` adds a topic label to PR `150100` if there is a unique choice.
This requires GitHub CLI `gh` to be installed!

Calling `lake exe autolabel` without a PR number will print the result without applying
any labels online.
-/
lean_exe autolabel where
  srcDir := "scripts"

/-- `lake exe cache get` retrieves precompiled `.olean` files from a central server. -/
lean_exe cache where
  root := `Cache.Main

/-- `lake exe check-yaml` verifies that all declarations referred to in `docs/*.yaml` files exist. -/
lean_exe «check-yaml» where
  srcDir := "scripts"
  supportInterpreter := true

/-- `lake exe mk_all` constructs the files containing all imports for a project. -/
lean_exe mk_all where
  srcDir := "scripts"
  supportInterpreter := true
  -- Executables which import `Lake` must set `-lLake`.
  weakLinkArgs := #["-lLake"]

/-- `lake exe shake` checks files for unnecessary imports. -/
lean_exe shake where
  root := `Shake.Main
  supportInterpreter := true

/-- `lake exe lint-style` runs text-based style linters. -/
lean_exe «lint-style» where
  srcDir := "scripts"
  supportInterpreter := true
  -- Executables which import `Lake` must set `-lLake`.
  weakLinkArgs := #["-lLake"]

/--
`lake exe pole` queries the Mathlib speedcenter for build times for the current commit,
and then calculates the longest pole
(i.e. the sequence of files you would be waiting for during a infinite parallelism build).
-/
lean_exe pole where
  root := `LongestPole.Main
  supportInterpreter := true
  -- Executables which import `Lake` must set `-lLake`.
  weakLinkArgs := #["-lLake"]

/--
`lake exe unused module_1 ... module_n` will analyze unused transitive imports in a given sequence.
The script expects the sequence to be in "reverse order", i.e. files imported later in `Mathlib` should
come earlier in the sequence.

Outputs a markdown file (called  `unused.md` by default) and a number of `lake exe graph` commands
highlighting particular ranges of transitively unused imports.

Typically this should be run via `scripts/unused_in_pole.sh`.
-/
lean_exe unused where
  root := `LongestPole.Unused
  supportInterpreter := true
  -- Executables which import `Lake` must set `-lLake`.
  weakLinkArgs := #["-lLake"]

lean_exe mathlib_test_executable where
  root := `MathlibTest.MathlibTestExecutable

/-!
## Other configuration
-/

/--
When a package depending on Mathlib updates its dependencies,
update its toolchain to match Mathlib's and fetch the new cache.
-/
post_update pkg do
  let rootPkg ← getRootPackage
  if rootPkg.name = pkg.name then
    return -- do not run in Mathlib itself
  if (← IO.getEnv "MATHLIB_NO_CACHE_ON_UPDATE") != some "1" then
    let exeFile ← runBuild cache.fetch
    let exitCode ← env exeFile.toString #["get"]
    if exitCode ≠ 0 then
      error s!"{pkg.name}: failed to fetch cache"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8faf427913e5d3f5feda578bf781c05c8de3c93fab89a654b0346c3e7f58f93f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8faf427913e5d3f5feda578bf781c05c8de3c93fab89a654b0346c3e7f58f93f.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8637feb3fb0f66b536b44b588d2d7b884cdd0f1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
