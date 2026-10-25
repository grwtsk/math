# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NamedPatterns.Variantc3235d971e14090c96016e297a9cf463fc87a937f3100783729613d1e338f707

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe662bb75b08c4d791542aef93017722a6c2022b` · SHA-256 `c3235d971e14090c96016e297a9cf463fc87a937f3100783729613d1e338f707`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Basic
import Lean.Meta.AppBuilder
import Lean.Meta.WHNF
/-!
Helper functions around named patterns
-/
namespace Lean.Meta.Match

public def mkNamedPattern (x h p : Expr) : MetaM Expr :=
  mkAppM ``namedPattern #[x, p, h]

public def isNamedPattern (e : Expr) : Bool :=
  let e := e.consumeMData
  e.getAppNumArgs == 4 && e.getAppFn.consumeMData.isConstOf ``namedPattern

public def isNamedPattern? (e : Expr) : Option Expr :=
  let e := e.consumeMData
  if e.getAppNumArgs == 4 && e.getAppFn.consumeMData.isConstOf ``namedPattern then
    some e
  else
    none

public def unfoldNamedPattern (e : Expr) : MetaM Expr := do
  let visit (e : Expr) : MetaM TransformStep := do
    if let some e := isNamedPattern? e then
      if let some eNew ← unfoldDefinition? e then
        return TransformStep.visit eNew
    return .continue
  Meta.transform e (pre := visit)

end Lean.Meta.Match
```
