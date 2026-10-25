# deriveInductionStructural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3d15afe0539cd1e0a26137926268057072052dd2e99dab2df8b288103a78176",
  "kind": "def",
  "lexical_name": "deriveInductionStructural",
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
  "slug": "deriveinductionstructural--4fd3ed7e8b85d58c4e60969d",
  "source": {
    "blob": "20587c35412e3313846c39603df036e01503a5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1348,
    "line": 1109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fd3ed7e8b85d58c4e60969d23bb32b997744918b43cfc60b8fae883f1de7737",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3d15afe0539cd1e0a26137926268057072052dd2e99dab2df8b288103a78176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1109–1348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveInductionStructural (unfolding : Bool) (names : Array Name) (fixedParamPerms : FixedParamPerms) : MetaM Name := do
  let inductName :=
    if names.size = 1 then
      getFunInductName (unfolding := unfolding) names[0]!
    else
      getMutualInductName (unfolding := unfolding) names[0]!
  realizeConst names[0]! inductName (doRealize inductName)
  return inductName
where doRealize inductName := do
  let infos ← names.mapM getConstInfoDefn
  assert! infos.size > 0
  -- First open up the fixed parameters everywhere
  let (e', paramMask, motiveArities) ← fixedParamPerms.perms[0]!.forallTelescope infos[0]!.type fun xs => do
    -- Now look at the body of an arbitrary of the functions (they are essentially the same
    -- up to the final projections)
    let body ← fixedParamPerms.perms[0]!.instantiateLambda infos[0]!.value xs
    let body := body.eta

    lambdaTelescope body fun ys body => do
      -- The body is of the form (brecOn … ).2.2.1 extra1 extra2 etc; ignore the
      -- projection here
      let f' := body.getAppFn
      let body' := PProdN.stripProjs f'
      let f := body'.getAppFn
      let args := body'.getAppArgs ++ body.getAppArgs

      let body := PProdN.stripProjs body
      let .const brecOnName us := f |
        throwError "{infos[0]!.name}: unexpected body:{indentExpr infos[0]!.value}\ninstantiated to{indentExpr body}"
      unless isBRecOnRecursor (← getEnv) brecOnName do
        throwError "{infos[0]!.name}: expected .brecOn application, found:{indentExpr body}"

      let .str indName _ := brecOnName | unreachable!
      let indInfo ← getConstInfoInduct indName

      -- we have a `.brecOn` application, so now figure out the length of the fixed prefix
      -- we can use the recInfo for `.rec`, since `.brecOn` has a similar structure
      let recInfo ← getConstInfoRec (mkRecName indName)
      if args.size < recInfo.numParams + recInfo.numMotives + recInfo.numIndices + 1 + recInfo.numMotives then
        throwError "insufficient arguments to .brecOn:{indentExpr body}"
      let brecOnArgs    : Array Expr := args[*...recInfo.numParams]
      let _brecOnMotives : Array Expr := args[recInfo.numParams...(recInfo.numParams + recInfo.numMotives)]
      let brecOnTargets : Array Expr := args[(recInfo.numParams + recInfo.numMotives)...
        (recInfo.numParams + recInfo.numMotives + recInfo.numIndices + 1)]
      let brecOnMinors  : Array Expr := args[(recInfo.numParams + recInfo.numMotives + recInfo.numIndices + 1)...
        (recInfo.numParams + recInfo.numMotives + recInfo.numIndices + 1 + recInfo.numMotives)]
      let brecOnExtras  : Array Expr := args[(recInfo.numParams + recInfo.numMotives + recInfo.numIndices + 1 +
        recInfo.numMotives)...*]
      unless brecOnTargets.all (·.isFVar) do
        throwError "the indices and major argument of the brecOn application are not variables:{indentExpr body}"
      unless brecOnExtras.all (·.isFVar) do
        throwError "the extra arguments to the brecOn application are not variables:{indentExpr body}"
      let _ :: indLevels := us | throwError "Too few universe parameters in .brecOn application:{indentExpr body}"

      let group : Structural.IndGroupInst := { Structural.IndGroupInfo.ofInductiveVal indInfo with
        levels := indLevels, params := brecOnArgs }

      -- We also need to know the number of indices of each type former, including the auxiliary
      -- type formers that do not have IndInfo. We can read it off the motives types of the recursor.
      let numTypeFormerTargetss ← do
        let aux := mkAppN (.const recInfo.name (0 :: group.levels)) group.params
        let motives ← inferArgumentTypesN recInfo.numMotives aux
        motives.mapM fun motive =>
          forallTelescopeReducing motive fun xs _ => pure xs.size

      -- Recreate the recArgInfos. Maybe more robust and simpler to store relevant parts in the EqnInfos?
      let recArgInfos ← infos.mapIdxM fun funIdx info => do
        let some eqnInfo := Structural.eqnInfoExt.find? (← getEnv) info.name | throwError "`{info.name}` missing eqnInfo"
        let value ← fixedParamPerms.perms[funIdx]!.instantiateLambda info.value xs
        let recArgInfo' ← lambdaTelescope value fun ys _ =>
          let args := fixedParamPerms.perms[funIdx]!.buildArgs xs ys
          Structural.getRecArgInfo info.name fixedParamPerms.perms[funIdx]! args eqnInfo.recArgPos
        let #[recArgInfo] ← Structural.argsInGroup group xs value #[recArgInfo']
          | throwError "Structural.argsInGroup did not return a recArgInfo"
        pure recArgInfo

      let positions : Structural.Positions := .groupAndSort (·.indIdx) recArgInfos (Array.range indInfo.numTypeFormers)

      -- Below we'll need the types of the motive arguments (brecOn argument order)
      let brecMotiveTypes ← inferArgumentTypesN recInfo.numMotives (group.brecOn 0 0)
      trace[Meta.FunInd] m!"brecMotiveTypes: {brecMotiveTypes}"
      assert! brecMotiveTypes.size = positions.size

      -- Remove the varying parameters from the environment
      withErasedFVars (ys.map (·.fvarId!)) do
        -- The brecOnArgs, brecOnMotives and brecOnMinor should still be valid in this
        -- context, and are the parts relevant for every function in the mutual group

        -- Calculate the types of the induction motives (natural argument order) for each function
        let motiveTypes ← infos.mapIdxM fun funIdx info => do
          let funType ← fixedParamPerms.perms[funIdx]!.instantiateForall info.type xs
          forallBoundedTelescope funType (some (fixedParamPerms.perms[funIdx]!.size - xs.size)) fun ys rType => do
            if unfolding then
              withLocalDeclD `r rType fun r =>
                mkForallFVars (ys.push r) (.sort 0)
            else
              mkForallFVars ys (.sort 0)
        trace[Meta.FunInd] m!"motiveTypes: {motiveTypes}"
        let motiveArities ← motiveTypes.mapM fun motiveType =>
          forallTelescope motiveType fun ys _ => pure ys.size
        let motiveNames := Array.ofFn (n := infos.size) fun ⟨i, _⟩ =>
          if infos.size = 1 then .mkSimple "motive" else .mkSimple s!"motive_{i+1}"

        withLocalDeclsDND (motiveNames.zip motiveTypes) fun motives => do

          -- Prepare the `isRecCall` that recognizes recursive calls
          let isRecCall : Expr → Option Expr := fun e => do
            if let .some funIdx := motives.idxOf? e.getAppFn then
              if e.getAppNumArgs = motiveArities[funIdx]! then
                let info := infos[funIdx]!
                let args := if unfolding then e.getAppArgs.pop else e.getAppArgs
                let args := fixedParamPerms.perms[funIdx]!.buildArgs xs args
                return mkAppN (.const info.name (info.levelParams.map mkLevelParam)) args
            .none

          -- Motives with parameters reordered, to put indices and major first,
          -- and (when unfolding) the result field instantiated
          let mut brecMotives := #[]
          for motive in motives, recArgInfo in recArgInfos, info in infos, funIdx in *...motives.size do
            let brecMotive ← forallTelescope (← inferType motive) fun ys _ => do
              let ys := if unfolding then ys.pop else ys
              let (indicesMajor, rest) := recArgInfo.pickIndicesMajor ys
              let motiveArg := mkAppN motive ys
              let motiveArg ← if unfolding then
                let args := fixedParamPerms.perms[funIdx]!.buildArgs xs ys
                let fnCall := mkAppN (.const info.name (info.levelParams.map mkLevelParam)) args
                pure <| mkApp motiveArg fnCall
              else
                pure motiveArg
              mkLambdaFVars indicesMajor (← mkForallFVars rest motiveArg)
            brecMotives := brecMotives.push brecMotive

          -- We need to pack these motives according to the `positions` assignment.
          let packedMotives ← positions.mapMwith PProdN.packLambdas brecMotiveTypes brecMotives
          trace[Meta.FunInd] m!"packedMotives: {packedMotives}"

          -- Now we can calculate the expected types of the minor arguments
          let minorTypes ← inferArgumentTypesN recInfo.numMotives <|
            mkAppN (group.brecOn 0 0) (packedMotives ++ brecOnTargets)
          trace[Meta.FunInd] m!"minorTypes: {minorTypes}"
          -- So that we can transform them
          let (minors', mvars) ← M2.run do
            let mut minors' := #[]
            for brecOnMinor in brecOnMinors, goal in minorTypes, numTargets in numTypeFormerTargetss do
              let minor' ← forallTelescope goal fun xs goal => do
                unless xs.size ≥ numTargets do
                  throwError ".brecOn argument has too few parameters, expected at least {numTargets}: {xs}"
                let targets : Array Expr := xs[*...numTargets]
                let genIH := xs[numTargets]!
                let extraParams := xs[numTargets<...*]
                -- open body with the same arg
                let body ← instantiateLambda brecOnMinor targets
                lambdaTelescope1 body fun oldIH body => do
                  trace[Meta.FunInd] "replacing {Expr.fvar oldIH} with {genIH}"
                  let body ← instantiateLambda body extraParams
                  let body' ←
                    withRewrittenMotive goal (inProdLambdaLastArg (rwFun names)) fun goal' =>
                      buildInductionBody #[oldIH, genIH.fvarId!] #[] goal' oldIH genIH.fvarId! isRecCall body
                  if body'.containsFVar oldIH then
                    throwError m!"Did not fully eliminate `{mkFVar oldIH}` from induction principle body:{indentExpr body}"
                  mkLambdaFVars (targets.push genIH) (← mkLambdaFVars extraParams body')
              minors' := minors'.push minor'
            pure minors'
          trace[Meta.FunInd] "processed minors: {minors'}"

          -- Now assemble the mutual_induct theorem
          -- Let-bind the transformed minors to avoid code duplication of possibly very large
          -- terms when we have mutual induction.
          let e' ← withLetDecls `minor minorTypes minors' fun minors' => do
            let mut brecOnApps := #[]
            for info in infos, recArgInfo in recArgInfos, idx in *...infos.size do
              -- Take care to pick the `ys` from the type, to get the variable names expected
              -- by the user, but use the value arity
              let arity ← lambdaTelescope (← fixedParamPerms.perms[idx]!.instantiateLambda info.value xs) fun ys _ => pure ys.size
              let e ← forallBoundedTelescope (← fixedParamPerms.perms[idx]!.instantiateForall info.type xs) arity fun ys _ => do
                let (indicesMajor, rest) := recArgInfo.pickIndicesMajor ys
                -- Find where in the function packing we are (TODO: abstract out)
                let some indIdx := positions.findIdx? (·.contains idx) | panic! "invalid positions"
                let some pos := positions.find? (·.contains idx) | panic! "invalid positions"
                let some packIdx := pos.findIdx? (· == idx) | panic! "invalid positions"
                let e := group.brecOn 0 indIdx
                let e := mkAppN e packedMotives
                let e := mkAppN e indicesMajor
                let e := mkAppN e minors'
                let e ← PProdN.projM pos.size packIdx e
                let e := mkAppN e rest
                let e ← mkLambdaFVars ys e
                trace[Meta.FunInd] "assembled call for {info.name}: {e}"
                pure e
              brecOnApps := brecOnApps.push e
            mkLetFVars minors' (← PProdN.mk 0 brecOnApps)
          let e' ← abstractIndependentMVars mvars (← motives.back!.fvarId!.getDecl).index e'
          let e' ← mkLambdaFVars motives e'

          -- We used to pass (usedOnly := false) below in the hope that the types of the
          -- induction principle match the type of the function better.
          -- But this leads to avoidable parameters that make functional induction strictly less
          -- useful (e.g. when the unused parameter mentions bound variables in the users' goal)
          let (paramMask, e') ← mkLambdaFVarsMasked xs e'
          let e' ← instantiateMVars e'
          trace[Meta.FunInd] "complete body of mutual induction principle:{indentExpr e'}"
          pure (e', paramMask, motiveArities)

  let eTyp ← inferType e'
  let eTyp ← elimTypeAnnotations eTyp
  let eTyp ← letToHave eTyp
  -- logInfo m!"eTyp: {eTyp}"
  let levelParams := (collectLevelParams {} eTyp).params
  -- Prune unused level parameters, preserving the original order
  let funUs := infos[0]!.levelParams.toArray
  let usMask := funUs.map (levelParams.contains ·)
  let us := Array.mask usMask funUs |>.toList

  addDecl <| Declaration.thmDecl
    { name := inductName, levelParams := us, type := eTyp, value := e' }

  if names.size = 1 then
    let mut params := #[]
    for h : i in *...fixedParamPerms.perms[0]!.size do
      if let some idx := fixedParamPerms.perms[0]![i] then
        if paramMask[idx]! then
          params := params.push .param
        else
          params := params.push .dropped
      else
        params := params.push .target

    setFunIndInfo {
      funName := names[0]!
      funIndName := inductName, levelMask := usMask, params := params
    }


/--
Given an expression `fun x y z => body`, returns a bit mask of the function's arity length
that has `true` whenever that parameter of the function appears as a scrutinee of a `match` in
tail position. These are the parameters that are likely useful as targets of the motive
of the functional cases theorem. All others become parameters or may be dropped.

-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean#L1109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20587c35412e3313846c39603df036e01503a5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
