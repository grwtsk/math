# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.KrullDimension.Varianta3e360aee3edde09487f72b0d1715488a25fa9d5479fe81a86b99172485045f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1c5944a600cfe6e5f1700a63e41be5b8c76b228` · SHA-256 `a3e360aee3edde09487f72b0d1715488a25fa9d5479fe81a86b99172485045f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joachim Breitner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

public import Mathlib.Data.Set.Card
public import Mathlib.Order.KrullDimension

namespace Order

/-
These two lemmas could possibly be used to simplify the calculations in
the `Concrete calculations` section of `Mathlib/Order/KrullDimension.lean`, especially once
the `Set.encard` api is richer.
-/

proof_wanted height_of_linearOrder {α : Type*} [LinearOrder α] (a : α) :
  height a = (Set.Iio a).encard

proof_wanted coheight_of_linearOrder {α : Type*} [LinearOrder α] (a : α) :
  coheight a = (Set.Ioi a).encard

end Order
```
