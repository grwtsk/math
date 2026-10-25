# eqSelfProc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:682dff2657e841e43310f0e91b30e6f19f1a736d1710625af237a6619b86450f",
  "kind": "def",
  "lexical_name": "eqSelfProc",
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
  "slug": "eqselfproc--7dd08b2abba8790ef811493c",
  "source": {
    "blob": "d33f429f7a7d01b1bddef28ad6146ea2e3018c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 876,
    "line": 336,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dd08b2abba8790ef811493c831c80f2a88e07015e0a8b3f095cbc646c2c4da2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:682dff2657e841e43310f0e91b30e6f19f1a736d1710625af237a6619b86450f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–876.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eqSelfProc : Simp.Simproc := fun e => do
  let_expr Eq ty lhs rhs := e | return .continue
  if lhs != rhs then return .continue
  let proof := mkApp2 (mkConst ``eq_self [1]) ty lhs
  return .visit { expr := mkConst ``True, proof? := some proof }

builtin_simproc [bv_normalize] bv_eq_self ((_ : BitVec _) = (_ : BitVec _)) := eqSelfProc
builtin_simproc [bv_normalize] bool_eq_self ((_ : Bool) = (_ : Bool)) := eqSelfProc

builtin_simproc [bv_normalize] bool_and ((_ : Bool) && (_ : Bool)) := fun e => do
  let_expr Bool.and lhs rhs := e | return .continue
  if lhs == rhs then
    return .visit { expr := lhs, proof? := some (mkApp (mkConst ``Bool.and_self) lhs) }
  else
    let andFalse : MetaM (Option Simp.Step) := do
      let_expr Bool.false := rhs | return none
      let proof := mkApp (mkConst ``Bool.and_false) lhs
      return some <| .visit { expr := mkConst ``Bool.false, proof? := some proof}

    let falseAnd : MetaM (Option Simp.Step) := do
      let_expr Bool.false := lhs | return none
      let proof := mkApp (mkConst ``Bool.false_and) rhs
      return some <| .visit { expr := mkConst ``Bool.false, proof? := some proof}

    let andTrue : MetaM (Option Simp.Step) := do
      let_expr Bool.true := rhs | return none
      let proof := mkApp (mkConst ``Bool.and_true) lhs
      return some <| .visit { expr := lhs, proof? := some proof}

    let trueAnd : MetaM (Option Simp.Step) := do
      let_expr Bool.true := lhs | return none
      let proof := mkApp (mkConst ``Bool.true_and) rhs
      return some <| .visit { expr := rhs, proof? := some proof}

    let andNotSelf : MetaM (Option Simp.Step) := do
      let_expr Bool.not rhs := rhs | return none
      if lhs != rhs then return none
      let proof := mkApp (mkConst ``Bool.and_not_self) lhs
      return some <| .visit { expr := toExpr false, proof? := some proof }

    let notAndSelf : MetaM (Option Simp.Step) := do
      let_expr Bool.not lhs := lhs | return none
      if lhs != rhs then return none
      let proof := mkApp (mkConst ``Bool.not_and_self) lhs
      return some <| .visit { expr := toExpr false, proof? := some proof }

    let andSelfLeft : MetaM (Option Simp.Step) := do
      let_expr Bool.and rlhs rrhs := rhs | return none
      if lhs != rlhs then return none
      let expr := mkApp2 (mkConst ``Bool.and) lhs rrhs
      let proof := mkApp2 (mkConst ``Bool.and_self_left) lhs rrhs
      return some <| .visit { expr := expr, proof? := some proof }

    let andSelfRight : MetaM (Option Simp.Step) := do
      let_expr Bool.and llhs lrhs := lhs | return none
      if rhs != lrhs then return none
      let expr := mkApp2 (mkConst ``Bool.and) llhs rhs
      let proof := mkApp2 (mkConst ``Bool.and_self_right) llhs rhs
      return some <| .visit { expr := expr, proof? := some proof }

    if let some step ← falseAnd then return step
    if let some step ← andFalse then return step
    if let some step ← andTrue then return step
    if let some step ← trueAnd then return step
    if let some step ← andNotSelf then return step
    if let some step ← notAndSelf then return step
    if let some step ← andSelfLeft then return step
    if let some step ← andSelfRight then return step
    return .continue

builtin_simproc [bv_normalize] bv_beq ((_ : BitVec _) == (_ : BitVec _)) := fun e => do
  let_expr BEq.beq ty _ lhs rhs := e | return .continue
  let_expr BitVec wExpr := ty | return .continue
  let some w ← getNatValue? wExpr | return .continue
  if lhs == rhs then
    let proof :=
      mkApp2
        (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.beq_self_eq_true)
        wExpr
        lhs
    return .visit { expr := toExpr true, proof? := some proof }
  else
    let addInj : MetaM (Option Simp.Step) := do
      let_expr HAdd.hAdd _ _ _ _ llhs lrhs := lhs | return none
      let_expr HAdd.hAdd _ _ _ _ rlhs rrhs := rhs | return none
      if lrhs == rrhs then
        let expr := BitVec.mkBEq llhs rlhs wExpr
        let proof :=
          mkApp4 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.add_left_inj)
            wExpr
            llhs
            rlhs
            lrhs
        return some <| .visit { expr, proof? := some proof }
      else if lrhs == rlhs then
        let expr := BitVec.mkBEq llhs rrhs wExpr
        let proof :=
          mkApp4 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.add_left_inj')
            wExpr
            llhs
            rrhs
            lrhs
        return some <| .visit { expr, proof? := some proof }
      else if llhs == rlhs then
        let expr := BitVec.mkBEq lrhs rrhs wExpr
        let proof :=
          mkApp4 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.add_right_inj)
            wExpr
            lrhs
            rrhs
            llhs
        return some <| .visit { expr, proof? := some proof }
      else if llhs == rrhs then
        let expr := BitVec.mkBEq lrhs rlhs wExpr
        let proof :=
          mkApp4 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.add_right_inj')
            wExpr
            lrhs
            rlhs
            llhs
        return some <| .visit { expr, proof? := some proof }
      else
        return none

    let notEqComm : MetaM (Option Simp.Step) := do
      let some ⟨w, rhsVal⟩ ← getBitVecValue? rhs | return none
      let_expr Complement.complement _ _ innerLhs := lhs | return none
      let expr := BitVec.mkBEq innerLhs (toExpr (~~~rhsVal)) (toExpr w)
      let proof :=
        mkApp3 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.not_eq_comm)
          (toExpr w)
          innerLhs
          rhs
      return some <| .visit { expr := expr, proof? := some proof }

    let notEqComm' : MetaM (Option Simp.Step) := do
      let some ⟨w, lhsVal⟩ ← getBitVecValue? lhs | return none
      let_expr Complement.complement _ _ innerRhs := rhs | return none
      let expr := BitVec.mkBEq innerRhs (toExpr (~~~lhsVal)) (toExpr w)
      let proof :=
        mkApp3 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.not_eq_comm')
          (toExpr w)
          lhs
          innerRhs
      return some <| .visit { expr := expr, proof? := some proof }

    let andEqAllOnes : MetaM (Option Simp.Step) := do
      let some ⟨w, rhsVal⟩ ← getBitVecValue? rhs | return none
      if -1#w != rhsVal then return none
      let_expr HAnd.hAnd _ _ _ _ llhs lrhs := lhs | return none
      let newLhs := BitVec.mkBEq llhs rhs (toExpr w)
      let newRhs := BitVec.mkBEq lrhs rhs (toExpr w)
      let expr := mkApp2 (mkConst ``Bool.and) newLhs newRhs
      let proof :=
        mkApp3 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.and_eq_allOnes)
          (toExpr w)
          llhs
          lrhs
      return some <| .visit { expr := expr, proof? := some proof }

    let allOnesEqAnd : MetaM (Option Simp.Step) := do
      let some ⟨w, lhsVal⟩ ← getBitVecValue? lhs | return none
      if -1#w != lhsVal then return none
      let_expr HAnd.hAnd _ _ _ _ rlhs rrhs := rhs | return none
      let newLhs := BitVec.mkBEq rlhs lhs (toExpr w)
      let newRhs := BitVec.mkBEq rrhs lhs (toExpr w)
      let expr := mkApp2 (mkConst ``Bool.and) newLhs newRhs
      let proof :=
        mkApp3 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.allOnes_eq_and)
          (toExpr w)
          rlhs
          rrhs
      return some <| .visit { expr := expr, proof? := some proof }

    let addConstBeqConst : MetaM (Option Simp.Step) := do
      let_expr HAdd.hAdd _ _ _ _ llhs lrhs := lhs | return none
      let some ⟨_, lrhsVal⟩ ← getBitVecValue? lrhs | return none
      let some ⟨w, rhsVal⟩ ← getBitVecValue? rhs | return none
      let wExpr := toExpr w
      let expr := BitVec.mkBEq llhs (BitVec.mkSub rhs lrhs wExpr) wExpr
      let proof :=
        mkApp4 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.add_const_beq_const)
          wExpr
          (toExpr lrhsVal.toNat)
          (toExpr rhsVal.toNat)
          llhs
      return some <| .visit { expr, proof? := some proof }

    let constAddBeqConst : MetaM (Option Simp.Step) := do
      let_expr HAdd.hAdd _ _ _ _ llhs lrhs := lhs | return none
      let some ⟨_, llhsVal⟩ ← getBitVecValue? llhs | return none
      let some ⟨w, rhsVal⟩ ← getBitVecValue? rhs | return none
      let wExpr := toExpr w
      let expr := BitVec.mkBEq lrhs (BitVec.mkSub rhs llhs wExpr) wExpr
      let proof :=
        mkApp4 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.const_add_beq_const)
          wExpr
          (toExpr llhsVal.toNat)
          lrhs
          (toExpr rhsVal.toNat)
      return some <| .visit { expr, proof? := some proof }

    let constBeqAddConstBeq : MetaM (Option Simp.Step) := do
      let_expr HAdd.hAdd _ _ _ _ rlhs rrhs := rhs | return none
      let some ⟨_, rrhsVal⟩ ← getBitVecValue? rrhs | return none
      let some ⟨w, lhsVal⟩ ← getBitVecValue? lhs | return none
      let wExpr := toExpr w
      let expr := BitVec.mkBEq rlhs (BitVec.mkSub lhs rrhs wExpr) wExpr
      let proof :=
        mkApp4 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.const_beq_add_const_beq)
          wExpr
          (toExpr lhsVal.toNat)
          rlhs
          (toExpr rrhsVal.toNat)
      return some <| .visit { expr, proof? := some proof }

    let constBeqConstAddBeq : MetaM (Option Simp.Step) := do
      let_expr HAdd.hAdd _ _ _ _ rlhs rrhs := rhs | return none
      let some ⟨_, rlhsVal⟩ ← getBitVecValue? rlhs | return none
      let some ⟨w, lhsVal⟩ ← getBitVecValue? lhs | return none
      let wExpr := toExpr w
      let expr := BitVec.mkBEq rrhs (BitVec.mkSub lhs rlhs wExpr) wExpr
      let proof :=
        mkApp4 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.const_beq_const_add_beq)
          wExpr
          (toExpr lhsVal.toNat)
          (toExpr rlhsVal.toNat)
          rrhs
      return some <| .visit { expr, proof? := some proof }

    let addLeftEqSelf : MetaM (Option Simp.Step) := do
      let_expr HAdd.hAdd _ _ _ _ llhs lrhs := lhs | return none
      if lrhs != rhs then return none
      let expr := BitVec.mkBEq llhs (toExpr 0#w) wExpr
      let proof :=
        mkApp3 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.add_left_eq_self)
          (toExpr w)
          llhs
          lrhs
      return some <| .visit { expr, proof? := some proof }

    let addRightEqSelf : MetaM (Option Simp.Step) := do
      let_expr HAdd.hAdd _ _ _ _ llhs lrhs := lhs | return none
      if llhs != rhs then return none
      let expr := BitVec.mkBEq lrhs (toExpr 0#w) wExpr
      let proof :=
        mkApp3 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.add_right_eq_self)
          (toExpr w)
          llhs
          lrhs
      return some <| .visit { expr, proof? := some proof }

    let selfEqAddRight : MetaM (Option Simp.Step) := do
      let_expr HAdd.hAdd _ _ _ _ rlhs rrhs := rhs | return none
      if rlhs != lhs then return none
      let expr := BitVec.mkBEq rrhs (toExpr 0#w) wExpr
      let proof :=
        mkApp3 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.self_eq_add_right)
          (toExpr w)
          rlhs
          rrhs
      return some <| .visit { expr, proof? := some proof }

    let selfEqAddLeft : MetaM (Option Simp.Step) := do
      let_expr HAdd.hAdd _ _ _ _ rlhs rrhs := rhs | return none
      if rrhs != lhs then return none
      let expr := BitVec.mkBEq rlhs (toExpr 0#w) wExpr
      let proof :=
        mkApp3 (mkConst ``Std.Tactic.BVDecide.Frontend.Normalize.BitVec.self_eq_add_left)
          (toExpr w)
          rrhs
          rlhs
      return some <| .visit { expr, proof? := some proof }

    if let some step ← addInj then return step
    if let some step ← notEqComm then return step
    if let some step ← notEqComm' then return step
    if let some step ← andEqAllOnes then return step
    if let some step ← allOnesEqAnd then return step
    if let some step ← addConstBeqConst then return step
    if let some step ← constAddBeqConst then return step
    if let some step ← constBeqAddConstBeq then return step
    if let some step ← constBeqConstAddBeq then return step
    if let some step ← addLeftEqSelf then return step
    if let some step ← addRightEqSelf then return step
    if let some step ← selfEqAddRight then return step
    if let some step ← selfEqAddLeft then return step
    return .continue

builtin_simproc [bv_normalize] bool_beq ((_ : Bool) == (_ : Bool)) := fun e => do
  let_expr BEq.beq _ _ lhs rhs := e | return .continue
  if lhs == rhs then
  let proof := mkApp (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.beq_self_eq_true) lhs
    return .visit { expr := toExpr true, proof? := some proof }
  else
    let notSelf : MetaM (Option Simp.Step) := do
      let_expr Bool.not rhs := rhs | return none
      if lhs != rhs then return none
      let proof := mkApp (mkConst ``Bool.beq_not_self) lhs
      return some <| .visit { expr := toExpr false, proof? := some proof }

    let selfNot : MetaM (Option Simp.Step) := do
      let_expr Bool.not lhs := lhs | return none
      if lhs != rhs then return none
      let proof := mkApp (mkConst ``Bool.not_beq_self) lhs
      return some <| .visit { expr := toExpr false, proof? := some proof }

    let selfLeft : MetaM (Option Simp.Step) := do
      let_expr BEq.beq _ _ rlhs rrhs := rhs | return none
      if lhs != rlhs then return none
      let proof := mkApp2 (mkConst ``Bool.beq_self_left) lhs rrhs
      return some <| .visit { expr := rrhs, proof? := some proof }

    let selfRight : MetaM (Option Simp.Step) := do
      let_expr BEq.beq _ _ llhs lrhs := lhs | return none
      if rhs != lrhs then return none
      let proof := mkApp2 (mkConst ``Bool.beq_self_right) llhs rhs
      return some <| .visit { expr := llhs, proof? := some proof }

    if let some step ← notSelf then return step
    if let some step ← selfNot then return step
    if let some step ← selfLeft then return step
    if let some step ← selfRight then return step
    return .continue

builtin_simproc [bv_normalize] cast (BitVec.cast _ _) := fun e => do
  let_expr BitVec.cast nExpr mExpr hExpr targetExpr := e | return .continue
  let some n ← getNatValue? nExpr | return .continue
  let some m ← getNatValue? mExpr | return .continue
  if n != m then return .continue
  let proof := mkApp3 (mkConst ``BitVec.cast_eq) nExpr hExpr targetExpr
  return .visit { expr := targetExpr, proof? := some proof }

builtin_simproc [bv_normalize] bool_or_elim ((_ : Bool) || (_ : Bool)) := fun e => do
  let_expr Bool.or lhs rhs := e | return .continue
  let newLhs := mkApp (mkConst ``Bool.not) lhs
  let newRhs := mkApp (mkConst ``Bool.not) rhs
  let expr := mkApp (mkConst ``Bool.not) (mkApp2 (mkConst ``Bool.and) newLhs newRhs)
  let proof := mkApp2 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.or_elim) lhs rhs
  return .visit { expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_or_elim ((_ : BitVec _) ||| (_ : BitVec _)) := fun e => do
  let_expr HOr.hOr ty _ _ _ lhs rhs := e | return .continue
  let_expr BitVec wExpr := ty | return .continue
  let newLhs := BitVec.mkComplement lhs wExpr
  let newRhs := BitVec.mkComplement rhs wExpr
  let expr := BitVec.mkComplement (BitVec.mkAnd newLhs newRhs wExpr) wExpr
  let proof := mkApp3 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.or_elim) wExpr lhs rhs
  return .visit { expr, proof? := some proof }

