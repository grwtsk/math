# Complete source: GRWTSK.Topology.MetricTopology.ENorm.Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6192915b9c0861be6168f6397300ca082fda6be9` · SHA-256 `9ad82e5f89a12f9789eefe7c1c7fbf0e15cd9f9e0b3bcd84d60dc5cd1b712a8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.ENorm.Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.ENorm.Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5","mathematical_subject":"Topology.MetricSpaces","original_sha256":"30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/NormedSpace/ENorm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov
-/
import Mathlib.Analysis.NormedSpace.Basic


namespace GRWTSK.Topology.MetricTopology.ENorm.Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5

#align_import analysis.normed_space.enorm from "leanprover-community/mathlib"@"57ac39bd365c2f80589a700f9fbb664d3a1a30c2"

/-!
# Extended norm

In this file we define a structure `ENorm 𝕜 V` representing an extended norm (i.e., a norm that can
take the value `∞`) on a vector space `V` over a normed field `𝕜`. We do not use `class` for
an `ENorm` because the same space can have more than one extended norm. For example, the space of
measurable functions `f : α → ℝ` has a family of `L_p` extended norms.

We prove some basic inequalities, then define

* `EMetricSpace` structure on `V` corresponding to `e : ENorm 𝕜 V`;
* the subspace of vectors with finite norm, called `e.finiteSubspace`;
* a `NormedSpace` structure on this space.

The last definition is an instance because the type involves `e`.

## Implementation notes

We do not define extended normed groups. They can be added to the chain once someone will need them.

## Tags

normed space, extended norm
-/


noncomputable section

attribute [local instance] Classical.propDecidable

open ENNReal

/-- Extended norm on a vector space. As in the case of normed spaces, we require only
`‖c • x‖ ≤ ‖c‖ * ‖x‖` in the definition, then prove an equality in `map_smul`. -/
structure ENorm (𝕜 : Type*) (V : Type*) [NormedField 𝕜] [AddCommGroup V] [Module 𝕜 V] where
  toFun : V → ℝ≥0∞
  eq_zero' : ∀ x, toFun x = 0 → x = 0
  map_add_le' : ∀ x y : V, toFun (x + y) ≤ toFun x + toFun y
  map_smul_le' : ∀ (c : 𝕜) (x : V), toFun (c • x) ≤ ‖c‖₊ * toFun x
#align enorm ENorm

namespace ENorm

variable {𝕜 : Type*} {V : Type*} [NormedField 𝕜] [AddCommGroup V] [Module 𝕜 V] (e : ENorm 𝕜 V)

-- Porting note: added to appease norm_cast complaints
attribute [coe] ENorm.toFun

instance : CoeFun (ENorm 𝕜 V) fun _ => V → ℝ≥0∞ :=
  ⟨ENorm.toFun⟩

theorem coeFn_injective : Function.Injective ((↑) : ENorm 𝕜 V → V → ℝ≥0∞) := fun e₁ e₂ h => by
  cases e₁
  cases e₂
  congr
#align enorm.coe_fn_injective ENorm.coeFn_injective

@[ext]
theorem ext {e₁ e₂ : ENorm 𝕜 V} (h : ∀ x, e₁ x = e₂ x) : e₁ = e₂ :=
  coeFn_injective <| funext h
#align enorm.ext ENorm.ext

theorem ext_iff {e₁ e₂ : ENorm 𝕜 V} : e₁ = e₂ ↔ ∀ x, e₁ x = e₂ x :=
  ⟨fun h _ => h ▸ rfl, ext⟩
#align enorm.ext_iff ENorm.ext_iff

@[simp, norm_cast]
theorem coe_inj {e₁ e₂ : ENorm 𝕜 V} : (e₁ : V → ℝ≥0∞) = e₂ ↔ e₁ = e₂ :=
  coeFn_injective.eq_iff
#align enorm.coe_inj ENorm.coe_inj

