# computeSynthOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cfeaf2a259d02ac290f52307d2d54d3aa120f18be6ec095e32ccd6b59c41431",
  "kind": "def",
  "lexical_name": "computeSynthOrder",
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
  "slug": "computesynthorder--88bbed03e327cd4b62063d6d",
  "source": {
    "blob": "98ed55bb22bb9d5af101bc354753b0b7f629b730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88bbed03e327cd4b62063d6d75c4859c39aebafb01fb70be432d7a6db3a233fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cfeaf2a259d02ac290f52307d2d54d3aa120f18be6ec095e32ccd6b59c41431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def computeSynthOrder (inst : Expr) (projInfo? : Option ProjectionFunctionInfo) : MetaM (Array Nat) :=
  withReducible do
  let instTy ← inferType inst

  -- Gets positions of all out- and semi-out-params of `classTy`
  -- (where `classTy` is e.g. something like `Inhabited Nat`)
  let rec getSemiOutParamPositionsOf (classTy : Expr) : MetaM (Array Nat) := do
    if let .const className .. := classTy.getAppFn then
      forallTelescopeReducing (← inferType classTy.getAppFn) fun args _ => do
      let mut pos := (getOutParamPositions? (← getEnv) className).getD #[]
      for arg in args, i in *...args.size do
        if (← inferType arg).isAppOf ``semiOutParam then
          pos := pos.push i
      return pos
    else
      return #[]

  -- Create both metavariables and free variables for the instance args
  -- We will successively pick subgoals where all non-out-params have been
  -- assigned already. After picking such a "ready" subgoal, we assign the
  -- mvars in its out-params by the corresponding fvars.
  let (argMVars, argBIs, ty) ← forallMetaTelescopeReducing instTy
  let ty ← whnf ty
  forallTelescopeReducing instTy fun argVars _ => do

  -- Assigns all mvars from argMVars in e by the corresponding fvar.
  let rec assignMVarsIn (e : Expr) : MetaM Unit := do
    for mvarId in ← getMVars e do
      if let some i := argMVars.findIdx? (·.mvarId! == mvarId) then
        mvarId.assign argVars[i]!
      assignMVarsIn (← inferType (.mvar mvarId))

  -- We start by assigning all metavariables in non-out-params of the return value.
  -- These are assumed to not be mvars during TC search (or at least not assignable)
  let tyOutParams ← getSemiOutParamPositionsOf ty
  let tyArgs := ty.getAppArgs
  for tyArg in tyArgs, i in *...tyArgs.size do
    unless tyOutParams.contains i do
      assignMVarsIn tyArg

  -- Now we successively try to find the next ready subgoal, where all
  -- non-out-params are mvar-free.
  let mut synthed := #[]
  let mut toSynth := List.range argMVars.size |>.filter (argBIs[·]! == .instImplicit) |>.toArray
  while !toSynth.isEmpty do
    let next? ← toSynth.findM? fun i => do
      let argTy ← instantiateMVars (← inferType argMVars[i]!)
      if let some projInfo := projInfo? then
        if projInfo.numParams == i then
          -- See comment regarding `projInfo?` at the beginning of this function
          assignMVarsIn argTy
          return true
      forallTelescopeReducing argTy fun _ argTy => do
      let argTy ← whnf argTy
      let argOutParams ← getSemiOutParamPositionsOf argTy
      let argTyArgs := argTy.getAppArgs
      for i in *...argTyArgs.size, argTyArg in argTyArgs do
        if !argOutParams.contains i && argTyArg.hasExprMVar then
          return false
      return true
    let next ←
      match next? with
      | some next => pure next
      | none =>
        if synthInstance.checkSynthOrder.get (← getOptions) then
          let typeLines := ("" : MessageData).joinSep <| Array.toList <| ← toSynth.mapM fun i => do
            let ty ← instantiateMVars (← inferType argMVars[i]!)
            return indentExpr (ty.setPPExplicit true)
          throwError m!"\
            cannot find synthesization order for instance {inst} with type{indentExpr instTy}\n\
            all remaining arguments have metavariables:{typeLines}"
        pure toSynth[0]!
    synthed := synthed.push next
    toSynth := toSynth.filter (· != next)
    assignMVarsIn (← inferType argMVars[next]!)
    assignMVarsIn argMVars[next]!

  if synthInstance.checkSynthOrder.get (← getOptions) then
    let ty ← instantiateMVars ty
    if ty.hasExprMVar then
      throwError m!"instance does not provide concrete values for (semi-)out-params{indentExpr (ty.setPPExplicit true)}"

  trace[Meta.synthOrder] "synthesizing the arguments of {inst} in the order {synthed}:\
    {("" : MessageData).joinSep (← synthed.mapM fun i => return indentExpr (← inferType argVars[i]!)).toList}"

  return synthed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ed55bb22bb9d5af101bc354753b0b7f629b730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
