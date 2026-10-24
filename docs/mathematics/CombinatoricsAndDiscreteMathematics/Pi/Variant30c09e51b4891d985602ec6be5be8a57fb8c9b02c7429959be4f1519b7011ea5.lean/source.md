# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant30c09e51b4891d985602ec6be5be8a57fb8c9b02c7429959be4f1519b7011ea5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ab774e0a172370c074bb171f7c2f38ea3fb4a93` · SHA-256 `30c09e51b4891d985602ec6be5be8a57fb8c9b02c7429959be4f1519b7011ea5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
module

public import Mathlib.Data.Fintype.Pi
public import Mathlib.Algebra.BigOperators.Group.Finset.Defs


/-!
# Products over `univ.pi`

-/

public section

assert_not_exists MonoidWithZero MulAction IsOrderedMonoid

variable {ι β : Type*}

namespace Finset

variable [CommMonoid β]

/-- Taking a product over `univ.pi t` is the same as taking the product over `Fintype.piFinset t`.
`univ.pi t` and `Fintype.piFinset t` are essentially the same `Finset`, but differ
in the type of their element, `univ.pi t` is a `Finset (Π a ∈ univ, t a)` and
`Fintype.piFinset t` is a `Finset (Π a, t a)`. -/
@[to_additive /-- Taking a sum over `univ.pi t` is the same as taking the sum over
`Fintype.piFinset t`. `univ.pi t` and `Fintype.piFinset t` are essentially the same `Finset`,
but differ in the type of their element, `univ.pi t` is a `Finset (Π a ∈ univ, t a)` and
`Fintype.piFinset t` is a `Finset (Π a, t a)`. -/]
lemma prod_univ_pi [DecidableEq ι] [Fintype ι] {κ : ι → Type*} (t : ∀ i, Finset (κ i))
    (f : (∀ i ∈ (univ : Finset ι), κ i) → β) :
    ∏ x ∈ univ.pi t, f x = ∏ x ∈ Fintype.piFinset t, f fun a _ ↦ x a := by
  apply prod_nbij' (fun x i ↦ x i <| mem_univ _) (fun x i _ ↦ x i) <;> simp

end Finset
```
