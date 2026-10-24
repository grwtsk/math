# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantec055af16eab0797b8b6f17781ab781710f37d1dce1aa005220e610503ba991e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `373d4c3aff2b76ef6fe8ee1b674b39c4507bf6f8` · SHA-256 `189f4a4017ca428f33cfe67a0e2c44562397758cb0799bfd6973d189e052fa98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegrableCompInv.Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegrableCompInv.Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6","mathematical_subject":"Analysis.Integration","original_sha256":"f804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Group/Integral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
module

public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Integral.IntegrableOn
public import Mathlib.MeasureTheory.Group.Measure

/-!
# Bochner Integration on Groups

We develop properties of integrals with a group as domain.
This file contains properties about integrability and Bochner integration.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegrableCompInv.Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6

public section

namespace MeasureTheory

open Measure TopologicalSpace

open scoped ENNReal

variable {α G E F : Type*} [MeasurableSpace G]
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [NormedAddCommGroup F]
variable {μ : Measure G} {f : G → E} {g : G}

section MeasurableInv

variable [Group G] [MeasurableInv G]

@[to_additive]
theorem Integrable.comp_inv [IsInvInvariant μ] {f : G → F} (hf : Integrable f μ) :
    Integrable (fun t => f t⁻¹) μ :=
  (hf.mono_measure (map_inv_eq_self μ).le).comp_measurable measurable_inv

@[to_additive]
theorem integral_inv_eq_self (f : G → E) (μ : Measure G) [IsInvInvariant μ] :
    ∫ x, f x⁻¹ ∂μ = ∫ x, f x ∂μ := by
  have h : MeasurableEmbedding fun x : G => x⁻¹ := (MeasurableEquiv.inv G).measurableEmbedding
  rw [← h.integral_map, map_inv_eq_self]

@[to_additive]
theorem IntegrableOn.comp_inv [IsInvInvariant μ] {f : G → F} {s : Set G} (hf : IntegrableOn f s μ) :
    IntegrableOn (fun x => f x⁻¹) s⁻¹ μ := by
  apply (integrable_map_equiv (MeasurableEquiv.inv G) f).mp
  have : s⁻¹ = MeasurableEquiv.inv G ⁻¹' s := by simp
  rw [this, ← MeasurableEquiv.restrict_map]
  simpa using! hf

end MeasurableInv

section MeasurableInvOrder

variable [PartialOrder G] [CommGroup G] [IsOrderedMonoid G] [MeasurableInv G]
variable [IsInvInvariant μ]

@[to_additive]
theorem IntegrableOn.comp_inv_Iic {c : G} {f : G → F} (hf : IntegrableOn f (Set.Ici c⁻¹) μ) :
    IntegrableOn (fun x => f x⁻¹) (Set.Iic c) μ := by
  simpa using hf.comp_inv

@[to_additive]
theorem IntegrableOn.comp_inv_Ici {c : G} {f : G → F} (hf : IntegrableOn f (Set.Iic c⁻¹) μ) :
    IntegrableOn (fun x => f x⁻¹) (Set.Ici c) μ := by
  simpa using hf.comp_inv

@[to_additive]
theorem IntegrableOn.comp_inv_Iio {c : G} {f : G → F} (hf : IntegrableOn f (Set.Ioi c⁻¹) μ) :
    IntegrableOn (fun x => f x⁻¹) (Set.Iio c) μ := by
  simpa using hf.comp_inv

@[to_additive]
theorem IntegrableOn.comp_inv_Ioi {c : G} {f : G → F} (hf : IntegrableOn f (Set.Iio c⁻¹) μ) :
    IntegrableOn (fun x => f x⁻¹) (Set.Ioi c) μ := by
  simpa using hf.comp_inv

end MeasurableInvOrder

section MeasurableMul

variable [Group G] [MeasurableMul G]

/-- Translating a function by left-multiplication does not change its integral with respect to a
left-invariant measure. -/
@[to_additive
      /-- Translating a function by left-addition does not change its integral with respect to a
      left-invariant measure. -/]
theorem integral_mul_left_eq_self [IsMulLeftInvariant μ] (f : G → E) (g : G) :
    (∫ x, f (g * x) ∂μ) = ∫ x, f x ∂μ := by
  have h_mul : MeasurableEmbedding fun x => g * x := (MeasurableEquiv.mulLeft g).measurableEmbedding
  rw [← h_mul.integral_map, map_mul_left_eq_self]

/-- Translating a function by right-multiplication does not change its integral with respect to a
right-invariant measure. -/
@[to_additive
      /-- Translating a function by right-addition does not change its integral with respect to a
      right-invariant measure. -/]
