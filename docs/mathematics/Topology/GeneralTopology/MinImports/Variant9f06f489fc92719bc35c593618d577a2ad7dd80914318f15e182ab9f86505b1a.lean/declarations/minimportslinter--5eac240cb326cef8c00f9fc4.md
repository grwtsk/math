# minImportsLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85107ff69f8afaaf1d5f06093745ff319dea20e041c3beb3d9ab898d9a780de0",
  "kind": "def",
  "lexical_name": "minImportsLinter",
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
  "slug": "minimportslinter--5eac240cb326cef8c00f9fc4",
  "source": {
    "blob": "1b2972801e1fdf06814a119b2b92bb54193e4dad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5eac240cb326cef8c00f9fc4f80281ab5524ff97f8eec1ae45f6f6da8eb1da63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85107ff69f8afaaf1d5f06093745ff319dea20e041c3beb3d9ab898d9a780de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def minImportsLinter : Linter where run := withSetOptionIn fun stx ↦ do
    unless Linter.getLinterValue linter.minImports (← getOptions) do
      return
    if (← get).messages.hasErrors then
      return
    if stx == (← `(command| #import_bumps)) then return
    if stx == (← `(command| set_option $(mkIdent `linter.minImports) true)) then
      logInfo "Try using '#import_bumps', instead of manually setting the linter option: \
              the linter works best with linear parsing of the file and '#import_bumps' \
              also sets the `Elab.async` option to `false`."
      return
    let env ← getEnv
    -- the first time `minImportsRef` is read, it has `transClosure = none`;
    -- in this case, we set it to be the `transClosure` for the file.
    if (← minImportsRef.get).transClosure.isNone then
      minImportsRef.modify ({· with transClosure := env.importGraph.transitiveClosure})
    let impState ← minImportsRef.get
    let (importsSoFar, oldCumulImps) := (impState.minImports, impState.importSize)
    -- when the linter reaches the end of the file or `#exit`, it gives a report
    if #[``Parser.Command.eoi, ``Lean.Parser.Command.exit].contains stx.getKind then
      let explicitImportsInFile : NameSet :=
        .fromArray ((env.imports.map (·.module)).erase `Init) Name.quickCmp
      let newImps := importsSoFar.diff explicitImportsInFile
      let currentlyUnneededImports := explicitImportsInFile.diff importsSoFar
      -- we read the current file, to do a custom parsing of the imports:
      -- this is a hack to obtain some `Syntax` information for the `import X` commands
      let fname ← getFileName
      let contents ← IO.FS.readFile fname
      -- `impMods` is the syntax for the modules imported in the current file
      let (impMods, _) ← Parser.parseHeader (Parser.mkInputContext contents fname)
      for i in currentlyUnneededImports do
        match impMods.raw.find? (·.getId == i) with
          | some impPos => logWarningAt impPos m!"unneeded import '{i}'"
          | _ => dbg_trace f!"'{i}' not found"  -- this should be unreachable
      -- if the linter found new imports that should be added (likely to *reduce* the dependencies)
      if !newImps.isEmpty then
        -- format the imports prepending `import ` to each module name
        let withImport := (newImps.toArray.qsort Name.lt).map (s!"import {·}")
        -- log a warning at the first `import`, if there is one.
        logWarningAt ((impMods.raw.find? (·.isOfKind `import)).getD default)
          m!"-- missing imports\n{"\n".intercalate withImport.toList}"
    let id ← getId stx
    let newImports := getIrredundantImports env (← getAllImports stx id)
    let tot := (newImports.append importsSoFar)
    let redundant := env.findRedundantImports tot.toArray
    let currImports := tot.diff redundant
    let currImpArray := currImports.toArray.qsort Name.lt
    if currImpArray != #[] &&
       currImpArray ≠ importsSoFar.toArray.qsort Name.lt then
      let newCumulImps := -- We should always be in the situation where `getD` finds something
        (importsBelow (impState.transClosure.getD env.importGraph.transitiveClosure) tot).size
      minImportsRef.modify ({· with minImports := currImports, importSize := newCumulImps})
      let new := currImpArray.filter (!importsSoFar.contains ·)
      let redundant := importsSoFar.toArray.filter (!currImports.contains ·)
      -- to make `test` files more stable, we suppress the exact count of import changes if
      -- the `linter.minImports.increases` option is `false`
      let byCount :=  if Linter.getLinterValue linter.minImports.increases (← getOptions) then
                      m!"by {newCumulImps - oldCumulImps} "
                    else
                      m!""
      Linter.logLint linter.minImports stx <|
        m!"Imports increased {byCount}to\n{currImpArray}\n\n\
          New imports: {new}\n" ++
            if redundant.isEmpty then m!"" else m!"\nNow redundant: {redundant}\n"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2972801e1fdf06814a119b2b92bb54193e4dad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
