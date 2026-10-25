# formatLinterResults

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c18c43e4b8886d0027635558785bd305f26b3694845bb1e21da09a03fe9d963d",
  "kind": "def",
  "lexical_name": "formatLinterResults",
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
  "slug": "formatlinterresults--716af9dbb4a7929cf4cd59e7",
  "source": {
    "blob": "fe078355f2d3324c6dd1825f88e5a397ae95a36f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:716af9dbb4a7929cf4cd59e7c6b062e9fecc3965c87c4a52cf3cfa72e71e4b20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c18c43e4b8886d0027635558785bd305f26b3694845bb1e21da09a03fe9d963d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def formatLinterResults
    (results : Array (NamedEnvLinter × Std.HashMap Name MessageData))
    (decls : Array Name)
    (groupByFilename : Bool)
    (whereDesc : String)
    (verbose : LintVerbosity) (numLinters : Nat) (useErrorFormat : Bool := false) :
    CoreM MessageData := do
  let formattedResults ← results.filterMapM fun (linter, results) => do
    if !results.isEmpty then
      let warnings ←
        if groupByFilename || useErrorFormat then
          groupedByFilename results (useErrorFormat := useErrorFormat)
        else
          printWarnings results
      pure $ some m!"/- The `{linter.optName}` linter reports:\n{linter.errorsFound} -/\n{warnings}\n"
    else if verbose = LintVerbosity.high then
      pure $ some m!"/- OK: {linter.noErrorsFound} -/"
    else
      pure none
  let mut s := MessageData.joinSep formattedResults.toList Format.line
  let numAutoDecls := (← decls.filterM isAutoDeclOrPrivate_Internal).size
  let failed := results.map (·.2.size) |>.foldl (·+·) 0
  unless verbose matches LintVerbosity.low do
    s := m!"-- Found {failed} error{if failed == 1 then "" else "s"
      } in {decls.size - numAutoDecls} declarations (plus {
      numAutoDecls} automatically generated ones) {whereDesc
      } with {numLinters} linters\n\n{s}"
  pure s

/-- Get the list of declarations in the current module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe078355f2d3324c6dd1825f88e5a397ae95a36f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