@[simp]
theorem map_smul (c : 𝕜) (x : V) : e (c • x) = ‖c‖₊ * e x := by
  apply le_antisymm (e.map_smul_le' c x)
  by_cases hc : c = 0
  · simp [hc]
  calc
    (‖c‖₊ : ℝ≥0∞) * e x = ‖c‖₊ * e (c⁻¹ • c • x) := by rw [inv_smul_smul₀ hc]
    _ ≤ ‖c‖₊ * (‖c⁻¹‖₊ * e (c • x)) := mul_le_mul_left' (e.map_smul_le' _ _) _
    _ = e (c • x) := by
      rw [← mul_assoc, nnnorm_inv, ENNReal.coe_inv, ENNReal.mul_inv_cancel _ ENNReal.coe_ne_top,
        one_mul]
        <;> simp [hc]
#align enorm.map_smul ENorm.map_smul

@[simp]
theorem map_zero : e 0 = 0 := by
  rw [← zero_smul 𝕜 (0 : V), e.map_smul]
  norm_num
#align enorm.map_zero ENorm.map_zero

@[simp]
theorem eq_zero_iff {x : V} : e x = 0 ↔ x = 0 :=
  ⟨e.eq_zero' x, fun h => h.symm ▸ e.map_zero⟩
#align enorm.eq_zero_iff ENorm.eq_zero_iff

@[simp]
theorem map_neg (x : V) : e (-x) = e x :=
  calc
    e (-x) = ‖(-1 : 𝕜)‖₊ * e x := by rw [← map_smul, neg_one_smul]
    _ = e x := by simp
#align enorm.map_neg ENorm.map_neg

theorem map_sub_rev (x y : V) : e (x - y) = e (y - x) := by rw [← neg_sub, e.map_neg]
#align enorm.map_sub_rev ENorm.map_sub_rev

theorem map_add_le (x y : V) : e (x + y) ≤ e x + e y :=
  e.map_add_le' x y
#align enorm.map_add_le ENorm.map_add_le

theorem map_sub_le (x y : V) : e (x - y) ≤ e x + e y :=
  calc
    e (x - y) = e (x + -y) := by rw [sub_eq_add_neg]
    _ ≤ e x + e (-y) := (e.map_add_le x (-y))
    _ = e x + e y := by rw [e.map_neg]
#align enorm.map_sub_le ENorm.map_sub_le

instance partialOrder : PartialOrder (ENorm 𝕜 V) where
  le e₁ e₂ := ∀ x, e₁ x ≤ e₂ x
  le_refl e x := le_rfl
  le_trans e₁ e₂ e₃ h₁₂ h₂₃ x := le_trans (h₁₂ x) (h₂₃ x)
  le_antisymm e₁ e₂ h₁₂ h₂₁ := ext fun x => le_antisymm (h₁₂ x) (h₂₁ x)

