# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nat.Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9e0f1808184052bc7eca87ba8100a60d163d6f6` · SHA-256 `7b0eac708f5511a293db4a55794a36ce96e70e488f36ebeb821a120f73508256`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BoolProdNatEquivNat.Variant823e8f488ea0e122fddf4dbe884666089dbccd4cd42cce8074bd5b97f9f0abb6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"823e8f488ea0e122fddf4dbe884666089dbccd4cd42cce8074bd5b97f9f0abb6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BoolProdNatEquivNat.Variant823e8f488ea0e122fddf4dbe884666089dbccd4cd42cce8074bd5b97f9f0abb6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"823e8f488ea0e122fddf4dbe884666089dbccd4cd42cce8074bd5b97f9f0abb6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Equiv/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Nat.Bits
import Mathlib.Data.Nat.Pairing

/-!
# Equivalences involving `ℕ`

This file defines some additional constructive equivalences using `Encodable` and the pairing
function on `ℕ`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BoolProdNatEquivNat.Variant823e8f488ea0e122fddf4dbe884666089dbccd4cd42cce8074bd5b97f9f0abb6

assert_not_exists Monoid

open Nat Function

namespace Equiv

variable {α : Type*}

/-- An equivalence between `Bool × ℕ` and `ℕ`, by mapping `(true, x)` to `2 * x + 1` and
`(false, x)` to `2 * x`. -/
@[simps]
def boolProdNatEquivNat : Bool × ℕ ≃ ℕ where
  toFun := uncurry bit
  invFun := boddDiv2
  left_inv := fun ⟨b, n⟩ => by simp only [bodd_bit, div2_bit, uncurry_apply_pair, boddDiv2_eq]
  right_inv n := by simp only [bit_decomp, boddDiv2_eq, uncurry_apply_pair]

/-- An equivalence between `ℕ ⊕ ℕ` and `ℕ`, by mapping `(Sum.inl x)` to `2 * x` and `(Sum.inr x)` to
`2 * x + 1`.
-/
@[simps! symm_apply]
def natSumNatEquivNat : ℕ ⊕ ℕ ≃ ℕ :=
  (boolProdEquivSum ℕ).symm.trans boolProdNatEquivNat

@[simp]
theorem natSumNatEquivNat_apply : ⇑natSumNatEquivNat = Sum.elim (2 * ·) (2 * · + 1) := by
  ext (x | x) <;> rfl

/-- An equivalence between `ℤ` and `ℕ`, through `ℤ ≃ ℕ ⊕ ℕ` and `ℕ ⊕ ℕ ≃ ℕ`.
-/
def intEquivNat : ℤ ≃ ℕ :=
  intEquivNatSumNat.trans natSumNatEquivNat

/-- An equivalence between `α × α` and `α`, given that there is an equivalence between `α` and `ℕ`.
-/
def prodEquivOfEquivNat (e : α ≃ ℕ) : α × α ≃ α :=
  calc
    α × α ≃ ℕ × ℕ := prodCongr e e
    _ ≃ ℕ := pairEquiv
    _ ≃ α := e.symm

end Equiv
```
