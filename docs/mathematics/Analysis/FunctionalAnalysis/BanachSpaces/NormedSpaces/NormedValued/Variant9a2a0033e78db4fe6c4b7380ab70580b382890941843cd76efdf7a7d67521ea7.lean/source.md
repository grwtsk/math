# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedValued.Variant9a2a0033e78db4fe6c4b7380ab70580b382890941843cd76efdf7a7d67521ea7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e95bb2d606654b45d628d5e2bf380eef65edeb57` · SHA-256 `70ed9498c6fdf485128d5b2f50e98ec75caeedd9454e34a2d10e64ca4473af5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Valuation.Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.Valuation.Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"f237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Valued/NormedValued.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández
-/
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Analysis.Normed.Group.Ultra
import Mathlib.RingTheory.Valuation.RankOne
import Mathlib.Topology.Algebra.Valued.ValuationTopology

/-!
# Correspondence between nontrivial nonarchimedean norms and rank one valuations

Nontrivial nonarchimedean norms correspond to rank one valuations.

## Main Definitions
* `NormedField.toValued` : the valued field structure on a nonarchimedean normed field `K`,
  determined by the norm.
* `Valued.toNormedField` : the normed field structure determined by a rank one valuation.

## Tags

norm, nonarchimedean, nontrivial, valuation, rank one
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Valuation.Variantf237e06186e1485089821f553d523295a3f2122add34a4944d8e7103f3a4118a

noncomputable section

open Filter Set Valuation

open scoped NNReal

section

variable {K : Type*} [hK : NormedField K] [IsUltrametricDist K]

namespace NormedField

/-- The valuation on a nonarchimedean normed field `K` defined as `nnnorm`. -/
def valuation : Valuation K ℝ≥0 where
  toFun           := nnnorm
  map_zero'       := nnnorm_zero
  map_one'        := nnnorm_one
  map_mul'        := nnnorm_mul
  map_add_le_max' := IsUltrametricDist.norm_add_le_max

@[simp]
theorem valuation_apply (x : K) : valuation x = ‖x‖₊ := rfl

/-- The valued field structure on a nonarchimedean normed field `K`, determined by the norm. -/
def toValued : Valued K ℝ≥0 :=
  { hK.toUniformSpace,
    inferInstanceAs (IsUniformAddGroup K) with
    v := valuation
    is_topological_valuation := fun U => by
      rw [Metric.mem_nhds_iff]
      exact ⟨fun ⟨ε, hε, h⟩  =>
          ⟨Units.mk0 ⟨ε, le_of_lt hε⟩ (ne_of_gt hε), fun x hx ↦ h (mem_ball_zero_iff.mpr hx)⟩,
        fun ⟨ε, hε⟩ => ⟨(ε : ℝ), NNReal.coe_pos.mpr (Units.zero_lt _),
          fun x hx ↦ hε (mem_ball_zero_iff.mp hx)⟩⟩ }

instance {K : Type*} [NontriviallyNormedField K] [IsUltrametricDist K] :
    Valuation.RankOne (valuation (K := K)) where
  hom := .id _
  strictMono' := strictMono_id
  nontrivial' := (exists_one_lt_norm K).imp fun x h ↦ by
    have h' : x ≠ 0 := norm_eq_zero.not.mp (h.gt.trans' (by simp)).ne'
    simp [valuation_apply, ← NNReal.coe_inj, h.ne', h']

end NormedField

end

namespace Valued

variable {L : Type*} [Field L] {Γ₀ : Type*} [LinearOrderedCommGroupWithZero Γ₀]
  [val : Valued L Γ₀] [hv : RankOne val.v]

/-- The norm function determined by a rank one valuation on a field `L`. -/
def norm : L → ℝ := fun x : L => hv.hom (Valued.v x)

theorem norm_def {x : L} : Valued.norm x = hv.hom (Valued.v x) := rfl

theorem norm_nonneg (x : L) : 0 ≤ norm x := by simp only [norm, NNReal.zero_le_coe]

