# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fiber.Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba144c954cae772a78f9e0b8e5c860d5e3f31b98` · SHA-256 `e2743be0f8465e9445037295a77f7b32d41a194a8c63af3db722e08c6226769e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fiber.Variantec760548fcc66d1ac30c084c4b3c94e0d752d2d65e3ad3ed83c18c3ef99035cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec760548fcc66d1ac30c084c4b3c94e0d752d2d65e3ad3ed83c18c3ef99035cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Fiber.Variantec760548fcc66d1ac30c084c4b3c94e0d752d2d65e3ad3ed83c18c3ef99035cd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ec760548fcc66d1ac30c084c4b3c94e0d752d2d65e3ad3ed83c18c3ef99035cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/FiberedCategory/Fiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Calle Sönne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Calle Sönne, Paul Lezeau
-/

import Mathlib.CategoryTheory.FiberedCategory.HomLift
import Mathlib.CategoryTheory.Functor.Const

/-!

# Fibers of a functors

In this file we define, for a functor `p : 𝒳 ⥤ 𝒴`, the fiber categories `Fiber p S` for every
`S : 𝒮` as follows
- An object in `Fiber p S` is a pair `(a, ha)` where `a : 𝒳` and `ha : p.obj a = S`.
- A morphism in `Fiber p S` is a morphism `φ : a ⟶ b` in 𝒳 such that `p.map φ = 𝟙 S`.

For any category `C` equipped with a functor `F : C ⥤ 𝒳` such that `F ⋙ p` is constant at `S`,
we define a functor `inducedFunctor : C ⥤ Fiber p S` that `F` factors through.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fiber.Variantec760548fcc66d1ac30c084c4b3c94e0d752d2d65e3ad3ed83c18c3ef99035cd

universe v₁ u₁ v₂ u₂ v₃ u₃

namespace CategoryTheory

open IsHomLift

namespace Functor

variable {𝒮 : Type u₁} {𝒳 : Type u₂} [Category.{v₁} 𝒮] [Category.{v₂} 𝒳]

