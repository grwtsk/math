# Dependency.materialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a799c1c616c46709613231880a0766b37aa62e00d1b97caeee48b7abd7c79284",
  "kind": "def",
  "lexical_name": "Dependency.materialize",
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
  "slug": "dependency-materialize--f5f4a733f146066723a33a85",
  "source": {
    "blob": "25453738b4395e586ca7d246d82ed76a70cdc1ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5f4a733f146066723a33a85c9c1c35d4b2eb54cc61e0723917a066ed4467c3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a799c1c616c46709613231880a0766b37aa62e00d1b97caeee48b7abd7c79284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Dependency.materialize
  (dep : Dependency) (inherited : Bool)
  (lakeEnv : Env) (wsDir relPkgsDir relParentDir : FilePath)
: LoggerIO MaterializedDep := do
  if let some src := dep.src? then
    match src with
    | .path dir =>
      let relPkgDir := relParentDir / dir
      mkDep dep.prettyName relPkgDir "" (.path relPkgDir)
    | .git url inputRev? subDir? => do
      let repoUrl := Git.filterUrl? url |>.getD ""
      materializeGit dep.prettyName (relPkgsDir / dep.dirName) url repoUrl inputRev? subDir?
  else
    if dep.scope.isEmpty then
      error s!"{dep.prettyName}: ill-formed dependency: \
        dependency is missing a source and is missing a scope for Reservoir"
    let pkg ← id do
      match (← Reservoir.fetchPkg? lakeEnv dep.scope dep.reservoirName |>.toLogT) with
      | .ok (some pkg) => return pkg
      | .ok none => error <| pkgNotIndexed dep
      | .error .. => error s!"{dep.fullName}: could not materialize package: \
        this may be a transient error or a bug in Lake or Reservoir"
    let relPkgDir := relPkgsDir / pkg.name
    match pkg.gitSrc? with
    | some (.git _ url githubUrl? defaultBranch? subDir?) =>
      let rev? ← id do
        match dep.version with
        | .none => defaultBranch?
        | .git rev => some rev
        | .ver ver =>
          match (← Reservoir.fetchPkgVersions lakeEnv dep.scope dep.reservoirName |>.toLogT) with
          | .ok vers =>
            if let some ver := vers.find? (ver.test ·.version) then
              logInfo s!"{dep.fullName}: using version `{ver.version}` at revision `{ver.revision}`"
              return ver.revision
            else
              error s!"{dep.fullName}: version `{ver}` not found on Reservoir"
          | .error .. => error s!"{dep.fullName}: could not fetch package versions: \
            this may be a transient error or a bug in Lake or Reservoir"
      materializeGit pkg.fullName relPkgDir url (githubUrl?.getD "") rev? subDir?
    | _ => error s!"{pkg.fullName}: Git source not found on Reservoir"
where
  materializeGit name relPkgDir gitUrl remoteUrl inputRev? subDir? : LoggerIO MaterializedDep := do
    let gitDir := wsDir / relPkgDir
    let repo := GitRepo.mk gitDir
    let gitUrl := lakeEnv.pkgUrlMap.find? dep.name |>.getD gitUrl
    materializeGitRepo name repo gitUrl inputRev?
    let rev ← repo.getHeadRevision
    let relPkgDir := if let some subDir := subDir? then relPkgDir / subDir else relPkgDir
    mkDep name relPkgDir remoteUrl <| .git gitUrl rev inputRev? subDir?
  @[inline] mkDep name relPkgDir remoteUrl src : LoggerIO MaterializedDep := do
    let pkgDir := wsDir / relPkgDir
    let some pkgDir ← resolvePath? pkgDir
      | error s!"{name}: package directory not found: {pkgDir}"
    return {
      pkgDir, relPkgDir, remoteUrl,
      manifest? :=  ← Manifest.load (pkgDir / defaultManifestFile) |>.toBaseIO
      manifestEntry := {name := dep.name, scope := dep.scope, inherited, src}
    }

/--
Materializes a manifest package entry, cloning and/or checking it out as necessary.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25453738b4395e586ca7d246d82ed76a70cdc1ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
