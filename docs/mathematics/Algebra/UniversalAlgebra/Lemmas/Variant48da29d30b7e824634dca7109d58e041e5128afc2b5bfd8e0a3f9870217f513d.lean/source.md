# Complete source: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6e4527af705f767fc6c34e3acaafac23768af22` · SHA-256 `488ddb6bdf03581b6965c35b1bf1a9b6bc9e905ab6b37ad46a7a9b035c82ffe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CoeIndicator.Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CoeIndicator.Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/NNRat/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Group.Indicator
import Mathlib.Algebra.GroupWithZero.Action.End
import Mathlib.Algebra.Order.Field.Rat

/-!
# Field and action structures on the nonnegative rationals

This file provides additional results about `NNRat` that cannot live in earlier files due to import
cycles.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CoeIndicator.Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca

open Function
open scoped NNRat

namespace NNRat
variable {α : Type*} {q : ℚ≥0}

/-- A `MulAction` over `ℚ` restricts to a `MulAction` over `ℚ≥0`. -/
instance [MulAction ℚ α] : MulAction ℚ≥0 α :=
  MulAction.compHom α coeHom.toMonoidHom

/-- A `DistribMulAction` over `ℚ` restricts to a `DistribMulAction` over `ℚ≥0`. -/
instance [AddCommMonoid α] [DistribMulAction ℚ α] : DistribMulAction ℚ≥0 α :=
  DistribMulAction.compHom α coeHom.toMonoidHom

@[simp, norm_cast]
lemma coe_indicator (s : Set α) (f : α → ℚ≥0) (a : α) :
    ((s.indicator f a : ℚ≥0) : ℚ) = s.indicator (fun x ↦ ↑(f x)) a :=
  (coeHom : ℚ≥0 →+ ℚ).map_indicator _ _ _

end NNRat

open NNRat

namespace Rat

variable {p q : ℚ}

lemma toNNRat_inv (q : ℚ) : toNNRat q⁻¹ = (toNNRat q)⁻¹ := by
  obtain hq | hq := le_total q 0
  · rw [toNNRat_eq_zero.mpr hq, inv_zero, toNNRat_eq_zero.mpr (inv_nonpos.mpr hq)]
  · nth_rw 1 [← Rat.coe_toNNRat q hq]
    rw [← coe_inv, toNNRat_coe]

lemma toNNRat_div (hp : 0 ≤ p) : toNNRat (p / q) = toNNRat p / toNNRat q := by
  rw [div_eq_mul_inv, div_eq_mul_inv, ← toNNRat_inv, ← toNNRat_mul hp]

lemma toNNRat_div' (hq : 0 ≤ q) : toNNRat (p / q) = toNNRat p / toNNRat q := by
  rw [div_eq_inv_mul, div_eq_inv_mul, toNNRat_mul (inv_nonneg.2 hq), toNNRat_inv]

end Rat

/-! ### Numerator and denominator -/

namespace NNRat

variable {q : ℚ≥0}

/-- A recursor for nonnegative rationals in terms of numerators and denominators. -/
protected def rec {α : ℚ≥0 → Sort*} (h : ∀ m n : ℕ, α (m / n)) (q : ℚ≥0) : α q := by
  rw [← num_div_den q]; apply h

end NNRat
```
