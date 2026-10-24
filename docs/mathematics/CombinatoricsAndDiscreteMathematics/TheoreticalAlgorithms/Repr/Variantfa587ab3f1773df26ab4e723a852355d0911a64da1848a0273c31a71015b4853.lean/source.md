# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Repr.Variantfa587ab3f1773df26ab4e723a852355d0911a64da1848a0273c31a71015b4853

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d7016b3dfcf553d618585bf015acbf0f605dbe6` · SHA-256 `fa587ab3f1773df26ab4e723a852355d0911a64da1848a0273c31a71015b4853`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Init.Data.Repr
public import Init.Data.String.Defs

namespace Int

/--
Returns the decimal string representation of an integer.
-/
public protected def repr : Int → String
  | ofNat m   => Nat.repr m
  | negSucc m => "-" ++ Nat.repr (Nat.succ m)

public instance : Repr Int where
  reprPrec i prec := if i < 0 then Repr.addAppParen i.repr prec else i.repr

end Int
```
