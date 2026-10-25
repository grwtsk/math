# lakeLongOption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6fa935f7f18a5b936e58ab1f633855c990e6023b2bef22f266dfbd272674d01",
  "kind": "def",
  "lexical_name": "lakeLongOption",
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
  "slug": "lakelongoption--4b666c9c33fdb325c62c5e10",
  "source": {
    "blob": "b7370c986bdc2e8c39464a90b5767a960e98ae56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 280,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b666c9c33fdb325c62c5e1039601e4ad8f36cb34297871d58c444ab3db76432",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6fa935f7f18a5b936e58ab1f633855c990e6023b2bef22f266dfbd272674d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lakeLongOption : (opt : String) → CliM PUnit
| "--quiet"       => modifyThe LakeOptions ({· with verbosity := .quiet})
| "--verbose"     => modifyThe LakeOptions ({· with verbosity := .verbose})
| "--update"      => modifyThe LakeOptions ({· with updateDeps := true})
| "--keep-toolchain" => modifyThe LakeOptions ({· with updateToolchain := false})
| "--reconfigure" => modifyThe LakeOptions ({· with reconfigure := true})
| "--old"         => modifyThe LakeOptions ({· with oldMode := true})
| "--text"        => modifyThe LakeOptions ({· with outFormat := .text})
| "--json"        => modifyThe LakeOptions ({· with outFormat := .json})
| "--allow-empty" => modifyThe LakeOptions ({· with allowEmpty := true})
| "--no-build"    => modifyThe LakeOptions ({· with noBuild := true})
| "--no-cache"    => modifyThe LakeOptions ({· with noCache := true})
| "--try-cache"   => modifyThe LakeOptions ({· with noCache := false})
| "--rehash"      => modifyThe LakeOptions ({· with trustHash := false})
| "--offline"     => modifyThe LakeOptions ({· with offline := true})
| "--wfail"       => modifyThe LakeOptions ({· with failLv := .warning})
| "--iofail"      => modifyThe LakeOptions ({· with failLv := .info})
| "--no-overwrite" => modifyThe LakeOptions ({· with overwrite? := some false})
| "--force-overwrite" => modifyThe LakeOptions ({· with overwrite? := some true})
| "--force-download" => modifyThe LakeOptions ({· with forceDownload := true})
| "--download-arts" => modifyThe LakeOptions ({· with mappingsOnly := false})
| "--mappings-only" => modifyThe LakeOptions ({· with mappingsOnly := true})
| "--service" => do
  let service ← takeOptArg "--service" "service name"
  modifyThe LakeOptions ({· with service? := some service})
| "--scope" => do
  let scope ← takeOptArg "--scope" "cache scope"
  modifyThe LakeOptions ({· with scope? := some (.ofString scope)})
| "--repo" => do
  let repo ← takeOptArg "--repo" "GitHub repository"
  if let some e := validateRepo? repo then error e
  modifyThe LakeOptions ({· with scope? := some (.ofRepo repo)})
| "--platform" => do
  let platform ← takeOptArg "--platform" "cache platform"
  if platform.chars.length > 100 then
    error "invalid platform; platform is expected to be at most 100 characters long"
  modifyThe LakeOptions ({· with platform? := some <| .ofString platform})
| "--toolchain" => do
  let toolchain ← takeOptArg "--toolchain" "cache toolchain"
  let toolchain := if toolchain.isEmpty then .none else .ofString toolchain
  if toolchain.length > 256 then
    error "invalid toolchain version; toolchain is expected to be at most 256 characters long"
  modifyThe LakeOptions ({· with toolchain? := some toolchain})
| "--rev" => do
  let rev ← takeOptArg "--rev" "Git revision"
  modifyThe LakeOptions ({· with rev? := some rev})
| "--max-revs" => do
  let some n ← (·.toNat?) <$> takeOptArg "--max-revs" "number of revisions"
    | error "argument to `--max-revs` should be a natural number"
  modifyThe LakeOptions ({· with maxRevs := n})
| "--log-level"   => do
  let outLv ← takeOptArg' "--log-level" "log level" LogLevel.ofString?
  modifyThe LakeOptions ({· with outLv? := outLv})
| "--fail-level"  => do
  let failLv ← takeOptArg' "--fail-level" "log level" LogLevel.ofString?
  modifyThe LakeOptions ({· with failLv})
| "--ansi"        => modifyThe LakeOptions ({· with ansiMode := .ansi})
| "--no-ansi"     => modifyThe LakeOptions ({· with ansiMode := .noAnsi})
| "--packages"    => do
  let file ← takeOptArg "--packages" "package overrides file"
  let overrides ← Manifest.loadEntries file
  modifyThe LakeOptions fun opts =>
    {opts with packageOverrides := opts.packageOverrides ++ overrides}
| "--dir"         => do
  let rootDir ← takeOptArg "--dir" "path"
  modifyThe LakeOptions ({· with rootDir})
| "--file"        => do
  let configFile ← takeOptArg "--file" "path"
  modifyThe LakeOptions ({· with configFile})
| "--help"        => modifyThe LakeOptions ({· with wantsHelp := true})
| "--"            => do
  let subArgs ← takeArgs
  modifyThe LakeOptions ({· with subArgs})
-- Builtin lint options (using any of these implicitly enables --builtin-lint)
| "--builtin-lint" => modifyThe LakeOptions ({· with runBuiltinLint := true})
| "--builtin-only" => modifyThe LakeOptions ({· with runBuiltinLint := true, builtinOnly := true})
| "--record-exceptions" =>
  modifyThe LakeOptions ({· with runBuiltinLint := true, builtinLint.recordExceptions := true})
| "--linters" => do
  let opts ← getThe LakeOptions
  if opts.builtinLint.lintOnly then
    flushLinterOptions
    modifyLintOnlyFlag false
  let spec ← takeOptArg "--linters" "comma-separated linter spec"
  parseLintersSpec spec
| "--lint-only" => do
  let opts ← getThe LakeOptions
  if !opts.builtinLint.lintOnly then
    flushLinterOptions
    modifyLintOnlyFlag true
  let spec ← takeOptArg "--lint-only" "comma-separated linter spec"
  parseLintersSpec spec

-- Shared options
| "--force" => modifyThe LakeOptions ({· with shake.force := true})
-- Shake options
| "--keep-implied" => modifyThe LakeOptions ({· with shake.keepImplied := true})
| "--keep-prefix" => modifyThe LakeOptions ({· with shake.keepPrefix := true})
| "--keep-public" => modifyThe LakeOptions ({· with shake.keepPublic := true})
| "--add-public" => modifyThe LakeOptions ({· with shake.addPublic := true})
| "--gh-style" => modifyThe LakeOptions ({· with shake.githubStyle := true})
| "--explain" => modifyThe LakeOptions ({· with shake.explain := true})
| "--trace" => modifyThe LakeOptions ({· with shake.trace := true})
| "--fix" => modifyThe LakeOptions ({· with shake.fix := true})
| "--only" => do
  let mod ← takeOptArg "--only" "minimize only this module"
  modifyThe LakeOptions fun opts =>
    {opts with shake.onlyMods := opts.shake.onlyMods.push mod.toName}
| opt             =>  throw <| CliError.unknownLongOption opt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0a99e934eff12243303045f5d306e08a778dccf99f13941b8d150cd87e8b665d.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7370c986bdc2e8c39464a90b5767a960e98ae56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
