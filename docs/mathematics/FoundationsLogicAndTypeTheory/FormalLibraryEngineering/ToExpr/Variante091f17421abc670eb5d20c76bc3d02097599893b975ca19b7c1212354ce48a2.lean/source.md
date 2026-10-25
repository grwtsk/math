# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variante091f17421abc670eb5d20c76bc3d02097599893b975ca19b7c1212354ce48a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72f4fd3b7ee87396b321ec30b18a4e9d89829431` · SHA-256 `e091f17421abc670eb5d20c76bc3d02097599893b975ca19b7c1212354ce48a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Util.WhatsNew

/-!
# `ToExpr` instances for Mathlib
-/

namespace Mathlib
open Lean

set_option autoImplicit true in
deriving instance ToExpr for ULift

universe u in
/-- Hand-written instance since `PUnit` is a `Sort` rather than a `Type`. -/
instance [ToLevel.{u}] : ToExpr PUnit.{u+1} where
  toExpr _ := mkConst ``PUnit.unit [toLevel.{u+1}]
  toTypeExpr := mkConst ``PUnit [toLevel.{u+1}]

deriving instance ToExpr for String.Pos
deriving instance ToExpr for Substring
deriving instance ToExpr for SourceInfo
deriving instance ToExpr for Syntax

open DataValue in
/-- Core of a hand-written `ToExpr` handler for `MData`.
Uses the `KVMap.set*` functions rather than going into the internals
of the `KVMap` data structure. -/
private def toExprMData (md : MData) : Expr := Id.run do
  let mut e := mkConst ``MData.empty
  for (k, v) in md do
    let k := toExpr k
    e := match v with
          | ofString v => mkApp3 (mkConst ``KVMap.setString) e k (mkStrLit v)
          | ofBool v   => mkApp3 (mkConst ``KVMap.setBool) e k (toExpr v)
          | ofName v   => mkApp3 (mkConst ``KVMap.setName) e k (toExpr v)
          | ofNat v    => mkApp3 (mkConst ``KVMap.setNat) e k (mkNatLit v)
          | ofInt v    => mkApp3 (mkConst ``KVMap.setInt) e k (toExpr v)
          | ofSyntax v => mkApp3 (mkConst ``KVMap.setSyntax) e k (toExpr v)
  return e

instance : ToExpr MData where
  toExpr := toExprMData
  toTypeExpr := mkConst ``MData

deriving instance ToExpr for MVarId
deriving instance ToExpr for LevelMVarId
deriving instance ToExpr for Level
deriving instance ToExpr for BinderInfo
deriving instance ToExpr for Expr

end Mathlib
```
