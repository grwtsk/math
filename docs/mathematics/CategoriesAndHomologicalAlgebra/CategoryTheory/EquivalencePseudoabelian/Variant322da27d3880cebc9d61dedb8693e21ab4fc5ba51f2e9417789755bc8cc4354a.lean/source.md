# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivalencePseudoabelian.Variant322da27d3880cebc9d61dedb8693e21ab4fc5ba51f2e9417789755bc8cc4354a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9361f1afb2e6816c3bf06225336fa93888554fca` · SHA-256 `322da27d3880cebc9d61dedb8693e21ab4fc5ba51f2e9417789755bc8cc4354a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.DoldKan.EquivalenceAdditive
import Mathlib.AlgebraicTopology.DoldKan.Compatibility
import Mathlib.CategoryTheory.Idempotents.SimplicialObject

#align_import algebraic_topology.dold_kan.equivalence_pseudoabelian from "leanprover-community/mathlib"@"32a7e535287f9c73f2e4d2aef306a39190f0b504"

/-!

# The Dold-Kan correspondence for pseudoabelian categories

In this file, for any idempotent complete additive category `C`,
the Dold-Kan equivalence
`Idempotents.DoldKan.Equivalence C : SimplicialObject C ≌ ChainComplex C ℕ`
is obtained. It is deduced from the equivalence
`Preadditive.DoldKan.Equivalence` between the respective idempotent
completions of these categories using the fact that when `C` is idempotent complete,
then both `SimplicialObject C` and `ChainComplex C ℕ` are idempotent complete.

The construction of `Idempotents.DoldKan.Equivalence` uses the tools
introduced in the file `Compatibility.lean`. Doing so, the functor
`Idempotents.DoldKan.N` of the equivalence is
the composition of `N₁ : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ)`
(defined in `FunctorN.lean`) and the inverse of the equivalence
`ChainComplex C ℕ ≌ Karoubi (ChainComplex C ℕ)`. The functor
`Idempotents.DoldKan.Γ` of the equivalence is by definition the functor
`Γ₀` introduced in `FunctorGamma.lean`.

(See `Equivalence.lean` for the general strategy of proof of the Dold-Kan equivalence.)

-/


noncomputable section

open CategoryTheory CategoryTheory.Category CategoryTheory.Limits CategoryTheory.Idempotents

variable {C : Type*} [Category C] [Preadditive C]

namespace CategoryTheory

namespace Idempotents

namespace DoldKan

open AlgebraicTopology.DoldKan

/-- The functor `N` for the equivalence is obtained by composing
`N' : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ)` and the inverse
of the equivalence `ChainComplex C ℕ ≌ Karoubi (ChainComplex C ℕ)`. -/
@[simps!, nolint unusedArguments]
def N  [IsIdempotentComplete C] [HasFiniteCoproducts C] : SimplicialObject C ⥤ ChainComplex C ℕ :=
  N₁ ⋙ (toKaroubiEquivalence _).inverse
set_option linter.uppercaseLean3 false in
#align category_theory.idempotents.dold_kan.N CategoryTheory.Idempotents.DoldKan.N

/-- The functor `Γ` for the equivalence is `Γ'`. -/
@[simps!, nolint unusedArguments]
def Γ  [IsIdempotentComplete C] [HasFiniteCoproducts C] : ChainComplex C ℕ ⥤ SimplicialObject C :=
  Γ₀
#align category_theory.idempotents.dold_kan.Γ CategoryTheory.Idempotents.DoldKan.Γ

variable [IsIdempotentComplete C] [HasFiniteCoproducts C]

theorem hN₁ :
    (toKaroubiEquivalence (SimplicialObject C)).functor ⋙ Preadditive.DoldKan.equivalence.functor =
      N₁ :=
  Functor.congr_obj (functorExtension₁_comp_whiskeringLeft_toKaroubi _ _) N₁
set_option linter.uppercaseLean3 false in
#align category_theory.idempotents.dold_kan.hN₁ CategoryTheory.Idempotents.DoldKan.hN₁

theorem hΓ₀ :
    (toKaroubiEquivalence (ChainComplex C ℕ)).functor ⋙ Preadditive.DoldKan.equivalence.inverse =
      Γ ⋙ (toKaroubiEquivalence _).functor :=
  Functor.congr_obj (functorExtension₂_comp_whiskeringLeft_toKaroubi _ _) Γ₀
#align category_theory.idempotents.dold_kan.hΓ₀ CategoryTheory.Idempotents.DoldKan.hΓ₀

