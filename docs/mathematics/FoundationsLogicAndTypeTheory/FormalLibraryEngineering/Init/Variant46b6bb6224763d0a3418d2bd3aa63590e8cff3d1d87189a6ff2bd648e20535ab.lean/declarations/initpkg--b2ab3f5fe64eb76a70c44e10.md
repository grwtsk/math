# initPkg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5278f83189f01b6319ac699b14294161a891875ec82d82f2f8764f4c9642405",
  "kind": "def",
  "lexical_name": "initPkg",
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
  "slug": "initpkg--b2ab3f5fe64eb76a70c44e10",
  "source": {
    "blob": "8e0584dae352349bc1ab85edc95b8d3276334552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 416,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2ab3f5fe64eb76a70c44e10870215f06225c809bc341cf4d16c06afe398e777",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5278f83189f01b6319ac699b14294161a891875ec82d82f2f8764f4c9642405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initPkg
  (dir : FilePath) (name : Name) (tmp : InitTemplate) (lang : ConfigLang)
  (env : Lake.Env) (offline := false)
: LoggerIO PUnit := do
  let configFile :=  dir / defaultConfigFile.addExtension lang.fileExtension
  if (← configFile.pathExists) then
    error "package already initialized"

  createLeanActionWorkflow dir tmp
  -- determine the name to use for the root
  -- use upper camel case unless the specific module name already exists
  let (root, rootFile?) ← id do
    let root := name
    let rootFile := Lean.modToFilePath dir root "lean"
    if tmp = .exe || (← rootFile.pathExists) then
      return (root, none)
    else
      let root := toUpperCamelCase name
      let rootFile := Lean.modToFilePath dir root "lean"
      if (← rootFile.pathExists) then
        return (root, none)
      else
        return (root, rootFile)

  -- Compute the Lean version from the environment toolchain
  let leanVer? := match ToolchainVer.ofString env.toolchain with
    | .release ver => some ver
    | _ => none

  -- write template configuration file
  IO.FS.writeFile configFile <| tmp.configFileContents lang name root leanVer?

  -- write example code if the files do not already exist
  if let some rootFile := rootFile? then
    let libDir := rootFile.withExtension ""
    let basicFile := libDir / "Basic.lean"
    unless (← basicFile.pathExists) do
      IO.FS.createDirAll libDir
      IO.FS.writeFile basicFile basicFileContents
    let rootContents := if tmp = .math then
      mathLibRootFileContents root
    else
      libRootFileContents root.toString root
    IO.FS.writeFile rootFile rootContents
  if tmp matches .std | .exe then
    let mainFile := dir / mainFileName
    unless (← mainFile.pathExists) do
      if tmp = .exe then
        IO.FS.writeFile mainFile <| exeFileContents
      else
        IO.FS.writeFile mainFile <| mainFileContents root

  -- Initialize a README.md file if none exists.
  let readmeFile := dir / "README.md"
  unless (← readmeFile.pathExists) do
    let contents := if tmp = .math then
        mathReadmeFileContents <| dotlessName name
      else
        readmeFileContents <| dotlessName name
    IO.FS.writeFile readmeFile contents

  -- initialize a `.git` repository if none already
  let repo := GitRepo.mk dir
  unless (← repo.insideWorkTree) do
    try
      repo.quietInit
      unless upstreamBranch = "master" do
        repo.checkoutBranch upstreamBranch
    catch _ =>
      logWarning "failed to initialize git repository"

  -- update `.gitignore` with additional entries for Lake
  let h ← IO.FS.Handle.mk (dir / ".gitignore") IO.FS.Mode.append
  h.putStr gitignoreContents

  /-
  Write the detected toolchain to file (if there is one) for `elan`.
  See [lean4#2518][1] for details on the design considerations taken here.

  [1]: https://github.com/leanprover/lean4/issues/2518
  -/
  let toolchainFile := dir / toolchainFileName
  if env.toolchain.isEmpty then
      -- Empty githash implies dev build
      unless env.lean.githash.isEmpty do
        unless (← toolchainFile.pathExists) do
          logWarning "could not create a `lean-toolchain` file for the new package; \
            no known toolchain name for the current Elan/Lean/Lake"
    else
      IO.FS.writeFile toolchainFile <| env.toolchain ++ "\n"
  if tmp matches .mathLax | .math then
    if leanVer?.isNone then
      logWarning "creating a new math package with a non-release Lean toolchain; \
        Mathlib may not work properly"
    unless offline do
      -- Checkout mathlib and pin the version in the manifest
      updateManifest { lakeEnv := env, wsDir := dir, updateToolchain := false }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0584dae352349bc1ab85edc95b8d3276334552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
