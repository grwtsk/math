# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateInj.Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcafb42b577594a283609578507fa50af4a8d915` · SHA-256 `23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Init.Grind.Propagator
import Init.Grind.Injective
import Lean.Meta.Tactic.Grind.PropagatorAttr
import Lean.Meta.Tactic.Grind.Simp
namespace Lean.Meta.Grind

def getInvFor? (f : Expr) (a : Expr) : GoalM (Option (Expr × Expr)) := do
  let some info := (← get).inj.fns.find? { expr := f } | return none
  if let some inv := info.inv? then
    return some inv
  let [u, _] := info.us | unreachable!
  let nonEmpty := mkApp2 (mkConst ``Nonempty.intro [u]) info.α a
  let inv := mkApp5 (mkConst ``Grind.leftInv info.us) info.α info.β f info.h nonEmpty
  let inv ← preprocessLight inv
  let args := inv.getAppArgs
  let heq := mkAppN (mkConst ``Grind.leftInv_eq info.us) args
  let inv? := some (inv, heq)
  let info := { info with inv? }
  modify fun s => { s with inj.fns := s.inj.fns.insert { expr := f } info }
  return inv?

/--
If `e` is an application of the form `f a` where `f` is an injective function
in `(← get).inj.fns`, asserts `f⁻¹ (f a) = a`
-/
public def mkInjEq (e : Expr) : GoalM Unit := do
  let .app f a := e | return ()
  let some (inv, heq) ← getInvFor? f a | return ()
  let invApp := mkApp inv e
  internalize invApp (← getGeneration e)
  trace[grind.inj.assert] "{invApp}, {a}"
  pushEq invApp a <| mkApp heq a

def initInjFn (us : List Level) (α β : Expr) (f : Expr) (h : Expr) : GoalM Unit := do
  modify fun s => { s with inj.fns := s.inj.fns.insert { expr := f } { us, α, β, h } }
  let hidx := f.toHeadIndex
  for e in (← get).appMap.findD hidx [] do
    if e.isApp && isSameExpr e.appFn! f then
      mkInjEq e

builtin_grind_propagator propagateInj ↓Function.Injective := fun e => do
  let_expr i@Function.Injective α β f := e | return ()
  if (← isEqTrue e) then
    let f' := f.eta
    let f ← if isSameExpr f f' then
      pure f
    else
      let f' ← preprocessLight f'
      internalize f' (← getGeneration e)
      pure f'
    initInjFn i.constLevels! α β f (mkOfEqTrueCore e (← mkEqTrueProof e))

end Lean.Meta.Grind
```