builtin_simproc [bv_normalize] bv_sub_elim ((_ : BitVec _) - (_ : BitVec _)) := fun e => do
  let_expr HSub.hSub ty _ _ _ lhs rhs := e | return .continue
  let_expr BitVec wExpr := ty | return .continue
  let newRhs := BitVec.mkNeg rhs wExpr
  let expr := BitVec.mkAdd lhs newRhs wExpr
  let proof := mkApp3 (mkConst ``BitVec.sub_eq_add_neg) wExpr lhs rhs
  return .visit { expr, proof? := some proof }

builtin_simproc [bv_normalize] ult (BitVec.ult _ _) := fun e => do
  let_expr BitVec.ult wExpr lhs rhs := e | return .continue
  if lhs == rhs then
    let proof := mkApp2 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.lt_irrefl) wExpr lhs
    return .done { expr := mkConst ``Bool.false, proof? := some proof }
  else
    let maxUlt : MetaM (Option Simp.Step) := do
      let some ⟨w, lhsValue⟩ ← getBitVecValue? lhs | return none
      if lhsValue == -1#w then
        let proof := mkApp2 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.max_ult') (toExpr w) rhs
        return some <| .visit { expr := toExpr Bool.false, proof? := some proof }
      else
        return none

    let lt_allOnes : MetaM (Option Simp.Step) := do
      let some ⟨w, rhs⟩ ← getBitVecValue? rhs | return none
      if rhs != -1#w then return none
      let expr := mkApp (mkConst ``Bool.not) (BitVec.mkBEq lhs (toExpr (-1#w)) wExpr)
      let proof := mkApp2 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.ult_max') wExpr lhs
      return some <| .visit { expr := expr, proof? := some proof }

    if let some step ← maxUlt then return step
    if let some step ← lt_allOnes then return step
    return .continue

builtin_simproc [bv_normalize] cond_simplify (cond _ _ _) := fun e => do
  let_expr cond α c thenExpr elseExpr := e | return .continue
  let [lvl] := e.getAppFn.constLevels! | return .continue
  if thenExpr == elseExpr then
    let proof := mkApp3 (mkConst ``Bool.cond_self [lvl]) α c thenExpr
    return .visit { expr := thenExpr, proof? := some proof }
  else
    let iteThenIte : MetaM (Option Simp.Step) := do
      let_expr cond _ c2 tThenExpr tElseExpr := thenExpr | return none
      if c != c2 then return none
      let expr := mkApp4 (mkConst ``cond [lvl]) α c tThenExpr elseExpr
      let proof :=
        mkApp5 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.ite_then_ite [lvl])
          α
          c
          tThenExpr
          tElseExpr
          elseExpr
      return some <| .visit { expr, proof? := some proof }

    let iteElseIte : MetaM (Option Simp.Step) := do
      let_expr cond _ c2 eThenExpr eElseExpr := elseExpr | return none
      if c != c2 then return none
      let expr := mkApp4 (mkConst ``cond [lvl]) α c thenExpr eElseExpr
      let proof :=
        mkApp5 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.ite_else_ite [lvl])
          α
          c
          thenExpr
          eThenExpr
          eElseExpr
      return some <| .visit { expr, proof? := some proof }

    let iteThenIte' : MetaM (Option Simp.Step) := do
      let_expr cond _ c2 tThenExpr tElseExpr := thenExpr | return none
      if tThenExpr != elseExpr then return none
      let expr := mkApp4 (mkConst ``cond [lvl]) α (Bool.mkAnd c (Bool.mkNot c2)) tElseExpr elseExpr
      let proof :=
        mkApp5 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.ite_then_ite' [lvl])
          α
          c
          c2
          tThenExpr
          tElseExpr
      return some <| .visit { expr, proof? := some proof }

    let iteElseIte' : MetaM (Option Simp.Step) := do
      let_expr cond _ c2 eThenExpr eElseExpr := elseExpr | return none
      if thenExpr != eThenExpr then return none
      let expr :=
        mkApp4 (mkConst ``cond [lvl])
          α
          (Bool.mkAnd (Bool.mkNot c) (Bool.mkNot c2))
          eElseExpr
          thenExpr
      let proof :=
        mkApp5 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.ite_else_ite' [lvl])
          α
          c
          c2
          thenExpr
          eElseExpr
      return some <| .visit { expr, proof? := some proof }

    let iteThenIte'' : MetaM (Option Simp.Step) := do
      let_expr cond _ c2 tThenExpr tElseExpr := thenExpr | return none
      if tElseExpr != elseExpr then return none
      let expr := mkApp4 (mkConst ``cond [lvl]) α (Bool.mkAnd c c2) tThenExpr elseExpr
      let proof :=
        mkApp5 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.ite_then_ite'' [lvl])
          α
          c
          c2
          tElseExpr
          tThenExpr
      return some <| .visit { expr, proof? := some proof }

    let iteElseIte'' : MetaM (Option Simp.Step) := do
      let_expr cond _ c2 eThenExpr eElseExpr := elseExpr | return none
      if thenExpr != eElseExpr then return none
      let expr :=
        mkApp4 (mkConst ``cond [lvl])
          α
          (Bool.mkAnd (Bool.mkNot c) c2)
          eThenExpr
          thenExpr
      let proof :=
        mkApp5 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.ite_else_ite'' [lvl])
          α
          c
          c2
          thenExpr
          eThenExpr
      return some <| .visit { expr, proof? := some proof }

    if let some step ← iteThenIte then return step
    if let some step ← iteElseIte then return step
    if let some step ← iteThenIte' then return step
    if let some step ← iteElseIte' then return step
    if let some step ← iteThenIte'' then return step
    if let some step ← iteElseIte'' then return step
    return .continue

