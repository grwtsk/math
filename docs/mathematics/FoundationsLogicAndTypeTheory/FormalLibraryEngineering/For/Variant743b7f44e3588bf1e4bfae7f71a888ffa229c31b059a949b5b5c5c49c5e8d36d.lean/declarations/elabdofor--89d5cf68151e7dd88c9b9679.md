# elabDoFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa28f81450f9338b4ef7434abb44e1043f2d4c253537055c1ea0ac47e430d4b8",
  "kind": "def",
  "lexical_name": "elabDoFor",
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
  "slug": "elabdofor--89d5cf68151e7dd88c9b9679",
  "source": {
    "blob": "7e4c133681133dbce4137c064bbf4892501d59a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/For/Variant743b7f44e3588bf1e4bfae7f71a888ffa229c31b059a949b5b5c5c49c5e8d36d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89d5cf68151e7dd88c9b967929271589c47a06875a2f16b6ce6f551442ab30e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/For/Variant743b7f44e3588bf1e4bfae7f71a888ffa229c31b059a949b5b5c5c49c5e8d36d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa28f81450f9338b4ef7434abb44e1043f2d4c253537055c1ea0ac47e430d4b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_doElem_elab Lean.Parser.Term.doFor] def elabDoFor : DoElab := fun stx dec => do
  let `(doFor| for%$tk $[$h? : ]? $x:ident in $xs do $body) := stx | throwUnsupportedSyntax
  let dec ← dec.ensureUnitAt tk
  checkMutVarsForShadowing #[x]
  let uα ← mkFreshLevelMVar
  let uρ ← mkFreshLevelMVar
  let α ← mkFreshExprMVar (mkSort (uα.succ)) (userName := `α) -- assigned by outParam
  let ρ ← mkFreshExprMVar (mkSort (uρ.succ)) (userName := `ρ) -- assigned in the next line
  let xs ← Term.elabTermEnsuringType xs ρ
  let mi := (← read).monadInfo
  let mutVars := (← read).mutVars

  let info ← inferControlInfoSeq body
  let oldReturnCont ← getReturnCont
  let returnVarName ← mkFreshUserName `__r
  let loopMutVars := mutVars.filter fun x => info.reassigns.contains x.getId
  let loopMutVarNames :=
    if info.returnsEarly then
      returnVarName :: (loopMutVars.map (·.getId)).toList
    else
      (loopMutVars.map (·.getId)).toList
  let useLoopMutVars (e : Option Expr) : TermElabM (Array Expr) := do
    let mut defs := #[]
    unless e.isNone || info.returnsEarly do
      throwError "Early returning {e} but the info said there is no early return"
    if info.returnsEarly then
      let returnVar ←
        match e with
        | none => mkNone oldReturnCont.resultType
        | some e => mkSome oldReturnCont.resultType e
      defs := defs.push returnVar
    for x in loopMutVars do
      let defn ← getLocalDeclFromUserName x.getId
      Term.addTermInfo' x.ident defn.toExpr
      -- ForIn forces the mut tuple into the universe mi.u: that of the do block result type.
      -- If we don't do this, then we are stuck on solving constraints such as
      --   `max ?u.46 ?u.47 =?= max (max ?u.22 ?u.46) ?u.47`
      -- It's important we do this as a separate isLevelDefEq check on the decremented level because
      -- otherwise (`ensureHasType (mkSort mi.u.succ)`) we are stuck on constraints like
      --   `max (?u+1) (?v+1) =?= ?u+1`
      let u ← getDecLevel defn.type
      discard <| isLevelDefEq u mi.u
      defs := defs.push defn.toExpr
    if info.returnsEarly && loopMutVars.isEmpty then
      defs := defs.push (mkConst ``Unit.unit)
    return defs

  let (preS, σ) ← mkProdMkN (← useLoopMutVars none) mi.u

  let (app, p?) ← match h? with
    | none =>
      let instForIn ← Term.mkInstMVar <| mkApp3 (mkConst ``ForIn [uρ, uα, mi.u, mi.v]) mi.m ρ α
      let app := mkConst ``ForIn.forIn [uρ, uα, mi.u, mi.v]
      -- ForIn.forIn : {m ρ α : _} → [ForIn m ρ α] → {β : _} → ρ → β → (α → β → m (ForInStep β)) → m β
      let app := mkApp7 app mi.m ρ α instForIn σ xs preS -- 1 arg remaining: loop body
      pure (app, none)
    | some _ =>
      let d ← mkFreshExprMVar (mkApp2 (mkConst ``Membership [uα, uρ]) α ρ) (userName := `d) -- outParam
      let instForIn ← Term.mkInstMVar <| mkApp4 (mkConst ``ForIn' [uρ, uα, mi.u, mi.v]) mi.m ρ α d
      let app := mkConst ``ForIn'.forIn' [uρ, uα, mi.u, mi.v]
      -- ForIn'.forIn' : {m ρ α : _} → [Membership α ρ] → [ForIn' m ρ α d] → {β : _} → ρ → β → ((a : α) → a ∈ x → β → m (ForInStep β)) → m β
      let app := mkApp8 app mi.m ρ α d instForIn σ xs preS -- 1 arg remaining: loop body
      pure (app, some d)
  let s ← mkFreshUserName `__s
  let xh : Array (Name × (Array Expr → DoElabM Expr)) := match h?, p? with
    | some h, some d =>
      #[(x.getId, fun _ => pure α),
        (h.getId, fun x => pure (mkApp5 (mkConst ``Membership.mem [uα, uρ]) α ρ d xs x[0]!))]
    | _, _ =>
      #[(x.getId, fun _ => pure α)]

  let body ←
    withLocalDeclsD xh fun xh => do
    Term.addLocalVarInfo x xh[0]!
    if let some h := h? then
      Term.addLocalVarInfo h xh[1]!
    withLocalDecl s .default σ (kind := .implDetail) fun loopS => do
    mkLambdaFVars (xh.push loopS) <| ← do
    bindMutVarsFromTuple loopMutVarNames loopS.fvarId! do
    let newDoBlockResultType := mkApp (mkConst ``ForInStep [mi.u]) σ
    withDoBlockResultType newDoBlockResultType do
    let continueCont := do
      let (tuple, _tupleTy) ← mkProdMkN (← useLoopMutVars none) mi.u
      let yield := mkApp2 (mkConst ``ForInStep.yield [mi.u]) σ tuple
      mkPureApp newDoBlockResultType yield
    let breakCont := do
      let (tuple, _tupleTy) ← mkProdMkN (← useLoopMutVars none) mi.u
      let done := mkApp2 (mkConst ``ForInStep.done [mi.u]) σ tuple
      mkPureApp newDoBlockResultType done
    let returnCont := { oldReturnCont with k := fun e => do
        let (tuple, _tupleTy) ← mkProdMkN (← useLoopMutVars (some e)) mi.u
        let done := mkApp2 (mkConst ``ForInStep.done [mi.u]) σ tuple
        mkPureApp newDoBlockResultType done
      }
    enterLoopBody breakCont continueCont returnCont do
    -- Elaborate the loop body, which must have result type `PUnit`, just like the whole `for` loop.
    elabDoSeq body { dec with k := continueCont, kind := .duplicable }

  let forIn := mkApp app body

  let γ := (← read).doBlockResultType
  let rest ←
    withLocalDeclD s σ fun postS => do mkLambdaFVars #[postS] <| ← do
      bindMutVarsFromTuple loopMutVarNames postS.fvarId! do
        if info.returnsEarly then
          let ret ← getFVarFromUserName returnVarName
          let ret ← if loopMutVars.isEmpty then mkAppM ``Prod.fst #[ret] else pure ret
          let motive := mkLambda `_ .default (← inferType ret) (← mkMonadApp γ)
          let app := mkApp3 (mkConst ``Break.runK.match_1 [mi.u, mi.v.succ]) oldReturnCont.resultType motive ret
          let none := mkSimpleThunk (← dec.continueWithUnit)
          let some ← withLocalDeclD (← mkFreshUserName `r) oldReturnCont.resultType fun r => do
            mkLambdaFVars #[r] (← oldReturnCont.k r)
          return mkApp2 app some none
        else
          dec.continueWithUnit

  mkBindApp σ γ forIn rest
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/For/Variant743b7f44e3588bf1e4bfae7f71a888ffa229c31b059a949b5b5c5c49c5e8d36d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/For/Variant743b7f44e3588bf1e4bfae7f71a888ffa229c31b059a949b5b5c5c49c5e8d36d.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e4c133681133dbce4137c064bbf4892501d59a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
