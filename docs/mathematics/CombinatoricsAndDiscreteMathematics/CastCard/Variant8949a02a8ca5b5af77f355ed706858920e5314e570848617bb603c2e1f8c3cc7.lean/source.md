# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CastCard.Variant8949a02a8ca5b5af77f355ed706858920e5314e570848617bb603c2e1f8c3cc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbc17a06d382fee939238c47c580097fc9bf8e88` · SHA-256 `8949a02a8ca5b5af77f355ed706858920e5314e570848617bb603c2e1f8c3cc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad
-/
module

public import Mathlib.Data.Finset.Card
public import Mathlib.Data.Int.Cast.Basic

/-!
# Cardinality of a finite set and subtraction

This file contains results on the cardinality of a `Finset` and subtraction, by casting the
cardinality as element of an `AddGroupWithOne`.

## Main results

* `Finset.cast_card_erase_of_mem`: erasing an element of a finset decrements the cardinality
  (avoiding `ℕ` subtraction).
* `Finset.cast_card_inter`, `Finset.cast_card_union`: inclusion/exclusion principle.
* `Finset.cast_card_sdiff`: cardinality of `t \ s` is the difference of cardinalities if `s ⊆ t`.
-/

public section

assert_not_exists MonoidWithZero IsOrderedMonoid

open Nat

namespace Finset

variable {α R : Type*} {s t : Finset α} {a : α}
variable [DecidableEq α] [AddGroupWithOne R]

/-- $\#(s \setminus \{a\}) = \#s - 1$ if $a \in s$.
  This result is casted to any additive group with 1,
  so that we don't have to work with `ℕ`-subtraction. -/
-- @[simp] -- removed because LHS is not in simp normal form
theorem cast_card_erase_of_mem (hs : a ∈ s) : (#(s.erase a) : R) = #s - 1 := by
  rw [← card_erase_add_one hs, cast_add, cast_one, eq_sub_iff_add_eq]

lemma cast_card_inter : (#(s ∩ t) : R) = #s + #t - #(s ∪ t) := by
  rw [eq_sub_iff_add_eq, ← cast_add, card_inter_add_card_union, cast_add]

lemma cast_card_union : (#(s ∪ t) : R) = #s + #t - #(s ∩ t) := by
  rw [eq_sub_iff_add_eq, ← cast_add, card_union_add_card_inter, cast_add]

lemma cast_card_sdiff (h : s ⊆ t) : (#(t \ s) : R) = #t - #s := by
  rw [card_sdiff_of_subset h, Nat.cast_sub (card_mono h)]

end Finset
```
