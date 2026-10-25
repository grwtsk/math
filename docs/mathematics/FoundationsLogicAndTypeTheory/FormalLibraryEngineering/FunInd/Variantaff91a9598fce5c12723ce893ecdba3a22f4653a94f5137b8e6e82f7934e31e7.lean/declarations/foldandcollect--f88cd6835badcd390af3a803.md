# foldAndCollect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a25e926ab51c7b26007b9ec3f91ec165190cf266ab0b8fb609eeac123076aeaf",
  "kind": "def",
  "lexical_name": "foldAndCollect",
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
  "slug": "foldandcollect--f88cd6835badcd390af3a803",
  "source": {
    "blob": "2efba24e4a0d0db446c1275dccf439a3b903c7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 287,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f88cd6835badcd390af3a8038d0278771f5b06ed55a8b01cd7a43d7f8f73a66e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a25e926ab51c7b26007b9ec3f91ec165190cf266ab0b8fb609eeac123076aeaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def foldAndCollect (oldIH newIH : FVarId) (isRecCall : Expr → Option Expr) (e : Expr) : M Expr := withoutExporting do
  unless e.containsFVar oldIH do
    return e
  withTraceNode `Meta.FunInd (fun _ => pure m!"foldAndCollect ({mkFVar oldIH} → {mkFVar newIH})::{indentExpr e}") do

  let e' ← id do
    if let some matcherApp ← matchMatcherApp? e (alsoCasesOn := true) then
      if matcherApp.remaining.size == 1 && matcherApp.remaining[0]!.isFVarOf oldIH then
        -- We do different things to the matcher when folding recursive calls and when
        -- collecting inductive hypotheses. Therefore we do it separately,
        -- dropping to `MetaM` in between, and using `M.eval`/`M.exec` as appropriate
        -- We could try to do it in one pass by breaking up the `matcherApp.transform`
        -- abstraction.

        -- To collect the IHs, we collect them in each branch, and combine
        -- them to a type-level match
        let ihMatcherApp' ← liftM <| matcherApp.transform
          (onParams := fun e => M.eval <| foldAndCollect oldIH newIH isRecCall e)
          (onMotive := fun xs _body => do
            -- Remove the old IH that was added in mkFix
            let eType ← newIH.getType
            let eTypeAbst ← matcherApp.discrs.size.foldRevM (init := eType) fun i _ eTypeAbst => do
              let motiveArg := xs[i]!
              let discr     := matcherApp.discrs[i]
              let eTypeAbst ← kabstract eTypeAbst discr
              return eTypeAbst.instantiate1 motiveArg

            -- Will later be overridden with a type that’s itself a match
            -- statement and the inferred alt types
            let dummyGoal := mkConst ``True []
            mkArrow eTypeAbst dummyGoal)
          (onAlt := fun _altIdx altType _altFVars alt => do
            lambdaTelescope1 alt fun oldIH' alt => do
              forallBoundedTelescope altType (some 1) fun newIH' _goal' => do
                let #[newIH'] := newIH' | unreachable!
                let altIHs ← M.exec <| foldAndCollect oldIH' newIH'.fvarId! isRecCall alt
                let altIH ← PProdN.mk 0 altIHs
                mkLambdaFVars #[newIH'] altIH)
          (onRemaining := fun _ => pure #[mkFVar newIH])
        let ihMatcherApp'' ← ihMatcherApp'.inferMatchType
        M.tell ihMatcherApp''.toExpr

        -- When folding the calls we don't want to remove the extra arg to the matcher
        -- that was introduced in the translation
        let matcherApp' ← liftM <| matcherApp.transform
          (onParams := fun e => M.eval <| foldAndCollect oldIH newIH isRecCall e)
          (onMotive := fun _motiveArgs motiveBody => do
            let some (_extra, body) := motiveBody.arrow? | throwError "motive not an arrow"
            M.eval (foldAndCollect oldIH newIH isRecCall body))
          (onAlt := fun _altIdx altType _altFVars alt => do
            lambdaTelescope1 alt fun oldIH' alt => do
            -- We don't have suitable newIH around here, but we don't care since
            -- we just want to fold calls. So lets create a fake one.
            -- (We cannot use oldIH as that would run into the sanity checks that we could
            -- replace all of them)
            withLocalDeclD `fakeNewIH (← inferType (mkFVar oldIH')) fun fakeNewIH =>
              M.eval (foldAndCollect oldIH' fakeNewIH.fvarId! isRecCall alt))
          (onRemaining := fun _ => pure #[])
        return matcherApp'.toExpr


    if e.getAppArgs.any (·.isFVarOf oldIH) then
      -- Sometimes Fix.lean abstracts over oldIH in a proof definition.
      -- So delta-beta-reduce that definition. We need to look through theorems here!
      if let .const declName lvls := e.getAppFn then
        if let some cinfo := (← getEnv).find? declName then
          if let some val := cinfo.value? (allowOpaque := true) then
            let e' := (val.instantiateLevelParams cinfo.levelParams lvls).betaRev e.getAppRevArgs
            return ← foldAndCollect oldIH newIH isRecCall e'
      throwError "Internal error in `foldAndCollect`: Cannot reduce application of `{e.getAppFn}` in:{indentExpr e}"

    match e with
    | .app e1 e2 =>
      pure <|.app (← foldAndCollect oldIH newIH isRecCall e1) (← foldAndCollect oldIH newIH isRecCall e2)

    | .lam n t body bi =>
      let t' ← foldAndCollect oldIH newIH isRecCall t
      withLocalDecl n bi t' fun x => do
        M.localMapM (mkLambdaFVars (usedOnly := true) #[x] ·) do
          let body' ← foldAndCollect oldIH newIH isRecCall (body.instantiate1 x)
          mkLambdaFVars #[x] body'

    | .forallE n t body bi =>
      let t' ← foldAndCollect oldIH newIH isRecCall t
      withLocalDecl n bi t' fun x => do
        M.localMapM (mkLambdaFVars (usedOnly := true) #[x] ·) do
          let body' ← foldAndCollect oldIH newIH isRecCall (body.instantiate1 x)
          mkForallFVars #[x] body'

    | .letE n t v b nondep =>
      let t' ← foldAndCollect oldIH newIH isRecCall t
      let v' ← foldAndCollect oldIH newIH isRecCall v
      withLetDecl n t' v' (nondep := nondep) fun x => do
        M.localMapM (mkLetFVars (usedLetOnly := true) (generalizeNondepLet := false) #[x] ·) do
          let b' ← foldAndCollect oldIH newIH isRecCall (b.instantiate1 x)
          mkLetFVars (generalizeNondepLet := false) #[x] b'

    | .mdata m b =>
      pure <| .mdata m (← foldAndCollect oldIH newIH isRecCall b)

    -- These projections can be type changing (to And), so re-infer their type arguments
    | .proj ``PProd 0 e => mkPProdFstM (← foldAndCollect oldIH newIH isRecCall e)
    | .proj ``PProd 1 e => mkPProdSndM (← foldAndCollect oldIH newIH isRecCall e)

    | .proj t i e =>
      pure <| .proj t i (← foldAndCollect oldIH newIH isRecCall e)

    | .sort .. | .lit .. | .const .. | .mvar .. | .bvar .. =>
      unreachable! -- cannot contain free variables, so early exit above kicks in

    | .fvar fvar =>
      assert! fvar == oldIH
      pure <| mkFVar newIH

    -- Now see if the type of the expression we are building is a motive application.
    -- If it is we want to replace it with the corresponding function application,
    -- and remember the expression as a IH to be used in an inductive case.

  if e'.containsFVar oldIH then
    throwError "Failed to eliminate {mkFVar oldIH} from:{indentExpr e'}"

  let eType ← whnf (← inferType e')
  if let .some call := isRecCall eType then
    M.tell (← mkExpectedTypeHint e' eType)
    return call

  return e'

-- Because of term duplications we might encounter the same IH multiple times.
-- We deduplicate them (by type, not proof term) here.
-- This could be improved and catch cases where the same IH is used in different contexts.
-- (Cf. `assignSubsumed` in `WF.Fix`)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2efba24e4a0d0db446c1275dccf439a3b903c7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
