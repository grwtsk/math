# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Sqrt.Variantc5c916e87cde00c71ca0a2363b608f2b6ab30ccf2e80c589b6f8665bd1eda5a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6eac07ca001826cb68a8c50aea420b74df5f5912` · SHA-256 `1b05e7fd934104b9bbe8900406707c2728b69fd3d51210741850e34a8e79ea31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Sqrt.Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Sqrt.Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Rat/Sqrt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Data.Rat.Order
import Mathlib.Data.Rat.Lemmas
import Mathlib.Data.Int.Sqrt


namespace GRWTSK.FoundationsLogicAndTypeTheory.Sqrt.Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a

#align_import data.rat.sqrt from "leanprover-community/mathlib"@"46a64b5b4268c594af770c44d9e502afc6a515cb"

/-!
# Square root on rational numbers

This file defines the square root function on rational numbers `Rat.sqrt`
and proves several theorems about it.

-/


namespace Rat

/-- Square root function on rational numbers, defined by taking the (integer) square root of the
numerator and the square root (on natural numbers) of the denominator. -/
-- @[pp_nodot] porting note: unknown attribute
def sqrt (q : ℚ) : ℚ := mkRat (Int.sqrt q.num) (Nat.sqrt q.den)
#align rat.sqrt Rat.sqrt

theorem sqrt_eq (q : ℚ) : Rat.sqrt (q * q) = |q| := by
  rw [sqrt, mul_self_num, mul_self_den, Int.sqrt_eq, Nat.sqrt_eq, abs_def, divInt_ofNat]
#align rat.sqrt_eq Rat.sqrt_eq

theorem exists_mul_self (x : ℚ) : (∃ q, q * q = x) ↔ Rat.sqrt x * Rat.sqrt x = x :=
  ⟨fun ⟨n, hn⟩ => by rw [← hn, sqrt_eq, abs_mul_abs_self], fun h => ⟨Rat.sqrt x, h⟩⟩
#align rat.exists_mul_self Rat.exists_mul_self

theorem sqrt_nonneg (q : ℚ) : 0 ≤ Rat.sqrt q :=
  nonneg_iff_zero_le.1 <|
    (divInt_nonneg _ <|
          Int.coe_nat_pos.2 <|
            Nat.pos_of_ne_zero fun H => q.den_nz <| Nat.sqrt_eq_zero.1 H).2 <|
      Int.coe_nat_nonneg _
#align rat.sqrt_nonneg Rat.sqrt_nonneg

end Rat
```
