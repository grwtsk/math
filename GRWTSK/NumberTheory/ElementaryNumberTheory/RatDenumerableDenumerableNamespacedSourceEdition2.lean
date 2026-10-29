-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.DenumerableAux.Variant6a136b88b209173e39cb85f3552e3554b65d8f049603b2a6530ca1f0ef9cd558","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a136b88b209173e39cb85f3552e3554b65d8f049603b2a6530ca1f0ef9cd558","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.DenumerableAux.Variant6a136b88b209173e39cb85f3552e3554b65d8f049603b2a6530ca1f0ef9cd558","mathematical_subject":"Logic.SetTheory","original_sha256":"6a136b88b209173e39cb85f3552e3554b65d8f049603b2a6530ca1f0ef9cd558","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Rat/Denumerable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.SetTheory.Cardinal.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.DenumerableAux.Variant6a136b88b209173e39cb85f3552e3554b65d8f049603b2a6530ca1f0ef9cd558

#align_import data.rat.denumerable from "leanprover-community/mathlib"@"dde670c9a3f503647fd5bfdf1037bad526d3397a"

/-!
# Denumerability of ℚ

This file proves that ℚ is infinite, denumerable, and deduces that it has cardinality `omega`.
-/


namespace Rat

open Denumerable

instance : Infinite ℚ :=
  Infinite.of_injective ((↑) : ℕ → ℚ) Nat.cast_injective

private def denumerable_aux : ℚ ≃ { x : ℤ × ℕ // 0 < x.2 ∧ x.1.natAbs.coprime x.2 }
    where
  toFun x := ⟨⟨x.1, x.2⟩, Nat.pos_of_ne_zero x.3, x.4⟩
  invFun x := ⟨x.1.1, x.1.2, ne_zero_of_lt x.2.1, x.2.2⟩
  left_inv := fun ⟨_, _, _, _⟩ => rfl
  right_inv := fun ⟨⟨_, _⟩, _, _⟩ => rfl

/-- **Denumerability of the Rational Numbers** -/
instance : Denumerable ℚ := by
  let T := { x : ℤ × ℕ // 0 < x.2 ∧ x.1.natAbs.coprime x.2 }
  letI : Infinite T := Infinite.of_injective _ denumerable_aux.injective
  letI : Encodable T := Subtype.encodable
  letI : Denumerable T := ofEncodableOfInfinite T
  exact Denumerable.ofEquiv T denumerable_aux

end Rat

open Cardinal

theorem Cardinal.mkRat : #ℚ = ℵ₀ := by simp only [mk_eq_aleph0]
#align cardinal.mk_rat Cardinal.mkRat
