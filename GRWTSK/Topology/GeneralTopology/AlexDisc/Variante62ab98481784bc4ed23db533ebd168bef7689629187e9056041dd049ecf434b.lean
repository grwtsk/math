-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.AlexDisc.Variantcf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.AlexDisc.Variantcf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0","mathematical_subject":"Topology.GeneralTopology","original_sha256":"cf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Order/Category/AlexDisc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Topology.Specialization

/-!
# Category of Alexandrov-discrete topological spaces

This defines `AlexDisc`, the category of Alexandrov-discrete topological spaces with continuous
maps, and proves it's equivalent to the category of preorders.
-/


namespace GRWTSK.Topology.GeneralTopology.AlexDisc.Variantcf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0

@[expose] public section

open CategoryTheory Topology

/-- The category of Alexandrov-discrete spaces. -/
structure AlexDisc extends TopCat where
  [is_alexandrovDiscrete : AlexandrovDiscrete carrier]

namespace AlexDisc

attribute [instance] is_alexandrovDiscrete

instance : CoeSort AlexDisc (Type _) :=
  ⟨fun X => X.toTopCat⟩

instance category : Category AlexDisc :=
  inferInstanceAs <| Category (InducedCategory _ toTopCat)

instance concreteCategory : ConcreteCategory AlexDisc (C(·, ·)) :=
  inferInstanceAs <| ConcreteCategory (InducedCategory _ toTopCat) _

instance instHasForgetToTop : HasForget₂ AlexDisc TopCat :=
  inferInstanceAs <| HasForget₂ (InducedCategory _ toTopCat) _

-- TODO: generalize to `InducedCategory.forget₂_full`?
instance forgetToTop_full : (forget₂ AlexDisc TopCat).Full where
  map_surjective f := ⟨InducedCategory.homMk f, rfl⟩

instance forgetToTop_faithful : (forget₂ AlexDisc TopCat).Faithful where
  map_injective {X Y f g} h := by
    ext x
    exact ConcreteCategory.congr_hom h x


/-- Construct a bundled `AlexDisc` from the underlying topological space. -/
abbrev of (X : Type*) [TopologicalSpace X] [AlexandrovDiscrete X] : AlexDisc where
  toTopCat := ↧X

open Lean.PrettyPrinter.Delaborator in
/-- This prints `AlexDisc.of X` as `↧X`. -/
@[app_delab AlexDisc.of]
meta def delabOf : Delab := CategoryTheory.delabOf

lemma coe_of (α : Type*) [TopologicalSpace α] [AlexandrovDiscrete α] : ↥(of α) = α := rfl

@[simp] lemma forgetToTop_of (α : Type*) [TopologicalSpace α] [AlexandrovDiscrete α] :
    (forget₂ AlexDisc TopCat).obj (of α) = ↧α := rfl

@[simp] lemma coe_forgetToTop (X : AlexDisc) : ↥((forget₂ _ TopCat).obj X) = X := rfl

/-- Constructs an equivalence between preorders from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : AlexDisc} (e : α ≃ₜ β) : α ≅ β where
  hom := ConcreteCategory.ofHom (e : ContinuousMap α β)
  inv := ConcreteCategory.ofHom (e.symm : ContinuousMap β α)
  hom_inv_id := by ext; apply e.symm_apply_apply
  inv_hom_id := by ext; apply e.apply_symm_apply

end AlexDisc

/-- Sends a topological space to its specialisation order. -/
@[simps]
def alexDiscEquivPreord : AlexDisc ≌ Preord where
  functor := forget₂ _ _ ⋙ topToPreord
  inverse.obj X := ↧(WithUpperSet X)
  inverse.map f := ConcreteCategory.ofHom (WithUpperSet.map f.hom)
  unitIso := NatIso.ofComponents fun X ↦ AlexDisc.Iso.mk <| by
    dsimp; exact homeoWithUpperSetTopologyorderIso X
  counitIso := NatIso.ofComponents fun X ↦ Preord.Iso.mk <| by
    dsimp; exact (orderIsoSpecializationWithUpperSetTopology X).symm
