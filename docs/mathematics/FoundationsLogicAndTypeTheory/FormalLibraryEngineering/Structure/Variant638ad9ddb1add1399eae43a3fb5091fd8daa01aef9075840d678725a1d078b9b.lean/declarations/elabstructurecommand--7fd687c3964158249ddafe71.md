# elabStructureCommand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e350c7beb2cec639652f294533699e4f6c51a4f43c597b580c5832e7094f6fe",
  "kind": "def",
  "lexical_name": "elabStructureCommand",
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
  "slug": "elabstructurecommand--7fd687c3964158249ddafe71",
  "source": {
    "blob": "d4e9e482af56c000ec44903583603375e1941536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1608,
    "line": 1527,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fd687c3964158249ddafe71a5343da24637ce5a0563bc705d88924a4008965d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e350c7beb2cec639652f294533699e4f6c51a4f43c597b580c5832e7094f6fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1527–1608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabStructureCommand : InductiveElabDescr where
  mkInductiveView (modifiers : Modifiers) (stx : Syntax) := do
    let view ← structureSyntaxToView modifiers stx
    trace[Elab.structure] "view.levelNames: {view.levelNames}"
    return {
      view := view.toInductiveView
      elabCtors := fun rs r params => runStructElabM do
        withParents view rs r.indFVar do
        withFields params view.fields do
        withRef view.ref do
          elabStructFieldDefaults view.fields
          Term.synthesizeSyntheticMVarsNoPostponing
          resolveFieldDefaults view.declName
          let state ← get
          let parents := state.parents
          let fieldInfos := state.fields
          let lctx ← getLCtx
          let localInsts ← getLocalInstances
          let ctor ← mkCtor view r params
          return {
            ctors := [ctor]
            collectUsedFVars := collectUsedFVars lctx localInsts fieldInfos
            collectExtraHeaderLMVars := withLCtx lctx localInsts do collectExtraHeaderLMVars fieldInfos
            checkUniverses := fun _ u => withLCtx lctx localInsts do checkResultingUniversesForFields fieldInfos u
            finalizeTermElab := withLCtx lctx localInsts do checkDefaults fieldInfos
            prefinalize := fun levelParams params replaceIndFVars => do
              withLCtx lctx localInsts do
                withOptions (warn.sorry.set · false) do
                  addProjections params r fieldInfos
                registerStructure view.declName fieldInfos
                runStructElabM (init := state) do
                  withExporting (isExporting := !isPrivateName view.ctor.declName) do
                    withOptions (warn.sorry.set · false) do
                      mkFlatCtor levelParams params view.declName replaceIndFVars
                    addDefaults levelParams params replaceIndFVars
              let parentInfos ← withLCtx lctx localInsts <| runStructElabM (init := state) do
                withOptions (warn.sorry.set · false) do
                  mkRemainingProjections levelParams params view
              setStructureParents view.declName parentInfos

              checkResolutionOrder view.declName
              return {
                finalize := do
                  -- Enable realizations for projections here (after @[class] attribute is applied)
                  -- so that the realization context has class information available.
                  for fieldInfo in fieldInfos do
                    if fieldInfo.kind.isInCtor then
                      enableRealizationsForConst fieldInfo.declName
                  if view.isClass then
                    -- Set instanceReducible on subobject projections to class parents.
                    -- mkProjections defers reducibility to addParentInstances, but
                    -- addParentInstances only handles direct parents. Subobject fields
                    -- for non-direct parents (grandparents promoted to constructor
                    -- subobjects during diamond flattening) also need instanceReducible
                    -- to be unfoldable at .instances transparency.
                    for fieldInfo in fieldInfos do
                      if let .subobject parentName := fieldInfo.kind then
                        if isClass (← getEnv) parentName then
                          setReducibilityStatus fieldInfo.declName .instanceReducible
                    addParentInstances parentInfos
                  -- Add field docstrings here (after @[class] attribute is applied)
                  -- so that Verso docstrings can use the class.
                  for field in view.fields do
                    -- may not exist if overriding inherited field
                    if (← getEnv).contains field.declName then
                      if let some doc := field.modifiers.docString? then
                        addDocString field.declName field.binders doc
                  -- Add terminfo after docstrings so hovers include the docstring.
                  withSaveInfoContext do
                    for field in view.fields do
                      -- may not exist if overriding inherited field
                      if (← getEnv).contains field.declName then
                        Term.addTermInfo' field.ref (← mkConstWithLevelParams field.declName) (isBinder := true)
                    -- Add terminfo for parents now that all parent projections exist.
                    for parent in parents do
                      if parent.addTermInfo then
                        Term.addTermInfo' parent.ref (← mkConstWithLevelParams parent.declName) (isBinder := true)
              }
          }
    }

end Lean.Elab.Command.Structure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean#L1527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e9e482af56c000ec44903583603375e1941536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
