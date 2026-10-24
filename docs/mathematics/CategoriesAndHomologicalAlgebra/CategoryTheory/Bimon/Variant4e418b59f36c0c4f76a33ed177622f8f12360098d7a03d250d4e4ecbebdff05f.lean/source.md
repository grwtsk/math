# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bimon.Variant4e418b59f36c0c4f76a33ed177622f8f12360098d7a03d250d4e4ecbebdff05f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8612de65224a28464ffb0164c78846c738aa907d` · SHA-256 `e98a7234503684bdcc098261093fe4b4a8952cc030fcdbf436638ff6428acdd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BimonClass.Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BimonClass.Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Bimon_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Comon_

/-!
# The category of bimonoids in a braided monoidal category.

We define bimonoids in a braided monoidal category `C`
as comonoid objects in the category of monoid objects in `C`.

We verify that this is equivalent to the monoid objects in the category of comonoid objects.

## TODO
* Construct the category of modules, and show that it is monoidal with a monoidal forgetful functor
  to `C`.
* Some form of Tannaka reconstruction:
  given a monoidal functor `F : C ⥤ D` into a braided category `D`,
  the internal endomorphisms of `F` form a bimonoid in presheaves on `D`,
  in good circumstances this is representable by a bimonoid in `D`, and then
  `C` is monoidally equivalent to the modules over that bimonoid.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BimonClass.Variantab64aff2a02f9f2da0f3e024cc3cf528a8dddf41b0715de0ed203508b8094db4

noncomputable section

universe v₁ v₂ u₁ u₂ u

open CategoryTheory MonoidalCategory

variable {C : Type u₁} [Category.{v₁} C] [MonoidalCategory.{v₁} C] [BraidedCategory C]

open scoped Mon_Class Comon_Class

/--
A bimonoid object in a braided category `C` is a object that is simultaneously monoid and comonoid
objects, and structure morphisms of them satisfy appropriate consistency conditions.
-/
class Bimon_Class (M : C) extends Mon_Class M, Comon_Class M where
  /- For the names of the conditions below, the unprimed names are reserved for the version where
  the argument `M` is explicit. -/
  mul_comul' : μ[M] ≫ Δ[M] = (Δ[M] ⊗ Δ[M]) ≫ tensorμ M M M M ≫ (μ[M] ⊗ μ[M]) := by aesop_cat
  one_comul' : η[M] ≫ Δ[M] = η[M ⊗ M] := by aesop_cat
  mul_counit' : μ[M] ≫ ε[M] = ε[M ⊗ M] := by aesop_cat
  one_counit' : η[M] ≫ ε[M] = 𝟙 (𝟙_ C) := by aesop_cat

namespace Bimon_Class

/- The simp attribute is reserved for the unprimed versions. -/
attribute [reassoc] mul_comul' one_comul' mul_counit' one_counit'

variable (M : C) [Bimon_Class M]

@[reassoc (attr := simp)]
theorem mul_comul (M : C) [Bimon_Class M] :
    μ[M] ≫ Δ[M] = (Δ[M] ⊗ Δ[M]) ≫ tensorμ M M M M ≫ (μ[M] ⊗ μ[M]) :=
  mul_comul'

@[reassoc (attr := simp)]
theorem one_comul (M : C) [Bimon_Class M] : η[M] ≫ Δ[M] = η[M ⊗ M] := one_comul'

@[reassoc (attr := simp)]
theorem mul_counit (M : C) [Bimon_Class M] : μ[M] ≫ ε[M] = ε[M ⊗ M] := mul_counit'

@[reassoc (attr := simp)]
theorem one_counit (M : C) [Bimon_Class M] : η[M] ≫ ε[M] = 𝟙 (𝟙_ C) := one_counit'

end Bimon_Class

/-- The property that a morphism between bimonoid objects is a bimonoid morphism. -/
class IsBimon_Hom {M N : C} [Bimon_Class M] [Bimon_Class N] (f : M ⟶ N) : Prop extends
    IsMon_Hom f, IsComon_Hom f

variable (C)

