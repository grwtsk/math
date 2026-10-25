# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftRight.Variant3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d4c5f34f20e0a7249ea13953e545fac97dcde95` · SHA-256 `3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Siddhartha Gadgil. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Siddhartha Gadgil
-/
import Lean.Elab.Tactic.Basic
import Lean.Meta.Tactic.Apply

open Lean Meta Elab Tactic

namespace Std.Tactic.NthConstructor

/--
Apply the `n`-th constructor of the target type,
checking that it is an inductive type,
and that there are the expected number of constructors.
-/
def nthConstructor (name : Name) (idx : Nat) (max : Option Nat) (goal : MVarId) :
    MetaM (List MVarId) := do
  goal.withContext do
    goal.checkNotAssigned name
    matchConstInduct (← goal.getType').getAppFn
      (fun _ => throwTacticEx `constructor goal "target is not an inductive datatype")
      fun ival us => do
        if let some max := max then unless ival.ctors.length == max do
          throwTacticEx `constructor goal
            s!"{name} tactic works for inductive types with exactly {max} constructors"
        goal.apply <| mkConst ival.ctors[idx]! us

end NthConstructor

open NthConstructor

/--
Apply the first constructor,
in the case that the goal is an inductive type with exactly two constructors.
```
example : True ∨ False := by
  left
  trivial
```
-/
elab "left" : tactic => liftMetaTactic (nthConstructor `left 0 (some 2))

/--
Apply the second constructor,
in the case that the goal is an inductive type with exactly two constructors.
```
example {p q : Prop} (h : q) : p ∨ q := by
  right
  exact h
```
-/
elab "right" : tactic => liftMetaTactic (nthConstructor `right 1 (some 2))
````
