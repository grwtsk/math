# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplaceRec.Variant6c9346d6ef1273dce155d237043b5defa332ec376032dc9a5ee25e21c50b0a2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2959f458d8d6f8ff7bd42140bcdeca0135ff714` · SHA-256 `6c9346d6ef1273dce155d237043b5defa332ec376032dc9a5ee25e21c50b0a2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Simon Hudon, Kim Morrison, Keeley Hoek, Robert Y. Lewis,
Floris van Doorn, Edward Ayers
-/
import Lean.Expr
import Mathlib.Util.MemoFix

/-!
# ReplaceRec

We define a more flexible version of `Expr.replace` where we can use recursive calls even when
replacing a subexpression. We completely mimic the implementation of `Expr.replace`.
-/

namespace Lean.Expr

/-- A version of `Expr.replace` where the replacement function is available to the function `f?`.

`replaceRec f? e` will call `f? r e` where `r = replaceRec f?`.
If `f? r e = none` then `r` will be called on each immediate subexpression of `e` and reassembled.
If it is `some x`, traversal terminates and `x` is returned.
If you wish to recursively replace things in the implementation of `f?`, you can apply `r`.

The function is also memoised, which means that if the
same expression (by reference) is encountered the cached replacement is used. -/
def replaceRec (f? : (Expr → Expr) → Expr → Option Expr) : Expr → Expr :=
  memoFix fun r e ↦
    match f? r e with
    | some x => x
    | none   => Id.run <| traverseChildren (pure <| r ·) e

end Lean.Expr
```
