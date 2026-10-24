# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RingEquiv.Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d6a7c1922e0526c86df878c0d4ce62caeec4313` · SHA-256 `23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Callum Sutton, Yury Kudryashov
-/
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Opposite
import Mathlib.Algebra.BigOperators.Group.Finset.Defs

/-!
# Results about mapping big operators across ring equivalences
-/


namespace RingEquiv

variable {α R S : Type*}

protected theorem map_list_prod [Semiring R] [Semiring S] (f : R ≃+* S) (l : List R) :
    f l.prod = (l.map f).prod := map_list_prod f l

protected theorem map_list_sum [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S]
    (f : R ≃+* S) (l : List R) : f l.sum = (l.map f).sum := map_list_sum f l

/-- An isomorphism into the opposite ring acts on the product by acting on the reversed elements -/
protected theorem unop_map_list_prod [Semiring R] [Semiring S] (f : R ≃+* Sᵐᵒᵖ) (l : List R) :
    MulOpposite.unop (f l.prod) = (l.map (MulOpposite.unop ∘ f)).reverse.prod :=
  unop_map_list_prod f l

protected theorem map_multiset_prod [CommSemiring R] [CommSemiring S] (f : R ≃+* S)
    (s : Multiset R) : f s.prod = (s.map f).prod :=
  map_multiset_prod f s

protected theorem map_multiset_sum [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S]
    (f : R ≃+* S) (s : Multiset R) : f s.sum = (s.map f).sum :=
  map_multiset_sum f s

protected theorem map_prod [CommSemiring R] [CommSemiring S] (g : R ≃+* S) (f : α → R)
    (s : Finset α) : g (∏ x ∈ s, f x) = ∏ x ∈ s, g (f x) :=
  map_prod g f s

protected theorem map_sum [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S] (g : R ≃+* S)
    (f : α → R) (s : Finset α) : g (∑ x ∈ s, f x) = ∑ x ∈ s, g (f x) :=
  map_sum g f s

end RingEquiv
```