/--
A bimonoid object in a braided category `C` is a comonoid object in the (monoidal)
category of monoid objects in `C`.
-/
def Bimon_ := Comon_ (Mon_ C)

namespace Bimon_

instance : Category (Bimon_ C) := inferInstanceAs (Category (Comon_ (Mon_ C)))

@[ext] lemma ext {X Y : Bimon_ C} {f g : X ⟶ Y} (w : f.hom.hom = g.hom.hom) : f = g :=
  Comon_.Hom.ext (Mon_.Hom.ext w)

@[simp] theorem id_hom' (M : Bimon_ C) : Comon_.Hom.hom (𝟙 M) = 𝟙 M.X := rfl

@[simp]
theorem comp_hom' {M N K : Bimon_ C} (f : M ⟶ N) (g : N ⟶ K) : (f ≫ g).hom = f.hom ≫ g.hom :=
  rfl

/-- The forgetful functor from bimonoid objects to monoid objects. -/
abbrev toMon_ : Bimon_ C ⥤ Mon_ C := Comon_.forget (Mon_ C)

/-- The forgetful functor from bimonoid objects to the underlying category. -/
def forget : Bimon_ C ⥤ C := toMon_ C ⋙ Mon_.forget C

@[simp]
theorem toMon_forget : toMon_ C ⋙ Mon_.forget C = forget C := rfl

/-- The forgetful functor from bimonoid objects to comonoid objects. -/
@[simps!]
def toComon_ : Bimon_ C ⥤ Comon_ C := (Mon_.forget C).mapComon

@[simp]
theorem toComon_forget : toComon_ C ⋙ Comon_.forget C = forget C := rfl

/-- The object level part of the forward direction of `Comon_ (Mon_ C) ≌ Mon_ (Comon_ C)` -/
def toMon_Comon_obj (M : Bimon_ C) : Mon_ (Comon_ C) where
  X := (toComon_ C).obj M
  one := { hom := M.X.one }
  mul :=
  { hom := M.X.mul,
    hom_comul := by dsimp; simp [tensor_μ] }

attribute [simps] toMon_Comon_obj -- We add this after the fact to avoid a timeout.

/-- The forward direction of `Comon_ (Mon_ C) ≌ Mon_ (Comon_ C)` -/
@[simps]
def toMon_Comon_ : Bimon_ C ⥤ Mon_ (Comon_ C) where
  obj := toMon_Comon_obj C
  map f :=
  { hom := (toComon_ C).map f }

/-- The object level part of the backward direction of `Comon_ (Mon_ C) ≌ Mon_ (Comon_ C)` -/
@[simps]
def ofMon_Comon_obj (M : Mon_ (Comon_ C)) : Bimon_ C where
  X := (Comon_.forget C).mapMon.obj M
  counit := { hom := M.X.counit }
  comul :=
  { hom := M.X.comul,
    mul_hom := by dsimp; simp [tensor_μ] }

/-- The backward direction of `Comon_ (Mon_ C) ≌ Mon_ (Comon_ C)` -/
@[simps]
def ofMon_Comon_ : Mon_ (Comon_ C) ⥤ Bimon_ C where
  obj := ofMon_Comon_obj C
  map f :=
  { hom := (Comon_.forget C).mapMon.map f }

/-- The equivalence `Comon_ (Mon_ C) ≌ Mon_ (Comon_ C)` -/
def equivMon_Comon_ : Bimon_ C ≌ Mon_ (Comon_ C) where
  functor := toMon_Comon_ C
  inverse := ofMon_Comon_ C
  unitIso := NatIso.ofComponents (fun _ => Comon_.mkIso (Mon_.mkIso (Iso.refl _)))
  counitIso := NatIso.ofComponents (fun _ => Mon_.mkIso (Comon_.mkIso (Iso.refl _)))

/-! # The trivial bimonoid -/

/-- The trivial bimonoid object. -/
@[simps!]
def trivial : Bimon_ C := Comon_.trivial (Mon_ C)

/-- The bimonoid morphism from the trivial bimonoid to any bimonoid. -/
@[simps]
def trivialTo (A : Bimon_ C) : trivial C ⟶ A :=
  { hom := (default : Mon_.trivial C ⟶ A.X), }

