# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferParam.Variante268c287873040f043d76b69da3cfa7e22314ed2353aaf4816c4eef10994a161

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62341aeba41573075f7146436ab738f83afbb4cc` · SHA-256 `e268c287873040f043d76b69da3cfa7e22314ed2353aaf4816c4eef10994a161`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Mario Carneiro
-/
import Lean
import Mathlib.Lean.Expr.Basic

/-!
# Infer an optional parameter

In this file we define a tactic `infer_param` that closes a goal with default value by using
this default value.
-/

namespace Mathlib.Tactic

open Lean Elab Tactic Meta

/-- Close a goal of the form `optParam α a` or `autoParam α stx` by using `a`. -/
elab (name := inferOptParam) "infer_param" : tactic => do
  let tgt ← getMainTarget
  if let some val := tgt.getOptParamDefault? then
    liftMetaTactic fun goal => do goal.assign val; pure []
  else if let some (.const tacticDecl ..) := tgt.getAutoParamTactic? then
    match evalSyntaxConstant (← getEnv) (← getOptions) tacticDecl with
    | .error err => throwError err
    | Except.ok tacticSyntax =>
      liftMetaTactic1 fun goal => do
        goal.replaceTargetDefEq (← goal.getType).consumeTypeAnnotations
      evalTactic tacticSyntax
  else throwError
    "`infer_param` only solves goals of the form `optParam _ _` or `autoParam _ _`, not {tgt}"
```
