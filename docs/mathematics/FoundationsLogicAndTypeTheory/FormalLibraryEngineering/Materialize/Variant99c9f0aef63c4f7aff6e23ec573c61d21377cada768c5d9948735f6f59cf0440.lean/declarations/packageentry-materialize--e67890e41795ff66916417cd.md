# PackageEntry.materialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f158b83b608ccba0ce07cad5b965f307f8ab7e222ee6832ca5111a68873730ad",
  "kind": "def",
  "lexical_name": "PackageEntry.materialize",
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
  "slug": "packageentry-materialize--e67890e41795ff66916417cd",
  "source": {
    "blob": "5191008043b869fe5a8fe0df5fbc661d27981c0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 245,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant99c9f0aef63c4f7aff6e23ec573c61d21377cada768c5d9948735f6f59cf0440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e67890e41795ff66916417cd36fc3f783cac036f1fb7f4212b6e13dd6eddc272",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant99c9f0aef63c4f7aff6e23ec573c61d21377cada768c5d9948735f6f59cf0440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f158b83b608ccba0ce07cad5b965f307f8ab7e222ee6832ca5111a68873730ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def PackageEntry.materialize
  (manifestEntry : PackageEntry)
  (lakeEnv : Env) (wsDir relPkgsDir : FilePath)
: LoggerIO MaterializedDep :=
  match manifestEntry.src with
  | .path (dir := relPkgDir) .. =>
    mkDep relPkgDir ""
  | .git (url := url) (rev := rev) (subDir? := subDir?) .. => do
    let prettyName := manifestEntry.prettyName
    let relGitDir := relPkgsDir / manifestEntry.dirName
    let gitDir := wsDir / relGitDir
    let repo := GitRepo.mk gitDir
    /-
    Do not update (fetch remote) if already on revision
    Avoids errors when offline, e.g., [leanprover/lake#104][104].

    [104]: https://github.com/leanprover/lake/issues/104
    -/
    if (← repo.dirExists) then
      if (← repo.getHeadRevision?) = rev then
        if (← repo.hasDiff) then
          logWarning s!"{prettyName}: repository '{repo.dir}' has local changes"
      else
        let url := lakeEnv.pkgUrlMap.find? manifestEntry.name |>.getD url
        updateGitRepo prettyName repo url rev
    else
      let url := lakeEnv.pkgUrlMap.find? manifestEntry.name |>.getD url
      cloneGitPkg prettyName repo url rev
    let relPkgDir := match subDir? with | .some subDir => relGitDir / subDir | .none => relGitDir
    mkDep relPkgDir (Git.filterUrl? url |>.getD "")
where
  @[inline] mkDep relPkgDir remoteUrl : LoggerIO MaterializedDep := do
    let pkgDir := wsDir / relPkgDir
    let some pkgDir ← resolvePath? pkgDir
      | error s!"{manifestEntry.prettyName}: package directory not found: {pkgDir}"
    let manifest? ← id do
      if let some manifestFile := manifestEntry.manifestFile? then
        Manifest.load (pkgDir / manifestFile) |>.toBaseIO
      else
        return .error (.noFileOrDirectory "" 0 "")
    return {pkgDir, relPkgDir, remoteUrl, manifest?, manifestEntry}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant99c9f0aef63c4f7aff6e23ec573c61d21377cada768c5d9948735f6f59cf0440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant99c9f0aef63c4f7aff6e23ec573c61d21377cada768c5d9948735f6f59cf0440.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5191008043b869fe5a8fe0df5fbc661d27981c0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
