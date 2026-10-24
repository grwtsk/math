# Complete source: GRWTSK.Algebra.GroupTheory.FiniteSupport.Variantb0b6cee4ce34f921a22f51ad639308ef8c73986b5233e86d447c61b80b3e0f39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1e51c56165ceeb2d84e90c9507ddfc31cdf9868` · SHA-256 `b0b6cee4ce34f921a22f51ad639308ef8c73986b5233e86d447c61b80b3e0f39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Group.Support
import Mathlib.Data.Set.Finite.Basic

/-!
# Finiteness of support
-/

namespace Function
variable {α β γ : Type*} [One γ]

@[to_additive (attr := simp)]
lemma mulSupport_along_fiber_finite_of_finite (f : α × β → γ) (a : α) (h : (mulSupport f).Finite) :
    (mulSupport fun b ↦ f (a, b)).Finite :=
  (h.image Prod.snd).subset (mulSupport_along_fiber_subset f a)

end Function
```
