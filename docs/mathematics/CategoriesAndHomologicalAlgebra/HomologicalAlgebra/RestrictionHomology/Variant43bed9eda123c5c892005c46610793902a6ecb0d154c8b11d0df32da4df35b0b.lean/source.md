# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.RestrictionHomology.Variant43bed9eda123c5c892005c46610793902a6ecb0d154c8b11d0df32da4df35b0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `547d758f72aa327ea8738969a7c3bc6c59add56f` · SHA-256 `43bed9eda123c5c892005c46610793902a6ecb0d154c8b11d0df32da4df35b0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.Embedding.Restriction
import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex

/-! # The homology of a restriction

Under extremely favourable circumstrnaces, we may relate the
homology of `K : HomologicalComplex C c'` in degree `j'` and
that of `K.restriction e` id a degree `j`  when `e : Embedding c c'`
is an embedding of complex shapes. See `restriction.sc'Iso`
and `restriction.hasHomology`.

-/

open CategoryTheory Category Limits ZeroObject

variable {ι ι' : Type*} {c : ComplexShape ι} {c' : ComplexShape ι'}

namespace HomologicalComplex

variable {C : Type*} [Category C] [HasZeroMorphisms C]
  (K : HomologicalComplex C c') (e : c.Embedding c') [e.IsRelIff]

namespace restriction

variable (i j k : ι) (hi : c.prev j = i) (hk : c.next j = k)
  {i' j' k' : ι'} (hi' : e.f i = i') (hj' : e.f j = j') (hk' : e.f k = k')
  (hi'' : c'.prev j' = i') (hk'' : c'.next j' = k')

/-- The isomorphism `(K.restriction e).sc' i j k ≅ K.sc' i' j' k'` when
`e` is an embedding of complex shapes, `i'`, `j`, `k`' are the respective
images of `i`, `j`, `k` by `e.f`, `j` is the previous index of `i`, etc. -/
@[simps!]
def sc'Iso : (K.restriction e).sc' i j k ≅ K.sc' i' j' k' :=
  ShortComplex.isoMk (K.restrictionXIso e hi') (K.restrictionXIso e hj') (K.restrictionXIso e hk')
    (by subst hi' hj'; simp [restrictionXIso])
    (by subst hj' hk'; simp [restrictionXIso])

include hi hk hi' hj' hk' hi'' hk'' in
lemma hasHomology [K.HasHomology j'] : (K.restriction e).HasHomology j :=
  ShortComplex.hasHomology_of_iso (K.isoSc' i' j' k' hi'' hk'' ≪≫
    (sc'Iso K e i j k hi' hj' hk' hi'' hk'').symm ≪≫
    ((K.restriction e).isoSc' i j k hi hk).symm)

end restriction

end HomologicalComplex
```
