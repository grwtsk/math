-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSerreClass.Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsSerreClass.Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/SerreClass/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Abelian.Basic
import Mathlib.CategoryTheory.ObjectProperty.ContainsZero
import Mathlib.CategoryTheory.ObjectProperty.EpiMono
import Mathlib.CategoryTheory.ObjectProperty.Extensions
import Mathlib.Algebra.Homology.ShortComplex.ShortExact

/-!
# Serre classes

For any abelian category `C`, we introduce a type class `IsSerreClass C` for
Serre classes in `S` (also known as "Serre subcategories"). A Serre class is
a property `P : ObjectProperty C` of objects in `P` which holds for a zero object,
and is closed under subobjects, quotients and extensions.

## Future works

* Show that the localization of `C` with respect to a Serre class is an abelian category.

## References

* [Jean-Pierre Serre, *Groupes d'homotopie et classes de groupes abéliens*][serre1958]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSerreClass.Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f

universe v v' u u'

namespace CategoryTheory

open Limits ZeroObject

variable {C : Type u} [Category.{v} C] [Abelian C] (P : ObjectProperty C)
  {D : Type u'} [Category.{v'} D] [Abelian D]

namespace ObjectProperty

/-- A Serre class in an abelian category consists of predicate which
hold for the zero object and is closed under subobjects, quotients, extensions. -/
class IsSerreClass : Prop extends P.ContainsZero,
    P.IsClosedUnderSubobjects, P.IsClosedUnderQuotients,
    P.IsClosedUnderExtensions where

variable [P.IsSerreClass]

example : P.IsClosedUnderIsomorphisms := inferInstance

instance : (⊤ : ObjectProperty C).IsSerreClass where

instance : IsSerreClass (IsZero (C := C)) where

lemma prop_iff_of_shortExact {S : ShortComplex C} (hS : S.ShortExact) :
    P S.X₂ ↔ P S.X₁ ∧ P S.X₃ :=
  ⟨fun h ↦ ⟨P.prop_X₁_of_shortExact hS h, P.prop_X₃_of_shortExact hS h⟩,
    fun h ↦ P.prop_X₂_of_shortExact hS h.1 h.2⟩

lemma prop_X₂_of_exact {S : ShortComplex C} (hS : S.Exact)
    (h₁ : P S.X₁) (h₃ : P S.X₃) : P S.X₂ := by
  let d := S.homologyData
  have := hS.epi_f' d.left
  have := hS.mono_g' d.right
  exact (P.prop_X₂_of_shortExact (hS.shortExact d)
    (P.prop_of_epi d.left.f' h₁) (P.prop_of_mono d.right.g' h₃) :)

instance (F : D ⥤ C) [PreservesFiniteLimits F]
    [PreservesFiniteColimits F] :
    (P.inverseImage F).IsSerreClass where

end ObjectProperty

end CategoryTheory
