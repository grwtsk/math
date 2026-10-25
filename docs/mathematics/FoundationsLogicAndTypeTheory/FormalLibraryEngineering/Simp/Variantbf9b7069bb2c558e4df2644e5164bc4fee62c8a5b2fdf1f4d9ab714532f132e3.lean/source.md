# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variantbf9b7069bb2c558e4df2644e5164bc4fee62c8a5b2fdf1f4d9ab714532f132e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29de1d7a54042e90fbe783d558549fcef23cec21` · SHA-256 `bf9b7069bb2c558e4df2644e5164bc4fee62c8a5b2fdf1f4d9ab714532f132e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Gabriel Ebner, Floris van Doorn
-/
module

public import Lean.Elab.Tactic.Simp
public import Batteries.Tactic.OpenPrivate
import all Lean.Elab.Tactic.Simp  -- for accessing `mkDischargeWrapper`


public section

/-!
# Helper functions for using the simplifier.

[TODO] Reunification of `mkSimpContext'` with core.
-/

namespace Lean

namespace Meta.Simp
open Elab.Tactic

/-- Flip the proof in a `Simp.Result`. -/
def mkEqSymm (e : Expr) (r : Simp.Result) : MetaM Simp.Result :=
  ({ expr := e, proof? := · }) <$>
  match r.proof? with
  | none => pure none
  | some p => some <$> Meta.mkEqSymm p

/-- Construct the `Expr` `cast h e`, from a `Simp.Result` with proof `h`. -/
def mkCast (r : Simp.Result) (e : Expr) : MetaM Expr := do
  mkAppM ``cast #[← r.getProof, e]

/-- Construct a `Simp.DischargeWrapper` from the `Syntax` for a `simp` discharger. -/
nonrec def mkDischargeWrapper := mkDischargeWrapper

-- copied from core
/--
If `ctx == false`, the config argument is assumed to have type `Meta.Simp.Config`,
and `Meta.Simp.ConfigCtx` otherwise.
If `ctx == false`, the `discharge` option must be none
-/
def mkSimpContext' (simpTheorems : SimpTheorems) (stx : Syntax) (eraseLocal : Bool)
    (kind := SimpKind.simp) (ctx := false) (ignoreStarArg : Bool := false) :
    TacticM MkSimpContextResult := do
  if ctx && !stx[2].isNone then
    if kind == SimpKind.simpAll then
      throwError "'simp_all' tactic does not support 'discharger' option"
    if kind == SimpKind.dsimp then
      throwError "'dsimp' tactic does not support 'discharger' option"
  let dischargeWrapper ← mkDischargeWrapper stx[2]
  let simpOnly := !stx[3].isNone
  let simpTheorems ← if simpOnly then
    simpOnlyBuiltins.foldlM (·.addConst ·) {}
  else
    pure simpTheorems
  let simprocs ← if simpOnly then pure {} else Simp.getSimprocs
  let congrTheorems ← Meta.getSimpCongrTheorems
  let { config, userConfig } ← elabSimpConfig stx[1] (kind := kind)
  let ctx ← Simp.mkContext config #[simpTheorems] congrTheorems userConfig
  let r ← elabSimpArgs stx[4] (simprocs := #[simprocs]) ctx eraseLocal kind
    (ignoreStarArg := ignoreStarArg)
  return { r with dischargeWrapper }


end Simp

end Lean.Meta
```
