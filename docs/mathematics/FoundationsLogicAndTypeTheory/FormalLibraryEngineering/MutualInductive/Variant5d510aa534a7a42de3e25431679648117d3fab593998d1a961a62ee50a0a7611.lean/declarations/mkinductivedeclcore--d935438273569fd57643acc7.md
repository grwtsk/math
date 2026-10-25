# mkInductiveDeclCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:305a0da90bb764be18a214339bd1e48d92f9149936aed703d7facf2a638d00c8",
  "kind": "def",
  "lexical_name": "mkInductiveDeclCore",
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
  "slug": "mkinductivedeclcore--d935438273569fd57643acc7",
  "source": {
    "blob": "2f896ef31359aad0ee273d30032f02e843781076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1529,
    "line": 1450,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d935438273569fd57643acc7077629da751e6eea58056111b1d2cef4cdc485e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:305a0da90bb764be18a214339bd1e48d92f9149936aed703d7facf2a638d00c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1450–1529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkInductiveDeclCore
  (callback : AddAndFinalizeContext → TermElabM α) (vars : Array Expr)
  (elabs : Array InductiveElabStep1) (rs : Array PreElabHeaderResult) (scopeLevelNames : List Name) : TermElabM α := do
  let views := elabs.map (·.view)
  let view0 := views[0]!
  let isCoinductive := views.any (·.isCoinductive)
  if isCoinductive then
    if let some i ← rs.findIdxM? (forallTelescopeReducing ·.type fun _ body => pure !body.isProp) then
      throwErrorAt views[i]!.declId "`coinductive` keyword can only be used to define predicates"
  let allUserLevelNames := rs[0]!.levelNames
  let isUnsafe          := view0.modifiers.isUnsafe
  withInductiveLocalDecls rs fun params indFVars => do
    trace[Elab.inductive] "indFVars: {indFVars}"
    /- Start elaborating constructors: -/
    let rs := Array.zipWith (fun r indFVar => { r with indFVar : ElabHeaderResult }) rs indFVars
    let mut indTypesArray : Array InductiveType := #[]
    let mut elabs' := #[]
    for h : i in *...views.size do
      Term.addLocalVarInfo views[i].declId indFVars[i]!
      let r     := rs[i]!
      let elab' ← Term.withDeprecationContextFromAttrs views[i].modifiers.attrs <|
        elabs[i]!.elabCtors rs r params
      elabs'    := elabs'.push elab'
      indTypesArray := indTypesArray.push { name := r.view.declName, type := r.type, ctors := elab'.ctors }
    Term.synthesizeSyntheticMVarsNoPostponing
    let indTypes ← indTypesArray.toList.mapM instantiateMVarsAtInductive
    /- Constructor elaboration complete. -/
    /- Start parameter analysis:
       Every used section variable becomes a parameter,
       and the largest prefix of indices that are used like parameters are promoted to parameters. -/
    let numExplicitParams ← fixedIndicesToParams params.size indTypes indFVars
    trace[Elab.inductive] "numExplicitParams: {numExplicitParams}"
    withUsed elabs' vars indTypes fun vars => do
      let numVars   := vars.size
      let numParams := numVars + numExplicitParams
      let indTypes ← updateParams vars indTypes
      let indTypes ← indTypes.mapM instantiateMVarsAtInductive
      /- Parameter analysis complete. -/
      -- If there are expression metavariables, we should raise an error before attempting to infer universes.
      ensureNoUnassignedMVarsAtInductives indTypes
      /- Start universe inference. -/
      -- allow general access to private data with `withoutExporting` to compute universe levels;
      -- even though we are elaborating here, this can only leak universe level information
      let indTypes ← withoutExporting do
        let typeLMVarIds ← do
          let mut lmvars := {}
          for indType in indTypes do
            lmvars := collectLevelMVars lmvars indType.type
          lmvars ← Prod.snd <$> (elabs'.forM InductiveElabStep2.collectExtraHeaderLMVars).run lmvars
          pure lmvars.result
        let inferResult ← inferResultingUniverse views numParams indTypes indFVars typeLMVarIds
        propagateUniversesToConstructors numParams indTypes inferResult
        levelMVarToParamAtInductives indTypes typeLMVarIds inferResult
        inferResult.assign
        indTypes.mapM instantiateMVarsAtInductive
      /- Universe inference complete. -/
      -- allow general access to private data with `withoutExporting` while we do last universe checks
      withoutExporting do
        elabs'.forM fun elab' => elab'.finalizeTermElab
        ensureNoUnassignedLevelMVarsAtInductives views indTypes
        checkResultingUniverses views elabs' numParams indTypes
      let usedLevelNames := collectLevelParamsInInductive indTypes
      match sortDeclLevelParams scopeLevelNames allUserLevelNames usedLevelNames with
      | .error msg      => throwErrorAt view0.declId msg
      | .ok levelParams =>
        callback {
          views := views
          elabs' := elabs'
          indFVars := indFVars
          vars := vars
          levelParams := levelParams
          indTypes := indTypes
          isUnsafe := isUnsafe
          rs := rs
          params := params
          isCoinductive := isCoinductive
          numVars := numVars
          numParams := numParams
        }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean#L1450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f896ef31359aad0ee273d30032f02e843781076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
