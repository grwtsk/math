# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variantff1ee1a695b6b6adc641be6742255b883896d58279f785dc860ee692bb898948

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4f60ce9313ff431a070e591144b0f8e449547e4` · SHA-256 `ff1ee1a695b6b6adc641be6742255b883896d58279f785dc860ee692bb898948`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Data.Fintype.Pi
import Mathlib.Algebra.BigOperators.Group.Finset.Defs


/-!
# Products over `univ.pi`

-/

assert_not_exists MonoidWithZero MulAction OrderedCommMonoid

variable {ι β : Type*}

open Fin Function

namespace Finset

variable [CommMonoid β]

/-- Taking a product over `univ.pi t` is the same as taking the product over `Fintype.piFinset t`.
`univ.pi t` and `Fintype.piFinset t` are essentially the same `Finset`, but differ
in the type of their element, `univ.pi t` is a `Finset (Π a ∈ univ, t a)` and
`Fintype.piFinset t` is a `Finset (Π a, t a)`. -/
@[to_additive "Taking a sum over `univ.pi t` is the same as taking the sum over
`Fintype.piFinset t`. `univ.pi t` and `Fintype.piFinset t` are essentially the same `Finset`,
but differ in the type of their element, `univ.pi t` is a `Finset (Π a ∈ univ, t a)` and
`Fintype.piFinset t` is a `Finset (Π a, t a)`."]
lemma prod_univ_pi [DecidableEq ι] [Fintype ι] {κ : ι → Type*} (t : ∀ i, Finset (κ i))
    (f : (∀ i ∈ (univ : Finset ι), κ i) → β) :
    ∏ x ∈ univ.pi t, f x = ∏ x ∈ Fintype.piFinset t, f fun a _ ↦ x a := by
  apply prod_nbij' (fun x i ↦ x i <| mem_univ _) (fun x i _ ↦ x i) <;> simp

end Finset
```
