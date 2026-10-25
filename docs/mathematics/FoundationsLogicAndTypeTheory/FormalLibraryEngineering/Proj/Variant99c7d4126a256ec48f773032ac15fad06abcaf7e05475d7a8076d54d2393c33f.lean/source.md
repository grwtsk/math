# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proj.Variant99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc4329f8cb9bb83ae6e252881fff85f0fff40aa9` · SHA-256 `99c7d4126a256ec48f773032ac15fad06abcaf7e05475d7a8076d54d2393c33f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
public section
namespace Lean.Meta.Grind

/--
If `parent` is a projection-application `proj_i c`,
check whether the root of the equivalence class containing `c` is a constructor-application `ctor ... a_i ...`.
If so, internalize the term `proj_i (ctor ... a_i ...)` and add the equality `proj_i (ctor ... a_i ...) = a_i`.
-/
def propagateProjEq (parent : Expr) : GoalM Unit := do
  let .const declName _ := parent.getAppFn | return ()
  let some info ← getProjectionFnInfo? declName | return ()
  unless info.numParams + 1 == parent.getAppNumArgs do return ()
  -- It is wasteful to add equation if `parent` is not the root of its congruence class
  unless (← isCongrRoot parent) do return ()
  let arg := parent.appArg!
  let ctorNode ← getRootENode arg
  let ctor := ctorNode.self
  unless ctor.isAppOf info.ctorName do return ()
  let parentNew ← if isSameExpr arg ctor then
    pure parent
  else
    let parentNew ← if ctorNode.heqProofs then
      /-
      When the equivalence class contains heterogeneous equalities,
      type of `arg` and `ctor` may not be definitionally equal.
      To ensure the projection application is type correct, we use
      the `ctor` parameters.
      -/
      let projFn := parent.getAppFn
      let params := ctor.getAppArgs[:info.numParams].toArray
      shareCommon (mkApp (mkAppN projFn params) ctor)
    else
      shareCommon (mkApp parent.appFn! ctor)
    internalize parentNew (← getGeneration parent)
    pure parentNew
  trace_goal[grind.debug.proj] "{parentNew}"
  let idx := info.numParams + info.i
  unless idx < ctor.getAppNumArgs do return ()
  let v := ctor.getArg! idx
  let h ← mkEqRefl v
  let h := mkExpectedPropHint h (← mkEq parentNew v)
  pushEq parentNew v h

end Lean.Meta.Grind
```
