# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestExtern.Variantd9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1956298e4646a7b2e19a7840c5897db8054878cf` · SHA-256 `d9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public meta import Lean.Meta.Tactic.Unfold
public meta import Lean.Meta.Eval
public meta import Lean.Compiler.ImplementedByAttr
public meta import Lean.Elab.Command
public import Init.Notation
import Lean.Exception
public meta import Lean.Compiler.ExternAttr

public section

namespace Lean

open Lean Elab Meta Command Term Compiler

syntax (name := testExternCmd) "test_extern " term : command

@[command_elab testExternCmd] meta unsafe def elabTestExtern : CommandElab
  | `(test_extern $t:term) => liftTermElabM do
    let t ← elabTermAndSynthesize t none
    match t.getAppFn with
    | .const f _ =>
      let env ← getEnv
      if isExtern env f || (getImplementedBy? env f).isSome then
        let t' := (← unfold t f).expr
        let r := mkApp (.const ``reduceBool []) (← mkDecide (← mkEq t t'))
        if ! (← evalExpr Bool (.const ``Bool []) r) then
          throwError
            ("native implementation did not agree with reference implementation!\n" ++
            m!"Compare the outputs of:\n#eval {t}\n and\n#eval {t'}")
      else
        throwError "test_extern: {f} does not have an @[extern] attribute or @[implemented_by] attribute"
    | _ => throwError "test_extern: expects a function application"
  | _ => throwUnsupportedSyntax

end Lean
```
