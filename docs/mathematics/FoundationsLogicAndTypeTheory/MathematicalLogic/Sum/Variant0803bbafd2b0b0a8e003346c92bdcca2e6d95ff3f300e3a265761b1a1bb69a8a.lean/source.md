# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sum.Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c3ecc2999ef547f96d488a353b209555a06956a` · SHA-256 `0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.Fintype.Sum

/-!
# Finiteness of sum types
-/

variable {α β : Type*}

namespace Finite

instance [Finite α] [Finite β] : Finite (α ⊕ β) := by
  haveI := Fintype.ofFinite α
  haveI := Fintype.ofFinite β
  infer_instance

theorem sum_left (β) [Finite (α ⊕ β)] : Finite α :=
  of_injective (Sum.inl : α → α ⊕ β) Sum.inl_injective

theorem sum_right (α) [Finite (α ⊕ β)] : Finite β :=
  of_injective (Sum.inr : β → α ⊕ β) Sum.inr_injective

instance {α β : Sort*} [Finite α] [Finite β] : Finite (α ⊕' β) :=
  of_equiv _ ((Equiv.psumEquivSum _ _).symm.trans (Equiv.plift.psumCongr Equiv.plift))

theorem psum_left {α β : Sort*} [Finite (α ⊕' β)] : Finite α :=
  of_injective (PSum.inl : α → α ⊕' β) PSum.inl_injective

theorem psum_right {α β : Sort*} [Finite (α ⊕' β)] : Finite β :=
  of_injective (PSum.inr : β → α ⊕' β) PSum.inr_injective

end Finite
```
