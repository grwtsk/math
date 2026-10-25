# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantaa74a96f9bf575cc0680d769d2e20b298e0c25b9eebea436e2240848a7de2df5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6cd0a3a1576e5f9c0ce44bff0416c7ad1ccd52af` · SHA-256 `f439a1fcaf57273c1e45fa09fb1c0a7a6599538b1e04ce193013d4ce44fc9f92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.LinearM
import Lean.Meta.Tactic.Grind.Arith.Util
import Init.Data.Int.Gcd

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28

public section
namespace Lean.Meta.Grind.Arith.Linear

open Lean

def getZero : LinearM Expr :=
  return (← getStruct).zero

def getOne : LinearM Expr := do
  let some one := (← getStruct).one?
    | throwNotRing
  return one

def isCommRing : LinearM Bool :=
  return (← getStruct).ringId?.isSome

def isOrderedCommRing : LinearM Bool := do
  return (← isCommRing) && (← getStruct).orderedRingInst?.isSome

def isLinearOrder : LinearM Bool :=
  return (← getStruct).isLinearInst?.isSome

def hasNoNatZeroDivisors : LinearM Bool :=
  return (← getStruct).noNatDivInst?.isSome

def getTermStructId? (e : Expr) : GoalM (Option Nat) := do
  return (← get').exprToStructId.find? { expr := e }

def setTermStructId (e : Expr) : LinearM Unit := do
  let structId ← getStructId
  if let some structId' ← getTermStructId? e then
    unless structId' == structId do
      reportIssue! "expression in two different structure in linarith module{indentExpr e}"
    return ()
  modify' fun s => { s with
    exprToStructId := s.exprToStructId.insert { expr := e } structId
    exprToStructIdEntries := s.exprToStructIdEntries.push (e, structId)
  }

def getNoNatDivInst : LinearM Expr := do
  let some inst := (← getStruct).noNatDivInst?
    | throwError "`grind linarith` internal error, structure does not implement `NoNatZeroDivisors`"
  return inst

def getLEInst : LinearM Expr := do
  let some inst := (← getStruct).leInst?
    | throwError "`grind linarith` internal error, structure does not support LE"
  return inst

def getLTInst : LinearM Expr := do
  let some inst := (← getStruct).ltInst?
    | throwError "`grind linarith` internal error, structure does not support LT"
  return inst

def getLawfulOrderLTInst : LinearM Expr := do
  let some inst := (← getStruct).lawfulOrderLTInst?
    | throwError "`grind linarith` internal error, structure does not have a lawful LT instance"
  return inst

def getIsPreorderInst : LinearM Expr := do
  let some inst := (← getStruct).isPreorderInst?
    | throwError "`grind linarith` internal error, structure is not a preorder"
  return inst

def getOrderedAddInst : LinearM Expr := do
  let some inst := (← getStruct).orderedAddInst?
    | throwError "`grind linarith` internal error, structure is not an ordered module"
  return inst

def isOrderedAdd : LinearM Bool :=
  return (← getStruct).orderedAddInst?.isSome

def getLtFn [Monad m] [MonadError m] [MonadGetStruct m] : m Expr := do
  let some lt := (← getStruct).ltFn?
    | throwError "`grind linarith` internal error, structure is not an ordered module"
  return lt

def getLeFn [Monad m] [MonadError m] [MonadGetStruct m] : m Expr := do
  let some le := (← getStruct).leFn?
    | throwError "`grind linarith` internal error, structure is not an ordered int module"
  return le

def getIsLinearOrderInst : LinearM Expr := do
  let some inst := (← getStruct).isLinearInst?
    | throwError "`grind linarith` internal error, structure is not a linear order"
  return inst

def getRingInst : LinearM Expr := do
  let some inst := (← getStruct).ringInst?
    | throwError "`grind linarith` internal error, structure is not a ring"
  return inst

def getCommRingInst : LinearM Expr := do
  let some inst := (← getStruct).commRingInst?
    | throwError "`grind linarith` internal error, structure is not a commutative ring"
  return inst

def getOrderedRingInst : LinearM Expr := do
  let some inst := (← getStruct).orderedRingInst?
    | throwError "`grind linarith` internal error, structure is not an ordered ring"
  return inst

