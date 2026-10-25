# generalizeMatchDiscrs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b18a902ed6bf2a7da6a172323b24ed6152819c27740c35ab35e8c002c198867",
  "kind": "def",
  "lexical_name": "generalizeMatchDiscrs",
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
  "slug": "generalizematchdiscrs--bd92ee86ba626578949eb998",
  "source": {
    "blob": "58a23e2bf9d941430528ccb8251751f3f5565078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd92ee86ba626578949eb99808e6bd61e369eadcd7e058ab0a006e5e078d5a04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b18a902ed6bf2a7da6a172323b24ed6152819c27740c35ab35e8c002c198867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def generalizeMatchDiscrs (mvarId : MVarId) (matcherDeclName : Name) (motiveType : Expr) (discrs : Array Expr) : MetaM (Array FVarId × Array FVarId × MVarId) := mvarId.withContext do
  if discrs.all (·.isFVar) then
    trace[split.debug] "no need to generalize discriminants, all are fvars"
    return (discrs.map (·.fvarId!), #[], mvarId)
  let some matcherInfo ← getMatcherInfo? matcherDeclName | unreachable!
  let numDiscrEqs := matcherInfo.getNumDiscrEqs -- Number of `h : discr = pattern` equations
  let (targetNew, rfls) ←
    forallTelescope motiveType fun discrVars _ =>
    withEqs discrs discrVars fun eqs rfls => do
      let foundRef ← IO.mkRef false
      let rec mkNewTarget (e : Expr) : MetaM Expr := do
        let pre (e : Expr) : MetaM TransformStep := do
          if !e.isAppOfArity matcherDeclName matcherInfo.arity then
            return .continue
          let some matcherApp ← matchMatcherApp? e | return .continue
          for matcherDiscr in matcherApp.discrs, discr in discrs do
            unless matcherDiscr == discr do
              trace[split.debug] "discr mismatch {matcherDiscr} != {discr}"
              return .continue
          let matcherApp := { matcherApp with discrs := discrVars }
          foundRef.set true
          let mut altsNew := #[]
          for h : i in *...matcherApp.alts.size do
            let alt := matcherApp.alts[i]
            let altNumParams := matcherApp.altNumParams[i]!
            let altNew ← lambdaTelescope alt fun xs body => do
              if xs.size < altNumParams || xs.size < numDiscrEqs then
                throwError m!"Internal error in `split` tactic: Encountered an unexpected `match` expression alternative"
                  ++ .note m!"This error typically occurs when the `match` expression has been constructed using metaprogramming."
              let body ← mkLambdaFVars xs[altNumParams...*] (← mkNewTarget body)
              let ys  := xs[*...(altNumParams - numDiscrEqs)]
              if numDiscrEqs == 0 then
                mkLambdaFVars ys body
              else
                let altEqs := xs[(altNumParams - numDiscrEqs)...altNumParams]
                withNewAltEqs matcherInfo eqs altEqs fun altEqsNew subst => do
                  let body := body.replaceFVars altEqs subst
                  mkLambdaFVars (ys++altEqsNew) body
            altsNew := altsNew.push altNew
          return .done { matcherApp with alts := altsNew }.toExpr
        transform (← instantiateMVars e) pre
      let targetNew ← mkNewTarget (← mvarId.getType)
      unless (← foundRef.get) do
        throwInternalMisuseError m!"Internal error in `split` tactic: Failed to find match-expression discriminants"
      let targetNew ← mkForallFVars (discrVars ++ eqs) targetNew
      try check targetNew
      catch e =>
        trace[split.debug] "targetNew not type correct:{indentExpr targetNew}\n{e.toMessageData}"
        throw <| Exception.internal discrGenExId
      return (targetNew, rfls)
    let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew (← mvarId.getTag)
    trace[split.debug] "targetNew:\n{mvarNew.mvarId!}"
    mvarId.assign (mkAppN (mkAppN mvarNew discrs) rfls)
    let (discrs', mvarId') ← mvarNew.mvarId!.introNP discrs.size
    let (discrEqs, mvarId') ← mvarId'.introNP discrs.size
    return (discrs', discrEqs, mvarId')
where
  /--
    - `eqs` are free variables `h_eq : discr = discrVar`. `eqs.size == discrs.size`
    - `altEqs` are free variables of the form `h_altEq : discr = pattern`. `altEqs.size = numDiscrEqs ≤ discrs.size`
    This method executes `k altEqsNew subst` where
    - `altEqsNew` are fresh free variables of the form `h_altEqNew : discrVar = pattern`
    - `subst` are terms of the form `h_eq.trans h_altEqNew : discr = pattern`. We use `subst` later to replace occurrences of `h_altEq` with `h_eq.trans h_altEqNew`.
   -/
  withNewAltEqs (matcherInfo : MatcherInfo) (eqs : Array Expr) (altEqs : Array Expr) (k : Array Expr → Array Expr → MetaM Expr) : MetaM Expr := do
    let eqs' := (eqs.zip matcherInfo.discrInfos).filterMap fun (eq, info) => if info.hName?.isNone then none else some eq
    -- `eqs'.size == altEqs.size ≤ eqs.size`
    let rec go (i : Nat) (altEqsNew : Array Expr) (subst : Array Expr) : MetaM Expr := do
      if i < altEqs.size then
        let altEqDecl ← getFVarLocalDecl altEqs[i]!
        let eq := eqs'[i]!
        let eqType ← inferType eq
        let altEqType := altEqDecl.type
        match eqType.eq?, altEqType.eq? with
        | some (_, _, discrVar), some (_, _ /- discr -/, pattern) =>
          withLocalDeclD altEqDecl.userName (← mkEq discrVar pattern) fun altEqNew => do
            go (i+1) (altEqsNew.push altEqNew) (subst.push (← mkEqTrans eq altEqNew))
        | _, _ =>
        match eqType.heq?, altEqType.heq? with
        | some (_, _, _, discrVar), some (_, _ /- discr -/, _, pattern) =>
          withLocalDeclD altEqDecl.userName (← mkHEq discrVar pattern) fun altEqNew => do
            go (i+1) (altEqsNew.push altEqNew) (subst.push (← mkHEqTrans eq altEqNew))
        | _, _ =>
          throwInternalMisuseError m!"Internal error in `split` tactic: Encountered unexpected auxiliary equalities created to generalize `match`-expression discriminant"
      else
        k altEqsNew subst
    go 0 #[] #[]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a23e2bf9d941430528ccb8251751f3f5565078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
