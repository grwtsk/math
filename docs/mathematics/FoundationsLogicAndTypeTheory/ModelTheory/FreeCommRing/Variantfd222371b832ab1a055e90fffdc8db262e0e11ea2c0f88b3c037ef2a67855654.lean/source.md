# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.FreeCommRing.Variantfd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea7888ce6a2c95ff293b790d0ee9e2101d3b3637` · SHA-256 `fd222371b832ab1a055e90fffdc8db262e0e11ea2c0f88b3c037ef2a67855654`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/

import Mathlib.ModelTheory.Algebra.Ring.Basic
import Mathlib.RingTheory.FreeCommRing

/-!
# Making a term in the language of rings from an element of the FreeCommRing

This file defines the function `FirstOrder.Ring.termOfFreeCommRing` which constructs a
`Language.ring.Term α` from an element of `FreeCommRing α`.

The theorem `FirstOrder.Ring.realize_termOfFreeCommRing` shows that the term constructed when
realized in a ring `R` is equal to the lift of the element of `FreeCommRing α` to `R`.
-/

namespace FirstOrder

namespace Ring

open Language

variable {α : Type*}

section

attribute [local instance] compatibleRingOfRing

private theorem exists_term_realize_eq_freeCommRing (p : FreeCommRing α) :
    ∃ t : Language.ring.Term α,
      (t.realize FreeCommRing.of : FreeCommRing α) = p :=
  FreeCommRing.induction_on p
    ⟨-1, by simp [Term.realize]⟩
    (fun a => ⟨Term.var a, by simp [Term.realize]⟩)
    (fun x y ⟨t₁, ht₁⟩ ⟨t₂, ht₂⟩ =>
      ⟨t₁ + t₂, by simp_all [Term.realize]⟩)
    (fun x y ⟨t₁, ht₁⟩ ⟨t₂, ht₂⟩ =>
      ⟨t₁ * t₂, by simp_all [Term.realize]⟩)

end

/-- Make a `Language.ring.Term α` from an element of `FreeCommRing α` -/
noncomputable def termOfFreeCommRing (p : FreeCommRing α) : Language.ring.Term α :=
  Classical.choose (exists_term_realize_eq_freeCommRing p)

variable {R : Type*} [CommRing R] [CompatibleRing R]

@[simp]
theorem realize_termOfFreeCommRing (p : FreeCommRing α) (v : α → R) :
    (termOfFreeCommRing p).realize v = FreeCommRing.lift v p := by
  let _ := compatibleRingOfRing (FreeCommRing α)
  rw [termOfFreeCommRing]
  conv_rhs => rw [← Classical.choose_spec (exists_term_realize_eq_freeCommRing p)]
  induction Classical.choose (exists_term_realize_eq_freeCommRing p) with
  | var _ => simp
  | func f a ih =>
    cases f <;>
    simp [ih]

end Ring

end FirstOrder
```