theorem integral_mul_right_eq_self [IsMulRightInvariant μ] (f : G → E) (g : G) :
    (∫ x, f (x * g) ∂μ) = ∫ x, f x ∂μ := by
  have h_mul : MeasurableEmbedding fun x => x * g :=
    (MeasurableEquiv.mulRight g).measurableEmbedding
  rw [← h_mul.integral_map, map_mul_right_eq_self]

@[to_additive]
theorem integral_div_right_eq_self [IsMulRightInvariant μ] (f : G → E) (g : G) :
    (∫ x, f (x / g) ∂μ) = ∫ x, f x ∂μ := by
  simp_rw [div_eq_mul_inv, integral_mul_right_eq_self f g⁻¹]

/-- If some left-translate of a function negates it, then the integral of the function with respect
to a left-invariant measure is 0. -/
@[to_additive
      /-- If some left-translate of a function negates it, then the integral of the function with
      respect to a left-invariant measure is 0. -/]
theorem integral_eq_zero_of_mul_left_eq_neg [IsMulLeftInvariant μ] (hf' : ∀ x, f (g * x) = -f x) :
    ∫ x, f x ∂μ = 0 := by
  have : IsAddTorsionFree E := .of_isTorsionFree ℝ E
  simp_rw [← self_eq_neg, ← integral_neg, ← hf', integral_mul_left_eq_self]

/-- If some right-translate of a function negates it, then the integral of the function with respect
to a right-invariant measure is 0. -/
@[to_additive
      /-- If some right-translate of a function negates it, then the integral of the function with
      respect to a right-invariant measure is 0. -/]
theorem integral_eq_zero_of_mul_right_eq_neg [IsMulRightInvariant μ] (hf' : ∀ x, f (x * g) = -f x) :
    ∫ x, f x ∂μ = 0 := by
  have : IsAddTorsionFree E := .of_isTorsionFree ℝ E
  simp_rw [← self_eq_neg, ← integral_neg, ← hf', integral_mul_right_eq_self]

@[to_additive]
theorem Integrable.comp_mul_left {f : G → F} [IsMulLeftInvariant μ] (hf : Integrable f μ) (g : G) :
    Integrable (fun t => f (g * t)) μ :=
  (hf.mono_measure (map_mul_left_eq_self μ g).le).comp_measurable <| measurable_const_mul g

@[to_additive]
theorem Integrable.comp_mul_right {f : G → F} [IsMulRightInvariant μ] (hf : Integrable f μ)
    (g : G) : Integrable (fun t => f (t * g)) μ :=
  (hf.mono_measure (map_mul_right_eq_self μ g).le).comp_measurable <| measurable_mul_const g

@[to_additive]
theorem Integrable.comp_div_right {f : G → F} [IsMulRightInvariant μ] (hf : Integrable f μ)
    (g : G) : Integrable (fun t => f (t / g)) μ := by
  simp_rw [div_eq_mul_inv]
  exact hf.comp_mul_right g⁻¹

variable [MeasurableInv G]

@[to_additive]
theorem Integrable.comp_div_left {f : G → F} [IsInvInvariant μ] [IsMulLeftInvariant μ]
    (hf : Integrable f μ) (g : G) : Integrable (fun t => f (g / t)) μ :=
  ((measurePreserving_div_left μ g).integrable_comp hf.aestronglyMeasurable).mpr hf

@[to_additive]
theorem integrable_comp_div_left (f : G → F) [IsInvInvariant μ] [IsMulLeftInvariant μ] (g : G) :
    Integrable (fun t => f (g / t)) μ ↔ Integrable f μ := by
  refine ⟨fun h => ?_, fun h => h.comp_div_left g⟩
  convert! h.comp_inv.comp_mul_left g⁻¹
  simp_rw [div_inv_eq_mul, mul_inv_cancel_left]

@[to_additive]
theorem integral_div_left_eq_self (f : G → E) (μ : Measure G) [IsInvInvariant μ]
    [IsMulLeftInvariant μ] (x' : G) : (∫ x, f (x' / x) ∂μ) = ∫ x, f x ∂μ := by
  simp_rw [div_eq_mul_inv, integral_inv_eq_self (fun x => f (x' * x)) μ,
    integral_mul_left_eq_self f x']

end MeasurableMul

section SMul

variable {G : Type*} [Group G] [MeasurableSpace α] [MulAction G α] [MeasurableConstSMul G α]

@[to_additive]
theorem integral_smul_eq_self {μ : Measure α} [SMulInvariantMeasure G α μ] (f : α → E) {g : G} :
    (∫ x, f (g • x) ∂μ) = ∫ x, f x ∂μ := by
  have h : MeasurableEmbedding fun x : α => g • x := (MeasurableEquiv.smul g).measurableEmbedding
  rw [← h.integral_map, MeasureTheory.map_smul]

end SMul

end MeasureTheory
```