/-- The Dold-Kan equivalence for pseudoabelian categories given
by the functors `N` and `Γ`. It is obtained by applying the results in
`Compatibility.lean` to the equivalence `Preadditive.DoldKan.Equivalence`. -/
def equivalence : SimplicialObject C ≌ ChainComplex C ℕ :=
  Compatibility.equivalence (eqToIso hN₁) (eqToIso hΓ₀)
#align category_theory.idempotents.dold_kan.equivalence CategoryTheory.Idempotents.DoldKan.equivalence

theorem equivalence_functor : (equivalence : SimplicialObject C ≌ _).functor = N :=
  rfl
#align category_theory.idempotents.dold_kan.equivalence_functor CategoryTheory.Idempotents.DoldKan.equivalence_functor

theorem equivalence_inverse : (equivalence : SimplicialObject C ≌ _).inverse = Γ :=
  rfl
#align category_theory.idempotents.dold_kan.equivalence_inverse CategoryTheory.Idempotents.DoldKan.equivalence_inverse

/-- The natural isomorphism `NΓ' satisfies the compatibility that is needed
for the construction of our counit isomorphism `η` -/
theorem hη :
    Compatibility.τ₀ =
      Compatibility.τ₁ (eqToIso hN₁) (eqToIso hΓ₀)
        (N₁Γ₀ : Γ ⋙ N₁ ≅ (toKaroubiEquivalence (ChainComplex C ℕ)).functor) := by
  ext K : 3
  simp only [Compatibility.τ₀_hom_app, Compatibility.τ₁_hom_app, eqToIso.hom]
  refine' (N₂Γ₂_compatible_with_N₁Γ₀ K).trans _
  simp only [N₂Γ₂ToKaroubiIso_hom, eqToHom_map, eqToHom_app, eqToHom_trans_assoc]
#align category_theory.idempotents.dold_kan.hη CategoryTheory.Idempotents.DoldKan.hη

/-- The counit isomorphism induced by `N₁Γ₀` -/
@[simps!]
def η : Γ ⋙ N ≅ 𝟭 (ChainComplex C ℕ) :=
  Compatibility.equivalenceCounitIso
    (N₁Γ₀ : (Γ : ChainComplex C ℕ ⥤ _) ⋙ N₁ ≅ (toKaroubiEquivalence _).functor)
#align category_theory.idempotents.dold_kan.η CategoryTheory.Idempotents.DoldKan.η

theorem equivalence_counitIso :
    DoldKan.equivalence.counitIso = (η : Γ ⋙ N ≅ 𝟭 (ChainComplex C ℕ)) :=
  Compatibility.equivalenceCounitIso_eq hη
#align category_theory.idempotents.dold_kan.equivalence_counit_iso CategoryTheory.Idempotents.DoldKan.equivalence_counitIso

theorem hε :
    Compatibility.υ (eqToIso hN₁) =
      (Γ₂N₁ : (toKaroubiEquivalence _).functor ≅
          (N₁ : SimplicialObject C ⥤ _) ⋙ Preadditive.DoldKan.equivalence.inverse) := by
  ext1
  rw [← cancel_epi Γ₂N₁.inv, Iso.inv_hom_id]
  ext X : 2
  rw [NatTrans.comp_app]
  erw [compatibility_Γ₂N₁_Γ₂N₂_natTrans X]
  rw [Compatibility.υ_hom_app, Preadditive.DoldKan.equivalence_unitIso, Iso.app_inv, assoc]
  erw [← NatTrans.comp_app_assoc, IsIso.hom_inv_id]
  rw [NatTrans.id_app, id_comp, NatTrans.id_app, eqToIso.hom, eqToHom_app, eqToHom_map]
  rw [compatibility_Γ₂N₁_Γ₂N₂_inv_app, eqToHom_trans, eqToHom_refl]
#align category_theory.idempotents.dold_kan.hε CategoryTheory.Idempotents.DoldKan.hε

/-- The unit isomorphism induced by `Γ₂N₁`. -/
def ε : 𝟭 (SimplicialObject C) ≅ N ⋙ Γ :=
  Compatibility.equivalenceUnitIso (eqToIso hΓ₀) Γ₂N₁
#align category_theory.idempotents.dold_kan.ε CategoryTheory.Idempotents.DoldKan.ε

theorem equivalence_unitIso :
    DoldKan.equivalence.unitIso = (ε : 𝟭 (SimplicialObject C) ≅ N ⋙ Γ) :=
  Compatibility.equivalenceUnitIso_eq hε
#align category_theory.idempotents.dold_kan.equivalence_unit_iso CategoryTheory.Idempotents.DoldKan.equivalence_unitIso

end DoldKan

end Idempotents

end CategoryTheory
```
