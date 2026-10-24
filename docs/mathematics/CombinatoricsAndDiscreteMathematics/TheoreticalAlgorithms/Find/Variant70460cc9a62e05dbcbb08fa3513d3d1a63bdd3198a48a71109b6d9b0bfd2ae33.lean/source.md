# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Find.Variant70460cc9a62e05dbcbb08fa3513d3d1a63bdd3198a48a71109b6d9b0bfd2ae33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acb909c62beb839232ae6922e9be2e554317ea39` · SHA-256 `70460cc9a62e05dbcbb08fa3513d3d1a63bdd3198a48a71109b6d9b0bfd2ae33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Data.Set.Subsingleton
import Batteries.Data.List.Lemmas

/-!
# Lemmas about `List.find?`
-/

public section

namespace List
variable {α : Type*}

/-- If there is at most one element satisfying `p`, then `find?` agrees on permuted lists. -/
theorem find?_eq_find?_of_perm {p : α → Bool} {l₁ l₂ : List α}
    (h : l₁.Perm l₂) (hp : {x ∈ l₁ | p x}.Subsingleton) :
    l₁.find? p = l₂.find? p := by
  induction h with
  | nil => rfl
  | cons x _ ih =>
    grind
  | swap x y l =>
    dsimp [Set.Subsingleton] at hp
    by_cases p x <;> by_cases p y <;> grind
  | trans _ _ ih1 ih2 =>
    refine (ih1 ?_).trans (ih2 ?_) <;> grind

/-- If two predicates agree on all the elements, so does `find?`. -/
@[congr]
theorem find?_congr {p₁ p₂ : α → Bool} {l : List α} (h : ∀ x ∈ l, p₁ x = p₂ x) :
    l.find? p₁ = l.find? p₂ := by
  induction l with grind

end List
```
