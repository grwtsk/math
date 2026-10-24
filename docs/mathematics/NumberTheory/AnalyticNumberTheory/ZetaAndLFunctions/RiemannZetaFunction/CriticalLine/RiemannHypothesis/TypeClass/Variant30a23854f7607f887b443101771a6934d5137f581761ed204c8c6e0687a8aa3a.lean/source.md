# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TypeClass.Variant30a23854f7607f887b443101771a6934d5137f581761ed204c8c6e0687a8aa3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7cfecdb228925ab926439c905dbcebd9644c4c1` · SHA-256 `30a23854f7607f887b443101771a6934d5137f581761ed204c8c6e0687a8aa3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

public meta import Lean.Meta.Instances
public meta import Lean.Util.CollectFVars
public meta import Batteries.Tactic.Lint.Basic

public meta section

namespace Batteries.Tactic.Lint
open Lean Meta

/--
Lints for instances with arguments that cannot be filled in, like
```
instance {α β : Type} [Group α] : Mul α where ...
```
-/
@[env_linter] def impossibleInstance : Linter where
  noErrorsFound := "No instance has arguments that are impossible to infer"
  errorsFound := "SOME INSTANCES HAVE ARGUMENTS THAT ARE IMPOSSIBLE TO INFER
These are arguments that are not instance-implicit and do not appear in
another instance-implicit argument or the return type."
  test declName := do
    unless ← isInstance declName do return none
    forallTelescopeReducing (← inferType (← mkConstWithLevelParams declName)) fun args ty => do
    let argTys ← args.mapM inferType
    -- One `collectFVars` pass per type rather than `containsFVar` per argument pair,
    -- for performance.
    let tyFVars := (collectFVars {} ty).fvarSet
    let argTyFVars := argTys.map fun argTy => (collectFVars {} argTy).fvarSet
    let impossibleArgs ← args.zipIdx.filterMapM fun (arg, i) => do
      let fv := arg.fvarId!
      if (← fv.getDecl).binderInfo.isInstImplicit then return none
      if tyFVars.contains fv then return none
      if argTyFVars[i+1:].any (·.contains fv) then return none
      return some m!"argument {i+1} {arg} : {← inferType arg}"
    if impossibleArgs.isEmpty then return none
    addMessageContextFull <| .joinSep impossibleArgs.toList ", "

/--
A linter for checking if any declaration whose type is not a class is marked as an instance.
-/
@[env_linter] def nonClassInstance : Linter where
  noErrorsFound := "No instances of non-classes"
  errorsFound := "INSTANCES OF NON-CLASSES"
  test declName := do
    if !(← isInstance declName) then return none
    let info ← getConstInfo declName
    if !(← isClass? info.type).isSome then return "should not be an instance"
    return none
````
