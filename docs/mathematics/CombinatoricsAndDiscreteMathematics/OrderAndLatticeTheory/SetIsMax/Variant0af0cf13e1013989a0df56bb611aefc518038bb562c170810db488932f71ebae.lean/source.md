# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetIsMax.Variant0af0cf13e1013989a0df56bb611aefc518038bb562c170810db488932f71ebae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ef6fc229c567b308fc40b1cdc9ba4f0793fbf71` · SHA-256 `0af0cf13e1013989a0df56bb611aefc518038bb562c170810db488932f71ebae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Order.Max
import Mathlib.Data.Set.CoeSort

/-!
# Maximal elements of subsets

Let `S : Set J` and `m : S`. If `m` is not a maximal element of `S`,
then `↑m : J` is not maximal in `J`.

-/

universe u

namespace Set

variable {J : Type u} [Preorder J] {S : Set J} (m : S)

lemma not_isMax_coe (hm : ¬ IsMax m) :
    ¬ IsMax m.1 :=
  fun h ↦ hm (fun _ hb ↦ h hb)

lemma not_isMin_coe (hm : ¬ IsMin m) :
    ¬ IsMin m.1 :=
  fun h ↦ hm (fun _ hb ↦ h hb)

end Set
```
