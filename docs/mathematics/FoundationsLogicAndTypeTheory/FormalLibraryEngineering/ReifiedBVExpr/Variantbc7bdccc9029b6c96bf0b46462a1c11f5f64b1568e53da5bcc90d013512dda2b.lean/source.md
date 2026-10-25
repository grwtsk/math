# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReifiedBVExpr.Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13f22ef35a654bc476ee2b1b57a79c9bd7763000` · SHA-256 `bc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module
prelude
public import Lean.Meta.Tactic.BVDecide.Reflect.Basic
public import Std.Tactic.BVDecide.Reflect
import Lean.Meta.LitValues

/-!
Provides the logic for reifying `BitVec` expressions.
-/

namespace Lean.Meta.Tactic.BVDecide

open Std.Tactic.BVDecide
open Lean.Meta

namespace ReifiedBVExpr

/--
Build `BVExpr.eval atoms expr` where `atoms` is the assignment stored in the monad.
-/
public def mkEvalExpr (w : Nat) (expr : Expr) : M Expr := do
  return mkApp3 (mkConst ``BVExpr.eval) (toExpr w) (← M.atomsAssignment) expr

public def mkBVRefl (w : Nat) (expr : Expr) : Expr :=
  mkApp2
   (mkConst ``Eq.refl [1])
   (mkApp (mkConst ``BitVec) (toExpr w))
   expr

/--
Register `e` as an atom of `width` that might potentially be `synthetic`.
-/
public def mkAtom (e : Expr) (width : Nat) (synthetic : Bool) : M ReifiedBVExpr := do
  let ident ← M.lookup e width synthetic
  let expr := mkApp2 (mkConst ``BVExpr.var) (toExpr width) (toExpr ident)
  -- This is safe because this proof always holds definitionally.
  let proof := pure none
  return ⟨width, .var ident, expr, proof, expr⟩

/--
Parse `expr` as a `Nat` or `BitVec` constant depending on `ty`.
-/
public def getNatOrBvValue? (ty : Expr) (expr : Expr) : M (Option Nat) := do
  match_expr ty with
  | Nat =>
    getNatValue? expr
  | BitVec _ =>
    let some ⟨_, distance⟩ ← getBitVecValue? expr | return none
    return some distance.toNat
  | _ => return none

/--
Construct an uninterpreted `BitVec` atom from `x`, potentially `synthetic`.
-/
public def bitVecAtom (x : Expr) (synthetic : Bool) : M (Option ReifiedBVExpr) := do
  let t ← instantiateMVars (← whnfR (← inferType x))
  let_expr BitVec widthExpr := t | return none
  let some width ← getNatValue? widthExpr | return none
  let atom ← mkAtom x width synthetic
  return some atom

/--
Build a reified version of the constant `val`.
-/
public def mkBVConst (val : BitVec w) : M ReifiedBVExpr := do
  let bvExpr : BVExpr w := .const val
  let expr := mkApp2 (mkConst ``BVExpr.const) (toExpr w) (toExpr val)
  -- This is safe because this proof always holds definitionally.
  let proof := pure none
  return ⟨w, bvExpr, toExpr val, proof, expr⟩

end ReifiedBVExpr

end Lean.Meta.Tactic.BVDecide
```
