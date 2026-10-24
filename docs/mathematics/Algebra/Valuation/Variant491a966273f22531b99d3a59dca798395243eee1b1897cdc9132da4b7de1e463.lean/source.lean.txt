-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AddVal.Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AddVal.Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/HahnSeries/Valuation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.RingTheory.HahnSeries.Multiplication
import Mathlib.RingTheory.Valuation.Basic

/-!
# Valuations on Hahn Series rings
If `Γ` is a `LinearOrderedCancelAddCommMonoid` and `R` is a domain, then the domain `HahnSeries Γ R`
admits an additive valuation given by `orderTop`.

## Main Definitions
  * `HahnSeries.addVal Γ R` defines an `AddValuation` on `HahnSeries Γ R` when `Γ` is linearly
    ordered.

## TODO
  * Multiplicative valuations
  * Add any API for Laurent series valuations that do not depend on `Γ = ℤ`.

## References
- [J. van der Hoeven, *Operators on Generalized Power Series*][van_der_hoeven]
-/



namespace GRWTSK.Algebra.AddVal.Varianta93ae835f4f69cfe22e3e8652537ebcc523574c567bac9b4adae0a879935b041

noncomputable section

variable {Γ R : Type*}

namespace HahnSeries

section Valuation

variable (Γ R) [AddCommMonoid Γ] [LinearOrder Γ] [IsOrderedCancelAddMonoid Γ] [Ring R] [IsDomain R]

/-- The additive valuation on `HahnSeries Γ R`, returning the smallest index at which
  a Hahn Series has a nonzero coefficient, or `⊤` for the 0 series. -/
def addVal : AddValuation (HahnSeries Γ R) (WithTop Γ) :=
  AddValuation.of orderTop orderTop_zero (orderTop_one) (fun _ _ => min_orderTop_le_orderTop_add)
  fun x y => by
    by_cases hx : x = 0; · simp [hx]
    by_cases hy : y = 0; · simp [hy]
    rw [← order_eq_orderTop_of_ne hx, ← order_eq_orderTop_of_ne hy,
      ← order_eq_orderTop_of_ne (mul_ne_zero hx hy), ← WithTop.coe_add, WithTop.coe_eq_coe,
      order_mul hx hy]

variable {Γ} {R}

theorem addVal_apply {x : HahnSeries Γ R} :
    addVal Γ R x = x.orderTop :=
  AddValuation.of_apply _

@[simp]
theorem addVal_apply_of_ne {x : HahnSeries Γ R} (hx : x ≠ 0) : addVal Γ R x = x.order :=
  addVal_apply.trans (order_eq_orderTop_of_ne hx).symm

theorem addVal_le_of_coeff_ne_zero {x : HahnSeries Γ R} {g : Γ} (h : x.coeff g ≠ 0) :
    addVal Γ R x ≤ g :=
  orderTop_le_of_coeff_ne_zero h

end Valuation

end HahnSeries
