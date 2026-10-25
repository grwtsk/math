# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WPApp.Variant5e2cb994c7a0b506946d3abe5030abfe4f78caf7ac7e33779548feb7c08c0fa0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `353e7f14976e883af4411b2199b9ed76048587ce` · SHA-256 `5e2cb994c7a0b506946d3abe5030abfe4f78caf7ac7e33779548feb7c08c0fa0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf, Vladimir Gladshtein
-/
module

prelude
public import Lean.Meta.Sym.SymM
import Std.Internal.Do.WP.Basic

/-!
`WPApp`: metadata for a goal whose right-hand side is a `wp` application, with `isWPApp?` to
recognize one.
-/

open Lean Meta Sym

namespace Lean.Elab.Tactic.Do.Internal

/--
Common metadata for a goal whose right-hand side is a weakest-precondition application
`pre ⊑ wp Prog Value Pred EPred instAL instEAL instWP prog post epost s₁ ... sₙ`.
-/
public structure VCGen.WPApp where
  /-- The `wp` function head, separated from its explicit core arguments. -/
  head : Expr
  /-- The ordered core arguments of the `wp` application:
  `#[Prog, Value, Pred, EPred, instAL, instEAL, instWP, prog, post, epost]`. -/
  args : Array Expr
  /-- Extra arguments applied after `wp … prog post epost`, usually concrete state arguments. -/
  excessArgs : Array Expr

namespace VCGen.WPApp

/-- Program type argument of `wp` (e.g. `m α` or a non-monadic program type). -/
public def Prog (info : WPApp) : Expr := info.args[0]!
/-- The monad of an `m α`-shaped program type, obtained by dropping the value type `α`. For a
non-monadic program type the type itself is returned. -/
public def M (info : WPApp) : Expr :=
  if info.args[0]!.isApp then info.args[0]!.appFn! else info.args[0]!
/-- Result/value type argument of `wp`. -/
public def Value (info : WPApp) : Expr := info.args[1]!
/-- Predicate/lattice type argument of `wp`. -/
public def Pred (info : WPApp) : Expr := info.args[2]!
/-- Exception postcondition type argument of `wp`. -/
public def EPred (info : WPApp) : Expr := info.args[3]!
/-- `WP` instance argument of `wp`. -/
public def instWP (info : WPApp) : Expr := info.args[6]!
/-- Program expression classified by VCGen. -/
public def prog (info : WPApp) : Expr := info.args[7]!
/-- Postcondition argument of `wp`. -/
public def post (info : WPApp) : Expr := info.args[8]!

end VCGen.WPApp

/-- The `wp` metadata of `rhs`, or `none` when `rhs` is not a `wp` application. -/
public def VCGen.isWPApp? (rhs : Expr) : Option VCGen.WPApp :=
  rhs.withApp fun head args =>
    if head.isConstOf ``Std.Internal.Do.wp && args.size ≥ 10 then
      some { head, args := args.take 10, excessArgs := args.drop 10 }
    else
      none

end Lean.Elab.Tactic.Do.Internal
```
