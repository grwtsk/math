# checkBatteriesDataImports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8e34b0c38103a53254328ae3832e828a7c9cd4d5379e2e97fbbb10b143e2f5d",
  "kind": "def",
  "lexical_name": "checkBatteriesDataImports",
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
  "slug": "checkbatteriesdataimports--a18f77e5e2d79174c00bb1fa",
  "source": {
    "blob": "a0f2942c64226dcd086ce670cc5e5509774a0477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant23c623fc52f471cef9f93d3d089fb5086bd0e748978d08e03bd15d37245b1605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a18f77e5e2d79174c00bb1fa3038b5b83563eab24ef62af46b2ef34ddd367e86",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant23c623fc52f471cef9f93d3d089fb5086bd0e748978d08e03bd15d37245b1605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8e34b0c38103a53254328ae3832e828a7c9cd4d5379e2e97fbbb10b143e2f5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkBatteriesDataImports : MetaM Unit := do
  -- N.B. This can be used to automatically fix Batteries.lean as well as
  -- other import files.
  -- It uses an environment variable to do that.
  -- The easiest way to use this is run `./scripts/updateBatteries.sh.`
  let autofix := (← IO.getEnv "__LEAN_BATTERIES_AUTOFIX_IMPORTS").isSome
  let env ← getEnv
  let modMap := createModuleHashmap env
  runLogIO do
    for entry in ← FilePath.readDir ("Batteries" / "Data") do
      if ← entry.path.isDir then
        checkBatteriesDataDir (autofix := autofix) modMap entry
    let batteriesImports ← expectedBatteriesImports
    let .some batteriesMod := modMap[`Batteries]?
        | warn false "Missing Batteries module!; Run `lake build`."
    let warned ← checkMissingImports `Batteries batteriesMod batteriesImports
    if autofix && warned then
      writeImportModule "Batteries.lean" batteriesImports
    match ← getWarningInfo with
    | (false, _) =>
      pure ()
    | (_, true) =>
      IO.eprintln s!"Found errors that cannot be automatically fixed.\n\
                     Address unfixable issues and rerun lake build && ./scripts/updateBatteries.sh."
    | _ =>
      if autofix then
        IO.eprintln s!"Found missing imports and attempted fixes.\n\
                       Run lake build && ./scripts/updateBatteries.sh to verify.\n\
                       Multiple runs may be needed."
      else
        IO.eprintln s!"Found missing imports.\n\
                       Run lake build && ./scripts/updateBatteries.sh to attempt automatic fixes."

run_meta checkBatteriesDataImports
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant23c623fc52f471cef9f93d3d089fb5086bd0e748978d08e03bd15d37245b1605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckImports/Variant23c623fc52f471cef9f93d3d089fb5086bd0e748978d08e03bd15d37245b1605.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f2942c64226dcd086ce670cc5e5509774a0477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