/-- `Fiber p S` is the type of elements of `𝒳` mapping to `S` via `p`. -/
def Fiber (p : 𝒳 ⥤ 𝒮) (S : 𝒮) := { a : 𝒳 // p.obj a = S }

namespace Fiber

variable {p : 𝒳 ⥤ 𝒮} {S : 𝒮}

/-- `Fiber p S` has the structure of a category with morphisms being those lying over `𝟙 S`. -/
instance fiberCategory : Category (Fiber p S) where
  Hom a b := {φ : a.1 ⟶ b.1 // IsHomLift p (𝟙 S) φ}
  id a := ⟨𝟙 a.1, IsHomLift.id a.2⟩
  comp φ ψ := ⟨φ.val ≫ ψ.val, by have := φ.2; have := ψ.2; infer_instance⟩

/-- The functor including `Fiber p S` into `𝒳`. -/
def fiberInclusion : Fiber p S ⥤ 𝒳 where
  obj a := a.1
  map φ := φ.1

instance {a b : Fiber p S} (φ : a ⟶ b) : IsHomLift p (𝟙 S) (fiberInclusion.map φ) := φ.2

@[ext]
lemma hom_ext {a b : Fiber p S} {φ ψ : a ⟶ b}
    (h : fiberInclusion.map φ = fiberInclusion.map ψ) : φ = ψ :=
  Subtype.ext h

instance : (fiberInclusion : Fiber p S ⥤ _).Faithful where

/-- For fixed `S : 𝒮` this is the natural isomorphism between `fiberInclusion ⋙ p` and the constant
function valued at `S`. -/
@[simps!]
def fiberInclusionCompIsoConst : fiberInclusion ⋙ p ≅ (const (Fiber p S)).obj S :=
  NatIso.ofComponents (fun X ↦ eqToIso X.2)
    (fun φ ↦ by simp [IsHomLift.fac' p (𝟙 S) (fiberInclusion.map φ)])

lemma fiberInclusion_comp_eq_const : fiberInclusion ⋙ p = (const (Fiber p S)).obj S :=
  Functor.ext (fun x ↦ x.2) (fun _ _ φ ↦ IsHomLift.fac' p (𝟙 S) (fiberInclusion.map φ))

/-- The object of the fiber over `S` corresponding to a `a : 𝒳` such that `p(a) = S`. -/
def mk {p : 𝒳 ⥤ 𝒮} {S : 𝒮} {a : 𝒳} (ha : p.obj a = S) : Fiber p S := ⟨a, ha⟩

@[simp]
lemma fiberInclusion_mk {p : 𝒳 ⥤ 𝒮} {S : 𝒮} {a : 𝒳} (ha : p.obj a = S) :
    fiberInclusion.obj (mk ha) = a :=
  rfl

/-- The morphism in the fiber over `S` corresponding to a morphism in `𝒳` lifting `𝟙 S`. -/
def homMk (p : 𝒳 ⥤ 𝒮) (S : 𝒮) {a b : 𝒳} (φ : a ⟶ b) [IsHomLift p (𝟙 S) φ] :
    mk (domain_eq p (𝟙 S) φ) ⟶ mk (codomain_eq p (𝟙 S) φ) :=
  ⟨φ, inferInstance⟩

@[simp]
lemma fiberInclusion_homMk (p : 𝒳 ⥤ 𝒮) (S : 𝒮) {a b : 𝒳} (φ : a ⟶ b) [IsHomLift p (𝟙 S) φ] :
    fiberInclusion.map (homMk p S φ) = φ :=
  rfl

@[simp]
lemma homMk_id (p : 𝒳 ⥤ 𝒮) (S : 𝒮) (a : 𝒳) [IsHomLift p (𝟙 S) (𝟙 a)] :
    homMk p S (𝟙 a) = 𝟙 (mk (domain_eq p (𝟙 S) (𝟙 a))) :=
  rfl

@[simp]
lemma homMk_comp {a b c : 𝒳} (φ : a ⟶ b) (ψ : b ⟶ c) [IsHomLift p (𝟙 S) φ]
    [IsHomLift p (𝟙 S) ψ] : homMk p S φ ≫ homMk p S ψ = homMk p S (φ ≫ ψ) :=
  rfl

section

variable {p : 𝒳 ⥤ 𝒮} {S : 𝒮} {C : Type u₃} [Category.{v₃} C] {F : C ⥤ 𝒳}
  (hF : F ⋙ p = (const C).obj S)

/-- Given a functor `F : C ⥤ 𝒳` such that `F ⋙ p` is constant at some `S : 𝒮`, then
we get an induced functor `C ⥤ Fiber p S` that `F` factors through. -/
def inducedFunctor : C ⥤ Fiber p S where
  obj x := ⟨F.obj x, by simp only [← comp_obj, hF, const_obj_obj]⟩
  map φ := ⟨F.map φ, of_commsq _ _ _ (congr_obj hF _) (congr_obj hF _) <|
    by simpa using (eqToIso hF).hom.naturality φ⟩

@[simp]
lemma inducedFunctor_map {X Y : C} (f : X ⟶ Y) :
    fiberInclusion.map ((inducedFunctor hF).map f) = F.map f := rfl

/-- Given a functor `F : C ⥤ 𝒳` such that `F ⋙ p` is constant at some `S : 𝒮`, then
we get a natural isomorphism between `inducedFunctor _ ⋙ fiberInclusion` and `F`. -/
@[simps!]
def inducedFunctorCompIsoSelf : (inducedFunctor hF) ⋙ fiberInclusion ≅ F := Iso.refl _

lemma inducedFunctor_comp : (inducedFunctor hF) ⋙ fiberInclusion = F := rfl

end

end Fiber

end Functor

end CategoryTheory
```
