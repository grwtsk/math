# headerLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c748a9755f466696c2b7d12d1078cbfb6241799937bbf2d2e43d2f106ffe48f",
  "kind": "def",
  "lexical_name": "headerLinter",
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
  "slug": "headerlinter--36547ccd6e6f9f6aa31aaea4",
  "source": {
    "blob": "a86b3801096f9e9e4ccbc14812656a5ab5953baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 295,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36547ccd6e6f9f6aa31aaea4022004e2959f3a36914bf39a288226c77f76656a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c748a9755f466696c2b7d12d1078cbfb6241799937bbf2d2e43d2f106ffe48f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def headerLinter : Linter where run := withSetOptionIn fun stx ↦ do
  let mainModule ← getMainModule
  let inMathlib? := ← match ← inMathlibRef.get with
    | some d => return d
    | none => do
      let val ← isInMathlib mainModule
      -- We store the answer to the question "is this file in `Mathlib.lean`?" in `inMathlibRef`
      -- to avoid recomputing its value on every command. This is a performance optimisation.
      inMathlibRef.set (some val)
      return val
  -- The linter skips files not imported in `Mathlib.lean`, to avoid linting "scratch files".
  -- It is however active in the test file `MathlibTest.Header` for the linter itself.
  unless inMathlib? || mainModule == `MathlibTest.Header do return
  unless Linter.getLinterValue linter.style.header (← getOptions) do
    return
  if (← get).messages.hasErrors then
    return
  -- `Mathlib.lean` imports `Mathlib.Tactic`, which the broad imports check below would flag.
  -- Since that file is imports-only, we can simply skip linting it.
  if mainModule == `Mathlib then return
  let fm ← getFileMap
  let md := (getMainModuleDoc (← getEnv)).toArray
  -- The end of the first module doc-string, or the end of the file if there is none.
  let firstDocModPos := match md[0]? with
                          | none     => fm.positions.back!
                          | some doc => fm.ofPosition doc.declarationRange.endPos
  unless stx.getTailPos?.getD default ≤ firstDocModPos do
    return
  -- We try to parse the file up to `firstDocModPos`.
  let upToStx ← parseUpToHere firstDocModPos <|> (do
    -- If parsing failed, there is some command which is not a module docstring.
    -- In that case, we parse until the end of the imports and add an extra `section` afterwards,
    -- so we trigger a "no module doc-string" warning.
    let fil ← getFileName
    let (stx, _) ← Parser.parseHeader { input := fm.source, fileName := fil, fileMap := fm }
    parseUpToHere (stx.raw.getTailPos?.getD default) "\nsection")
  let importIds := getImportIds upToStx
  -- Report on broad or duplicate imports.
  broadImportsCheck importIds mainModule
  duplicateImportsCheck importIds
  if let some msg ← directoryDependencyCheck mainModule then
    Linter.logLint linter.directoryDependency stx msg

  let afterImports := firstNonImport? upToStx
  if afterImports.isNone then return
  let copyright := match upToStx.getHeadInfo with
    | .original lead .. => lead.toString
    | _ => ""
  -- Report any errors about the copyright line.
  if mainModule != `Mathlib.Init then
    for (stx, m) in copyrightHeaderChecks copyright do
      Linter.logLint linter.style.header stx m!"* '{stx.getAtomVal}':\n{m}\n"
  -- Report a missing module doc-string.
  match afterImports with
    | none => return
    | some (.node _ ``Lean.Parser.Command.moduleDoc _) => return
    | some rest =>
    Linter.logLint linter.style.header rest
      m!"The module doc-string for a file should be the first command after the imports.\n\
       Please, add a module doc-string before `{stx}`."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86b3801096f9e9e4ccbc14812656a5ab5953baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
