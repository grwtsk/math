# Complete source: GRWTSK.Algebra.ConjSqrt.Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f03800b154fae4fc4d3e6712d3c206bde076c2c` · SHA-256 `1cbe9c9f553ca87469fdf4dc2a713ab738906d54bb8b988e0015c8b1da305034`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ConjSqrt.Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ConjSqrt.Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/ContinuousFunctionalCalculus/Rpow/ConjSqrt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Frédéric Dupuis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Dupuis
-/
module

public import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic

/-!
# Conjugating by the square root of a positive element in a C⋆-algebra

This file defines `conjSqrt c a` as `sqrt c * a * sqrt c`, and develops API for this operation.

## Main declarations

* `conjSqrt c`: the map `fun a => sqrt c * a * sqrt c`, bundled as a continuous linear map,
-/


namespace GRWTSK.Algebra.ConjSqrt.Variant3c3751207429133163f836f7dfea970c9e165cbb1bfed1981e7f7a6fb384246e

namespace CFC

open Ring

public section ConjSqrt

variable {A : Type*} [PartialOrder A] [Ring A] [StarRing A] [TopologicalSpace A]
  [StarOrderedRing A] [Algebra ℝ A] [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [NonnegSpectrumClass ℝ A] [SeparatelyContinuousMul A]

/-- Conjugation by the square root of an element, i.e. `sqrt c * a * sqrt c`. -/
@[expose]
noncomputable def conjSqrt (c : A) : A →L[ℝ] A where
  toLinearMap := .mulLeftRight ℝ (sqrt c, sqrt c)

@[simp] lemma toLinearMap_conjSqrt (c : A) :
    (conjSqrt c).toLinearMap = .mulLeftRight ℝ (sqrt c, sqrt c) := rfl

lemma conjSqrt_apply {c a : A} : conjSqrt c a = sqrt c * a * sqrt c := rfl

lemma conjSqrt_of_not_nonneg {c a : A} (hc : ¬0 ≤ c) : conjSqrt c a = 0 := by
  simp [conjSqrt_apply, sqrt_of_not_nonneg hc]

lemma conjSqrt_monotone {c : A} : Monotone (conjSqrt c) := by
  intro a b hab
  by_cases hc : 0 ≤ c
  · exact IsSelfAdjoint.conjugate_le_conjugate hab (by cfc_tac)
  · simp [conjSqrt_of_not_nonneg hc]

@[gcongr]
lemma conjSqrt_le_conjSqrt {c a b : A} (h : a ≤ b) : conjSqrt c a ≤ conjSqrt c b :=
  conjSqrt_monotone h

variable [IsSemitopologicalRing A] [T2Space A]

set_option linter.overlappingInstances false

@[grind =]
lemma isStrictlyPositive_conjSqrt_iff (c a : A) (hc : IsStrictlyPositive c := by cfc_tac) :
    IsStrictlyPositive (conjSqrt c a) ↔ IsStrictlyPositive a := by
  have hc' : IsSelfAdjoint (sqrt c) := by cfc_tac
  rw [conjSqrt_apply]
  by_cases ha : IsSelfAdjoint a <;> grind

@[grind _=_]
lemma ringInverse_conjSqrt (c a : A) (hc : IsStrictlyPositive c := by cfc_tac) :
    (conjSqrt c a)⁻¹ʳ = conjSqrt c⁻¹ʳ a⁻¹ʳ := by
  by_cases ha : IsUnit a
  · grind [conjSqrt_apply]
  · have : ¬IsUnit (conjSqrt c a) := by grind [conjSqrt_apply, IsUnit.mul_left_iff]
    simp [inverse_non_unit a ha, inverse_non_unit _ this]

@[grind =]
lemma conjSqrt_ringInverse_conjSqrt (c a : A) (hc : IsStrictlyPositive c := by cfc_tac) :
    conjSqrt c⁻¹ʳ (conjSqrt c a) = a := by
  grind [IsSelfAdjoint.commute_of_mul_eq_isSelfAdjoint _ (sqrt c) 1, Ring.inverse_mul_cancel,
         conjSqrt_apply] =>
    have : sqrt c⁻¹ʳ * sqrt c = 1
    have : Commute (sqrt c) (sqrt c⁻¹ʳ)
    finish

@[grind =]
lemma conjSqrt_conjSqrt_ringInverse (c a : A) (hc : IsStrictlyPositive c := by cfc_tac) :
    conjSqrt c (conjSqrt c⁻¹ʳ a) = a := by
  grind [conjSqrt_ringInverse_conjSqrt _ _ hc.ringInverse]

@[grind =]
lemma conjSqrt_one (c : A) (hc : 0 ≤ c := by cfc_tac) : conjSqrt c 1 = c := by
  rw [conjSqrt_apply, mul_one, sqrt_mul_sqrt_self _]

@[grind =]
lemma conjSqrt_ringInverse_self (c : A) (hc : IsStrictlyPositive c := by cfc_tac) :
    conjSqrt c⁻¹ʳ c = 1 := by
  grind [conjSqrt_one c]

end ConjSqrt

end CFC
```