end SimpleUnifiers

builtin_simproc ↓ [bv_normalize] reduceCond (cond _ _ _) := fun e => do
  let_expr f@cond α c tb eb := e | return .continue
  let r ← Simp.simp c
  if r.expr.cleanupAnnotations.isConstOf ``Bool.true then
    let pr := mkApp (mkApp4 (mkConst ``Bool.cond_pos f.constLevels!) α c tb eb) (← r.getProof)
    return .visit { expr := tb, proof? := pr }
  else if r.expr.cleanupAnnotations.isConstOf ``Bool.false then
    let pr := mkApp (mkApp4 (mkConst ``Bool.cond_neg f.constLevels!) α c tb eb) (← r.getProof)
    return .visit { expr := eb, proof? := pr }
  else
    return .continue

builtin_simproc [bv_normalize] eqToBEq (((_ : Bool) = (_ : Bool))) := fun e => do
  let_expr Eq _ lhs rhs := e | return .continue
  match_expr rhs with
  | Bool.true => return .continue
  | _ =>
    let beqApp ← mkAppM ``BEq.beq #[lhs, rhs]
    let new := mkApp3 (mkConst ``Eq [1]) (mkConst ``Bool) beqApp (mkConst ``Bool.true)
    let proof := mkApp2 (mkConst ``Bool.eq_to_beq) lhs rhs
    return .done { expr := new, proof? := some proof }

