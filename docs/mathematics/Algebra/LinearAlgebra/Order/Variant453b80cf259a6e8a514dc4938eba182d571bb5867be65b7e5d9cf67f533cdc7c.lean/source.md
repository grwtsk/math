# Complete source: GRWTSK.Algebra.LinearAlgebra.Order.Variant453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3860348111112143704e2b6fac430def96a37723` · SHA-256 `453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Order.Monoid.Basic

/-!
# Ordered instances on submodules
-/

namespace Submodule
variable {R M : Type*}

section OrderedMonoid
variable [Semiring R]

/-- A submodule of an ordered additive monoid is an ordered additive monoid. -/
instance toIsOrderedAddMonoid [AddCommMonoid M] [PartialOrder M] [IsOrderedAddMonoid M]
    [Module R M] (S : Submodule R M) :
    IsOrderedAddMonoid S :=
  Subtype.coe_injective.isOrderedAddMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl

/-- A submodule of an ordered cancellative additive monoid is an ordered cancellative additive
monoid. -/
instance toIsOrderedCancelAddMonoid [AddCommMonoid M] [PartialOrder M]
    [IsOrderedCancelAddMonoid M] [Module R M] (S : Submodule R M) :
    IsOrderedCancelAddMonoid S :=
  Subtype.coe_injective.isOrderedCancelAddMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl

end OrderedMonoid

end Submodule
```
