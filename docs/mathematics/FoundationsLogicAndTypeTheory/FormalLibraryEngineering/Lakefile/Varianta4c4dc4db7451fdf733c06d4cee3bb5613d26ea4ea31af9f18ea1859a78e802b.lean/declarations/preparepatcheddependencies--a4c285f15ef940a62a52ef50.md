# preparePatchedDependencies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ceddf85cee18067c26ecad8481c13a7f0b3c7a5c41726517917ec16c724182e9",
  "kind": "def",
  "lexical_name": "preparePatchedDependencies",
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
  "slug": "preparepatcheddependencies--a4c285f15ef940a62a52ef50",
  "source": {
    "blob": "56b076786591f1a338af06aedcb5fdb3572edab9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Varianta4c4dc4db7451fdf733c06d4cee3bb5613d26ea4ea31af9f18ea1859a78e802b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4c285f15ef940a62a52ef50e8b0a851de7528bcd1c274f30eda1403949e0879",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Varianta4c4dc4db7451fdf733c06d4cee3bb5613d26ea4ea31af9f18ea1859a78e802b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ceddf85cee18067c26ecad8481c13a7f0b3c7a5c41726517917ec16c724182e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def preparePatchedDependencies (root : FilePath) (dependencies : Array Dependency) :
    IO (Array String) := do
  -- Check all existing checkouts before changing any of them.
  let plans ← dependencies.mapM (planDependencyPatch root)
  let mut changed := #[]
  for plan in plans do
    match plan.state with
    | .applied => pure ()
    | .needsApply =>
      applyDependencyPatch plan plan.directory
      changed := changed.push plan.label
    | .absent =>
      let packages := root / ".lake" / "packages"
      IO.FS.createDirAll packages
      let pid ← IO.Process.getPID
      let stamp ← IO.monoNanosNow
      let staging := packages / s!".{plan.label}-bootstrap-{pid}-{stamp}"
      IO.FS.createDir staging
      try
        let cloned ← IO.Process.output {
          cmd := "git", args := #["clone", "--no-checkout", plan.url, staging.toString]
        }
        unless cloned.exitCode == 0 do
          throw <| IO.userError s!"{plan.label}: clone failed:\n{cloned.stderr}"
        let checkedOut ← patchGit staging #["checkout", "--detach", plan.revision]
        unless checkedOut.exitCode == 0 do
          throw <| IO.userError s!"{plan.label}: checkout failed:\n{checkedOut.stderr}"
        let head ← patchGit staging #["rev-parse", "HEAD"]
        unless head.exitCode == 0 && head.stdout.trimAscii.toString == plan.revision do
          throw <| IO.userError s!"{plan.label}: cloned checkout has the wrong commit."
        applyDependencyPatch plan staging
        IO.FS.rename staging plan.directory
        changed := changed.push plan.label
      finally
        if ← staging.pathExists then
          IO.FS.removeDirAll staging
  return changed

-- Configuration elaboration precedes dependency resolution, unlike `post_update`.
run_cmd do
  let env ← Lean.getEnv
  if let some root := Lake.dirExt.getState env then
    let options ← Lean.getOptions
    let changed ← Lean.Elab.Command.liftIO do
      let declarations ← IO.ofExcept <| Lake.packageDepAttr.getAllEntries env |>.mapM fun name =>
        unsafe env.evalConstCheck Dependency options ``Dependency name
      let mut dependencies := #[]
      for name in preResolutionPatchNames do
        let some dependency := declarations.find? (·.name == name)
          | throw <| IO.userError s!"Missing direct dependency declaration for {name}."
        dependencies := dependencies.push dependency
      preparePatchedDependencies root dependencies
    for label in changed do
      Lean.logInfo s!"{label}: applied compatibility patch before dependency resolution"

post_update pkg do
  for name in preResolutionPatchNames do
    let label := name.toString (escape := false)
    let some dependency ← findPackageByName? name
      | error s!"Missing dependency {label} after Lake update."
    let some declaration := pkg.depConfigs.find? (·.name == name)
      | error s!"Missing direct dependency declaration for {label}."
    let plan ← planDependencyPatch pkg.dir declaration
    unless plan.directory == dependency.dir do
      error s!"{label}: Lake resolved an unexpected checkout at {dependency.dir}."
    match plan.state with
    | .applied => logInfo s!"{label}: compatibility patch verified after dependency resolution"
    | _ => error s!"{label}: compatibility patch was lost during dependency resolution."

  -- Preflight every dependency before changing any of them.
  let mut plans := #[]
  for name in #[`«fixed-point-theorems», `PrimeNumberTheoremAnd, `Zeta3Irrational,
      `«rellich-kondrachov», `carleson, `StrongPNT, `AbsorptionCutoff, `AINTLIB,
      `ClassFieldTheory, `«schoenflies-lean», `SphereEversion, `gromov] do
    let label := name.toString (escape := false)
    let some dep ← findPackageByName? name
      | error s!"Missing dependency {label}; run lake update from the project root."
    let some declaration := pkg.depConfigs.find? (·.name == name)
      | error s!"Missing direct dependency declaration for {label}."
    let some (.git _ (some revision) _) := declaration.src?
      | error s!"{label} must be pinned to a Git commit."
    let patchDirectory := dep.dir
    let head ← patchGit patchDirectory #["rev-parse", "HEAD"]
    unless head.exitCode == 0 && head.stdout.trimAscii.toString == revision do
      error s!"{label}: expected commit {revision}, got {head.stdout}\n{head.stderr}"
    let patchNames := #[s!"{label}-lean4341.patch"]
    for patchName in patchNames do
      let patch := pkg.dir / "patches" / FilePath.mk patchName
      unless ← patch.pathExists do
        error s!"Missing compatibility patch: {patch}"
      let reverse ← checkPatch patchDirectory patch #["--reverse"]
      if reverse.exitCode == 0 then
        plans := plans.push (label, patchDirectory, patch, none)
        continue
      let forward ← checkPatch patchDirectory patch
      if forward.exitCode == 0 then
        plans := plans.push (label, patchDirectory, patch, some patch)
        continue
      error s!"{label}: compatibility patch {patch} conflicts with local changes.\n\
        Forward check:\n{forward.stderr}\nReverse check:\n{reverse.stderr}"
  for (label, directory, patch, action) in plans do
    let patchName := patch.fileName.getD patch.toString
    if let some toApply := action then
      let result ← patchGit directory #["apply", toApply.toString]
      unless result.exitCode == 0 do
        error s!"{label}: failed to apply {toApply}:\n{result.stderr}"
      let verified ← checkPatch directory patch #["--reverse"]
      unless verified.exitCode == 0 do
        error s!"{label}: patch verification failed:\n{verified.stderr}"
      logInfo s!"{label}: applied compatibility patch {patchName}"
    else
      logInfo s!"{label}: compatibility patch already applied: {patchName}"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Varianta4c4dc4db7451fdf733c06d4cee3bb5613d26ea4ea31af9f18ea1859a78e802b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Varianta4c4dc4db7451fdf733c06d4cee3bb5613d26ea4ea31af9f18ea1859a78e802b.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56b076786591f1a338af06aedcb5fdb3572edab9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
