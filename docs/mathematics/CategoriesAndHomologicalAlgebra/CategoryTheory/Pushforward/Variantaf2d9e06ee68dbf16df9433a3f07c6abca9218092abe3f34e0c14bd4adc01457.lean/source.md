# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pushforward.Variantaf2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19ca10c355d08072a85c921a75d1845af1701b4e` · SHA-256 `af2d9e06ee68dbf16df9433a3f07c6abca9218092abe3f34e0c14bd4adc01457`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Sites.CoverPreserving
import Mathlib.CategoryTheory.Sites.LeftExact

#align_import category_theory.sites.pushforward from "leanprover-community/mathlib"@"e2e38c005fc6f715502490da6cb0ec84df9ed228"

/-!
# Pushforward of sheaves

## Main definitions

* `CategoryTheory.Sites.Pushforward`: the induced functor `Sheaf J A ⥤ Sheaf K A` for a
cover-preserving and compatible-preserving functor `G : (C, J) ⥤ (D, K)`.

-/


universe v₁ u₁

noncomputable section

open CategoryTheory.Limits

namespace CategoryTheory

variable {C : Type v₁} [SmallCategory C] {D : Type v₁} [SmallCategory D]

variable (A : Type u₁) [Category.{v₁} A]

variable (J : GrothendieckTopology C) (K : GrothendieckTopology D)

-- porting note: there was an explicit call to
-- CategoryTheory.Sheaf.CategoryTheory.SheafToPresheaf.CategoryTheory.createsLimits.{u₁, v₁, v₁}
-- but it is not necessary (it was not either in mathlib)
instance [HasLimits A] : CreatesLimits (sheafToPresheaf J A) := inferInstance

-- The assumptions so that we have sheafification
variable [ConcreteCategory.{v₁} A] [PreservesLimits (forget A)] [HasColimits A] [HasLimits A]

variable [PreservesFilteredColimits (forget A)] [ReflectsIsomorphisms (forget A)]

attribute [local instance] reflectsLimitsOfReflectsIsomorphisms

instance {X : C} : IsCofiltered (J.Cover X) :=
  inferInstance

/-- The pushforward functor `Sheaf J A ⥤ Sheaf K A` associated to a functor `G : C ⥤ D` in the
same direction as `G`. -/
@[simps!]
def Sites.pushforward (G : C ⥤ D) : Sheaf J A ⥤ Sheaf K A :=
  sheafToPresheaf J A ⋙ lan G.op ⋙ presheafToSheaf K A
#align category_theory.sites.pushforward CategoryTheory.Sites.pushforward

instance (G : C ⥤ D) [RepresentablyFlat G] : PreservesFiniteLimits (Sites.pushforward A J K G) := by
  have : PreservesFiniteLimits (lan (Functor.op G) ⋙ presheafToSheaf K A) :=
    compPreservesFiniteLimits _ _
  apply compPreservesFiniteLimits

/-- The pushforward functor is left adjoint to the pullback functor. -/
def Sites.pullbackPushforwardAdjunction {G : C ⥤ D} (hG₁ : CompatiblePreserving K G)
    (hG₂ : CoverPreserving J K G) : Sites.pushforward A J K G ⊣ Sites.pullback A hG₁ hG₂ :=
  ((Lan.adjunction A G.op).comp (sheafificationAdjunction K A)).restrictFullyFaithful
    (sheafToPresheaf J A) (𝟭 _)
    (NatIso.ofComponents fun _ => Iso.refl _)
    (NatIso.ofComponents fun _ => Iso.refl _)
#align category_theory.sites.pullback_pushforward_adjunction CategoryTheory.Sites.pullbackPushforwardAdjunction

end CategoryTheory
```
