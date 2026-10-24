# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Oplax.Variantecff9469904f7a1f23af48e8e86a9d0626d4d4cf0ab4d1cec3cf053f43e98fa1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc661b5d25c9bcd01547a8f91bc8e55005845c54` · SHA-256 `bf0e2a5c2b8ae0ce674e20e31d50b99630bf88c48eac6dc7810d4eda1a0214a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Modification.Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Modification.Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Bicategory/Modification/Oplax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Calle Sönne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuma Mizuno, Calle Sönne
-/

import Mathlib.CategoryTheory.Bicategory.NaturalTransformation.Oplax

/-!
# Modifications between oplax transformations

A modification `Γ` between oplax transformations `η` and `θ` consists of a family of 2-morphisms
`Γ.app a : η.app a ⟶ θ.app a`, which for all 1-morphisms `f : a ⟶ b` satisfies the equation
`(F.map f ◁ app b) ≫ θ.naturality f = η.naturality f ≫ app a ▷ G.map f`.

## Main definitions

* `Modification η θ`: modifications between oplax transformations `η` and `θ`
* `Modification.vcomp η θ`: the vertical composition of oplax transformations `η`
  and `θ`
* `OplaxTrans.category F G`: the category structure on the oplax transformations
  between `F` and `G`

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Modification.Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1

namespace CategoryTheory.Oplax.OplaxTrans

open Category Bicategory

universe w₁ w₂ v₁ v₂ u₁ u₂

variable {B : Type u₁} [Bicategory.{w₁, v₁} B] {C : Type u₂} [Bicategory.{w₂, v₂} C]
  {F G : OplaxFunctor B C} (η θ : F ⟶ G)

variable {F G : OplaxFunctor B C}

/-- A modification `Γ` between oplax natural transformations `η` and `θ` consists of a family of
2-morphisms `Γ.app a : η.app a ⟶ θ.app a`, which satisfies the equation
`(F.map f ◁ app b) ≫ θ.naturality f = η.naturality f ≫ (app a ▷ G.map f)`
for each 1-morphism `f : a ⟶ b`.
-/
@[ext]
structure Modification (η θ : F ⟶ G) where
  /-- The underlying family of 2-morphisms. -/
  app (a : B) : η.app a ⟶ θ.app a
  /-- The naturality condition. -/
  naturality :
    ∀ {a b : B} (f : a ⟶ b),
      F.map f ◁ app b ≫ θ.naturality f = η.naturality f ≫ app a ▷ G.map f := by
    aesop_cat

attribute [reassoc (attr := simp)] Modification.naturality

variable {η θ ι : F ⟶ G}

namespace Modification

variable (η)

/-- The identity modification. -/
@[simps]
def id : Modification η η where app a := 𝟙 (η.app a)

instance : Inhabited (Modification η η) :=
  ⟨Modification.id η⟩

variable {η}

section

variable (Γ : Modification η θ) {a b c : B} {a' : C}

@[reassoc (attr := simp)]
theorem whiskerLeft_naturality (f : a' ⟶ F.obj b) (g : b ⟶ c) :
    f ◁ F.map g ◁ Γ.app c ≫ f ◁ θ.naturality g = f ◁ η.naturality g ≫ f ◁ Γ.app b ▷ G.map g := by
  simp_rw [← Bicategory.whiskerLeft_comp, naturality]

@[reassoc (attr := simp)]
theorem whiskerRight_naturality (f : a ⟶ b) (g : G.obj b ⟶ a') :
    F.map f ◁ Γ.app b ▷ g ≫ (α_ _ _ _).inv ≫ θ.naturality f ▷ g =
      (α_ _ _ _).inv ≫ η.naturality f ▷ g ≫ Γ.app a ▷ G.map f ▷ g := by
  simp_rw [associator_inv_naturality_middle_assoc, ← comp_whiskerRight, naturality]

end

/-- Vertical composition of modifications. -/
@[simps]
def vcomp (Γ : Modification η θ) (Δ : Modification θ ι) : Modification η ι where
  app a := Γ.app a ≫ Δ.app a

end Modification

/-- Category structure on the oplax natural transformations between OplaxFunctors. -/
@[simps]
scoped instance category (F G : OplaxFunctor B C) : Category (F ⟶ G) where
  Hom := Modification
  id := Modification.id
  comp := Modification.vcomp

@[ext]
lemma ext {F G : OplaxFunctor B C} {α β : F ⟶ G} {m n : α ⟶ β} (w : ∀ b, m.app b = n.app b) :
    m = n := by
  apply Modification.ext
  ext
  apply w

/-- Version of `Modification.id_app` using category notation -/
@[simp]
lemma Modification.id_app' {X : B} {F G : OplaxFunctor B C} (α : F ⟶ G) :
    Modification.app (𝟙 α) X = 𝟙 (α.app X) := rfl

/-- Version of `Modification.comp_app` using category notation -/
@[simp]
lemma Modification.comp_app' {X : B} {F G : OplaxFunctor B C} {α β γ : F ⟶ G}
    (m : α ⟶ β) (n : β ⟶ γ) : (m ≫ n).app X = m.app X ≫ n.app X :=
  rfl

/-- Construct a modification isomorphism between oplax natural transformations
by giving object level isomorphisms, and checking naturality only in the forward direction.
-/
@[simps]
def ModificationIso.ofComponents (app : ∀ a, η.app a ≅ θ.app a)
    (naturality :
      ∀ {a b} (f : a ⟶ b),
        F.map f ◁ (app b).hom ≫ θ.naturality f = η.naturality f ≫ (app a).hom ▷ G.map f) :
    η ≅ θ where
  hom := { app := fun a => (app a).hom }
  inv :=
    { app := fun a => (app a).inv
      naturality := fun {a b} f => by
        simpa using congr_arg (fun f => _ ◁ (app b).inv ≫ f ≫ (app a).inv ▷ _) (naturality f).symm }

end CategoryTheory.Oplax.OplaxTrans
```
