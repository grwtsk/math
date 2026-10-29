-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SubtypeA.Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SubtypeA.Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01","mathematical_subject":"Topology.GeneralTopology","original_sha256":"098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/AffineSubspace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
module

public import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
public import Mathlib.LinearAlgebra.AffineSpace.Restrict
public import Mathlib.Topology.Algebra.ContinuousAffineMap
public import Mathlib.Topology.Algebra.ContinuousAffineEquiv

/-!
# Topology of affine subspaces.

This file defines the embedding map from an affine subspace to the ambient space as a continuous
affine map.

## Main definitions

* `AffineSubspace.subtypeA` is `AffineSubspace.subtype` as a `ContinuousAffineMap`.

-/


namespace GRWTSK.Topology.GeneralTopology.SubtypeA.Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01

@[expose] public section


namespace AffineSubspace

variable {R V P : Type*} [Ring R] [AddCommGroup V] [Module R V] [TopologicalSpace P]
  [AddTorsor V P]

/-- Embedding of an affine subspace to the ambient space, as a continuous affine map. -/
def subtypeA (s : AffineSubspace R P) [Nonempty s] : s →ᴬ[R] P where
  toAffineMap := s.subtype
  cont := continuous_subtype_val

@[simp] lemma coe_subtypeA (s : AffineSubspace R P) [Nonempty s] : ⇑s.subtypeA = Subtype.val :=
  rfl

@[simp] lemma subtypeA_toAffineMap (s : AffineSubspace R P) [Nonempty s] :
    s.subtypeA.toAffineMap = s.subtype :=
  rfl

/-- `AffineEquiv.ofEq` as a continuous affine equivalence. -/
noncomputable def ofEq {s t : AffineSubspace R P} [Nonempty s] [Nonempty t]
    (h : s = t) : s ≃ᴬ[R] t where
  toAffineEquiv := .ofEq s t h
  continuous_toFun := by subst h; exact continuous_id
  continuous_invFun := by subst h; exact continuous_id

@[simp]
theorem coe_ofEq_apply {s t : AffineSubspace R P} [Nonempty s] [Nonempty t]
    (h : s = t) (x : s) : (ofEq h x : P) = x := AffineEquiv.coe_ofEq_apply s t h x

end AffineSubspace

namespace ContinuousAffineEquiv

variable {R V P W Q : Type*} [Ring R] [AddCommGroup V] [Module R V] [TopologicalSpace P]
  [AddTorsor V P] [AddCommGroup W] [Module R W] [TopologicalSpace Q] [AddTorsor W Q]

/-- A continuous affine equivalence restricts to a continuous affine equivalence between an affine
subspace and its image.

This is the continuous affine version of `AffineEquiv.affineSubspaceMap`. -/
noncomputable def affineSubspaceMap (e : P ≃ᴬ[R] Q) (s : AffineSubspace R P) [Nonempty s] :
    s ≃ᴬ[R] s.map e.toAffineMap :=
  { e.toAffineEquiv.affineSubspaceMap s with
    continuous_toFun := by simpa [Topology.IsEmbedding.subtypeVal.continuous_iff] using!
      (e.continuous.comp continuous_subtype_val).congr fun _ => rfl
    continuous_invFun := by simpa [Topology.IsEmbedding.subtypeVal.continuous_iff] using!
      (e.continuous_invFun.comp continuous_subtype_val).congr fun x ↦
        (e.eq_symm_apply.mpr
          (AffineEquiv.affineSubspaceMap_apply_symm_apply e.toAffineEquiv s x)).symm }

@[simp]
theorem affineSubspaceMap_apply (e : P ≃ᴬ[R] Q) (s : AffineSubspace R P) [Nonempty s]
    (x : s) : e.affineSubspaceMap s x = e x := rfl

@[simp]
theorem affineSubspaceMap_apply_symm_apply (e : P ≃ᴬ[R] Q) (s : AffineSubspace R P)
    [Nonempty s] (x : s.map e.toAffineMap) : e ((e.affineSubspaceMap s).symm x) = x :=
  AffineEquiv.affineSubspaceMap_apply_symm_apply e.toAffineEquiv s x

end ContinuousAffineEquiv

namespace AffineSubspace

variable {R V P : Type*} [Ring R] [AddCommGroup V] [Module R V] [TopologicalSpace P]
  [AddTorsor V P]

variable [TopologicalSpace V] [IsTopologicalAddTorsor P]

instance {s : AffineSubspace R P} [Nonempty s] : IsTopologicalAddTorsor s where
  continuous_vadd := by
    rw [Topology.IsEmbedding.subtypeVal.continuous_iff]
    fun_prop
  continuous_vsub := by
    rw [Topology.IsEmbedding.subtypeVal.continuous_iff]
    fun_prop

theorem isClosed_direction_iff [T1Space V] (s : AffineSubspace R P) :
    IsClosed (s.direction : Set V) ↔ IsClosed (s : Set P) := by
  rcases s.eq_bot_or_nonempty with (rfl | ⟨x, hx⟩); · simp
  rw [← (Homeomorph.vaddConst x).symm.isClosed_image,
    AffineSubspace.coe_direction_eq_vsub_set_right hx]
  simp only [Homeomorph.vaddConst_symm_apply]

end AffineSubspace
