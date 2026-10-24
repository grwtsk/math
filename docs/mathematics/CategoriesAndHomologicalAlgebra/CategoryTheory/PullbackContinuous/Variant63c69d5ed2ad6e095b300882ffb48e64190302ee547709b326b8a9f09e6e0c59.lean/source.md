# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PullbackContinuous.Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ffa7105821a631753be0181a5194c65432c4d65` · SHA-256 `63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Pullback
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Sheafification
import Mathlib.Algebra.Category.ModuleCat.Sheaf.PushforwardContinuous

/-!
# Pullback of sheaves of modules

Let `S` and `R` be sheaves of rings over sites `(C, J)` and `(D, K)` respectively.
Let `F : C ⥤ D` be a continuous functor between these sites, and
let `φ : S ⟶ (F.sheafPushforwardContinuous RingCat.{u} J K).obj R` be a morphism
of sheaves of rings.

In this file, we define the pullback functor for sheaves of modules
`pullback.{v} φ : SheafOfModules.{v} S ⥤ SheafOfModules.{v} R`
that is left adjoint to `pushforward.{v} φ`. We show that it exists
under suitable assumptions, and prove that the pullback of (pre)sheaves of
modules commutes with the sheafification.

-/

universe v v₁ v₂ u₁ u₂ u

open CategoryTheory

namespace SheafOfModules

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
  {J : GrothendieckTopology C} {K : GrothendieckTopology D} {F : C ⥤ D}
  {S : Sheaf J RingCat.{u}} {R : Sheaf K RingCat.{u}}
  [Functor.IsContinuous.{u} F J K] [Functor.IsContinuous.{v} F J K]
  (φ : S ⟶ (F.sheafPushforwardContinuous RingCat.{u} J K).obj R)

section

variable [(pushforward.{v} φ).IsRightAdjoint]

/-- The pullback functor `SheafOfModules S ⥤ SheafOfModules R` induced by
a morphism of sheaves of rings `S ⟶ (F.sheafPushforwardContinuous RingCat.{u} J K).obj R`,
defined as the left adjoint functor to the pushforward, when it exists. -/
noncomputable def pullback : SheafOfModules.{v} S ⥤ SheafOfModules.{v} R :=
  (pushforward.{v} φ).leftAdjoint

/-- Given a continuous functor between sites `F`, and a morphism of sheaves of rings
`S ⟶ (F.sheafPushforwardContinuous RingCat.{u} J K).obj R`, this is the adjunction
between the corresponding pullback and pushforward functors on the categories
of sheaves of modules. -/
noncomputable def pullbackPushforwardAdjunction : pullback.{v} φ ⊣ pushforward.{v} φ :=
  Adjunction.ofIsRightAdjoint (pushforward φ)

end

section

variable [(PresheafOfModules.pushforward.{v} φ.val).IsRightAdjoint]
  [HasWeakSheafify K AddCommGrp.{v}] [K.WEqualsLocallyBijective AddCommGrp.{v}]

namespace PullbackConstruction

/-- Construction of a left adjoint to the functor `pushforward.{v} φ` by using the
pullback of presheaves of modules and the sheafification. -/
noncomputable def adjunction :
    (forget S ⋙ PresheafOfModules.pullback.{v} φ.val ⋙
      PresheafOfModules.sheafification (𝟙 R.val)) ⊣ pushforward.{v} φ :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun F G ↦
        ((PresheafOfModules.sheafificationAdjunction (𝟙 R.val)).homEquiv _ _).trans
            (((PresheafOfModules.pullbackPushforwardAdjunction φ.val).homEquiv F.val G.val).trans
              ((fullyFaithfulForget S).homEquiv (Y := (pushforward φ).obj G)).symm)
      homEquiv_naturality_left_symm := by
        intros
        dsimp [Functor.FullyFaithful.homEquiv]
        -- these erw seem difficult to remove
        erw [Adjunction.homEquiv_naturality_left_symm,
          Adjunction.homEquiv_naturality_left_symm]
        dsimp
        simp only [Functor.map_comp, Category.assoc]
      homEquiv_naturality_right := by
        intros
        dsimp
        -- these erw seem difficult to remove
        erw [Adjunction.homEquiv_naturality_right, Adjunction.homEquiv_naturality_right]
        dsimp
        rfl }

end PullbackConstruction

instance : (pushforward.{v} φ).IsRightAdjoint :=
  (PullbackConstruction.adjunction.{v} φ).isRightAdjoint

/-- The pullback functor on sheaves of modules can be described as a composition
of the forget functor to presheaves, the pullback on presheaves of modules, and
the sheafification functor. -/
noncomputable def pullbackIso :
    pullback.{v} φ ≅
      forget S ⋙ PresheafOfModules.pullback.{v} φ.val ⋙
        PresheafOfModules.sheafification (𝟙 R.val) :=
  Adjunction.leftAdjointUniq (pullbackPushforwardAdjunction φ)
    (PullbackConstruction.adjunction φ)

section

variable [HasWeakSheafify J AddCommGrp.{v}] [J.WEqualsLocallyBijective AddCommGrp.{v}]

/-- The pullback of (pre)sheaves of modules commutes with the sheafification. -/
noncomputable def sheafificationCompPullback :
    PresheafOfModules.sheafification (𝟙 S.val) ⋙ pullback.{v} φ ≅
      PresheafOfModules.pullback.{v} φ.val ⋙
        PresheafOfModules.sheafification (𝟙 R.val) :=
  Adjunction.leftAdjointUniq
    ((PresheafOfModules.sheafificationAdjunction (𝟙 S.val)).comp
      (pullbackPushforwardAdjunction φ))
    ((PresheafOfModules.pullbackPushforwardAdjunction φ.val).comp
      (PresheafOfModules.sheafificationAdjunction (𝟙 R.val)))

end

end

end SheafOfModules
```