builtin_simproc [bv_normalize] andOnes ((_ : BitVec _) &&& (BitVec.ofNat _ _)) := fun e => do
  let_expr HAnd.hAnd _ _ _ _ lhs rhs := e | return .continue
  let some ⟨w, rhsValue⟩ ← getBitVecValue? rhs | return .continue
  if rhsValue == -1#w then
    let proof := mkApp2 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.and_ones) (toExpr w) lhs
    return .visit { expr := lhs, proof? := some proof }
  else
    return .continue

builtin_simproc [bv_normalize] onesAnd ((BitVec.ofNat _ _) &&& (_ : BitVec _)) := fun e => do
  let_expr HAnd.hAnd _ _ _ _ lhs rhs := e | return .continue
  let some ⟨w, lhsValue⟩ ← getBitVecValue? lhs | return .continue
  if lhsValue == -1#w then
    let proof := mkApp2 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.ones_and) (toExpr w) rhs
    return .visit { expr := rhs, proof? := some proof }
  else
    return .continue

-- A specialised version of BitVec.neg_eq_not_add so it doesn't trigger on -constant
builtin_simproc [bv_normalize] neg_eq_not_add (-(_ : BitVec _)) := fun e => do
  let_expr Neg.neg typ _ val := e | return .continue
  let_expr BitVec wExpr := typ | return .continue
  let some w ← getNatValue? wExpr | return .continue
  match ← getBitVecValue? val with
  | some _ => return .continue
  | none =>
    let proof := mkApp2 (mkConst ``BitVec.neg_eq_not_add) (toExpr w) val
    let expr := BitVec.mkAdd (BitVec.mkComplement val wExpr) (toExpr 1#w) wExpr
    return .visit { expr := expr, proof? := some proof }

/-- Return a number `k` such that `2^k = n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d33f429f7a7d01b1bddef28ad6146ea2e3018c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
