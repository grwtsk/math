# Complete source: GRWTSK.Topology.GeneralTopology.Specialization.Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15da17bd483bf11ea7966522af9de2f794f7ee8a` · SHA-256 `6e2ec4758110c9da131358c9dd4521c5ef914e158ec7ffe3dfeb89661c9d9878`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Specialization.Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Specialization.Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836","mathematical_subject":"Topology.GeneralTopology","original_sha256":"21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Specialization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.Preord
import Mathlib.Topology.Category.TopCat.Basic
import Mathlib.Topology.ContinuousMap.Basic
import Mathlib.Topology.Order.UpperLowerSetTopology

/-!
# Specialization order

This file defines a type synonym for a topological space considered with its specialisation order.
-/


namespace GRWTSK.Topology.GeneralTopology.Specialization.Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836

open CategoryTheory Topology

/-- Type synonym for a topological space considered with its specialisation order. -/
def Specialization (α : Type*) := α

namespace Specialization
variable {α β γ : Type*}

/-- `toEquiv` is the "identity" function to the `Specialization` of a type. -/
@[match_pattern] def toEquiv : α ≃ Specialization α := Equiv.refl _

/-- `ofEquiv` is the identity function from the `Specialization` of a type. -/
@[match_pattern] def ofEquiv : Specialization α ≃ α := Equiv.refl _

@[simp] lemma toEquiv_symm : (@toEquiv α).symm = ofEquiv := rfl
@[simp] lemma ofEquiv_symm : (@ofEquiv α).symm = toEquiv := rfl
@[simp] lemma toEquiv_ofEquiv (a : Specialization α) : toEquiv (ofEquiv a) = a := rfl
@[simp] lemma ofEquiv_toEquiv (a : α) : ofEquiv (toEquiv a) = a := rfl

-- In Lean 3, `dsimp` would use theorems proved by `Iff.rfl`.
-- If that were still the case, this would useful as a `@[simp]` lemma,
-- despite the fact that it is provable by `simp` (by not `dsimp`).
@[simp, nolint simpNF] -- See https://github.com/leanprover-community/mathlib4/issues/10675
lemma toEquiv_inj {a b : α} : toEquiv a = toEquiv b ↔ a = b := Iff.rfl

-- In Lean 3, `dsimp` would use theorems proved by `Iff.rfl`.
-- If that were still the case, this would useful as a `@[simp]` lemma,
-- despite the fact that it is provable by `simp` (by not `dsimp`).
@[simp, nolint simpNF] -- See https://github.com/leanprover-community/mathlib4/issues/10675
lemma ofEquiv_inj {a b : Specialization α} : ofEquiv a = ofEquiv b ↔ a = b :=
  Iff.rfl

/-- A recursor for `Specialization`. Use as `induction x`. -/
@[elab_as_elim, cases_eliminator, induction_eliminator]
protected def rec {β : Specialization α → Sort*} (h : ∀ a, β (toEquiv a)) (a : Specialization α) :
    β a :=
  h (ofEquiv a)

variable [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ]

instance instPreorder : Preorder (Specialization α) := specializationPreorder α
instance instPartialOrder [T0Space α] : PartialOrder (Specialization α) := specializationOrder α

@[simp] lemma toEquiv_le_toEquiv {a b : α} : toEquiv a ≤ toEquiv b ↔ b ⤳ a := Iff.rfl
@[simp] lemma ofEquiv_specializes_ofEquiv {a b : Specialization α} :
  ofEquiv a ⤳ ofEquiv b ↔ b ≤ a := Iff.rfl

@[simp] lemma isOpen_toEquiv_preimage [AlexandrovDiscrete α] {s : Set (Specialization α)} :
  IsOpen (toEquiv ⁻¹' s) ↔ IsUpperSet s := isOpen_iff_forall_specializes.trans forall_swap

@[simp] lemma isUpperSet_ofEquiv_preimage [AlexandrovDiscrete α] {s : Set α} :
  IsUpperSet (ofEquiv ⁻¹' s) ↔ IsOpen s := isOpen_toEquiv_preimage.symm

/-- A continuous map between topological spaces induces a monotone map between their specialization
orders. -/
def map (f : C(α, β)) : Specialization α →o Specialization β where
  toFun := toEquiv ∘ f ∘ ofEquiv
  monotone' := (map_continuous f).specialization_monotone

@[simp] lemma map_id : map (ContinuousMap.id α) = OrderHom.id := rfl
@[simp] lemma map_comp (g : C(β, γ)) (f : C(α, β)) : map (g.comp f) = (map g).comp (map f) := rfl

end Specialization

open Set Specialization WithUpperSet

/-- A preorder is isomorphic to the specialisation order of its upper set topology. -/
def orderIsoSpecializationWithUpperSetTopology (α : Type*) [Preorder α] :
    α ≃o Specialization (WithUpperSet α) where
  toEquiv := toUpperSet.trans toEquiv
  map_rel_iff' := by simp

/-- An Alexandrov-discrete space is isomorphic to the upper set topology of its specialisation
order. -/
def homeoWithUpperSetTopologyorderIso (α : Type*) [TopologicalSpace α] [AlexandrovDiscrete α] :
    α ≃ₜ WithUpperSet (Specialization α) :=
  (toEquiv.trans toUpperSet).toHomeomorph fun s ↦ by simp [Set.preimage_comp]

/-- Sends a topological space to its specialisation order. -/
@[simps]
def topToPreord : TopCat ⥤ Preord where
  obj X := .of <| Specialization X
  map f := Preord.ofHom <| Specialization.map f.hom
```
