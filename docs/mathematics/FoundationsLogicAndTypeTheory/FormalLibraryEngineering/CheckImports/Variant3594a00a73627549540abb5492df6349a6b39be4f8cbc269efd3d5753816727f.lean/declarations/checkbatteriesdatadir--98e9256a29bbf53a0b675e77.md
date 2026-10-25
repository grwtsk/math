# checkBatteriesDataDir

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be59196818e6d7d643ff3b87f6d503a1536c9cc81655f2d8aea52dad7e5f3862",
  "kind": "def",
  "lexical_name": "checkBatteriesDataDir",
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
  "slug": "checkbatteriesdatadir--98e9256a29bbf53a0b675e77",
  "source": {
    "blob": "f0b7fc66dbd7c4b9cb8f7df97de36c0a778eb8e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98e9256a29bbf53a0b675e77e2affebdb9534dbe8184bef99a90ddbb5f70271e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be59196818e6d7d643ff3b87f6d503a1536c9cc81655f2d8aea52dad7e5f3862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkBatteriesDataDir
    (modMap : Std.HashMap Name ModuleData)
    (entry : IO.FS.DirEntry) (autofix : Bool := false) : LogIO Unit := do
  let moduleName := `Batteries.Data ++ .mkSimple entry.fileName
  let requiredImports ← addModulesIn (recurse := true) #[] (root := moduleName) entry.path
  let .some module := modMap[moduleName]?
    | warn true s!"Could not find {moduleName}; Not imported into Batteries."
      let path := modulePath moduleName
      -- We refuse to generate imported modules whose path doesn't exist.
      -- The import failure will be fixed later and the file rerun
      if autofix then
        if ← path.pathExists then
          warn false s!"Skipping writing of {moduleName}: rerun after {moduleName} imported."
        else
          writeImportModule path requiredImports
      return
  let hasDecls : Bool := module.constants.size > 0
  if hasDecls then
    warn false
          s!"Expected {moduleName} to not contain additional declarations.\n\
            Declarations should be moved out.\n\
            This error cannot be automatically fixed."
  let warned ← checkMissingImports moduleName module requiredImports
  if autofix && warned && !hasDecls then
    writeImportModule (modulePath moduleName) requiredImports

/-- Compute imports expected by `Batteries.lean` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant3594a00a73627549540abb5492df6349a6b39be4f8cbc269efd3d5753816727f.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0b7fc66dbd7c4b9cb8f7df97de36c0a778eb8e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