/-- The `ENorm` sending each non-zero vector to infinity. -/
noncomputable instance : Top (ENorm 𝕜 V) :=
  ⟨{  toFun := fun x => if x = 0 then 0 else ⊤
      eq_zero' := fun x => by simp only; split_ifs <;> simp [*]
      map_add_le' := fun x y => by
        simp only
        split_ifs with hxy hx hy hy hx hy hy <;> try simp [*]
        simp [hx, hy] at hxy
      map_smul_le' := fun c x => by
        simp only
        split_ifs with hcx hx hx <;> simp only [smul_eq_zero, not_or] at hcx
        · simp only [mul_zero, le_refl]
        · have : c = 0 := by tauto
          simp [this]
        · tauto
        · simpa [mul_top'] using hcx.1 }⟩

noncomputable instance : Inhabited (ENorm 𝕜 V) :=
  ⟨⊤⟩

theorem top_map {x : V} (hx : x ≠ 0) : (⊤ : ENorm 𝕜 V) x = ⊤ :=
  if_neg hx
#align enorm.top_map ENorm.top_map

noncomputable instance : OrderTop (ENorm 𝕜 V) where
  top := ⊤
  le_top e x := if h : x = 0 then by simp [h] else by simp [top_map h]

noncomputable instance : SemilatticeSup (ENorm 𝕜 V) :=
  { ENorm.partialOrder with
    le := (· ≤ ·)
    lt := (· < ·)
    sup := fun e₁ e₂ =>
      { toFun := fun x => max (e₁ x) (e₂ x)
        eq_zero' := fun x h => e₁.eq_zero_iff.1 (ENNReal.max_eq_zero_iff.1 h).1
        map_add_le' := fun x y =>
          max_le (le_trans (e₁.map_add_le _ _) <| add_le_add (le_max_left _ _) (le_max_left _ _))
            (le_trans (e₂.map_add_le _ _) <| add_le_add (le_max_right _ _) (le_max_right _ _))
        map_smul_le' := fun c x => le_of_eq <| by simp only [map_smul, ENNReal.mul_max] }
    le_sup_left := fun e₁ e₂ x => le_max_left _ _
    le_sup_right := fun e₁ e₂ x => le_max_right _ _
    sup_le := fun e₁ e₂ e₃ h₁ h₂ x => max_le (h₁ x) (h₂ x) }

@[simp, norm_cast]
theorem coe_max (e₁ e₂ : ENorm 𝕜 V) : ⇑(e₁ ⊔ e₂) = fun x => max (e₁ x) (e₂ x) :=
  rfl
#align enorm.coe_max ENorm.coe_max

@[norm_cast]
theorem max_map (e₁ e₂ : ENorm 𝕜 V) (x : V) : (e₁ ⊔ e₂) x = max (e₁ x) (e₂ x) :=
  rfl
#align enorm.max_map ENorm.max_map

/-- Structure of an `EMetricSpace` defined by an extended norm. -/
@[reducible]
def emetricSpace : EMetricSpace V where
  edist x y := e (x - y)
  edist_self x := by simp
  eq_of_edist_eq_zero {x y} := by simp [sub_eq_zero]
  edist_comm := e.map_sub_rev
  edist_triangle x y z :=
    calc
      e (x - z) = e (x - y + (y - z)) := by rw [sub_add_sub_cancel]
      _ ≤ e (x - y) + e (y - z) := e.map_add_le (x - y) (y - z)
#align enorm.emetric_space ENorm.emetricSpace

/-- The subspace of vectors with finite enorm. -/
def finiteSubspace : Subspace 𝕜 V where
  carrier := { x | e x < ⊤ }
  zero_mem' := by simp
  add_mem' {x y} hx hy := lt_of_le_of_lt (e.map_add_le x y) (ENNReal.add_lt_top.2 ⟨hx, hy⟩)
  smul_mem' c x (hx : _ < _) :=
    calc
      e (c • x) = ‖c‖₊ * e x := e.map_smul c x
      _ < ⊤ := ENNReal.mul_lt_top ENNReal.coe_ne_top hx.ne
#align enorm.finite_subspace ENorm.finiteSubspace

/-- Metric space structure on `e.finiteSubspace`. We use `EMetricSpace.toMetricSpace`
to ensure that this definition agrees with `e.emetricSpace`. -/
instance metricSpace : MetricSpace e.finiteSubspace := by
  letI := e.emetricSpace
  refine' EMetricSpace.toMetricSpace fun x y => _
  change e (x - y) ≠ ⊤
  exact ne_top_of_le_ne_top (ENNReal.add_lt_top.2 ⟨x.2, y.2⟩).ne (e.map_sub_le x y)

theorem finite_dist_eq (x y : e.finiteSubspace) : dist x y = (e (x - y)).toReal :=
  rfl
#align enorm.finite_dist_eq ENorm.finite_dist_eq

theorem finite_edist_eq (x y : e.finiteSubspace) : edist x y = e (x - y) :=
  rfl
#align enorm.finite_edist_eq ENorm.finite_edist_eq

/-- Normed group instance on `e.finiteSubspace`. -/
instance normedAddCommGroup : NormedAddCommGroup e.finiteSubspace :=
  { e.metricSpace,
    Submodule.addCommGroup _ with
    norm := fun x => (e x).toReal
    dist_eq := fun _ _ => rfl }

theorem finite_norm_eq (x : e.finiteSubspace) : ‖x‖ = (e x).toReal :=
  rfl
#align enorm.finite_norm_eq ENorm.finite_norm_eq

/-- Normed space instance on `e.finiteSubspace`. -/
instance normedSpace : NormedSpace 𝕜 e.finiteSubspace where
  norm_smul_le c x := le_of_eq <| by simp [finite_norm_eq, ENNReal.toReal_mul]

end ENorm
```
