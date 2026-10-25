# applyCongrFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad46956f4f8f497230eb3536a46972397bb2f7b6e771d3ac49beda2b3cc646e2",
  "kind": "def",
  "lexical_name": "applyCongrFun",
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
  "slug": "applycongrfun--fa8067e18b5aa7215babbad9",
  "source": {
    "blob": "d6154b023b388404da2f26c37e3101b6c89b30ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 326,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantf37114be1fd137bbd0e419b17da210d73f0961a0a35a1d05c044309926281286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa8067e18b5aa7215babbad93bfc7b95adfddee063468cb70825912d144ed7d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantf37114be1fd137bbd0e419b17da210d73f0961a0a35a1d05c044309926281286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad46956f4f8f497230eb3536a46972397bb2f7b6e771d3ac49beda2b3cc646e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def applyCongrFun (e rhs : Expr) (h : Expr) (prefixSize : Nat) (args : Array Expr) (ite : Bool) : GoalM Unit := do
  if prefixSize == args.size then
    internalize rhs (← getGeneration e) e
    if ite then
      registerParent e rhs
    pushEq e rhs h
  else
    go rhs h prefixSize
where
  go (rhs : Expr) (h : Expr) (i : Nat) : GoalM Unit := do
    if _h : i < args.size then
      let arg := args[i]
      let rhs' := mkApp rhs arg
      let h' ← mkCongrFun h arg
      go rhs' h' (i+1)
    else
      let rhs ← preprocessLight rhs
      internalize rhs (← getGeneration e) e
      if ite then
        registerParent e rhs
      pushEq e rhs h

/-- Propagates `ite` upwards -/
builtin_grind_propagator propagateIte ↑ite := fun e => do
  let numArgs := e.getAppNumArgs
  if numArgs < 5 then return ()
  let c := e.getArg! 1 numArgs
  if (← isEqTrue c) then
    let f := e.getAppFn
    let args := e.getAppArgs
    let rhs := args[3]!
    let h := mkApp (mkAppRange (mkConst ``ite_cond_eq_true f.constLevels!) 0 5 args) (← mkEqTrueProof c)
    applyCongrFun e rhs h 5 args (ite := true)
  else if (← isEqFalse c) then
    let f := e.getAppFn
    let args := e.getAppArgs
    let rhs := args[4]!
    let h := mkApp (mkAppRange (mkConst ``ite_cond_eq_false f.constLevels!) 0 5 args) (← mkEqFalseProof c)
    applyCongrFun e rhs h 5 args (ite := true)

/-- Propagates `dite` upwards -/
builtin_grind_propagator propagateDIte ↑dite := fun e => do
  let numArgs := e.getAppNumArgs
  if numArgs < 5 then return ()
  let c := e.getArg! 1 numArgs
  if (← isEqTrue c) then
    let f := e.getAppFn
    let args := e.getAppArgs
    let h₁ ← mkEqTrueProof c
    let ah₁ := mkApp args[3]! (mkOfEqTrueCore c h₁)
    let p ← preprocess ah₁
    let r := p.expr
    let h₂ ← p.getProof
    let h := mkApp3 (mkAppRange (mkConst ``Grind.dite_cond_eq_true' f.constLevels!) 0 5 args) r h₁ h₂
    applyCongrFun e r h 5 args (ite := false)
  else if (← isEqFalse c) then
    let f := e.getAppFn
    let args := e.getAppArgs
    let h₁ ← mkEqFalseProof c
    let bh₁ := mkApp args[4]! (mkOfEqFalseCore c h₁)
    let p ← preprocess bh₁
    let r := p.expr
    let h₂ ← p.getProof
    let h := mkApp3 (mkAppRange (mkConst ``Grind.dite_cond_eq_false' f.constLevels!) 0 5 args) r h₁ h₂
    applyCongrFun e r h 5 args (ite := false)

builtin_grind_propagator propagateDecideDown ↓decide := fun e => do
  let root ← getRootENode e
  unless root.ctor do return ()
  let_expr decide p h := e | return ()
  if root.self.isConstOf ``true then
    pushEqTrue p <| mkApp3 (mkConst ``Grind.of_decide_eq_true) p h (← mkEqProof e root.self)
  else if root.self.isConstOf ``false then
    pushEqFalse p <| mkApp3 (mkConst ``Grind.of_decide_eq_false) p h (← mkEqProof e root.self)

builtin_grind_propagator propagateDecideUp ↑decide := fun e => do
  let_expr decide p h := e | return ()
  if (← isEqTrue p) then
    pushEq e (← getBoolTrueExpr) <| mkApp3 (mkConst ``Grind.decide_eq_true) p h (← mkEqTrueProof p)
  else if (← isEqFalse p) then
    pushEq e (← getBoolFalseExpr) <| mkApp3 (mkConst ``Grind.decide_eq_false) p h (← mkEqFalseProof p)

/-- `Bool` version of `propagateAndUp` -/
builtin_grind_propagator propagateBoolAndUp ↑Bool.and := fun e => do
  let_expr Bool.and a b := e | return ()
  if (← isEqBoolTrue a) then
    pushEq e b <| mkApp3 (mkConst ``Grind.Bool.and_eq_of_eq_true_left) a b (← mkEqBoolTrueProof a)
  else if (← isEqBoolTrue b) then
    pushEq e a <| mkApp3 (mkConst ``Grind.Bool.and_eq_of_eq_true_right) a b (← mkEqBoolTrueProof b)
  else if (← isEqBoolFalse a) then
    pushEqBoolFalse e <| mkApp3 (mkConst ``Grind.Bool.and_eq_of_eq_false_left) a b (← mkEqBoolFalseProof a)
  else if (← isEqBoolFalse b) then
    pushEqBoolFalse e <| mkApp3 (mkConst ``Grind.Bool.and_eq_of_eq_false_right) a b (← mkEqBoolFalseProof b)

/-- `Bool` version of `propagateAndDown` -/
builtin_grind_propagator propagateBoolAndDown ↓Bool.and := fun e => do
  if (← isEqBoolTrue e) then
    let_expr Bool.and a b := e | return ()
    let h ← mkEqBoolTrueProof e
    pushEqBoolTrue a <| mkApp3 (mkConst ``Grind.Bool.eq_true_of_and_eq_true_left) a b h
    pushEqBoolTrue b <| mkApp3 (mkConst ``Grind.Bool.eq_true_of_and_eq_true_right) a b h

/-- `Bool` version of `propagateOrUp` -/
builtin_grind_propagator propagateBoolOrUp ↑Bool.or := fun e => do
  let_expr Bool.or a b := e | return ()
  if (← isEqBoolFalse a) then
    pushEq e b <| mkApp3 (mkConst ``Grind.Bool.or_eq_of_eq_false_left) a b (← mkEqBoolFalseProof a)
  else if (← isEqBoolFalse b) then
    pushEq e a <| mkApp3 (mkConst ``Grind.Bool.or_eq_of_eq_false_right) a b (← mkEqBoolFalseProof b)
  else if (← isEqBoolTrue a) then
    pushEqBoolTrue e <| mkApp3 (mkConst ``Grind.Bool.or_eq_of_eq_true_left) a b (← mkEqBoolTrueProof a)
  else if (← isEqBoolTrue b) then
    pushEqBoolTrue e <| mkApp3 (mkConst ``Grind.Bool.or_eq_of_eq_true_right) a b (← mkEqBoolTrueProof b)

/-- `Bool` version of `propagateOrDown` -/
builtin_grind_propagator propagateBoolOrDown ↓Bool.or := fun e => do
  if (← isEqBoolFalse e) then
    let_expr Bool.or a b := e | return ()
    let h ← mkEqBoolFalseProof e
    pushEqBoolFalse a <| mkApp3 (mkConst ``Grind.Bool.eq_false_of_or_eq_false_left) a b h
    pushEqBoolFalse b <| mkApp3 (mkConst ``Grind.Bool.eq_false_of_or_eq_false_right) a b h

/-- `Bool` version of `propagateNotUp` -/
builtin_grind_propagator propagateBoolNotUp ↑Bool.not := fun e => do
  let_expr Bool.not a := e | return ()
  if (← isEqBoolFalse a) then
    pushEqBoolTrue e <| mkApp2 (mkConst ``Grind.Bool.not_eq_of_eq_false) a (← mkEqBoolFalseProof a)
  else if (← isEqBoolTrue a) then
    pushEqBoolFalse e <| mkApp2 (mkConst ``Grind.Bool.not_eq_of_eq_true) a (← mkEqBoolTrueProof a)
  else if (← isEqv e a) then
    closeGoal <| mkApp2 (mkConst ``Grind.Bool.false_of_not_eq_self) a (← mkEqProof e a)

/-- `Bool` version of `propagateNotDown` -/
builtin_grind_propagator propagateBoolNotDown ↓Bool.not := fun e => do
  let_expr Bool.not a := e | return ()
  if (← isEqBoolFalse e) then
    pushEqBoolTrue a <| mkApp2 (mkConst ``Grind.Bool.eq_true_of_not_eq_false) a (← mkEqBoolFalseProof e)
  else if (← isEqBoolTrue e) then
    pushEqBoolFalse a <| mkApp2 (mkConst ``Grind.Bool.eq_false_of_not_eq_true) a (← mkEqBoolTrueProof e)
  else if (← isEqv e a) then
    closeGoal <| mkApp2 (mkConst ``Grind.Bool.false_of_not_eq_self) a (← mkEqProof e a)

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantf37114be1fd137bbd0e419b17da210d73f0961a0a35a1d05c044309926281286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantf37114be1fd137bbd0e419b17da210d73f0961a0a35a1d05c044309926281286.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6154b023b388404da2f26c37e3101b6c89b30ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
