# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Concrete.Variante7676f68cf71c61890681a18a59487b969c1af27013735fb19e28b312b13a9e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7161951ffdb854ef1d2afe5c834b0795423e9ad9` · SHA-256 `508abd8b3e6b87d1bfa0c49cb34d1777aac53778267d39e5d87ebea6abd08e85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Injective.Variant2cf4cfe8bc77bde513defe0b047f7e015f84e39f841594908eeeec7199c05aff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2cf4cfe8bc77bde513defe0b047f7e015f84e39f841594908eeeec7199c05aff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Injective.Variant2cf4cfe8bc77bde513defe0b047f7e015f84e39f841594908eeeec7199c05aff","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2cf4cfe8bc77bde513defe0b047f7e015f84e39f841594908eeeec7199c05aff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/MorphismProperty/Concrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.CategoryTheory.ConcreteCategory.Forget
public import Mathlib.CategoryTheory.MorphismProperty.Composition
public import Mathlib.CategoryTheory.MorphismProperty.Factorization

/-!
# Morphism properties defined in concrete categories

In this file, we define the class of morphisms `MorphismProperty.injective`,
`MorphismProperty.surjective`, `MorphismProperty.bijective` in concrete
categories, and show that it is stable under composition and respects isomorphisms.

We introduce type-classes `HasSurjectiveInjectiveFactorization` and
`HasFunctorialSurjectiveInjectiveFactorization` expressing that in a concrete category `C`,
all morphisms can be factored (resp. factored functorially) as a surjective map
followed by an injective map.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Injective.Variant2cf4cfe8bc77bde513defe0b047f7e015f84e39f841594908eeeec7199c05aff

@[expose] public section

universe v u

namespace CategoryTheory

variable (C : Type u) [Category.{v} C] {FC : C → C → Type*} {CC : C → Type*}
variable [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory C FC]

namespace MorphismProperty

open Function

/-- Injectivity (in a concrete category) as a `MorphismProperty` -/
protected def injective : MorphismProperty C := fun _ _ f => Injective f

/-- Surjectivity (in a concrete category) as a `MorphismProperty` -/
protected def surjective : MorphismProperty C := fun _ _ f => Surjective f

/-- Bijectivity (in a concrete category) as a `MorphismProperty` -/
protected def bijective : MorphismProperty C := fun _ _ f => Bijective f

theorem bijective_eq_sup :
    MorphismProperty.bijective C = MorphismProperty.injective C ⊓ MorphismProperty.surjective C :=
  rfl

instance : (MorphismProperty.injective C).IsMultiplicative where
  id_mem X := by
    delta MorphismProperty.injective
    convert! injective_id
    aesop
  comp_mem f g hf hg := by
    delta MorphismProperty.injective
    rw [hom_comp]
    exact hg.comp hf

instance : (MorphismProperty.surjective C).IsMultiplicative where
  id_mem X := by
    delta MorphismProperty.surjective
    convert! surjective_id
    aesop
  comp_mem f g hf hg := by
    delta MorphismProperty.surjective
    rw [hom_comp]
    exact hg.comp hf

instance : (MorphismProperty.bijective C).IsMultiplicative where
  id_mem X := by
    delta MorphismProperty.bijective
    convert! bijective_id
    aesop
  comp_mem f g hf hg := by
    delta MorphismProperty.bijective
    rw [hom_comp]
    exact hg.comp hf

instance injective_respectsIso : (MorphismProperty.injective C).RespectsIso :=
  respectsIso_of_isStableUnderComposition
    (fun _ _ f (_ : IsIso f) => ((forget C).mapIso (asIso f)).toEquiv.injective)

instance surjective_respectsIso : (MorphismProperty.surjective C).RespectsIso :=
  respectsIso_of_isStableUnderComposition
    (fun _ _ f (_ : IsIso f) => ((forget C).mapIso (asIso f)).toEquiv.surjective)

instance bijective_respectsIso : (MorphismProperty.bijective C).RespectsIso :=
  respectsIso_of_isStableUnderComposition
    (fun _ _ f (_ : IsIso f) => ((forget C).mapIso (asIso f)).toEquiv.bijective)

end MorphismProperty

namespace ConcreteCategory

/-- The property that any morphism in a concrete category can be factored as a surjective
map followed by an injective map. -/
abbrev HasSurjectiveInjectiveFactorization :=
    (MorphismProperty.surjective C).HasFactorization (MorphismProperty.injective C)

/-- The property that any morphism in a concrete category can be functorially
factored as a surjective map followed by an injective map. -/
abbrev HasFunctorialSurjectiveInjectiveFactorization :=
  (MorphismProperty.surjective C).HasFunctorialFactorization (MorphismProperty.injective C)

/-- The structure containing the data of a functorial factorization of morphisms as
a surjective map followed by an injective map in a concrete category. -/
abbrev FunctorialSurjectiveInjectiveFactorizationData :=
  (MorphismProperty.surjective C).FunctorialFactorizationData (MorphismProperty.injective C)

end ConcreteCategory

open ConcreteCategory

/-- In the category of types, any map can be functorially factored as a surjective
map followed by an injective map. -/
def functorialSurjectiveInjectiveFactorizationData :
    FunctorialSurjectiveInjectiveFactorizationData (Type u) where
  Z.obj f := Set.range f.hom.hom
  Z.map φ := ↾fun y ↦ ⟨φ.right y.1, by obtain ⟨_, x, rfl⟩ := y; exact ⟨φ.left x, congr_hom φ.w x⟩⟩
  i :=
    { app := fun f => ↾fun x => ⟨f.hom x, ⟨x, rfl⟩⟩
      naturality := fun f g φ => by
        ext x
        exact congr_hom φ.w x }
  p :=
    { app := fun _ => ↾fun y => y.1
      naturality := by intros; rfl; }
  fac := rfl
  hi := by
    rintro f ⟨_, x, rfl⟩
    exact ⟨x, rfl⟩
  hp f x₁ x₂ h := by
    rw [Subtype.ext_iff]
    exact h

instance : HasFunctorialSurjectiveInjectiveFactorization (Type u) where
  nonempty_functorialFactorizationData :=
    ⟨functorialSurjectiveInjectiveFactorizationData⟩

end CategoryTheory
```
