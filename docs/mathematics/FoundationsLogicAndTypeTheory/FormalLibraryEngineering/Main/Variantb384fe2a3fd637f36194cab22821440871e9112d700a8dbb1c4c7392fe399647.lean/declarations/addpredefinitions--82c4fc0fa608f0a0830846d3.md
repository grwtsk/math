# addPreDefinitions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16961754f81fa31ac0cc989902864f03610dcb3681a347cd492b9f1ad1e4668f",
  "kind": "def",
  "lexical_name": "addPreDefinitions",
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
  "slug": "addpredefinitions--82c4fc0fa608f0a0830846d3",
  "source": {
    "blob": "3d2169aeae3d4d29e04ba9421ec3b7f95ee799e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82c4fc0fa608f0a0830846d3a22a19b0783ea1c8444751cc7fabe03f86b66108",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16961754f81fa31ac0cc989902864f03610dcb3681a347cd492b9f1ad1e4668f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addPreDefinitions (docCtx : LocalContext × LocalInstances) (preDefs : Array PreDefinition) :
    TermElabM Unit := withLCtx {} {} do
  profileitM Exception "process pre-definitions" (← getOptions) do
    withTraceNode `Elab.def.processPreDef (fun _ => return m!"process pre-definitions") do
      for preDef in preDefs do
        trace[Elab.definition.body] "{preDef.declName} : {preDef.type} :=\n{preDef.value}"
      let preDefs ← preDefs.mapM ensureNoUnassignedMVarsAtPreDef
      let preDefs ← betaReduceLetRecApps preDefs
      let cliques := partitionPreDefs preDefs
      for preDefs in cliques do
        trace[Elab.definition.scc] "{preDefs.map (·.declName)}"
        if preDefs.size == 1 && isNonRecursive preDefs[0]! then
          /-
          We must erase `recApp` annotations even when `preDef` is not recursive
          because it may use another recursive declaration in the same mutual block.
          See issue #2321
          -/
          let preDef ← eraseRecAppSyntax preDefs[0]!
          ensureEqnReservedNamesAvailable preDef.declName
          if preDef.modifiers.isNoncomputable then
            addNonRec docCtx preDef (cleanupValue := true)
          else
            addAndCompileNonRec docCtx preDef (cleanupValue := true)
          preDef.termination.ensureNone "not recursive"
        else if preDefs.any (·.modifiers.isUnsafe) then
          addAndCompileUnsafe docCtx preDefs
          preDefs.forM (·.termination.ensureNone "unsafe")
        else if preDefs.any (·.modifiers.isPartial) then
          for preDef in preDefs do
            if preDef.modifiers.isPartial && !(← whnfD preDef.type).isForall then
              withRef preDef.ref <| throwError "invalid use of `partial`, `{preDef.declName}` is not a function{indentExpr preDef.type}"
          addAndCompilePartial docCtx preDefs
          preDefs.forM (·.termination.ensureNone "partial")
        else
          ensureFunIndReservedNamesAvailable preDefs
          try
            checkCodomainsLevel preDefs
            checkTerminationByHints preDefs
            let termMeasures?s ← elabTerminationByHints preDefs
            if shouldUseStructural preDefs then
              structuralRecursion docCtx preDefs termMeasures?s
            else if shouldUsePartialFixpoint preDefs then
              partialFixpoint docCtx preDefs
            else if shouldUseWF preDefs then
              wfRecursion docCtx preDefs termMeasures?s
            else
              withRef (preDefs[0]!.ref) <| mapError
                (orelseMergeErrors
                  (structuralRecursion docCtx preDefs termMeasures?s)
                  (wfRecursion docCtx preDefs termMeasures?s))
                (fun msg =>
                  let preDefMsgs := preDefs.toList.map (MessageData.ofConstName <| ·.declName)
                  m!"fail to show termination for{indentD (MessageData.joinSep preDefMsgs Format.line)}\nwith errors\n{msg}")
          catch ex =>
            logException ex
            let s ← saveState
            try
              if preDefs.all fun preDef => (preDef.kind matches DefKind.def | DefKind.instance) || preDefs.all fun preDef => preDef.kind == DefKind.abbrev then
                -- try to add as partial definition
                withOptions (Elab.async.set · false) do
                  try
                    addAndCompilePartial docCtx preDefs (useSorry := true)
                  catch _ =>
                    -- Compilation failed try again just as axiom
                    s.restore
                    addSorried docCtx preDefs
              else if preDefs.all fun preDef => preDef.kind == DefKind.theorem then
                addSorried docCtx preDefs
            catch _ => s.restore

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d2169aeae3d4d29e04ba9421ec3b7f95ee799e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
