# Complete source: GRWTSK.Topology.Forget.Varianteb0f97901fe6a9964298d4985abd9fdb29c6b2d66f6c077351d114b9f7b93c55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `458a5633cd652c462b4ee3a293a384a7a6c4ad43` · SHA-256 `eb0f97901fe6a9964298d4985abd9fdb29c6b2d66f6c077351d114b9f7b93c55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Topology.Sheaves.Sheaf

/-!
# Checking the sheaf condition on the underlying presheaf of types.

If `G : C ⥤ D` is a functor which reflects isomorphisms and preserves limits
(we assume all limits exist in `C`),
then checking the sheaf condition for a presheaf `F : Presheaf C X`
is equivalent to checking the sheaf condition for `F ⋙ G`.

The important special case is when
`C` is a concrete category with a forgetful functor
that preserves limits and reflects isomorphisms.
Then to check the sheaf condition it suffices
to check it on the underlying sheaf of types.

## References
* https://stacks.math.columbia.edu/tag/0073
-/

universe v v₁ v₂ u₁ u₂

noncomputable section

open CategoryTheory Limits

namespace TopCat.Presheaf

/-- If `G : C ⥤ D` is a functor which reflects isomorphisms and preserves limits
(we assume all limits exist in `C`),
then checking the sheaf condition for a presheaf `F : Presheaf C X`
is equivalent to checking the sheaf condition for `F ⋙ G`.

The important special case is when
`C` is a concrete category with a forgetful functor
that preserves limits and reflects isomorphisms.
Then to check the sheaf condition it suffices to check it on the underlying sheaf of types.

Another useful example is the forgetful functor `TopCommRingCat ⥤ TopCat`. -/
@[stacks 0073 "In fact we prove a stronger version with arbitrary target category."]
theorem isSheaf_iff_isSheaf_comp' {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
    (G : C ⥤ D) [G.ReflectsIsomorphisms] [HasLimitsOfSize.{v, v} C] [PreservesLimitsOfSize.{v, v} G]
    {X : TopCat.{v}} (F : Presheaf C X) : Presheaf.IsSheaf F ↔ Presheaf.IsSheaf (F ⋙ G) :=
  Presheaf.isSheaf_iff_isSheaf_comp _ F G

theorem isSheaf_iff_isSheaf_comp {C : Type u₁} [Category.{v} C] {D : Type u₂} [Category.{v} D]
    (G : C ⥤ D) [G.ReflectsIsomorphisms] [HasLimits C] [PreservesLimits G]
    {X : TopCat.{v}} (F : Presheaf C X) : Presheaf.IsSheaf F ↔ Presheaf.IsSheaf (F ⋙ G) :=
  isSheaf_iff_isSheaf_comp' G F

end TopCat.Presheaf
```
