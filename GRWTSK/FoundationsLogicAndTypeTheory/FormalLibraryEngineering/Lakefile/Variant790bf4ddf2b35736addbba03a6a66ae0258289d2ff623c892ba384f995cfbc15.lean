-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MathlibOnlyLinters.Variant518186f90301d6693b20bab5e4065d07c2bf6bfa8a065b93c8bff4efe0422a96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"518186f90301d6693b20bab5e4065d07c2bf6bfa8a065b93c8bff4efe0422a96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MathlibOnlyLinters.Variant518186f90301d6693b20bab5e4065d07c2bf6bfa8a065b93c8bff4efe0422a96","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"518186f90301d6693b20bab5e4065d07c2bf6bfa8a065b93c8bff4efe0422a96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MathlibOnlyLinters.Variant518186f90301d6693b20bab5e4065d07c2bf6bfa8a065b93c8bff4efe0422a96

open Lake DSL


/-!
## Mathlib dependencies on upstream projects
-/

require "leanprover-community" / "batteries" @ git "main"
require "leanprover-community" / "Qq" @ git "master"
require "leanprover-community" / "aesop" @ git "master"
require "leanprover-community" / "proofwidgets" @ git "v0.0.59" -- ProofWidgets should always be pinned to a specific version
  with NameMap.empty.insert `errorOnBuild
    "ProofWidgets not up-to-date. \
    Please run `lake exe cache get` to fetch the latest ProofWidgets. \
    If this does not work, report your issue on the Lean Zulip."
require "leanprover-community" / "importGraph" @ git "main"
require "leanprover-community" / "LeanSearchClient" @ git "main"
require "leanprover-community" / "plausible" @ git "main"

/-!
## Options for building mathlib
-/

/-- These options are used as `leanOptions`, prefixed by `` `weak``, so that
`lake build` uses them, as well as `Archive` and `Counterexamples`. -/
abbrev mathlibOnlyLinters : Array LeanOption := #[
  ⟨`linter.allScriptsDocumented, true⟩,
  ⟨`linter.checkInitImports, true⟩,
  -- The `docPrime` linter is disabled: https://github.com/leanprover-community/mathlib4/issues/20560
  ⟨`linter.docPrime, false⟩,
  ⟨`linter.hashCommand, true⟩,
  ⟨`linter.oldObtain, true⟩,
  ⟨`linter.style.cases, true⟩,
  ⟨`linter.style.cdot, true⟩,
  ⟨`linter.style.docString, true⟩,
  ⟨`linter.style.dollarSyntax, true⟩,
  ⟨`linter.style.header, true⟩,
  ⟨`linter.style.lambdaSyntax, true⟩,
  ⟨`linter.style.longLine, true⟩,
  ⟨`linter.style.longFile, .ofNat 1500⟩,
  ⟨`linter.style.maxHeartbeats, true⟩,
  -- `latest_import.yml` uses this comment: if you edit it, make sure that the workflow still works
  ⟨`linter.style.missingEnd, true⟩,
  ⟨`linter.style.multiGoal, true⟩,
  ⟨`linter.style.openClassical, true⟩,
  ⟨`linter.style.refine, true⟩,
  ⟨`linter.style.setOption, true⟩,
]

/-- These options are passed as `leanOptions` to building mathlib, as well as the
`Archive` and `Counterexamples`. (`tests` omits the first two options.) -/
abbrev mathlibLeanOptions := #[
    ⟨`pp.unicode.fun, true⟩, -- pretty-prints `fun a ↦ b`
    ⟨`autoImplicit, false⟩,
    ⟨`maxSynthPendingDepth, .ofNat 3⟩
  ] ++ -- options that are used in `lake build`
    mathlibOnlyLinters.map fun s ↦ { s with name := `weak ++ s.name }

package mathlib where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
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
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
  -- Enforce Mathlib's default linters and style options.
  leanOptions := mathlibLeanOptions

-- NB. When adding further libraries, check if they should be excluded from `getLeanLibs` in
-- `scripts/mk_all.lean`.
lean_lib Cache where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
lean_lib LongestPole where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"

lean_lib MathlibTest where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
  globs := #[.submodules `MathlibTest]

lean_lib Archive where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
  leanOptions := mathlibLeanOptions

lean_lib Counterexamples where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
  leanOptions := mathlibLeanOptions

/-- Additional documentation in the form of modules that only contain module docstrings. -/
lean_lib docs where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
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
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src/scripts"

/-- `lake exe cache get` retrieves precompiled `.olean` files from a central server. -/
lean_exe cache where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
  root := `Cache.Main

/-- `lake exe check-yaml` verifies that all declarations referred to in `docs/*.yaml` files exist. -/
lean_exe «check-yaml» where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src/scripts"
  supportInterpreter := true

/-- `lake exe mk_all` constructs the files containing all imports for a project. -/
lean_exe mk_all where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src/scripts"
  supportInterpreter := true
  -- Executables which import `Lake` must set `-lLake`.
  weakLinkArgs := #["-lLake"]

/-- `lake exe shake` checks files for unnecessary imports. -/
lean_exe shake where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
  root := `Shake.Main
  supportInterpreter := true

/-- `lake exe lint-style` runs text-based style linters. -/
lean_exe «lint-style» where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src/scripts"
  supportInterpreter := true
  -- Executables which import `Lake` must set `-lLake`.
  weakLinkArgs := #["-lLake"]

/--
`lake exe pole` queries the Mathlib speedcenter for build times for the current commit,
and then calculates the longest pole
(i.e. the sequence of files you would be waiting for during a infinite parallelism build).
-/
lean_exe pole where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
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
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
  root := `LongestPole.Unused
  supportInterpreter := true
  -- Executables which import `Lake` must set `-lLake`.
  weakLinkArgs := #["-lLake"]

lean_exe mathlib_test_executable where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/e912a613df317e1985f33ae94fd5fc199ccd41549e33ac5b8b159bf45d54648e/src"
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
