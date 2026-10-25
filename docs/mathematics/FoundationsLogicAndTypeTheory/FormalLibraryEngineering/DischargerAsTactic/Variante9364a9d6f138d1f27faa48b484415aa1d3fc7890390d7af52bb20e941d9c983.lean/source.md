# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DischargerAsTactic.Variante9364a9d6f138d1f27faa48b484415aa1d3fc7890390d7af52bb20e941d9c983

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b2435e79f86edc478115a9e02f030f7dbf3b57e` · SHA-256 `e9364a9d6f138d1f27faa48b484415aa1d3fc7890390d7af52bb20e941d9c983`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
module

public import Mathlib.Init
public import Batteries.Tactic.Exact
public import Lean.Meta.Tactic.Simp

/-!
# Dischargers for `simp` to tactics

This file defines a wrapper for `Simp.Discharger`s as regular tactics, that allows them to be
used via the tactic frontend of `simp` via `simp (discharger := wrapSimpDischarger my_discharger)`.
-/

public meta section

open Lean Meta Elab Tactic

/-- Wrap a simp discharger (a function `Expr → SimpM (Option Expr)`) as a tactic,
so that it can be passed as an argument to `simp (discharger := foo)`.
This is inverse to `mkDischargeWrapper`. -/
def wrapSimpDischarger (dis : Simp.Discharge) : TacticM Unit := do
  let eS : Lean.Meta.Simp.State := {}
  let eC : Lean.Meta.Simp.Context ← Simp.mkContext {}
  let eM : Lean.Meta.Simp.Methods := {}
  let (some a, _) ← liftM <| StateRefT'.run (ReaderT.run (ReaderT.run (dis <| ← getMainTarget)
    eM.toMethodsRef) eC) eS | failure
  (← getMainGoal).assignIfDefEq a
```
