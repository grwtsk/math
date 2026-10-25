# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variant7f675d18dff7de34bb9eb78d160d02e2d965a0976371c3961ced37a33f38b636

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09f54c26ab361bb5e666e97cd16cb4c293c96d10` · SHA-256 `7f675d18dff7de34bb9eb78d160d02e2d965a0976371c3961ced37a33f38b636`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.LinearM
import Lean.Meta.Tactic.Grind.Arith.Linear.Util
namespace Lean.Meta.Grind.Arith.Linear
/--
Returns `true` if the variables in the given polynomial are sorted
in decreasing order.
-/
def _root_.Lean.Grind.Linarith.Poly.isSorted (p : Poly) : Bool :=
  go none p
where
  go : Option Var → Poly → Bool
  | _,      .nil       => true
  | none,   .add _ y p => go (some y) p
  | some x, .add _ y p => x > y && go (some y) p

/-- Returns `true` if all coefficients are not `0`. -/
def _root_.Lean.Grind.Linarith.Poly.checkCoeffs : Poly → Bool
  | .nil => true
  | .add k _ p => k != 0 && checkCoeffs p

def _root_.Lean.Grind.Linarith.Poly.checkOccs (p : Poly) : LinearM Unit := do
  let .add _ y p := p | return ()
  let rec go (p : Poly) : LinearM Unit := do
    let .add _ x p := p | return ()
    assert! (← getOccursOf x).contains y
    go p
  go p

def _root_.Lean.Grind.Linarith.Poly.checkNoElimVars (p : Poly) : LinearM Unit := do
  let .add _ x p := p | return ()
  assert! !(← eliminated x)
  checkNoElimVars p

def _root_.Lean.Grind.Linarith.Poly.checkCnstrOf (p : Poly) (x : Var) : LinearM Unit := do
  assert! p.isSorted
  assert! p.checkCoeffs
  unless (← inconsistent) do
    p.checkNoElimVars
    p.checkOccs
    pure ()
  let .add _ y _ := p | unreachable!
  assert! x == y

def checkLeCnstrs (css : PArray (PArray IneqCnstr)) (isLower : Bool) : LinearM Unit := do
  let mut x := 0
  for cs in css do
    for c in cs do
      c.p.checkCnstrOf x
      let .add a _ _ := c.p | unreachable!
      assert! isLower == (a < 0)
    x := x + 1
  return ()

def checkLowers : LinearM Unit := do
  let s ← getStruct
  assert! s.lowers.size == s.vars.size
  checkLeCnstrs s.lowers (isLower := true)

def checkUppers : LinearM Unit := do
  let s ← getStruct
  assert! s.uppers.size == s.vars.size
  checkLeCnstrs s.uppers (isLower := false)

def checkDiseqCnstrs : LinearM Unit := do
  let s ← getStruct
  assert! s.vars.size == s.diseqs.size
  let mut x := 0
  for cs in s.diseqs do
    for c in cs do
      c.p.checkCnstrOf x
    x := x + 1
  return ()

def checkVars : LinearM Unit := do
  let s ← getStruct
  let mut num := 0
  for ({ expr }, var) in s.varMap do
    if h : var < s.vars.size then
      let expr' := s.vars[var]
      assert! isSameExpr expr expr'
    else
      unreachable!
    num := num + 1
  assert! s.vars.size == num

def checkStructInvs : LinearM Unit := do
  checkVars
  checkLowers
  checkUppers
  checkDiseqCnstrs

public def checkInvariants : GoalM Unit := do
  if (← isDebugEnabled) then
  for structId in *...(← get').structs.size do
    LinearM.run structId do
      assert! (← getStructId) == structId
      checkStructInvs

end Lean.Meta.Grind.Arith.Linear
```
