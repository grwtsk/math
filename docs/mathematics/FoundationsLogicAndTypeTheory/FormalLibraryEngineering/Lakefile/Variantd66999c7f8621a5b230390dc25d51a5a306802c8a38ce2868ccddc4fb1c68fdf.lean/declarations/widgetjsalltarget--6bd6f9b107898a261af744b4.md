# widgetJsAllTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4aa0400bb4c5d897ba80239c3e59841aedc4d31fba28f2bdf07c793a929f6ae",
  "kind": "def",
  "lexical_name": "widgetJsAllTarget",
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
  "slug": "widgetjsalltarget--6bd6f9b107898a261af744b4",
  "source": {
    "blob": "9b9e57418d0dba5e2ebdd8e878aa6869f50025b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantd66999c7f8621a5b230390dc25d51a5a306802c8a38ce2868ccddc4fb1c68fdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bd6f9b107898a261af744b4363871fe6bee8cd11e4354411e8bce53d7d70cf9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantd66999c7f8621a5b230390dc25d51a5a306802c8a38ce2868ccddc4fb1c68fdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4aa0400bb4c5d897ba80239c3e59841aedc4d31fba28f2bdf07c793a929f6ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def widgetJsAllTarget (pkg : NPackage _package.name) (isDev : Bool) :
    IndexBuildM (BuildJob (Array FilePath)) := do
  let fs ← (widgetDir / "src").readDir
  let tsxs : Array FilePath := fs.filterMap fun f =>
    let p := f.path; if let some "tsx" := p.extension then some p else none
  -- Conservatively, every .js build depends on all the .tsx source files.
  let depFiles := tsxs ++ #[ widgetDir / "rollup.config.js", widgetDir / "tsconfig.json" ]
  let deps ← liftM <| depFiles.mapM inputFile
  let deps := deps.push $ ← fetch (pkg.target ``widgetPackageLock)
  let nodeModulesMutex ← IO.Mutex.new false
  let jobs ← tsxs.mapM fun tsx => widgetTsxTarget pkg nodeModulesMutex tsx.fileStem.get! deps isDev
  BuildJob.collectArray jobs

target widgetJsAll (pkg : NPackage _package.name) : Array FilePath := do
  widgetJsAllTarget pkg (isDev := false)

target widgetJsAllDev (pkg : NPackage _package.name) : Array FilePath := do
  widgetJsAllTarget pkg (isDev := true)

@[default_target]
target all (pkg : NPackage _package.name) : Unit := do
  let some lib := pkg.findLeanLib? ``ProofWidgets |
    error "cannot find lean_lib target"
  let job₁ ← fetch (pkg.target ``widgetJsAll)
  let _ ← job₁.await
  let job₂ ← lib.recBuildLean
  let _ ← job₂.await
  return .nil
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantd66999c7f8621a5b230390dc25d51a5a306802c8a38ce2868ccddc4fb1c68fdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantd66999c7f8621a5b230390dc25d51a5a306802c8a38ce2868ccddc4fb1c68fdf.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9e57418d0dba5e2ebdd8e878aa6869f50025b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
