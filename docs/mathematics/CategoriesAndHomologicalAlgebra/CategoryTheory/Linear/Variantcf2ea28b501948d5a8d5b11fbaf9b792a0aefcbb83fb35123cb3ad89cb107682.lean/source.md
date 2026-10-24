# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variantcf2ea28b501948d5a8d5b11fbaf9b792a0aefcbb83fb35123cb3ad89cb107682

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fbab7a5fe434349cace8be7cc05592645de4b2c` · SHA-256 `65b38ded19f291e6a6546e7912db4ab74d27d5cc2c4d1df92b69c01de9a889f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Smul.Variantd22ea4e946ef5771f1a3dc955d4a3f98d5b7b8346115643bfc2122bd63e2a8ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d22ea4e946ef5771f1a3dc955d4a3f98d5b7b8346115643bfc2122bd63e2a8ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Smul.Variantd22ea4e946ef5771f1a3dc955d4a3f98d5b7b8346115643bfc2122bd63e2a8ff","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d22ea4e946ef5771f1a3dc955d4a3f98d5b7b8346115643bfc2122bd63e2a8ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Quotient/Linear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Quotient
public import Mathlib.CategoryTheory.Linear.LinearFunctor

/-!
# The quotient category is linear

If `r : HomRel C` is a congruence on a preadditive category `C` which satisfies certain
compatibilities, we have already defined a preadditive structure on `Quotient r` in
the file `Mathlib/CategoryTheory/Quotient/Preadditive.lean` such that `functor r : C ⥤ Quotient r`
is an additive functor. In this file, assuming moreover that `C` is an `R`-linear category
and that the relation `r` is compatible with the scalar multiplication by any `a : R`, we
show that `Quotient r` is an `R`-linear category and that `functor r : C ⥤ Quotient r`
is an `R`-linear functor.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Smul.Variantd22ea4e946ef5771f1a3dc955d4a3f98d5b7b8346115643bfc2122bd63e2a8ff

@[expose] public section

namespace CategoryTheory

namespace Quotient

variable {R C : Type*} [Semiring R] [Category* C] [Preadditive C] [Linear R C]
  (r : HomRel C) [Congruence r]

namespace Linear

/-- The scalar multiplications on morphisms in `Quotient R`. -/
@[instance_reducible]
def smul (hr : ∀ (a : R) ⦃X Y : C⦄ (f₁ f₂ : X ⟶ Y) (_ : r f₁ f₂), r (a • f₁) (a • f₂))
    (X Y : Quotient r) : SMul R (X ⟶ Y) where
  smul a := Quot.lift (fun g => Quot.mk _ (a • g)) (fun f₁ f₂ h₁₂ => by
    simp only [HomRel.compClosure_eq_self] at h₁₂
    apply Quot.sound
    rw [HomRel.compClosure_eq_self]
    exact hr _ _ _ h₁₂)

@[simp]
lemma smul_eq (hr : ∀ (a : R) ⦃X Y : C⦄ (f₁ f₂ : X ⟶ Y) (_ : r f₁ f₂), r (a • f₁) (a • f₂))
    (a : R) {X Y : C} (f : X ⟶ Y) :
    letI := smul r hr
    a • (functor r).map f = (functor r).map (a • f) := rfl


/-- Auxiliary definition for `Quotient.Linear.module`. -/
@[instance_reducible]
def module' (hr : ∀ (a : R) ⦃X Y : C⦄ (f₁ f₂ : X ⟶ Y) (_ : r f₁ f₂), r (a • f₁) (a • f₂))
    [Preadditive (Quotient r)] [(functor r).Additive] (X Y : C) :
    Module R ((functor r).obj X ⟶ (functor r).obj Y) :=
  letI smul := smul r hr ((functor r).obj X) ((functor r).obj Y)
  { smul_zero := fun a => by
      rw [← (functor r).map_zero X Y, smul_eq, smul_zero]
    zero_smul := fun f => by
      obtain ⟨f, rfl⟩ := (functor r).map_surjective f
      dsimp [smul]
      rw [zero_smul, Functor.map_zero]
    one_smul := fun f => by
      obtain ⟨f, rfl⟩ := (functor r).map_surjective f
      dsimp [smul]
      rw [one_smul]
    mul_smul := fun a b f => by
      obtain ⟨f, rfl⟩ := (functor r).map_surjective f
      dsimp [smul]
      rw [mul_smul]
    smul_add := fun a f g => by
      obtain ⟨f, rfl⟩ := (functor r).map_surjective f
      obtain ⟨g, rfl⟩ := (functor r).map_surjective g
      dsimp [smul]
      rw [← (functor r).map_add, smul_eq, ← (functor r).map_add, smul_add]
    add_smul := fun a b f => by
      obtain ⟨f, rfl⟩ := (functor r).map_surjective f
      dsimp [smul]
      rw [add_smul, Functor.map_add] }

/-- Auxiliary definition for `Quotient.linear`. -/
@[instance_reducible]
def module (hr : ∀ (a : R) ⦃X Y : C⦄ (f₁ f₂ : X ⟶ Y) (_ : r f₁ f₂), r (a • f₁) (a • f₂))
    [Preadditive (Quotient r)] [(functor r).Additive] (X Y : Quotient r) :
    Module R (X ⟶ Y) := module' r hr X.as Y.as

end Linear

variable (R)

/-- Assuming `Quotient r` has already been endowed with a preadditive category structure
such that `functor r : C ⥤ Quotient r` is additive, and that `C` has an `R`-linear category
structure compatible with `r`, this is the induced `R`-linear category structure on
`Quotient r`. -/
@[instance_reducible]
def linear (hr : ∀ (a : R) ⦃X Y : C⦄ (f₁ f₂ : X ⟶ Y) (_ : r f₁ f₂), r (a • f₁) (a • f₂))
    [Preadditive (Quotient r)] [(functor r).Additive] : Linear R (Quotient r) := by
  letI := Linear.module r hr
  exact
    { smul_comp := by
        rintro ⟨X⟩ ⟨Y⟩ ⟨Z⟩ a f g
        obtain ⟨f, rfl⟩ := (functor r).map_surjective f
        obtain ⟨g, rfl⟩ := (functor r).map_surjective g
        rw [Linear.smul_eq, ← Functor.map_comp, ← Functor.map_comp,
          Linear.smul_eq, Linear.smul_comp]
      comp_smul := by
        rintro ⟨X⟩ ⟨Y⟩ ⟨Z⟩ f a g
        obtain ⟨f, rfl⟩ := (functor r).map_surjective f
        obtain ⟨g, rfl⟩ := (functor r).map_surjective g
        rw [Linear.smul_eq, ← Functor.map_comp, ← Functor.map_comp,
          Linear.smul_eq, Linear.comp_smul] }

instance linear_functor
    (hr : ∀ (a : R) ⦃X Y : C⦄ (f₁ f₂ : X ⟶ Y) (_ : r f₁ f₂), r (a • f₁) (a • f₂))
    [Preadditive (Quotient r)] [(functor r).Additive] :
    letI := linear R r hr; Functor.Linear R (functor r) := by
  let := linear R r hr; exact { }

end Quotient

end CategoryTheory
```
