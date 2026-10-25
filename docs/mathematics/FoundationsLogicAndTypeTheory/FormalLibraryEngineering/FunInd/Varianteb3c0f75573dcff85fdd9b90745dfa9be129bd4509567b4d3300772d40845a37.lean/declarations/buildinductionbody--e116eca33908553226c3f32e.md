# buildInductionBody

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f2b6da4cd50d3364e8875416093cc9102b21e409df85f10c5a79d3d505b7d8c",
  "kind": "def",
  "lexical_name": "buildInductionBody",
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
  "slug": "buildinductionbody--e116eca33908553226c3f32e",
  "source": {
    "blob": "20587c35412e3313846c39603df036e01503a5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 782,
    "line": 621,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e116eca33908553226c3f32e9d1ce3f2780db712b6d0b981552ab69b36b73f2a",
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

Occurrence: `declaration:7f2b6da4cd50d3364e8875416093cc9102b21e409df85f10c5a79d3d505b7d8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–782.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def buildInductionBody (toErase toClear : Array FVarId) (goal : Expr)
    (oldIH newIH : FVarId) (isRecCall : Expr → Option Expr) (e : Expr) : M2 Expr := do
  withTraceNode `Meta.FunInd
    (fun _ => pure m!"buildInductionBody: {oldIH.name} → {newIH.name}\ngoal: {goal}:{indentExpr e}") do

  -- if-then-else cause case split:
  match_expr e with
  | ite _α c h t f =>
    let c' ← foldAndCollect oldIH newIH isRecCall c
    let h' ← foldAndCollect oldIH newIH isRecCall h
    let t' ← withLocalDecl `h .default c' fun h => M2.branch do
      let t' ← withRewrittenMotiveArg goal (rwIfWith h) fun goal' =>
        buildInductionBody toErase toClear goal' oldIH newIH isRecCall t
      mkLambdaFVars #[h] t'
    let f' ← withLocalDecl `h .default (mkNot c') fun h => M2.branch do
      let f' ← withRewrittenMotiveArg goal (rwIfWith h) fun goal' =>
        buildInductionBody toErase toClear goal' oldIH newIH isRecCall f
      mkLambdaFVars #[h] f'
    let u ← getLevel goal
    return mkApp5 (mkConst ``dite [u]) goal c' h' t' f'
  | dite _α c h t f =>
    let c' ← foldAndCollect oldIH newIH isRecCall c
    let h' ← foldAndCollect oldIH newIH isRecCall h
    let t' ← withLocalDecl `h .default c' fun h => M2.branch do
      let t ← instantiateLambda t #[h]
      let t' ← withRewrittenMotiveArg goal (rwIfWith h) fun goal' =>
        buildInductionBody toErase toClear goal' oldIH newIH isRecCall t
      mkLambdaFVars #[h] t'
    let f' ← withLocalDecl `h .default (mkNot c') fun h => M2.branch do
      let f ← instantiateLambda f #[h]
      let f' ← withRewrittenMotiveArg goal (rwIfWith h) fun goal' =>
        buildInductionBody toErase toClear goal' oldIH newIH isRecCall f
      mkLambdaFVars #[h] f'
    let u ← getLevel goal
    return mkApp5 (mkConst ``dite [u]) goal c' h' t' f'
  | cond _α c t f =>
    let c' ← foldAndCollect oldIH newIH isRecCall c
    let t' ← withLocalDecl `h .default (← mkEq c' (mkConst ``Bool.true)) fun h => M2.branch do
      let t' ← withRewrittenMotiveArg goal (rwIfWith h) fun goal' =>
        buildInductionBody toErase toClear goal' oldIH newIH isRecCall t
      mkLambdaFVars #[h] t'
    let f' ← withLocalDecl `h .default (← mkEq c' (mkConst ``Bool.false)) fun h => M2.branch do
      let t' ← withRewrittenMotiveArg goal (rwIfWith h) fun goal' =>
        buildInductionBody toErase toClear goal' oldIH newIH isRecCall f
      mkLambdaFVars #[h] t'
    let u ← getLevel goal
    return mkApp4 (mkConst ``Bool.dcond [u]) goal c' t' f'
  | _ =>

  -- Check for unreachable cases. We look for the kind of expressions that `by contradiction`
  -- produces
  if e.isAppOf ``False.elim && 1 < e.getAppNumArgs then
    return ← mkFalseElim goal e.getAppArgs[1]!
  if e.isAppOf ``absurd && 3 < e.getAppNumArgs then
    return ← mkAbsurd goal e.getAppArgs[2]! e.getAppArgs[3]!

  -- we look in to `PProd.mk`, as it occurs in the mutual structural recursion construction
  match_expr goal with
  | And goal₁ goal₂ => match_expr e with
    | PProd.mk _α _β e₁ e₂ =>
      let e₁' ← buildInductionBody toErase toClear goal₁ oldIH newIH isRecCall e₁
      let e₂' ← buildInductionBody toErase toClear goal₂ oldIH newIH isRecCall e₂
      return mkApp4 (.const ``And.intro []) goal₁ goal₂ e₁' e₂'
    | _ =>
      throwError "Goal is PProd, but expression is:{indentExpr e}"
  | True =>
    return .const ``True.intro []
  | _ =>

  -- match and casesOn application cause case splitting
  if let some matcherApp ← matchMatcherApp? e (alsoCasesOn := true) then
    -- A match that refines the parameter has been modified by `Fix.lean` to refine the IH,
    -- so we need to replace that IH
    if matcherApp.remaining.size == 1 && matcherApp.remaining[0]!.isFVarOf oldIH then
      -- Calculate motive
      let eType ← newIH.getType
      let motiveBody ← mkArrow eType goal
      let (mask, absMotiveBody) ← mkLambdaFVarsMasked matcherApp.discrs motiveBody

      let matcherApp' ← matcherApp.transform (useSplitter := true)
        (addEqualities := true)
        (onParams := (foldAndCollect oldIH newIH isRecCall ·))
        (onMotive := fun xs _body => pure (absMotiveBody.beta (Array.mask mask xs)))
        (onAlt := fun altIdx expAltType _altFVars alt => M2.branch do
          lambdaTelescope1 alt fun oldIH' alt => do
            forallBoundedTelescope expAltType (some 1) fun newIH' goal' => do
              let #[newIH'] := newIH' | unreachable!
              let toErase' := toErase ++ #[oldIH', newIH'.fvarId!]
              let toClear' := toClear ++ matcherApp.discrs.filterMap (·.fvarId?)
              let alt' ← withRewrittenMotiveArg goal' (rwMatcher altIdx) fun goal'' => do
                -- logInfo m!"rwMatcher after {matcherApp.matcherName} on{indentExpr goal'}\nyields{indentExpr goal''}"
                buildInductionBody toErase' toClear' goal'' oldIH' newIH'.fvarId! isRecCall alt
              mkLambdaFVars #[newIH'] alt')
        (onRemaining := fun _ => pure #[.fvar newIH])
      return matcherApp'.toExpr

    -- A match that does not refine the parameter, but that we still want to split into separate
    -- cases
    if matcherApp.remaining.isEmpty then
      -- Calculate motive
      let (mask, absMotiveBody) ← mkLambdaFVarsMasked matcherApp.discrs goal

      let matcherApp' ← matcherApp.transform (useSplitter := true)
        (addEqualities := true)
        (onParams := (foldAndCollect oldIH newIH isRecCall ·))
        (onMotive := fun xs _body => pure (absMotiveBody.beta (Array.mask mask xs)))
        (onAlt := fun altIdx expAltType _altFVars alt => M2.branch do
          withRewrittenMotiveArg expAltType (rwMatcher altIdx) fun expAltType' =>
            buildInductionBody toErase toClear expAltType' oldIH newIH isRecCall alt)
      return matcherApp'.toExpr

  -- we look through mdata
  if e.isMData then
    let b ← withRewrittenMotiveArg goal (rwMData) fun goal' =>
      buildInductionBody toErase toClear goal' oldIH newIH isRecCall e.mdataExpr!
    return e.updateMData! b

  if let .letE n t v b _ := e then
    let t' ← foldAndCollect oldIH newIH isRecCall t
    let v' ← foldAndCollect oldIH newIH isRecCall v
    return ← withLetDecl n t' v' fun x => M2.branch do
      let b' ← withRewrittenMotiveArg goal (rwLetWith x) fun goal' =>
        buildInductionBody toErase toClear goal' oldIH newIH isRecCall (b.instantiate1 x)
      mkLetFVars #[x] b'

  -- Special case for traversing the PProd’ed bodies in our encoding of structural mutual recursion
  if let .lam n t b bi := e then
    if goal.isForall then
      let t' ← foldAndCollect oldIH newIH isRecCall t
      return ← withLocalDecl n bi t' fun x => M2.branch do
        let goal' ← instantiateForall goal #[x]
        let b' ← buildInductionBody toErase toClear goal' oldIH newIH isRecCall (b.instantiate1 x)
        mkLambdaFVars #[x] b'

  -- Unfold constant applications that take `oldIH` as an argument (e.g. `_f` auxiliary
  -- definitions from structural recursion), so that we can see their body structure.
  -- Similar to the case in `foldAndCollect`.
  if e.getAppFn.isConst && e.getAppArgs.any (·.isFVarOf oldIH) then
    if let some e' ← withTransparency .all (unfoldDefinition? e) then
      return ← buildInductionBody toErase toClear goal oldIH newIH isRecCall e'

  liftM <| buildInductionCase oldIH newIH isRecCall toErase toClear goal e

/--
Given an expression `e` with metavariables `mvars`
* performs more cleanup:
  * removes unused let-expressions after index `index`
  * tries to substitute variables after index `index`
* lifts them to the current context by reverting all local declarations after index `index`
* introducing a local variable for each of the meta variable
* assigning that local variable to the mvar
* and finally lambda-abstracting over these new local variables.

This operation only works if the metavariables are independent from each other.

The resulting meta variable assignment is no longer valid (mentions out-of-scope
variables), so after this operations, terms that still mention these meta variables must not
be used anymore.

We are not using `mkLambdaFVars` on mvars directly, nor `abstractMVars`, as these at the moment
do not handle delayed assignments correctly.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20587c35412e3313846c39603df036e01503a5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
