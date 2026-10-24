# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Preimage.Variant3ec460a719b2ccc630ca21292291bd4fc12217bb14c7b147387cf19872165535

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccbd018e19e13ed54de506c9060b2f9b67d4b84d` · SHA-256 `3ec460a719b2ccc630ca21292291bd4fc12217bb14c7b147387cf19872165535`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
module

public import Mathlib.Data.Finset.Preimage
public import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Sums and products over preimages of finite sets.
-/

public section

assert_not_exists MonoidWithZero MulAction IsOrderedMonoid

variable {ι κ β : Type*}

namespace Finset

variable [CommMonoid β]

@[to_additive]
lemma prod_preimage' (f : ι → κ) [DecidablePred (· ∈ Set.range f)] (s : Finset κ) (hf) (g : κ → β) :
    ∏ x ∈ s.preimage f hf, g (f x) = ∏ x ∈ s with x ∈ Set.range f, g x := by
  classical
  calc
    ∏ x ∈ preimage s f hf, g (f x) = ∏ x ∈ image f (preimage s f hf), g x :=
      Eq.symm <| prod_image <| by simpa [mem_preimage, Set.InjOn] using hf
    _ = ∏ x ∈ s with x ∈ Set.range f, g x := by rw [image_preimage]

@[to_additive]
lemma prod_preimage (f : ι → κ) (s : Finset κ) (hf) (g : κ → β)
    (hg : ∀ x ∈ s, x ∉ Set.range f → g x = 1) :
    ∏ x ∈ s.preimage f hf, g (f x) = ∏ x ∈ s, g x := by
  classical rw [prod_preimage', prod_filter_of_ne]; exact fun x hx ↦ Not.imp_symm (hg x hx)

@[to_additive]
lemma prod_preimage_of_bij (f : ι → κ) (s : Finset κ) (hf : Set.BijOn f (f ⁻¹' ↑s) ↑s) (g : κ → β) :
    ∏ x ∈ s.preimage f hf.injOn, g (f x) = ∏ x ∈ s, g x :=
  prod_preimage _ _ hf.injOn g fun _ hs h_f ↦ (h_f <| hf.subset_range hs).elim

end Finset
```
