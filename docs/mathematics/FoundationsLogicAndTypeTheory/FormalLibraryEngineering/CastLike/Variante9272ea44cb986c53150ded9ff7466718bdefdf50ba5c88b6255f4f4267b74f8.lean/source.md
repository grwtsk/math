# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CastLike.Variante9272ea44cb986c53150ded9ff7466718bdefdf50ba5c88b6255f4f4267b74f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ec04b6a1125e2943626929a52ca789cd0faaeb1` · SHA-256 `e9272ea44cb986c53150ded9ff7466718bdefdf50ba5c88b6255f4f4267b74f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Expr
import Init.Grind.Ring.Envelope
import Init.Grind.Module.Envelope
namespace Lean.Meta.Grind

/-- Returns `true` if `declName` is the name of a cast-like function used to implement `grind` solvers -/
public def isCastLikeDeclName (declName : Name) : Bool :=
  declName == ``Grind.Ring.OfSemiring.toQ ||
  declName == ``Grind.IntModule.OfNatModule.toQ ||
  declName == ``Grind.ToInt.toInt ||
  declName == ``NatCast.natCast ||
  declName == ``IntCast.intCast

/-- Returns `true` if `f` is a cast-like operation. -/
public def isCastLikeFn (f : Expr) : Bool := Id.run do
  let .const declName _ := f | return false
  return isCastLikeDeclName declName

public def isCastLikeApp (e : Expr) : Bool :=
  isCastLikeFn e.getAppFn

end Lean.Meta.Grind
```
