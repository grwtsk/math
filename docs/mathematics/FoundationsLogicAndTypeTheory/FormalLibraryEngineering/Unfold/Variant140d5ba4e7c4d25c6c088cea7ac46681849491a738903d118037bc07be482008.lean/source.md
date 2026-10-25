# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bba5cf406714df3d5c314943bdf510c2e5b5477` · SHA-256 `140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Tactic.Unfold
public import Lean.Elab.Tactic.Conv.Simp

public section

namespace Lean.Elab.Tactic.Conv
open Meta

@[builtin_tactic Lean.Parser.Tactic.Conv.unfold] def evalUnfold : Tactic := fun stx => withMainContext do
  for declNameId in stx[1].getArgs do
    withRef declNameId do
      let e ← withoutRecover <| elabTermForApply declNameId (mayPostpone := false)
      match e with
      | .const declName _ =>
        applySimpResult (← unfold (← getLhs) declName)
      | .fvar declFVarId =>
        unless ← declFVarId.isLetVar do
          throwError "conv tactic `unfold` failed, local variable `{Expr.fvar declFVarId}` has no definition"
        let lhs ← instantiateMVars (← getLhs)
        changeLhs (← Meta.zetaDeltaFVars lhs #[declFVarId])
      | _ => throwError "conv tactic `unfold` failed, expression {e} is not a global or local constant"

end Lean.Elab.Tactic.Conv
```