/--
Tries to evaluate the polynomial `p` using the partial model/assignment built so far.
The result is `none` if the polynomial contains variables that have not been assigned.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.eval? (p : Poly) : LinearM (Option Rat) := do
  let a := (← getStruct).assignment
  let rec go (v : Rat) : Poly → Option Rat
    | .nil => some v
    | .add k x p =>
      if _ : x < a.size then
        go (v + k*a[x]) p
      else
        none
  return go 0 p
/--
Returns `.true` if `c` is satisfied by the current partial model,
`.undef` if `c` contains unassigned variables, and `.false` otherwise.
-/
def IneqCnstr.satisfied (c : IneqCnstr) : LinearM LBool := do
  let some v ← c.p.eval? | return .undef
  if c.strict then
    return decide (v < 0) |>.toLBool
  else
    return decide (v <= 0) |>.toLBool

def DiseqCnstr.satisfied (c : DiseqCnstr) : LinearM LBool := do
  let some v ← c.p.eval? | return .undef
  return decide (v != 0) |>.toLBool

/-- Resets the assignment of any variable bigger or equal to `x`. -/
def resetAssignmentFrom (x : Var) : LinearM Unit := do
  modifyStruct fun s => { s with assignment := shrink s.assignment x }

def getVar (x : Var) : LinearM Expr :=
  return (← getStruct).vars[x]!

/-- Returns `true` if the linarith state is inconsistent. -/
def inconsistent : LinearM Bool := do
  if (← isInconsistent) then return true
  return (← getStruct).conflict?.isSome

/-- Returns `true` if `x` has been eliminated using an equality constraint. -/
def eliminated (x : Var) : LinearM Bool :=
  return (← getStruct).elimEqs[x]!.isSome

/-- Returns occurrences of `x`. -/
def getOccursOf (x : Var) : LinearM VarSet :=
  return (← getStruct).occurs[x]!

/--
Adds `y` as an occurrence of `x`.
That is, `x` occurs in `lowers[y]`, `uppers[y]`, or `diseqs[y]`.
-/
def addOcc (x : Var) (y : Var) : LinearM Unit := do
  unless (← getOccursOf x).contains y do
    modifyStruct fun s => { s with occurs := s.occurs.modify x fun ys => ys.insert y }

/--
Given `p` a polynomial being inserted into `lowers`, `uppers`, or `diseqs`,
get its leading variable `y`, and adds `y` as an occurrence for the remaining variables in `p`.
-/
partial def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.updateOccs (p : Poly) : LinearM Unit := do
  let .add _ y p := p | throwError "`grind linarith` internal error, unexpected constant polynomial"
  let rec go (p : Poly) : LinearM Unit := do
    let .add _ x p := p | return ()
    addOcc x y; go p
  go p

/--
Given a polynomial `p`, returns `some (x, k, c)` if `p` contains the monomial `k*x`,
and `x` has been eliminated using the equality `c`.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.findVarToSubst (p : Poly) : LinearM (Option (Int × Var × EqCnstr)) := do
  match p with
  | .nil => return none
  | .add k x p =>
    if let some c := (← getStruct).elimEqs[x]! then
      return some (k, x, c)
    else
      findVarToSubst p

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.gcdCoeffsAux : Poly → Nat → Nat
  | .nil, k => k
  | .add k' _ p, k => gcdCoeffsAux p (Int.gcd k' k)

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.gcdCoeffs (p : Poly) : Nat :=
  match p with
  | .add k _ p => p.gcdCoeffsAux k.natAbs
  | .nil => 1

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.div (p : Poly) (k : Int) : Poly :=
  match p with
  | .add a x p => .add (a / k) x (p.div k)
  | .nil => .nil

/--
Selects the variable in the given linear polynomial whose coefficient has the smallest absolute value.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetZero.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.Lean.Grind.Linarith.Poly.pickVarToElim? (p : Poly) : Option (Int × Var) :=
  match p with
  | .nil => none
  | .add k x p => go k x p
where
  go (k : Int) (x : Var) (p : Poly) : Int × Var :=
    if k == 1 || k == -1 then
      (k, x)
    else match p with
      | .nil => (k, x)
      | .add k' x' p => if k'.natAbs < k.natAbs then go k' x' p else go k x p

end Lean.Meta.Grind.Arith.Linear
```