@[deprecated (since := "2024-12-07")] alias trivial_to := trivialTo
@[deprecated (since := "2024-12-07")] alias trivial_to_hom := trivialTo_hom

/-- The bimonoid morphism from any bimonoid to the trivial bimonoid. -/
@[simps!]
def toTrivial (A : Bimon_ C) : A ⟶ trivial C :=
  (default : @Quiver.Hom (Comon_ (Mon_ C)) _ A (Comon_.trivial (Mon_ C)))

@[deprecated (since := "2024-12-07")] alias to_trivial := toTrivial
@[deprecated (since := "2024-12-07")] alias to_trivial_hom := toTrivial_hom

/-! # Additional lemmas -/

variable {C}

@[reassoc]
theorem one_comul (M : Bimon_ C) :
    M.X.one ≫ M.comul.hom = (λ_ _).inv ≫ (M.X.one ⊗ M.X.one) := by
  simp

@[reassoc]
theorem mul_counit (M : Bimon_ C) :
    M.X.mul ≫ M.counit.hom = (M.counit.hom ⊗ M.counit.hom) ≫ (λ_ _).hom := by
  simp

/-- Compatibility of the monoid and comonoid structures, in terms of morphisms in `C`. -/
@[reassoc (attr := simp)] theorem compatibility (M : Bimon_ C) :
    (M.comul.hom ⊗ M.comul.hom) ≫
      (α_ _ _ (M.X.X ⊗ M.X.X)).hom ≫ M.X.X ◁ (α_ _ _ _).inv ≫
      M.X.X ◁ (β_ M.X.X M.X.X).hom ▷ M.X.X ≫
      M.X.X ◁ (α_ _ _ _).hom ≫ (α_ _ _ _).inv ≫
      (M.X.mul ⊗ M.X.mul) =
    M.X.mul ≫ M.comul.hom := by
  have := (Mon_.Hom.mul_hom M.comul).symm
  simpa [-Mon_.Hom.mul_hom, tensorμ] using this

@[reassoc (attr := simp)] theorem comul_counit_hom (M : Bimon_ C) :
    M.comul.hom ≫ (_ ◁ M.counit.hom) = (ρ_ _).inv := by
  simpa [- Comon_.comul_counit] using congr_arg Mon_.Hom.hom M.comul_counit

@[reassoc (attr := simp)] theorem counit_comul_hom (M : Bimon_ C) :
    M.comul.hom ≫ (M.counit.hom ▷ _) = (λ_ _).inv := by
  simpa [- Comon_.counit_comul] using congr_arg Mon_.Hom.hom M.counit_comul

@[reassoc (attr := simp)] theorem comul_assoc_hom (M : Bimon_ C) :
    M.comul.hom ≫ (M.X.X ◁ M.comul.hom) =
      M.comul.hom ≫ (M.comul.hom ▷ M.X.X) ≫ (α_ M.X.X M.X.X M.X.X).hom := by
  simpa [- Comon_.comul_assoc] using congr_arg Mon_.Hom.hom M.comul_assoc

@[reassoc] theorem comul_assoc_flip_hom (M : Bimon_ C) :
    M.comul.hom ≫ (M.comul.hom ▷ M.X.X) =
      M.comul.hom ≫ (M.X.X ◁ M.comul.hom) ≫ (α_ M.X.X M.X.X M.X.X).inv := by
  simp

@[reassoc] theorem hom_comul_hom {M N : Bimon_ C} (f : M ⟶ N) :
    f.hom.hom ≫ N.comul.hom = M.comul.hom ≫ (f.hom.hom ⊗ f.hom.hom) := by
  simpa [- Comon_.Hom.hom_comul] using congr_arg Mon_.Hom.hom f.hom_comul

@[reassoc] theorem hom_counit_hom {M N : Bimon_ C} (f : M ⟶ N) :
    f.hom.hom ≫ N.counit.hom = M.counit.hom := by
  simpa [- Comon_.Hom.hom_counit] using congr_arg Mon_.Hom.hom f.hom_counit

end Bimon_
```
