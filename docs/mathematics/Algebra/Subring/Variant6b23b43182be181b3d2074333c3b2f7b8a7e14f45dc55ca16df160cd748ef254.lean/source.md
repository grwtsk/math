# Complete source: GRWTSK.Algebra.Subring.Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e08329fed6991d38c61e317762856ab115ddd96` · SHA-256 `6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Michal Staromiejski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michal Staromiejski
-/
import Mathlib.Algebra.Ring.Subsemiring.Basic
import Mathlib.Algebra.GroupWithZero.NonZeroDivisors
import Mathlib.RingTheory.LocalRing.Defs

/-!
# Subrings of local rings

We prove basic properties of subrings of local rings.
-/

namespace IsLocalRing

variable {R S} [Semiring R] [Semiring S]

open nonZeroDivisors

/-- If a (semi)ring `R` in which every element is either invertible or a zero divisor
embeds in a local (semi)ring `S`, then `R` is local. -/
theorem of_injective [IsLocalRing S] {f : R →+* S} (hf : Function.Injective f)
    (h : ∀ a, a ∈ R⁰ → IsUnit a) : IsLocalRing R := by
  haveI : Nontrivial R := f.domain_nontrivial
  refine .of_is_unit_or_is_unit_of_add_one fun {a b} hab ↦
    (IsLocalRing.isUnit_or_isUnit_of_add_one (map_add f .. ▸ map_one f ▸ congrArg f hab)).imp ?_ ?_
  <;> exact h _ ∘ mem_nonZeroDivisors_of_injective hf ∘ IsUnit.mem_nonZeroDivisors

/-- If in a sub(semi)ring `R` of a local (semi)ring `S` every element is either
invertible or a zero divisor, then `R` is local. -/
theorem of_subring [IsLocalRing S] {R : Subsemiring S} (h : ∀ a, a ∈ R⁰ → IsUnit a) :
    IsLocalRing R :=
  of_injective R.subtype_injective h

/-- If in a sub(semi)ring `R` of a local (semi)ring `R'` every element is either
invertible or a zero divisor, then `R` is local.
This version is for `R` and `R'` that are both sub(semi)rings of a (semi)ring `S`. -/
theorem of_subring' {R R' : Subsemiring S} [IsLocalRing R'] (inc : R ≤ R')
    (h : ∀ a, a ∈ R⁰ → IsUnit a) : IsLocalRing R :=
  of_injective (Subsemiring.inclusion_injective inc) h

end IsLocalRing
```
