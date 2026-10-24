# Complete source: GRWTSK.Topology.GeneralTopology.UpperLower.Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d4c73c3105bedfaf02a7d0f327575f9534f1ede` · SHA-256 `d4be426df647a89f78bbb7c2f5008fbb3e0b0ad12eb1ec27e589f16befeda39f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.HasUpperLowerClosure.Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.HasUpperLowerClosure.Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Order/UpperLower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.UpperLower
import Mathlib.Topology.Algebra.Group.Pointwise

/-!
# Topological facts about upper/lower/order-connected sets

The topological closure and interior of an upper/lower/order-connected set is an
upper/lower/order-connected set (with the notable exception of the closure of an order-connected
set).

## Implementation notes

The same lemmas are true in the additive/multiplicative worlds. To avoid code duplication, we
provide `HasUpperLowerClosure`, an ad hoc axiomatisation of the properties we need.
-/



namespace GRWTSK.Topology.GeneralTopology.HasUpperLowerClosure.Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08

open Function Set

open Pointwise

/-- Ad hoc class stating that the closure of an upper set is an upper set. This is used to state
lemmas that do not mention algebraic operations for both the additive and multiplicative versions
simultaneously. If you find a satisfying replacement for this typeclass, please remove it! -/
class HasUpperLowerClosure (α : Type*) [TopologicalSpace α] [Preorder α] : Prop where
  isUpperSet_closure : ∀ s : Set α, IsUpperSet s → IsUpperSet (closure s)
  isLowerSet_closure : ∀ s : Set α, IsLowerSet s → IsLowerSet (closure s)
  isOpen_upperClosure : ∀ s : Set α, IsOpen s → IsOpen (upperClosure s : Set α)
  isOpen_lowerClosure : ∀ s : Set α, IsOpen s → IsOpen (lowerClosure s : Set α)

variable {α : Type*} [TopologicalSpace α]

-- See note [lower instance priority]
@[to_additive]
instance (priority := 100) IsOrderedMonoid.to_hasUpperLowerClosure
    [CommGroup α] [PartialOrder α] [IsOrderedMonoid α]
    [ContinuousConstSMul α α] : HasUpperLowerClosure α where
  isUpperSet_closure s h x y hxy hx :=
    closure_mono (h.smul_subset <| one_le_div'.2 hxy) <| by
      rw [closure_smul]
      exact ⟨x, hx, div_mul_cancel _ _⟩
  isLowerSet_closure s h x y hxy hx :=
    closure_mono (h.smul_subset <| div_le_one'.2 hxy) <| by
      rw [closure_smul]
      exact ⟨x, hx, div_mul_cancel _ _⟩
  isOpen_upperClosure s hs := by
    rw [← mul_one s, ← mul_upperClosure]
    exact hs.mul_right
  isOpen_lowerClosure s hs := by
    rw [← mul_one s, ← mul_lowerClosure]
    exact hs.mul_right

variable [Preorder α] [HasUpperLowerClosure α] {s : Set α}

protected theorem IsUpperSet.closure : IsUpperSet s → IsUpperSet (closure s) :=
  HasUpperLowerClosure.isUpperSet_closure _

protected theorem IsLowerSet.closure : IsLowerSet s → IsLowerSet (closure s) :=
  HasUpperLowerClosure.isLowerSet_closure _

protected theorem IsOpen.upperClosure : IsOpen s → IsOpen (upperClosure s : Set α) :=
  HasUpperLowerClosure.isOpen_upperClosure _

protected theorem IsOpen.lowerClosure : IsOpen s → IsOpen (lowerClosure s : Set α) :=
  HasUpperLowerClosure.isOpen_lowerClosure _

instance : HasUpperLowerClosure αᵒᵈ where
  isUpperSet_closure := @IsLowerSet.closure α _ _ _
  isLowerSet_closure := @IsUpperSet.closure α _ _ _
  isOpen_upperClosure := @IsOpen.lowerClosure α _ _ _
  isOpen_lowerClosure := @IsOpen.upperClosure α _ _ _

/-
Note: `s.OrdConnected` does not imply `(closure s).OrdConnected`, as we can see by taking
`s := Ioo 0 1 × Ioo 1 2 ∪ Ioo 2 3 × Ioo 0 1` because then
`closure s = Icc 0 1 × Icc 1 2 ∪ Icc 2 3 × Icc 0 1` is not order-connected as
`(1, 1) ∈ closure s`, `(2, 1) ∈ closure s` but `Icc (1, 1) (2, 1) ⊈ closure s`.

`s` looks like
```
xxooooo
xxooooo
oooooxx
oooooxx
```
-/
protected theorem IsUpperSet.interior (h : IsUpperSet s) : IsUpperSet (interior s) := by
  rw [← isLowerSet_compl, ← closure_compl]
  exact h.compl.closure

protected theorem IsLowerSet.interior (h : IsLowerSet s) : IsLowerSet (interior s) :=
  h.toDual.interior

protected theorem Set.OrdConnected.interior (h : s.OrdConnected) : (interior s).OrdConnected := by
  rw [← h.upperClosure_inter_lowerClosure, interior_inter]
  exact
    (upperClosure s).upper.interior.ordConnected.inter (lowerClosure s).lower.interior.ordConnected
````
