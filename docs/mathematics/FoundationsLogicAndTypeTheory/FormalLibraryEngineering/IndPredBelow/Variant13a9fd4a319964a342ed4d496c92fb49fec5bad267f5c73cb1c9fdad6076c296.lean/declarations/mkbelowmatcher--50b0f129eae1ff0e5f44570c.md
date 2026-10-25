# mkBelowMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e8ebe755814aac0027fc2e13a56f9c5bdc585e7161190bde70d4f915313d172",
  "kind": "def",
  "lexical_name": "mkBelowMatcher",
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
  "slug": "mkbelowmatcher--50b0f129eae1ff0e5f44570c",
  "source": {
    "blob": "e7b0240e5c7d53163b28ee2991edb0d61b70eaef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 327,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50b0f129eae1ff0e5f44570c6acd99c743be9fca3130d2f2434bece4dd20f58e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e8ebe755814aac0027fc2e13a56f9c5bdc585e7161190bde70d4f915313d172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def mkBelowMatcher (matcherApp : MatcherApp) (belowParams : Array Expr) (nrealParams : Nat)
    (ctx : RecursionContext) (transformAlt : RecursionContext → Expr → MetaM Expr) :
    MetaM (Option (Expr × MetaM Unit)) :=
  withTraceNode `Meta.IndPredBelow.match (fun _ => return m!"{matcherApp.toExpr} and {belowParams}") do
  let mut input ← getMkMatcherInputInContext matcherApp (unfoldNamed := false)
  let mut discrs := matcherApp.discrs
  let mut matchTypeAdd := #[] -- #[(discrIdx, ), ...]
  let mut i := discrs.size
  let oldVarCounts := input.lhss.toArray.map (·.fvarDecls.length)
  let mut newDecls := Array.replicate oldVarCounts.size #[]
  while i > 0 do
    i := i - 1
    let discr := discrs[i]!
    let discr ← whnfCore discr
    let .fvar var := discr.getAppFn | continue
    let some (belowName, below) := ctx.belows.get? var | continue
    let val ← getConstInfoInduct belowName
    discrs := discrs.insertIdx! (i + 1) (mkAppN below discr.getAppArgs)
    -- | a, b, ABC.thing ..., c, d ==> | a, b, .(ABC.thing ...), ABC.below.thing ..., c, d
    let mut newLHSs := #[]
    let mut lhssArray := input.lhss.toArray
    for h : j in *...lhssArray.size do
      let (newLHS, newDeclsAdd) ← addBelowPattern belowName i lhssArray[j]
      newLHSs := newLHSs.push newLHS
      newDecls := newDecls.modify j (· ++ newDeclsAdd)
    input := { input with discrInfos := input.discrInfos.insertIdx! (i + 1) {}, lhss := newLHSs.toList }
    matchTypeAdd := matchTypeAdd.push (i, belowName)
  if matchTypeAdd.isEmpty then
    return none
  -- adds below vars in between the existing vars
  let rec addVars (j : Nat) (vars : Array Expr) (k : Array Expr → MetaM Expr) : MetaM Expr := do
    if h : j < matchTypeAdd.size then
      let (i, belowIndName) := matchTypeAdd[j]
      let type ← toBelowType belowIndName vars[i]!
      withLocalDeclD `below type fun var => addVars (j + 1) (vars.insertIdx! (i + 1) var) k
    else
      k vars
  -- adjust match type by inserting `ABC.below ...`
  input ← forallTelescope input.matchType fun vars body => do
    let matchType ← addVars 0 vars (mkForallFVars · body)
    return { input with matchType }
  -- adjust motive by inserting `ABC.below ...`
  let motive ← lambdaTelescope matcherApp.motive fun vars body =>
    addVars 0 vars (mkLambdaFVars · body)

  let matcherName ← mkAuxDeclName `match
  let res ← Match.mkMatcher { input with matcherName }
  res.addMatcher
  -- if a wrong index is picked, the resulting matcher can be type-incorrect (really?).
  -- we check here, so that errors can propagate higher up the call stack.
  check res.matcher

  let hasEqns := input.discrInfos.any (·.hName?.isSome)
  let alts ← matcherApp.alts |>.mapIdxM fun idx alt => do
    let lhs := input.lhss[idx]!
    let oldCount := oldVarCounts[idx]!
    let newDecls := newDecls[idx]!
    -- we add new fvars to the end so all `oldCount` previous ones are preserved
    -- Note: these free variables are guaranteed to be unique because they are created in
    -- `getMkMatcherInputInContext` and/or `convertToBelow`.
    withExistingLocalDecls lhs.fvarDecls do
      trace[Meta.IndPredBelow.match] "new decls:\n{newDecls}"
      let fvars := lhs.fvarDecls.toArray.map (·.toExpr)
      let oldVars := fvars.extract 0 oldCount
      let t := alt.beta oldVars
      let t :=
        -- special case: previously `Unit → motive ...`, now has variables
        match oldCount, hasEqns, fvars.size with
        | 0, false, _ + 1 => t.betaRev #[mkConst ``Unit.unit]
        | _, _, _ => t
      trace[Meta.IndPredBelow.match] "oldCount = {oldCount}; fvars = {fvars}"
      let mut ctx := ctx
      for newDecl in newDecls do
        match newDecl with
        | .below decl indName vars =>
          for v in vars do
            ctx := { ctx with belows := ctx.belows.insert v (indName, decl.toExpr) }
        | .motive decl motiveIdx vars =>
          for v in vars do
            ctx := { ctx with motives := ctx.motives.insert v (motiveIdx, decl.toExpr) }
      let e' ← transformAlt ctx t
      let newAlt ← mkLambdaFVars fvars e'
      trace[Meta.IndPredBelow.match] "alt {idx}:\n{alt} ↦ {newAlt}"
      pure newAlt

  let newApp := mkApp res.matcher motive
  let newApp := mkAppN newApp discrs
  let newApp := mkAppN newApp alts
  return some (newApp, res.addMatcher)

where
  addBelowPattern (indName : Name) (idx : Nat) (lhs : AltLHS) : MetaM (AltLHS × Array NewDecl) := do
    withExistingLocalDecls lhs.fvarDecls do
    let prevPatterns := lhs.patterns.take idx
    let (originalPattern :: morePatterns) := lhs.patterns.drop idx |
      throwError "invalid amount of patterns"
    let ((predPattern, belowPattern), decls) ← (convertToBelow indName originalPattern none).run #[]
    let localDecls := (decls.map (·.getDecl)).toList
    withExistingLocalDecls localDecls do
    let patterns := prevPatterns ++ predPattern :: belowPattern :: morePatterns
    return ({ lhs with patterns, fvarDecls := lhs.fvarDecls ++ localDecls }, decls)

  /--
  `ABC.below`, `h : ∀ x y z, ABC a b c` ===>
  `∀ x y z, @ABC.below params... motives... a b c (h x y z)`
  -/
  toBelowType (belowIndName : Name) (h : Expr) : MetaM Expr := do
    let type ← inferType h
    forallTelescopeReducing (whnfType := true) type fun moreVars body => do
      body.withApp fun f args => do
        let .const nm us := f | throwError "expected constant application at {type}"
        let ind ← getConstInfoInduct nm
        let tgtType := mkAppN (.const belowIndName us) belowParams
        let tgtType := mkAppN tgtType (args.extract ind.numParams)
        let tgtType := .app tgtType (mkAppN h moreVars)
        mkForallFVars moreVars tgtType

  /--
  Converts a pattern that matches on `h : ∀ x y z..., ABC ...` (where `ABC` is an inductive
  predicate) into two patterns: One that still matches on the same type as before and
  another that matches on `∀ x y z..., belowIndName ... (h x y z)`. This function assumes that
  `belowIndName` corresponds to a `below` inductive for `ABC` (for nested inductive predicates this
  may not be `ABC.below`).
  The goal of this function is to get as many motive proofs (used for recursive applications) and
  below proofs (used for further matches) as possible. In the default case, it will simply keep the
  original pattern and introduce a new variable of type `∀ x y z..., belowIndName ... (h x y z)` as
  the below pattern.
  -/
  convertToBelow (belowIndName : Name) (originalPattern : Pattern) (var? : Option Expr) :
      StateRefT (Array NewDecl) MetaM (Pattern × Pattern) := do
    match originalPattern with
    | .ctor ctorName us params fields =>
      withTraceNode `Meta.IndPredBelow.match (fun _ => return m!"pattern {← originalPattern.toExpr} to {belowIndName}") do
      let ctorInfo ← getConstInfoCtor ctorName
      let shortCtorName := ctorName.replacePrefix ctorInfo.induct .anonymous
      let belowCtor ← getConstInfoCtor (belowIndName ++ shortCtorName)
      let type := belowCtor.instantiateTypeLevelParams us
      let fieldExprs ← fields.toArray.mapM (·.toExpr)
      trace[Meta.IndPredBelow.match] "instantiate {type} with {belowParams} {fieldExprs}}"
      let type ← instantiateForall type belowParams
      let type ← instantiateForall type fieldExprs
      let recIdxs ← belowRecIndices belowCtor nrealParams
      trace[Meta.IndPredBelow.match] "rec indices {.ofConstName belowCtor.name} {recIdxs}"
      forallTelescope type fun vars _ => do
        -- even var indices are `below`s, odd indices `motive`s
        let mut belowFields := fields.toArray
        let mut i := 0
        let mut curDeclCount := (← get).size
        while h : i < vars.size do
          let var := vars[i]
          let varType ← inferType var
          let belowArg := varType.getForallBody.appArg!
          let belowInd := varType.getForallBody.getAppFn.constName!
          let (motiveIdx, realIdx) := recIdxs[i / 2]!
          trace[Meta.IndPredBelow.match] "transform {var} to {realIdx}, {belowFields[realIdx]!.toMessageData}"
          let (predPattern, belowPattern) ← convertToBelow belowInd belowFields[realIdx]! var
          belowFields := belowFields.set! realIdx predPattern
          -- add motive decl var
          let localDecl ← getFVarLocalDecl vars[i + 1]!
          let newDecl := .motive localDecl motiveIdx (collectDirectVarsInPattern predPattern)
          modify fun decls => decls.push newDecl
          belowFields := belowFields.push belowPattern
          belowFields := belowFields.push (.var vars[i + 1]!.fvarId!)
          i := i + 2
        let ctor := .ctor belowCtor.name us belowParams.toList belowFields.toList
        let ctorExpr ← originalPattern.toExpr
        return (.inaccessible ctorExpr, ctor)
    | .as varId p hId =>
      let (predPattern, belowPattern) ← convertToBelow belowIndName p var?
      return (.as varId predPattern hId, belowPattern)
    | _ =>
      -- variables, inaccessibles => just introduce below variable and keep original pattern
      let oldH ← originalPattern.toExpr
      if let some var := var? then
        let localDecl ← getFVarLocalDecl var
        let newDecl := .below localDecl belowIndName (collectDirectVarsInPattern originalPattern)
        modify fun decls => decls.push newDecl
        return (originalPattern, .var var.fvarId!)
      let tgtType ← toBelowType belowIndName oldH
      withLocalDeclD (← mkFreshUserName `h) tgtType fun newH => do
        let localDecl ← getFVarLocalDecl newH
        let newDecl := .below localDecl belowIndName (collectDirectVarsInPattern originalPattern)
        modify fun decls => decls.push newDecl
        return (originalPattern, .var newH.fvarId!)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b0240e5c7d53163b28ee2991edb0d61b70eaef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