theorem norm_add_le (x y : L) : norm (x + y) ≤ max (norm x) (norm y) := by
  simp only [norm, NNReal.coe_le_coe, le_max_iff, StrictMono.le_iff_le hv.strictMono]
  exact le_max_iff.mp (Valuation.map_add_le_max' val.v _ _)

theorem norm_eq_zero {x : L} (hx : norm x = 0) : x = 0 := by
  simpa [norm, NNReal.coe_eq_zero, RankOne.hom_eq_zero_iff, zero_iff] using hx

theorem norm_pos_iff_valuation_pos {x : L} : 0 < Valued.norm x ↔ (0 : Γ₀) < v x := by
  rw [norm_def, ← NNReal.coe_zero, NNReal.coe_lt_coe, ← map_zero (RankOne.hom (v (R := L))),
    StrictMono.lt_iff_lt]
  exact RankOne.strictMono v

variable (L) (Γ₀)

/-- The normed field structure determined by a rank one valuation. -/
def toNormedField : NormedField L :=
  { (inferInstance : Field L) with
    norm := norm
    dist := fun x y => norm (x - y)
    dist_self := fun x => by
      simp only [sub_self, norm, Valuation.map_zero, hv.hom.map_zero, NNReal.coe_zero]
    dist_comm := fun x y => by simp only [norm]; rw [← neg_sub, Valuation.map_neg]
    dist_triangle := fun x y z => by
      simp only [← sub_add_sub_cancel x y z]
      exact le_trans (norm_add_le _ _)
        (max_le_add_of_nonneg (norm_nonneg _) (norm_nonneg _))
    eq_of_dist_eq_zero := fun hxy => eq_of_sub_eq_zero (norm_eq_zero hxy)
    dist_eq := fun x y => rfl
    norm_mul := fun x y => by simp only [norm, ← NNReal.coe_mul, map_mul]
    toUniformSpace := Valued.toUniformSpace
    uniformity_dist := by
      haveI : Nonempty { ε : ℝ // ε > 0 } := nonempty_Ioi_subtype
      ext U
      rw [hasBasis_iff.mp (Valued.hasBasis_uniformity L Γ₀), iInf_subtype', mem_iInf_of_directed]
      · simp only [true_and, mem_principal, Subtype.exists, gt_iff_lt, exists_prop]
        refine ⟨fun ⟨ε, hε⟩ => ?_, fun ⟨r, hr_pos, hr⟩ => ?_⟩
        · set δ : ℝ≥0 := hv.hom ε with hδ
          have hδ_pos : 0 < δ := by
            rw [hδ, ← map_zero hv.hom]
            exact hv.strictMono _ (Units.zero_lt ε)
          use δ, hδ_pos
          apply subset_trans _ hε
          intro x hx
          simp only [mem_setOf_eq, norm, hδ, NNReal.val_eq_coe, NNReal.coe_lt_coe] at hx
          rw [mem_setOf, ← neg_sub, Valuation.map_neg]
          exact (RankOne.strictMono Valued.v).lt_iff_lt.mp hx
        · haveI : Nontrivial Γ₀ˣ := (nontrivial_iff_exists_ne (1 : Γ₀ˣ)).mpr
            ⟨RankOne.unit val.v, RankOne.unit_ne_one val.v⟩
          obtain ⟨u, hu⟩ := Real.exists_lt_of_strictMono hv.strictMono hr_pos
          use u
          apply subset_trans _ hr
          intro x hx
          simp only [norm, mem_setOf_eq]
          apply lt_trans _ hu
          rw [NNReal.coe_lt_coe, ← neg_sub, Valuation.map_neg]
          exact (RankOne.strictMono Valued.v).lt_iff_lt.mpr hx
      · simp only [Directed]
        intro x y
        use min x y
        simp only [le_principal_iff, mem_principal, setOf_subset_setOf, Prod.forall]
        exact ⟨fun a b hab => lt_of_lt_of_le hab (min_le_left _ _), fun a b hab =>
            lt_of_lt_of_le hab (min_le_right _ _)⟩ }

-- When a field is valued, one inherits a `NormedField`.
-- Scoped instance to avoid a typeclass loop or non-defeq topology or norms.
scoped[Valued] attribute [instance] Valued.toNormedField
scoped[NormedField] attribute [instance] NormedField.toValued

section NormedField

open scoped Valued

protected lemma isNonarchimedean_norm : IsNonarchimedean ((‖·‖): L → ℝ) := Valued.norm_add_le

instance : IsUltrametricDist L :=
  ⟨fun x y z ↦ by
    refine (Valued.norm_add_le (x - y) (y - z)).trans_eq' ?_
    simp only [sub_add_sub_cancel]
    rfl ⟩

lemma coe_valuation_eq_rankOne_hom_comp_valuation : ⇑NormedField.valuation = hv.hom ∘ val.v := rfl

end NormedField

variable {L} {Γ₀}

namespace toNormedField

variable {x x' : L}

@[simp]
theorem norm_le_iff : ‖x‖ ≤ ‖x'‖ ↔ val.v x ≤ val.v x' :=
  (Valuation.RankOne.strictMono val.v).le_iff_le

@[simp]
theorem norm_lt_iff : ‖x‖ < ‖x'‖ ↔ val.v x < val.v x' :=
  (Valuation.RankOne.strictMono val.v).lt_iff_lt

@[simp]
theorem norm_le_one_iff : ‖x‖ ≤ 1 ↔ val.v x ≤ 1 := by
  simpa only [map_one] using (Valuation.RankOne.strictMono val.v).le_iff_le (b := 1)

@[simp]
theorem norm_lt_one_iff : ‖x‖ < 1 ↔ val.v x < 1 := by
  simpa only [map_one] using (Valuation.RankOne.strictMono val.v).lt_iff_lt (b := 1)

@[simp]
theorem one_le_norm_iff : 1 ≤ ‖x‖ ↔ 1 ≤ val.v x := by
  simpa only [map_one] using (Valuation.RankOne.strictMono val.v).le_iff_le (a := 1)

@[simp]
theorem one_lt_norm_iff : 1 < ‖x‖ ↔ 1 < val.v x := by
  simpa only [map_one] using (Valuation.RankOne.strictMono val.v).lt_iff_lt (a := 1)

end toNormedField

/--
The nontrivially normed field structure determined by a rank one valuation.
-/
def toNontriviallyNormedField: NontriviallyNormedField L := {
  val.toNormedField with
  non_trivial := by
    obtain ⟨x, hx⟩ := Valuation.RankOne.nontrivial val.v
    rcases Valuation.val_le_one_or_val_inv_le_one val.v x with h | h
    · use x⁻¹
      simp only [toNormedField.one_lt_norm_iff, map_inv₀, one_lt_inv₀ (zero_lt_iff.mpr hx.1),
          lt_of_le_of_ne h hx.2]
    · use x
      simp only [map_inv₀, inv_le_one₀ <| zero_lt_iff.mpr hx.1] at h
      simp only [toNormedField.one_lt_norm_iff, lt_of_le_of_ne h hx.2.symm]
}

scoped[Valued] attribute [instance] Valued.toNontriviallyNormedField

end Valued
```
