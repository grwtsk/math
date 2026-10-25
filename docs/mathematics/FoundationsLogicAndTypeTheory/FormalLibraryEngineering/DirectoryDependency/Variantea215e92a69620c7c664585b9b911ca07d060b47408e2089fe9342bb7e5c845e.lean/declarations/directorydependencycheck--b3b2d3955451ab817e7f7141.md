# directoryDependencyCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d8b7c7e254596845aa19bc4561b61ab147b8d8f10128ade2dbf5c6127ac39dd",
  "kind": "def",
  "lexical_name": "directoryDependencyCheck",
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
  "slug": "directorydependencycheck--b3b2d3955451ab817e7f7141",
  "source": {
    "blob": "49387b8d8005fcfedca09974e3cf6cc842a710bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 739,
    "line": 679,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3b2d3955451ab817e7f7141cdd8f6f9cf56df500755c5ac4229008585b7825d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d8b7c7e254596845aa19bc4561b61ab147b8d8f10128ade2dbf5c6127ac39dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 679–739.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def directoryDependencyCheck (mainModule : Name) : CommandElabM (Array MessageData) := do
  unless Linter.getLinterValue linter.directoryDependency (← Linter.getLinterOptions) do
    return #[]
  let env ← getEnv
  let imports := env.allImportedModuleNames

  -- If this module is in the allow-list, we only allow imports from directories specified there.
  -- Collect all prefixes which have a matching entry.
  let matchingPrefixes := mainModule.prefixes.filter (fun prf ↦ allowedImportDirs.containsKey prf)
  if matchingPrefixes.isEmpty then
    -- Otherwise, we fall back to the blocklist `forbiddenImportDirs`.
    if let some msg := checkBlocklist env mainModule imports then return #[msg] else return #[]
  else
    -- We always allow imports in the same directory (for each matching prefix),
    -- from `Init`, `Lean` and `Std`, as well as imports in `Aesop`, `Qq`, `Plausible`,
    -- `ImportGraph`, `ProofWidgets` or `LeanSearchClient` (as these are imported in Tactic.Common).
    -- We also allow transitive imports of Mathlib.Init, as well as Mathlib.Init itself.
    let initImports := (← findImports ("Mathlib" / "Init.lean")).append
      #[`Mathlib.Init, `Mathlib.Tactic.DeclarationNames]
    let exclude := [
      `Init, `Std, `Lean,
      `Aesop, `Qq, `Plausible, `ImportGraph, `ProofWidgets, `LeanSearchClient
    ]
    let importsToCheck := imports.filter (fun imp ↦ !exclude.any (·.isPrefixOf imp))
      |>.filter (fun imp ↦ !matchingPrefixes.any (·.isPrefixOf imp))
      |>.filter (!initImports.contains ·)

    -- Find all prefixes which are allowed for one of these directories.
    let allRules := allowedImportDirs.getAllLeft mainModule
    -- Error about those imports which are not covered by allowedImportDirs.
    let mut messages := #[]
    for imported in importsToCheck do
      if !allowedImportDirs.contains mainModule imported then
        let importPath := env.importPath imported
        let mut msg := m!"Module {mainModule} depends on {imported},\n\
        but is only allowed to import modules starting with one of \
        {allRules.toArray.qsort (·.toString < ·.toString)}.\n\
        Note: module {imported}"
        let mut superseded := false
        match importPath.toList with
        | [] => msg := msg ++ " is directly imported by this module"
        | a :: rest =>
          -- Only add messages about imports that aren't themselves transitive imports of
          -- forbidden imports.
          -- This should prevent redundant messages.
          if !allowedImportDirs.contains mainModule a then
            superseded := true
          else
            msg := msg ++ s!" is imported by {a},\n"
            for dep in rest do
              if !allowedImportDirs.contains mainModule dep then
                superseded := true
                break
              msg := msg ++ m!"which is imported by {dep},\n"
            msg := msg ++ m!"which is imported by this module."
            msg := msg ++ "(Exceptions can be added to `allowedImportDirs`.)"
        if !superseded then
          messages := messages.push msg
    return messages

end Mathlib.Linter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean#L679).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49387b8d8005fcfedca09974e3cf6cc842a710bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
