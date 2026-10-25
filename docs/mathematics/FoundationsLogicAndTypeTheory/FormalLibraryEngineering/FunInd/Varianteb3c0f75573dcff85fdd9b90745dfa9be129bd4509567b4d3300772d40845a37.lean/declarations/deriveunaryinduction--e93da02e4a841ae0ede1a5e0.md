# deriveUnaryInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04fce44d5ebfd0e8b6d0a880f0e27a640825d637229dc15ba1c9b8172cb5033f",
  "kind": "def",
  "lexical_name": "deriveUnaryInduction",
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
  "slug": "deriveunaryinduction--e93da02e4a841ae0ede1a5e0",
  "source": {
    "blob": "20587c35412e3313846c39603df036e01503a5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 917,
    "line": 803,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e93da02e4a841ae0ede1a5e05418765a0e92ba6d36957467757807bc90e82922",
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

Occurrence: `declaration:04fce44d5ebfd0e8b6d0a880f0e27a640825d637229dc15ba1c9b8172cb5033f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 803–917.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveUnaryInduction (unfolding : Bool) (name : Name) : MetaM Name := do
  let inductName := getFunInductName (unfolding := unfolding) name
  realizeConst name inductName (doRealize inductName)
  return inductName
where doRealize (inductName : Name) := do
  let info ← getConstInfoDefn name
  let varNames ← forallTelescope info.type fun xs _ => xs.mapM (·.fvarId!.getUserName)

  -- Uses of WellFounded.fix can be partially applied. Here we eta-expand the body
  -- to make sure that `target` indeed the last parameter
  let e := info.value
  let e ← lambdaTelescope e fun params body => do
    if body.isAppOfArity ``WellFounded.fix 5 || body.isAppOfArity ``WellFounded.Nat.fix 4 then
      forallBoundedTelescope (← inferType body) (some 1) fun xs _ => do
        unless xs.size = 1 do
          throwError "functional induction: Failed to eta-expand{indentExpr e}"
        mkLambdaFVars (params ++ xs) (mkAppN body xs)
    else
      pure e
  let (e', paramMask) ← lambdaTelescope e fun params funBody => MatcherApp.withUserNames params varNames do
    unless funBody.isApp && funBody.appFn!.isApp do
      throwError "functional induction: unexpected body {funBody}"
    let body := funBody.appFn!.appArg!
    let target := funBody.appArg!
    unless params.back! == target do
      throwError "functional induction: expected the target as last parameter{indentExpr e}"
    let fixedParamPerms := params.pop
    let motiveType ←
      if unfolding then
        withLocalDeclD `r (← instantiateForall info.type params) fun r =>
          mkForallFVars #[target, r] (.sort 0)
      else
        mkForallFVars #[target] (.sort 0)
    withLocalDeclD `motive motiveType fun motive => do
      let fn := mkAppN (← mkConstWithLevelParams name) fixedParamPerms
      let isRecCall : Expr → Option Expr := fun e =>
        e.withApp fun f xs =>
          if f.isFVarOf motive.fvarId! && xs.size > 0 then
          mkApp fn xs[0]!
        else
          none

      let motiveArg ←
        if unfolding then
          let motiveArg := mkApp2 motive target (mkAppN (← mkConstWithLevelParams name) params)
          mkLambdaFVars #[target] motiveArg
        else
          pure motive

      let e' ← match_expr funBody with
        | fix@WellFounded.fix α _motive rel wf _body _target =>
          let e' := .const ``WellFounded.fix [fix.constLevels![0]!, Level.zero]
          pure <| mkApp4 e' α motiveArg rel wf
        | fix@WellFounded.Nat.fix α _motive measure _body _target =>
          let e' := .const `WellFounded.Nat.fix [fix.constLevels![0]!, Level.zero]
          pure <| mkApp3 e' α motiveArg measure
        | _ =>
          if funBody.isAppOf ``WellFounded.fix || funBody.isAppOf `WellFounded.Nat.Fix then
            throwError "Function {name} defined via WellFounded.fix with unexpected arity {funBody.getAppNumArgs}:{indentExpr funBody}"
          else
            throwError "Function {name} not defined via WellFounded.fix:{indentExpr funBody}"

      let (body', mvars) ← M2.run do
        forallTelescope (← inferType e').bindingDomain! fun xs goal => do
          if xs.size ≠ 2 then
            throwError "expected recursor argument to take 2 parameters, got {xs}" else
          let targets : Array Expr := xs[*...1]
          let genIH := xs[1]!
          let extraParams := xs[2...*]
          -- open body with the same arg
          let body ← instantiateLambda body targets
          lambdaTelescope1 body fun oldIH body => do
            let body ← instantiateLambda body extraParams
            let body' ← withRewrittenMotiveArg goal (rwFun #[name]) fun goal => do
              buildInductionBody #[oldIH, genIH.fvarId!] #[] goal oldIH genIH.fvarId! isRecCall body
            if body'.containsFVar oldIH then
              throwError m!"Did not fully eliminate `{mkFVar oldIH}` from induction principle body:{indentExpr body}"
            mkLambdaFVars (targets.push genIH) (← mkLambdaFVars extraParams body')
      let e' := mkApp2 e' body' target
      let e' ← mkLambdaFVars #[target] e'
      let e' ← abstractIndependentMVars mvars (← motive.fvarId!.getDecl).index e'
      let e' ← mkLambdaFVars #[motive] e'

      -- We used to pass (usedOnly := false) below in the hope that the types of the
      -- induction principle match the type of the function better.
      -- But this leads to avoidable parameters that make functional induction strictly less
      -- useful (e.g. when the unused parameter mentions bound variables in the users' goal)
      let (paramMask, e') ← mkLambdaFVarsMasked fixedParamPerms e'
      let e' ← instantiateMVars e'
      return (e', paramMask)

  let eTyp ← inferType e'
  let eTyp ← elimTypeAnnotations eTyp
  let eTyp ← letToHave eTyp
  -- logInfo m!"eTyp: {eTyp}"
  let levelParams := (collectLevelParams {} eTyp).params
  -- Prune unused level parameters, preserving the original order
  let funUs := info.levelParams.toArray
  let usMask := funUs.map (levelParams.contains ·)
  let us := Array.mask usMask funUs |>.toList

  addDecl <| Declaration.thmDecl
    { name := inductName, levelParams := us, type := eTyp, value := e' }

  setFunIndInfo {
      funName := name
      funIndName := inductName
      levelMask := usMask
      params := paramMask.map (cond · .param .dropped) ++ #[.target]
  }

/--
Given a realizer for `foo.mutual_induct`, defines `foo.induct`, `bar.induct` etc.
Used for well-founded and structural recursion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean#L803).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20587c35412e3313846c39603df036e01503a5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
