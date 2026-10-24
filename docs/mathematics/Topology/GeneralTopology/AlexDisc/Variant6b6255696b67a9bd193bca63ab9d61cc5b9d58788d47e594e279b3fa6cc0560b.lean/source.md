# Complete source: GRWTSK.Topology.GeneralTopology.AlexDisc.Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb12603e8f0aa55c3fca6f75da277b289617fe4a` · SHA-256 `fa821a5fff5be734825084b8a1476e5911a67a07f217c1e021129a0d52131cbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.AlexDisc.Variante76fdf54e7adeea00a0e53d0ad39de81f884163291df4c117cedbc002edfe261","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e76fdf54e7adeea00a0e53d0ad39de81f884163291df4c117cedbc002edfe261","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.AlexDisc.Variante76fdf54e7adeea00a0e53d0ad39de81f884163291df4c117cedbc002edfe261","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e76fdf54e7adeea00a0e53d0ad39de81f884163291df4c117cedbc002edfe261","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Order/Category/AlexDisc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Topology.Specialization

/-!
# Category of Alexandrov-discrete topological spaces

This defines `AlexDisc`, the category of Alexandrov-discrete topological spaces with continuous
maps, and proves it's equivalent to the category of preorders.
-/


namespace GRWTSK.Topology.GeneralTopology.AlexDisc.Variante76fdf54e7adeea00a0e53d0ad39de81f884163291df4c117cedbc002edfe261

open CategoryTheory Topology

/-- The category of Alexandrov-discrete spaces. -/
structure AlexDisc extends TopCat where
  [is_alexandrovDiscrete : AlexandrovDiscrete carrier]

namespace AlexDisc

attribute [instance] is_alexandrovDiscrete

instance : CoeSort AlexDisc (Type _) :=
  ⟨fun X => X.toTopCat⟩

instance category : Category AlexDisc :=
  InducedCategory.category toTopCat

instance concreteCategory : ConcreteCategory AlexDisc (C(·, ·)) :=
  InducedCategory.concreteCategory toTopCat

instance instHasForgetToTop : HasForget₂ AlexDisc TopCat := InducedCategory.hasForget₂ toTopCat

-- TODO: generalize to `InducedCategory.forget₂_full`?
instance forgetToTop_full : (forget₂ AlexDisc TopCat).Full where
  map_surjective f := ⟨f, rfl⟩

instance forgetToTop_faithful : (forget₂ AlexDisc TopCat).Faithful where

/-- Construct a bundled `AlexDisc` from the underlying topological space. -/
abbrev of (X : Type*) [TopologicalSpace X] [AlexandrovDiscrete X] : AlexDisc where
  toTopCat := TopCat.of X

lemma coe_of (α : Type*) [TopologicalSpace α] [AlexandrovDiscrete α] : ↥(of α) = α := rfl

@[simp] lemma forgetToTop_of (α : Type*) [TopologicalSpace α] [AlexandrovDiscrete α] :
  (forget₂ AlexDisc TopCat).obj (of α) = TopCat.of α := rfl

@[simp] lemma coe_forgetToTop (X : AlexDisc) : ↥((forget₂ _ TopCat).obj X) = X := rfl

/-- Constructs an equivalence between preorders from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : AlexDisc} (e : α ≃ₜ β) : α ≅ β where
  hom := TopCat.ofHom (e : ContinuousMap α β)
  inv := TopCat.ofHom (e.symm : ContinuousMap β α)
  hom_inv_id := by ext; apply e.symm_apply_apply
  inv_hom_id := by ext; apply e.apply_symm_apply

end AlexDisc

/-- Sends a topological space to its specialisation order. -/
@[simps]
def alexDiscEquivPreord : AlexDisc ≌ Preord where
  functor := forget₂ _ _ ⋙ topToPreord
  inverse.obj X := AlexDisc.of (WithUpperSet X)
  inverse.map f := TopCat.ofHom (WithUpperSet.map f.hom)
  unitIso := NatIso.ofComponents fun X ↦ AlexDisc.Iso.mk <| by
    dsimp; exact homeoWithUpperSetTopologyorderIso X
  counitIso := NatIso.ofComponents fun X ↦ Preord.Iso.mk <| by
    dsimp; exact (orderIsoSpecializationWithUpperSetTopology X).symm
```
