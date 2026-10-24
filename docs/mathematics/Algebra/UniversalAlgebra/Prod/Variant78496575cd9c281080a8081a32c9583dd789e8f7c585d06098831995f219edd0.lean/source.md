# Complete source: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant78496575cd9c281080a8081a32c9583dd789e8f7c585d06098831995f219edd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2375c7d57a81b4221d80ab574583fb2a00dfb82` · SHA-256 `78496575cd9c281080a8081a32c9583dd789e8f7c585d06098831995f219edd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Star.Prod
import Mathlib.Algebra.Ring.Prod

/-!
# Products of star-ordered rings
-/

variable {α β : Type*}

open AddSubmonoid in
instance Prod.instStarOrderedRing
    [NonUnitalSemiring α] [NonUnitalSemiring β] [PartialOrder α] [PartialOrder β]
    [StarRing α] [StarRing β] [StarOrderedRing α] [StarOrderedRing β] :
    StarOrderedRing (α × β) where
  le_iff := Prod.forall.2 fun xa xy => Prod.forall.2 fun ya yb => by
    have :
        closure (Set.range fun s : α × β ↦ star s * s) =
          (closure <| Set.range fun s : α ↦ star s * s).prod
          (closure <| Set.range fun s : β ↦ star s * s) := by
      rw [← closure_prod (Set.mem_range.2 ⟨0, by simp⟩) (Set.mem_range.2 ⟨0, by simp⟩),
        Set.prod_range_range_eq]
      simp_rw [Prod.mul_def, Prod.star_def]
    simp only [mk_le_mk, Prod.exists, mk_add_mk, mk.injEq, StarOrderedRing.le_iff, this,
      AddSubmonoid.mem_prod, exists_and_exists_comm, and_and_and_comm]
```
