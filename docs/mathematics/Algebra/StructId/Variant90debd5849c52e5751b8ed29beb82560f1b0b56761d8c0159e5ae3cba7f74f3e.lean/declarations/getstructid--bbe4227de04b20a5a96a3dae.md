# getStructId?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b345bcc60a2de5f7b4067648537fa550f34f1be69af56752f552d220e56ddeb",
  "kind": "def",
  "lexical_name": "getStructId?",
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
  "slug": "getstructid--bbe4227de04b20a5a96a3dae",
  "source": {
    "blob": "8a5d963c3243fe2f7dec54707fbc075223fd67bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 169,
    "path": "GRWTSK/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbe4227de04b20a5a96a3dae57950ac8d25a1d4670b40c086a462bbc1417c9af",
  "verification": {
    "reference": "docs/verification/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b345bcc60a2de5f7b4067648537fa550f34f1be69af56752f552d220e56ddeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getStructId? (type : Expr) : GoalM (Option Nat) := do
  unless (← getConfig).linarith do return none
  if (← isCutsatType type) then return none
  if let some id? := (← get').typeIdOf.find? { expr := type } then
    return id?
  else
    let id? ← go?
    modify' fun s => { s with typeIdOf := s.typeIdOf.insert { expr := type } id? }
    return id?
where
  go? : GoalM (Option Nat) := do
    if type.isAppOfArity ``Grind.IntModule.OfNatModule.Q 2 then
      goQ? type.appFn!.appArg! type.appArg!
    else
      goCore?
  /-
  Fast path for `grind`'s internal envelope type `IntModule.OfNatModule.Q base`.
  Motivation: synthesizing `IntModule.OfNatModule.Q base` instances is very expensive in Mathlib.
  We construct the instances manually to avoid the overhead.
  -/
  goQ? (base natModuleInst : Expr) : GoalM (Option Nat) := do
    let some u ← getDecLevel? base | return none
    -- `base`-level premises. These queries are shared with `getNatStructId?` via the
    -- `synthInstance` cache.
    let leInst? ← getInst? ``LE u base
    let isPreorderInst? ← mkIsPreorderInst? u base leInst?
    let orderedAddInst? ← match leInst?, isPreorderInst? with
      | some leInst, some isPreorderInst =>
        let addInst ← getBinHomoInst ``HAdd u base
        synthInstance? <| mkApp4 (mkConst ``Grind.OrderedAdd [u]) base addInst leInst isPreorderInst
      | _, _ => pure none
    let ordPremises? : Option (Expr × Expr × Expr) := do
      return (← leInst?, ← isPreorderInst?, ← orderedAddInst?)
    let mkQOrderInst (declName : Name) (le mid ord : Expr) : Expr :=
      mkApp5 (mkConst declName [u]) base natModuleInst le mid ord
    let leInstQ? := ordPremises?.map fun (le, pre, ord) =>
      mkQOrderInst ``Grind.IntModule.OfNatModule.instLEQOfOrderedAdd le pre ord
    let ltInstQ? := ordPremises?.map fun (le, pre, ord) =>
      mkQOrderInst ``Grind.IntModule.OfNatModule.instLTQOfOrderedAdd le pre ord
    let isPreorderInstQ? := ordPremises?.map fun (le, pre, ord) =>
      mkQOrderInst ``Grind.IntModule.OfNatModule.instIsPreorderQ le pre ord
    let orderedAddInstQ? := ordPremises?.map fun (le, pre, ord) =>
      mkQOrderInst ``Grind.IntModule.OfNatModule.instOrderedAddQ le pre ord
    -- `LT (Q base)` is implemented via `≤`, so the classical instance applies.
    let lawfulOrderLTInstQ? := leInstQ?.map fun leInstQ =>
      mkApp2 (mkConst ``Classical.Order.instLawfulOrderLT [u]) type leInstQ
    let isLinearInstQ? ← match ordPremises? with
      | some (le, _, ord) =>
        let isLinearInst? ← mkIsLinearOrderInst? u base leInst?
        pure <| isLinearInst?.map fun lin =>
          mkQOrderInst ``Grind.IntModule.OfNatModule.instIsLinearOrderQ le lin ord
      | none => pure none
    let noNatDivInstQ? ← do
      -- Premises of `instNoNatZeroDivisorsQOfAddRightCancel`.
      let some addInst ← synthInstance? (mkApp (mkConst ``Add [u]) base) | pure none
      let some addRightCancelInst ← synthInstance? (mkApp2 (mkConst ``Grind.AddRightCancel [u]) base addInst) | pure none
      let some noNatDivInst ← synthInstance? (mkApp2 (mkConst ``Grind.NoNatZeroDivisors [u]) base natModuleInst) | pure none
      pure <| some <| mkApp4 (mkConst ``Grind.IntModule.OfNatModule.instNoNatZeroDivisorsQOfAddRightCancel [u])
        base natModuleInst addRightCancelInst noNatDivInst
    let intModuleInst := mkApp2 (mkConst ``Grind.IntModule.OfNatModule.ofNatModule [u]) base natModuleInst
    let addCommGroupInst := mkApp2 (mkConst ``Grind.IntModule.toAddCommGroup [u]) type intModuleInst
    let addCommMonoidInst := mkApp2 (mkConst ``Grind.AddCommGroup.toAddCommMonoid [u]) type addCommGroupInst
    let zeroInst := mkApp2 (mkConst ``Grind.AddCommMonoid.toZero [u]) type addCommMonoidInst
    let ofNatZeroInst := mkApp2 (mkConst ``Zero.toOfNat0 [u]) type zeroInst
    let addInst := mkApp2 (mkConst ``instHAdd [u]) type (mkApp2 (mkConst ``Grind.AddCommMonoid.toAdd [u]) type addCommMonoidInst)
    let subInst := mkApp2 (mkConst ``instHSub [u]) type (mkApp2 (mkConst ``Grind.AddCommGroup.toSub [u]) type addCommGroupInst)
    let negInst := mkApp2 (mkConst ``Grind.AddCommGroup.toNeg [u]) type addCommGroupInst
    let zsmulInst := mkApp3 (mkConst ``instHSMul [0, u]) Int.mkType type (mkApp2 (mkConst ``Grind.IntModule.zsmul [u]) type intModuleInst)
    let nsmulInst := mkApp3 (mkConst ``instHSMul [0, u]) Nat.mkType type (mkApp2 (mkConst ``Grind.IntModule.nsmul [u]) type intModuleInst)
    -- Register the constructed instances so that `Sym.synthInstance?` (and hence `canon`'s
    -- instance resynthesis) returns them without running typeclass resolution.
    registerInstance (mkApp (mkConst ``Grind.IntModule [u]) type) intModuleInst
    registerInstance (mkApp (mkConst ``Zero [u]) type) zeroInst
    registerInstance (mkApp2 (mkConst ``OfNat [u]) type (mkRawNatLit 0)) ofNatZeroInst
    registerInstance (mkApp3 (mkConst ``HAdd [u, u, u]) type type type) addInst
    registerInstance (mkApp3 (mkConst ``HSub [u, u, u]) type type type) subInst
    registerInstance (mkApp (mkConst ``Neg [u]) type) negInst
    registerInstance (mkApp3 (mkConst ``HSMul [0, u, u]) Int.mkType type type) zsmulInst
    registerInstance (mkApp3 (mkConst ``HSMul [0, u, u]) Nat.mkType type type) nsmulInst
    if let some leInstQ := leInstQ? then
      registerInstance (mkApp (mkConst ``LE [u]) type) leInstQ
    if let some ltInstQ := ltInstQ? then
      registerInstance (mkApp (mkConst ``LT [u]) type) ltInstQ
    let zero ← internalizeConst <| mkApp2 (mkConst ``Zero.zero [u]) type zeroInst
    let ofNatZero ← preprocess <| mkApp3 (mkConst ``OfNat.ofNat [u]) type (mkRawNatLit 0) ofNatZeroInst
    let addFn ← internalizeFn <| mkApp4 (mkConst ``HAdd.hAdd [u, u, u]) type type type addInst
    let subFn ← internalizeFn <| mkApp4 (mkConst ``HSub.hSub [u, u, u]) type type type subInst
    let negFn ← internalizeFn <| mkApp2 (mkConst ``Neg.neg [u]) type negInst
    let zsmulFn ← internalizeFn <| mkApp4 (mkConst ``HSMul.hSMul [0, u, u]) Int.mkType type type zsmulInst
    let nsmulFn ← internalizeFn <| mkApp4 (mkConst ``HSMul.hSMul [0, u, u]) Nat.mkType type type nsmulInst
    let leFn? ← leInstQ?.mapM fun leInstQ =>
      internalizeFn <| mkApp2 (mkConst ``LE.le [u]) type leInstQ
    let ltFn? ← ltInstQ?.mapM fun ltInstQ =>
      internalizeFn <| mkApp2 (mkConst ``LT.lt [u]) type ltInstQ
    let id := (← get').structs.size
    let struct : Struct := {
      id, type, u, intModuleInst,
      leInst? := leInstQ?, ltInst? := ltInstQ?, lawfulOrderLTInst? := lawfulOrderLTInstQ?,
      isPreorderInst? := isPreorderInstQ?, orderedAddInst? := orderedAddInstQ?,
      isLinearInst? := isLinearInstQ?, noNatDivInst? := noNatDivInstQ?,
      leFn?, ltFn?, addFn, subFn, negFn, zsmulFn, nsmulFn,
      zsmulFn? := some zsmulFn, nsmulFn? := some nsmulFn,
      zero, ofNatZero, one? := none,
      ringInst? := none, commRingInst? := none, orderedRingInst? := none, charInst? := none,
      ringId? := none, fieldInst? := none, homomulFn? := none
    }
    modify' fun s => { s with structs := s.structs.push struct }
    return some id

  goCore? : GoalM (Option Nat) := do
    let some u ← getDecLevel? type | return none
    let ringId? ← CommRing.getCommRingId? type
    let leInst? ← getInst? ``LE u type
    let ltInst? ← getInst? ``LT u type
    let lawfulOrderLTInst? ← mkLawfulOrderLTInst? u type ltInst? leInst?
    let isPreorderInst? ← mkIsPreorderInst? u type leInst?
    let isPartialInst? ← mkIsPartialOrderInst? u type leInst?
    let isLinearInst? ← mkIsLinearOrderInst? u type leInst?
    if (← getConfig).ring && ringId?.isSome && isPreorderInst?.isNone then
      /-
      If the type is a `Ring` **and** is not even a preorder **and** `grind ring` is enabled,
      we let `grind ring` process the equalities and disequalities. There is no
      point in using `linarith` in this case.
      **IMPORTANT** We mark the type as a "forbiddenNatModule". It would be pointless to recheck everything in
      in `getNatStructId?`
      -/
      modify' fun s => { s with forbiddenNatModules := s.forbiddenNatModules.insert { expr := type } }
      return none
    let commRingInst? ← getCommRingInst? ringId?
    let ringInst? ← mkRingInst? u type commRingInst?
    let some intModuleInst ← mkIntModuleInst? u type ringInst? | return none
    let addInst ← getBinHomoInst ``HAdd u type
    let addFn ← internalizeFn <| mkApp4 (mkConst ``HAdd.hAdd [u, u, u]) type type type addInst
    let orderedAddInst? ← match leInst?, isPreorderInst? with
      | some leInst, some isPreorderInst =>
        synthInstance? <| mkApp4 (mkConst ``Grind.OrderedAdd [u]) type addInst leInst isPreorderInst
      | _, _ => pure none
    let isPreorderInst? := if orderedAddInst?.isNone then none else isPreorderInst?
    -- preorderInst? may have been reset, check again whether this module is needed.
    if (← getConfig).ring && ringId?.isSome && isPreorderInst?.isNone then
      -- See comment above
      modify' fun s => { s with forbiddenNatModules := s.forbiddenNatModules.insert { expr := type } }
      return none
    let isPartialInst? ← checkToFieldDefEq? leInst? isPreorderInst? isPartialInst? ``Std.IsPartialOrder.toIsPreorder u type
    let isLinearInst? ← checkToFieldDefEq? leInst? isPartialInst? isLinearInst? ``Std.IsLinearOrder.toIsPartialOrder u type
    let addCommGroupInst := mkApp2 (mkConst ``Grind.IntModule.toAddCommGroup [u]) type intModuleInst
    let addCommMonoidInst := mkApp2 (mkConst ``Grind.AddCommGroup.toAddCommMonoid [u]) type addCommGroupInst
    let semiringInst? ← mkSemiringInst? u type ringInst?
    let fieldInst? ← getInst? ``Grind.Field u type
    let one? ← mkOne? u type -- One must be created eagerly
    let orderedRingInst? ← mkOrderedRingInst? u type semiringInst? leInst? ltInst? isPreorderInst?
    let charInst? ← if let some semiringInst := semiringInst? then getIsCharInst? u type semiringInst else pure none
    let noNatDivInst? ← mkNoNatZeroDivInst? u type
    -- TODO: generate the remaining fields on demand
    let zeroInst ← getInst ``Zero u type
    let zero ← internalizeConst <| mkApp2 (mkConst ``Zero.zero [u]) type zeroInst
    let ofNatZeroType := mkApp2 (mkConst ``OfNat [u]) type (mkRawNatLit 0)
    let some ofNatZeroInst ← synthInstance? ofNatZeroType | return none
    -- `ofNatZero` is used internally, we don't need to internalize
    let ofNatZero ← preprocess <| mkApp3 (mkConst ``OfNat.ofNat [u]) type (mkRawNatLit 0) ofNatZeroInst
    ensureDefEq zero ofNatZero
    let subInst ← getBinHomoInst ``HSub u type
    let subFn ← internalizeFn <| mkApp4 (mkConst ``HSub.hSub [u, u, u]) type type type subInst
    let negInst ← getInst ``Neg u type
    let negFn ← internalizeFn <| mkApp2 (mkConst ``Neg.neg [u]) type negInst
    let zsmulInst ← getHSMulIntInst u type
    let zsmulFn ← internalizeFn <| mkApp4 (mkConst ``HSMul.hSMul [0, u, u]) Int.mkType type type zsmulInst
    let nsmulInst ← getHSMulNatInst u type
    let nsmulFn ← internalizeFn <| mkApp4 (mkConst ``HSMul.hSMul [0, u, u]) Nat.mkType type type nsmulInst
    ensureToFieldDefEq zeroInst addCommMonoidInst ``Grind.AddCommMonoid.toZero u type
    ensureToHomoFieldDefEq addInst addCommMonoidInst ``Grind.AddCommMonoid.toAdd ``instHAdd u type
    ensureToHomoFieldDefEq subInst addCommGroupInst ``Grind.AddCommGroup.toSub ``instHSub u type
    ensureToFieldDefEq negInst addCommGroupInst ``Grind.AddCommGroup.toNeg u type
    ensureToHomoFieldDefEq zsmulInst intModuleInst ``Grind.IntModule.zsmul ``instHSMul u type (some Int.mkType)
    ensureToHomoFieldDefEq nsmulInst intModuleInst ``Grind.IntModule.nsmul ``instHSMul u type (some Nat.mkType)
    let leFn? ← if let some leInst := leInst? then
      some <$> (internalizeFn <| mkApp2 (mkConst ``LE.le [u]) type leInst)
    else
      pure none
    let ltFn? ← if let some ltInst := ltInst? then
      some <$> (internalizeFn <| mkApp2 (mkConst ``LT.lt [u]) type ltInst)
    else
      pure none
    let zsmulFn? ← getHSMulIntFn? u type
    let nsmulFn? ← getHSMulNatFn? u type
    let homomulFn? ← if commRingInst?.isSome then
      let mulInst ← getBinHomoInst ``HMul u type
      pure <| some (← internalizeFn <| mkApp4 (mkConst ``HMul.hMul [u, u, u]) type type type mulInst)
    else
      pure none
    let id := (← get').structs.size
    let struct : Struct := {
      id, type, u, intModuleInst, leInst?, ltInst?, lawfulOrderLTInst?, isPreorderInst?,
      orderedAddInst?, isLinearInst?, noNatDivInst?,
      leFn?, ltFn?, addFn, subFn, negFn, zsmulFn, nsmulFn, zsmulFn?, nsmulFn?, zero, one?
      ringInst?, commRingInst?, orderedRingInst?, charInst?, ringId?, fieldInst?, ofNatZero, homomulFn?
    }
    modify' fun s => { s with structs := s.structs.push struct }
    if let some one := one? then
      if ringInst?.isSome then LinearM.run id do
        if orderedRingInst?.isSome then
          -- Create `1` variable, and assert strict lower bound `0 < 1` and `0 ≠ 1`
          let x ← mkVar one (mark := false)
          addZeroLtOne x
          addZeroNeOne x
        else if fieldInst?.isSome || isNonTrivialIsCharInst charInst? then
          -- Create `1` variable, and assert `0 ≠ 1`
          let x ← mkVar one (mark := false)
          addZeroNeOne x
    return some id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a5d963c3243fe2f7dec54707fbc075223fd67bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
