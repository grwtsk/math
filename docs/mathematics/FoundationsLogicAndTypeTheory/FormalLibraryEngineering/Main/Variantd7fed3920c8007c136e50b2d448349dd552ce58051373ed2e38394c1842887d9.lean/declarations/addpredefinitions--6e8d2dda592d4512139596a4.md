# addPreDefinitions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:141a98e9bc6ee602a0107cb9c523662283bf811514df1b87b5eb2fd1c57dbd77",
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
  "slug": "addpredefinitions--6e8d2dda592d4512139596a4",
  "source": {
    "blob": "bb32745cd7efb6de31cab7779ef5f2003956aa0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 296,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd7fed3920c8007c136e50b2d448349dd552ce58051373ed2e38394c1842887d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e8d2dda592d4512139596a4dbf39851d542ab2a9e6f876a727d1002cc6c9f2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd7fed3920c8007c136e50b2d448349dd552ce58051373ed2e38394c1842887d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:141a98e9bc6ee602a0107cb9c523662283bf811514df1b87b5eb2fd1c57dbd77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–365.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd7fed3920c8007c136e50b2d448349dd552ce58051373ed2e38394c1842887d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantd7fed3920c8007c136e50b2d448349dd552ce58051373ed2e38394c1842887d9.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb32745cd7efb6de31cab7779ef5f2003956aa0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
