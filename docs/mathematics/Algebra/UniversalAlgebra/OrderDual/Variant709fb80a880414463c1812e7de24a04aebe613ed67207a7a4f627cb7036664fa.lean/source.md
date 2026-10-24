# Complete source: GRWTSK.Algebra.UniversalAlgebra.OrderDual.Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c93cbe11c49023e7580aafe89b09cd675508568b` · SHA-256 `709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Group.Synonym
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs

/-! # Unbundled ordered monoid structures on the order dual. -/

universe u

variable {α : Type u}

open Function

namespace OrderDual

@[to_additive]
instance mulLeftReflectLE [LE α] [Mul α] [c : MulLeftReflectLE α] : MulLeftReflectLE αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulLeftMono [LE α] [Mul α] [c : MulLeftMono α] : MulLeftMono αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulRightReflectLE [LE α] [Mul α] [c : MulRightReflectLE α] : MulRightReflectLE αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulRightMono [LE α] [Mul α] [c : MulRightMono α] : MulRightMono αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulLeftReflectLT [LT α] [Mul α] [c : MulLeftReflectLT α] : MulLeftReflectLT αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulLeftStrictMono [LT α] [Mul α] [c : MulLeftStrictMono α] : MulLeftStrictMono αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulRightReflectLT [LT α] [Mul α] [c : MulRightReflectLT α] : MulRightReflectLT αᵒᵈ :=
  ⟨c.1.flip⟩

@[to_additive]
instance mulRightStrictMono [LT α] [Mul α] [c : MulRightStrictMono α] : MulRightStrictMono αᵒᵈ :=
  ⟨c.1.flip⟩

end OrderDual
```
