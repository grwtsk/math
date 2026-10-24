# Complete source: GRWTSK.Algebra.Units.Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85722eca425e4121a074593105c5c6eb5ca1c87c` · SHA-256 `c3467f626bb643060df97573329fbec617fd3706eb6cf53d8c09ee0a93fb49a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ValNeg.Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ValNeg.Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"f991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Ring/Units.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Yury Kudryashov, Neil Strickland
-/
import Mathlib.Algebra.Ring.InjSurj
import Mathlib.Algebra.Group.Units


namespace GRWTSK.Algebra.ValNeg.Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a

#align_import algebra.ring.units from "leanprover-community/mathlib"@"2ed7e4aec72395b6a7c3ac4ac7873a7a43ead17c"

/-!
# Units in semirings and rings

-/


universe u v w x

variable {α : Type u} {β : Type v} {γ : Type w} {R : Type x}

open Function

namespace Units

section HasDistribNeg

variable [Monoid α] [HasDistribNeg α] {a b : α}

/-- Each element of the group of units of a ring has an additive inverse. -/
instance : Neg αˣ :=
  ⟨fun u => ⟨-↑u, -↑u⁻¹, by simp, by simp⟩⟩

/-- Representing an element of a ring's unit group as an element of the ring commutes with
    mapping this element to its additive inverse. -/
@[simp, norm_cast]
protected theorem val_neg (u : αˣ) : (↑(-u) : α) = -u :=
  rfl
#align units.coe_neg Units.val_neg

@[simp, norm_cast]
protected theorem coe_neg_one : ((-1 : αˣ) : α) = -1 :=
  rfl
#align units.coe_neg_one Units.coe_neg_one

instance : HasDistribNeg αˣ :=
  Units.ext.hasDistribNeg _ Units.val_neg Units.val_mul

@[field_simps]
theorem neg_divp (a : α) (u : αˣ) : -(a /ₚ u) = -a /ₚ u := by simp only [divp, neg_mul]
#align units.neg_divp Units.neg_divp

end HasDistribNeg

section Ring

variable [Ring α] {a b : α}

-- Needs to have higher simp priority than divp_add_divp. 1000 is the default priority.
@[field_simps 1010]
theorem divp_add_divp_same (a b : α) (u : αˣ) : a /ₚ u + b /ₚ u = (a + b) /ₚ u := by
  simp only [divp, add_mul]
#align units.divp_add_divp_same Units.divp_add_divp_same

-- Needs to have higher simp priority than divp_sub_divp. 1000 is the default priority.
@[field_simps 1010]
theorem divp_sub_divp_same (a b : α) (u : αˣ) : a /ₚ u - b /ₚ u = (a - b) /ₚ u := by
  rw [sub_eq_add_neg, sub_eq_add_neg, neg_divp, divp_add_divp_same]
#align units.divp_sub_divp_same Units.divp_sub_divp_same

@[field_simps]
theorem add_divp (a b : α) (u : αˣ) : a + b /ₚ u = (a * u + b) /ₚ u := by
  simp only [divp, add_mul, Units.mul_inv_cancel_right]
#align units.add_divp Units.add_divp

@[field_simps]
theorem sub_divp (a b : α) (u : αˣ) : a - b /ₚ u = (a * u - b) /ₚ u := by
  simp only [divp, sub_mul, Units.mul_inv_cancel_right]
#align units.sub_divp Units.sub_divp

@[field_simps]
theorem divp_add (a b : α) (u : αˣ) : a /ₚ u + b = (a + b * u) /ₚ u := by
  simp only [divp, add_mul, Units.mul_inv_cancel_right]
#align units.divp_add Units.divp_add

@[field_simps]
theorem divp_sub (a b : α) (u : αˣ) : a /ₚ u - b = (a - b * u) /ₚ u := by
  simp only [divp, sub_mul, sub_right_inj]
  rw [mul_assoc, Units.mul_inv, mul_one]
#align units.divp_sub Units.divp_sub

end Ring

end Units

theorem IsUnit.neg [Monoid α] [HasDistribNeg α] {a : α} : IsUnit a → IsUnit (-a)
  | ⟨x, hx⟩ => hx ▸ (-x).isUnit
#align is_unit.neg IsUnit.neg

@[simp]
theorem IsUnit.neg_iff [Monoid α] [HasDistribNeg α] (a : α) : IsUnit (-a) ↔ IsUnit a :=
  ⟨fun h => neg_neg a ▸ h.neg, IsUnit.neg⟩
#align is_unit.neg_iff IsUnit.neg_iff

theorem IsUnit.sub_iff [Ring α] {x y : α} : IsUnit (x - y) ↔ IsUnit (y - x) :=
  (IsUnit.neg_iff _).symm.trans <| neg_sub x y ▸ Iff.rfl
#align is_unit.sub_iff IsUnit.sub_iff

namespace Units

@[field_simps]
theorem divp_add_divp [CommRing α] (a b : α) (u₁ u₂ : αˣ) :
    a /ₚ u₁ + b /ₚ u₂ = (a * u₂ + u₁ * b) /ₚ (u₁ * u₂) := by
  simp only [divp, add_mul, mul_inv_rev, val_mul]
  rw [mul_comm (↑u₁ * b), mul_comm b]
  rw [←mul_assoc, ←mul_assoc, mul_assoc a, mul_assoc (↑u₂⁻¹ : α), mul_inv, inv_mul, mul_one,
    mul_one]
  -- porting note: `assoc_rw` not ported: `assoc_rw [mul_inv, mul_inv, mul_one, mul_one]`
#align units.divp_add_divp Units.divp_add_divp

@[field_simps]
theorem divp_sub_divp [CommRing α] (a b : α) (u₁ u₂ : αˣ) :
    a /ₚ u₁ - b /ₚ u₂ = (a * u₂ - u₁ * b) /ₚ (u₁ * u₂) := by
  simp only [sub_eq_add_neg, neg_divp, divp_add_divp, mul_neg]
#align units.divp_sub_divp Units.divp_sub_divp

theorem add_eq_mul_one_add_div [Semiring R] {a : Rˣ} {b : R} : ↑a + b = a * (1 + ↑a⁻¹ * b) := by
  rw [mul_add, mul_one, ← mul_assoc, Units.mul_inv, one_mul]
#align units.add_eq_mul_one_add_div Units.add_eq_mul_one_add_div

end Units
```
