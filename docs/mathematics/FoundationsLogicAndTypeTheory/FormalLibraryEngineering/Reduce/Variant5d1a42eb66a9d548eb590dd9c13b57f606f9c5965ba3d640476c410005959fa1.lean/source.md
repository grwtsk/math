# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reduce.Variant5d1a42eb66a9d548eb590dd9c13b57f606f9c5965ba3d640476c410005959fa1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed23431e1f4a56913f496dfbd6ba6a3458ff26ae` · SHA-256 `5d1a42eb66a9d548eb590dd9c13b57f606f9c5965ba3d640476c410005959fa1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.DSimpM
import Lean.Meta.Sym.InstantiateS
import Lean.Meta.Sym.Util
import Lean.Meta.WHNF
import Lean.ProjFns
namespace Lean.Meta.Sym.DSimp

public def beta : DSimproc := fun e => do
  unless e.isApp do return .rfl
  let f := e.getAppFn
  if f.isHeadBetaTargetFn false then
    return .step (← betaRevS f e.getAppRevArgs)
  else
    return .rfl

public def zetaDelta (s : FVarIdSet) : DSimproc := fun e => do
  let .fvar fvarId := e | return .rfl
  unless s.contains fvarId do return .rfl
  let decl ← fvarId.getDecl
  let some value := decl.value? | return .rfl
  return .step value

public def zetaDeltaAll : DSimproc := fun e => do
  let .fvar fvarId := e | return .rfl
  let decl ← fvarId.getDecl
  let some value := decl.value? | return .rfl
  return .step value

public def zeta : DSimproc := fun e => do
  let .letE .. := e | return .rfl
  go e #[]
where
  go (e : Expr) (subst : Array Expr) : DSimpM Result := do
    match e with
    | .letE _ _ v b _ => go b (subst.push (← instantiateRevS v subst))
    | _ => return .step (← instantiateRevS e subst)

public def dsimpProj : DSimproc := fun e => do
  let f := e.getAppFn
  let .const declName _ := f | return .rfl
  let some _projInfo ← getProjectionFnInfo? declName | return .rfl
  let reduceProjCont? (e? : Option Expr) : DSimpM Result := do
    match e? with
    | none   => return .rfl
    | some e =>
      match (← reduceProj? e.getAppFn) with
      | some f => return .step (← shareCommon (mkAppN f e.getAppArgs))
      | none   => return .rfl
  -- TODO: special support for instances?
  reduceProjCont? (← unfoldDefinition? e)

public def dsimpMatch : DSimproc := fun e => do
  let some e' ← reduceRecMatcher? e | return .rfl
  -- Iota-reduction may expose kernel `Expr.proj` terms via struct-eta,
  -- which the structural simplifier cannot consume directly.
  let e'' ← Sym.foldProjs e'
  let e'' ← share e''
  return .step e''

end Lean.Meta.Sym.DSimp
```
