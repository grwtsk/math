# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9488f085fd7c500cafe512b7c7eaa39488657524c352ff59aab0714dda1a2de",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--ce4837f0c2de7eebdf78912d",
  "source": {
    "blob": "c22cdb258576b0217a819ba616a6587b1487e025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce4837f0c2de7eebdf78912ded3bd0aee4eaf21ff665e6eb9bf2ec47c9c07109",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9488f085fd7c500cafe512b7c7eaa39488657524c352ff59aab0714dda1a2de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab tk:"#lint" verbosity:("+" <|> "-")? fast:"*"? only:(&" only")?
    linters:(ppSpace ident)* project:(inProject)? : command => do
  let (decls, whereDesc, groupByFilename) ← match project with
    | none => do pure (← liftCoreM getDeclsInCurrModule, "in the current file", false)
    | some cfg => match cfg with
      | `(inProject| in $id) =>
        let id := id.getId.eraseMacroScopes
        if id == `all then
          pure (← liftCoreM getAllDecls, "in all files", true)
        else
          pure (← liftCoreM (getDeclsInPackage id), s!"in {id}", true)
      | _ => throwUnsupportedSyntax
  let verbosity : LintVerbosity ← match verbosity with
    | none => pure .medium
    | some ⟨.node _ `token.«+» _⟩ => pure .high
    | some ⟨.node _ `token.«-» _⟩ => pure .low
    | _ => throwUnsupportedSyntax
  let fast := fast.isSome
  let onlyNames : Option (List Name) := match only.isSome with
    | true => some (linters.map fun l => l.getId).toList
    | false => none
  let linters ← liftCoreM do
    let mut result ← getChecks (slow := !fast) (runOnly := onlyNames) none
    let linterState := batteriesLinterExt.getState (← getEnv)
    for id in linters do
      let name := id.getId.eraseMacroScopes
      let some (declName, _) := linterState.find? name | throwErrorAt id "not a linter: {name}"
      Elab.addConstInfo id declName
      let linter ← getLinter name declName
      result := result.binInsert (·.name.lt ·.name) linter
    pure result
  let results ← liftCoreM <| lintCore decls linters
  let failed := results.any (!·.2.isEmpty)
  let mut fmtResults ← liftCoreM <|
    formatLinterResults results decls (groupByFilename := groupByFilename)
      whereDesc (runSlowLinters := !fast) verbosity linters.size
  if failed then
    logError fmtResults
  else if verbosity != LintVerbosity.low then
    logInfoAt tk m!"{fmtResults}\n-- All linting checks passed!"

open Elab Command in
/-- The command `#list_linters` prints a list of all available linters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c22cdb258576b0217a819ba616a6587b1487e025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
