# formatLinterResults

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:558ed0a941e9bb4f2956839895a547263b4b28b32c0b61e40375c4eaf26c2408",
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
  "slug": "formatlinterresults--a754f71477eb82976ce7ff3c",
  "source": {
    "blob": "2771137e95629c32e0d5276bf819765cbf0201c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a754f71477eb82976ce7ff3c4e41303b1a4efc958799b159d488f76c63b6f8a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:558ed0a941e9bb4f2956839895a547263b4b28b32c0b61e40375c4eaf26c2408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def formatLinterResults
    (results : Array (NamedLinter × HashMap Name MessageData))
    (decls : Array Name)
    (groupByFilename : Bool)
    (whereDesc : String) (runSlowLinters : Bool)
    (verbose : LintVerbosity) (numLinters : Nat) (useErrorFormat : Bool := false) :
    CoreM MessageData := do
  let formattedResults ← results.filterMapM fun (linter, results) => do
    if !results.isEmpty then
      let warnings ←
        if groupByFilename || useErrorFormat then
          groupedByFilename results (useErrorFormat := useErrorFormat)
        else
          printWarnings results
      pure $ some m!"/- The `{linter.name}` linter reports:\n{linter.errorsFound} -/\n{warnings}\n"
    else if verbose = LintVerbosity.high then
      pure $ some m!"/- OK: {linter.noErrorsFound} -/"
    else
      pure none
  let mut s := MessageData.joinSep formattedResults.toList Format.line
  let numAutoDecls := (← decls.filterM isAutoDecl).size
  let failed := results.map (·.2.size) |>.foldl (·+·) 0
  unless verbose matches LintVerbosity.low do
    s := m!"-- Found {failed} error{if failed == 1 then "" else "s"
      } in {decls.size - numAutoDecls} declarations (plus {
      numAutoDecls} automatically generated ones) {whereDesc
      } with {numLinters} linters\n\n{s}"
  unless runSlowLinters do s := m!"{s}-- (slow linters skipped)\n"
  pure s

/-- Get the list of declarations in the current module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantae725270e9a853f455e03ed69b3714c6ab0e1ce3caed68ac9b53f3b059a53a21.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2771137e95629c32e0d5276bf819765cbf0201c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
