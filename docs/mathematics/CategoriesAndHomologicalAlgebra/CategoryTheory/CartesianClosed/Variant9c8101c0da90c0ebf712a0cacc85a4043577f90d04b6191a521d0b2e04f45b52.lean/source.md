# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianClosed.Variant9c8101c0da90c0ebf712a0cacc85a4043577f90d04b6191a521d0b2e04f45b52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2f7bef90b7ea1260516cf9c03d43119f94d1351` · SHA-256 `a86c05119e88d39415925a77c9e95f3a06835293e0a23f9030c7e5050aa5e34a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Exp.Variantf93bebb5f7780b8357f0f2dd19d204208d53d2a7ee71f3807747efbe4e373aa2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f93bebb5f7780b8357f0f2dd19d204208d53d2a7ee71f3807747efbe4e373aa2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Exp.Variantf93bebb5f7780b8357f0f2dd19d204208d53d2a7ee71f3807747efbe4e373aa2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f93bebb5f7780b8357f0f2dd19d204208d53d2a7ee71f3807747efbe4e373aa2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Category/Cat/CartesianClosed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Emily Riehl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Emily Riehl
-/
module

public import Mathlib.CategoryTheory.Functor.Currying
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Cat
public import Mathlib.CategoryTheory.Monoidal.Closed.Basic

/-!
# Cartesian closed structure on `Cat`

The category of small categories is Cartesian closed, with the exponential at a category `C`
defined by the functor category mapping out of `C`.

Adjoint transposition is defined by currying and uncurrying.

TODO: It would be useful to investigate and formalize further compatibilities along the
lines of `Cat.ihom_obj` and `Cat.ihom_map`, relating currying of functors with currying in
monoidal closed categories and precomposition with left whiskering. These may not be
definitional equalities but may have to be phrased using `eqToIso`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Exp.Variantf93bebb5f7780b8357f0f2dd19d204208d53d2a7ee71f3807747efbe4e373aa2

@[expose] public section

universe v u v₁ v₂ v₃ v₄ u₁ u₂ u₃ u₄

namespace CategoryTheory

open CategoryTheory.Functor Cat

namespace Cat

variable (C : Type u) [Category.{v} C]

/-- A category `C` induces a functor from `Cat` to itself defined
by forming the category of functors out of `C`. -/
@[simps]
def exp : Cat ⥤ Cat where
  obj D := ↧(C ⥤ D)
  map F := ((whiskeringRight _ _ _).obj F.toFunctor).toCatHom

end Cat

section

variable {C : Type u₂} [Category.{v₂} C] {D : Type u₃}
  [Category.{v₃} D] {E : Type u₄} [Category.{v₄} E]

/-- The isomorphism of categories of bifunctors given by currying. -/
@[simps!]
def curryingIso : Cat.of (C ⥤ D ⥤ E) ≅ Cat.of (C × D ⥤ E) :=
  isoOfEquiv currying Functor.curry_obj_uncurry_obj Functor.uncurry_obj_curry_obj

/-- The isomorphism of categories of bifunctors given by flipping the arguments. -/
@[simps!]
def flippingIso : Cat.of (C ⥤ D ⥤ E) ≅ Cat.of (D ⥤ C ⥤ E) :=
  isoOfEquiv flipping Functor.flip_flip Functor.flip_flip

end

namespace Cat

section
variable (C : Type u) [Category.{u} C]

instance closed : Closed (Cat.of C) where
  rightAdj := exp C
  adj := Adjunction.mkOfHomEquiv
    { homEquiv _ _ := Equiv.trans (Cat.Hom.equivFunctor _ _) (curryingFlipEquiv.symm.trans
        (Functor.equivCatHom _ _))
      homEquiv_naturality_left_symm _ _ := rfl
      homEquiv_naturality_right _ _ := rfl }

instance cartesianClosed : MonoidalClosed Cat.{u, u} where
  closed C := closed C

@[simp]
lemma ihom_obj (D : Type u) [Category.{u} D] :
    (ihom (Cat.of C)).obj (Cat.of D) = Cat.of (C ⥤ D) := rfl

@[simp]
lemma ihom_map {D E : Type u} [Category.{u} D] [Category.{u} E] (F : D ⥤ E) :
    (ihom ↧C).map F.toCatHom = ((whiskeringRight _ _ _).obj F).toCatHom := rfl

end

end Cat

end CategoryTheory
```
