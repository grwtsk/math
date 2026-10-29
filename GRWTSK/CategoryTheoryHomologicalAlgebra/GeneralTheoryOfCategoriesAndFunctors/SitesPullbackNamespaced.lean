-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafPullback.Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SheafPullback.Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Pullback.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Adjunction.Restrict
import Mathlib.CategoryTheory.Functor.Flat
import Mathlib.CategoryTheory.Sites.Continuous
import Mathlib.CategoryTheory.Sites.LeftExact

/-!
# Pullback of sheaves

## Main definitions

* `CategoryTheory.Functor.sheafPullback`: when `G : C ⥤ D` is a continuous functor
  between sites (for topologies `J` on `C` and `K` on `D`) such that the functor
  `G.sheafPushforwardContinuous A J K : Sheaf K A ⥤ Sheaf J A` has a left adjoint,
  this is the pullback functor defined as a chosen left adjoint.

* `CategoryTheory.Functor.sheafAdjunctionContinuous`: the adjunction
  `G.sheafPullback A J K ⊣ G.sheafPushforwardContinuous A J K` when the functor
  `G` is continuous. In case `G` is representably flat, the pullback functor
  on sheaves commutes with finite limits: this is a morphism of sites in the
  sense of SGA 4 IV 4.9.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafPullback.Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc

universe v₁ v₂ v₃ u₁ u₂ u₃

noncomputable section

namespace CategoryTheory.Functor

open Limits

section GeneralUniverses

variable {C : Type u₂} [Category.{v₂} C] {D : Type u₃} [Category.{v₃} D] (G : C ⥤ D)
  (A : Type u₁) [Category.{v₁} A]
  (J : GrothendieckTopology C) (K : GrothendieckTopology D)
  [Functor.IsContinuous.{v₁} G J K]

section

variable [(G.sheafPushforwardContinuous A J K).IsRightAdjoint]

/-- The pullback functor `Sheaf J A ⥤ Sheaf K A` associated to a functor `G : C ⥤ D` in the
same direction as `G`. -/
def sheafPullback : Sheaf J A ⥤ Sheaf K A :=
  (G.sheafPushforwardContinuous A J K).leftAdjoint

/-- The pullback functor is left adjoint to the pushforward functor. -/
def sheafAdjunctionContinuous :
    G.sheafPullback A J K ⊣ G.sheafPushforwardContinuous A J K :=
  Adjunction.ofIsRightAdjoint (G.sheafPushforwardContinuous A J K)

end

namespace sheafPullbackConstruction

variable [∀ (F : Cᵒᵖ ⥤ A), G.op.HasLeftKanExtension F]

/-- Construction of the pullback of sheaves using a left Kan extension. -/
def sheafPullback [HasWeakSheafify K A] : Sheaf J A ⥤ Sheaf K A :=
  sheafToPresheaf J A ⋙ G.op.lan ⋙ presheafToSheaf K A

/-- The constructed `sheafPullback G A J K` is left adjoint
to `G.sheafPushforwardContinuous A J K`. -/
def sheafAdjunctionContinuous [Functor.IsContinuous.{v₁} G J K] [HasWeakSheafify K A] :
    sheafPullback G A J K ⊣ G.sheafPushforwardContinuous A J K :=
  ((G.op.lanAdjunction A).comp (sheafificationAdjunction K A)).restrictFullyFaithful
    (fullyFaithfulSheafToPresheaf J A) (Functor.FullyFaithful.id _) (Iso.refl _) (Iso.refl _)

instance [HasWeakSheafify K A] :
    (G.sheafPushforwardContinuous A J K).IsRightAdjoint :=
  (sheafAdjunctionContinuous G A J K).isRightAdjoint

/-- The constructed pullback of sheaves is isomorphic to the abstract one. -/
def sheafPullbackIso [HasWeakSheafify K A] :
    Functor.sheafPullback G A J K ≅ sheafPullback G A J K :=
  Adjunction.leftAdjointUniq (Functor.sheafAdjunctionContinuous G A J K)
    (sheafAdjunctionContinuous G A J K)

variable [RepresentablyFlat G] [HasSheafify K A] [HasSheafify J A]
  [PreservesFiniteLimits (G.op.lan : (_ ⥤ _ ⥤ A))]

instance : PreservesFiniteLimits (sheafPullback G A J K) := by
  have : PreservesFiniteLimits (G.op.lan ⋙ presheafToSheaf K A) :=
    comp_preservesFiniteLimits _ _
  apply comp_preservesFiniteLimits

instance preservesFiniteLimits : PreservesFiniteLimits (Functor.sheafPullback G A J K) :=
  preservesFiniteLimits_of_natIso (sheafPullbackIso G A J K).symm

end sheafPullbackConstruction

end GeneralUniverses

namespace SmallCategories

variable {C : Type v₁} [SmallCategory C] {D : Type v₁} [SmallCategory D] (G : C ⥤ D)
  (A : Type u₁) [Category.{v₁} A]
  (J : GrothendieckTopology C) (K : GrothendieckTopology D)

-- The favourable assumptions under which we have sheafification
variable {FA : A → A → Type*} {CA : A → Type v₁} [∀ X Y, FunLike (FA X Y) (CA X) (CA Y)]
variable [ConcreteCategory.{v₁} A FA] [PreservesLimits (forget A)] [HasColimits A] [HasLimits A]
  [PreservesFilteredColimits (forget A)] [(forget A).ReflectsIsomorphisms]
  [Functor.IsContinuous.{v₁} G J K]

example : (G.sheafPushforwardContinuous A J K).IsRightAdjoint := inferInstance

attribute [local instance] reflectsLimits_of_reflectsIsomorphisms in
instance [RepresentablyFlat G] : PreservesFiniteLimits (G.sheafPullback A J K) := by
  apply sheafPullbackConstruction.preservesFiniteLimits

end SmallCategories

end CategoryTheory.Functor
