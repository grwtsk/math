# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9afc713aea7ea11c9b0734545e9fa3b475ac33b4` · SHA-256 `792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.ULift

/-!
# Finiteness of `Set.range`

## Implementation notes

Each result in this file should come in three forms: a `Fintype` instance, a `Finite` instance
and a `Set.Finite` constructor.

## Tags

finite sets
-/

assert_not_exists OrderedRing MonoidWithZero

open Set Function

universe u v w x

variable {α : Type u} {β : Type v} {ι : Sort w} {γ : Type x}

namespace Set

/-! ### Fintype instances

Every instance here should have a corresponding `Set.Finite` constructor in the next section.
-/

section FintypeInstances

instance fintypeRange [DecidableEq α] (f : ι → α) [Fintype (PLift ι)] : Fintype (range f) :=
  Fintype.ofFinset (Finset.univ.image <| f ∘ PLift.down) <| by simp

end FintypeInstances

end Set

/-! ### Finite instances

There is seemingly some overlap between the following instances and the `Fintype` instances
in `Data.Set.Finite`. While every `Fintype` instance gives a `Finite` instance, those
instances that depend on `Fintype` or `Decidable` instances need an additional `Finite` instance
to be able to generally apply.

Some set instances do not appear here since they are consequences of others, for example
`Subtype.Finite` for subsets of a finite type.
-/


namespace Finite.Set

instance finite_range (f : ι → α) [Finite ι] : Finite (range f) := by
  classical
  haveI := Fintype.ofFinite (PLift ι)
  infer_instance

instance finite_replacement [Finite α] (f : α → β) :
    Finite {f x | x : α} :=
  Finite.Set.finite_range f

end Finite.Set

namespace Set

/-! ### Constructors for `Set.Finite`

Every constructor here should have a corresponding `Fintype` instance in the previous section
(or in the `Fintype` module).

The implementation of these constructors ideally should be no more than `Set.toFinite`,
after possibly setting up some `Fintype` and classical `Decidable` instances.
-/


section SetFiniteConstructors

theorem finite_range (f : ι → α) [Finite ι] : (range f).Finite :=
  toFinite _

theorem Finite.dependent_image {s : Set α} (hs : s.Finite) (F : ∀ i ∈ s, β) :
    {y : β | ∃ x hx, F x hx = y}.Finite := by
  have := hs.to_subtype
  simpa [range] using finite_range fun x : s => F x x.2

end SetFiniteConstructors

end Set
```
