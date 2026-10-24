# Complete source: GRWTSK.Algebra.UniversalAlgebra.Power.Variante4f31d70e0231fe84b6a10109d63c7e3a1c927169ddd6e0d43a07daf875403db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43c6c7e4cef94abe8c1461ab0a7e2e91176888cf` · SHA-256 `b9195eecc92b63270d7d055557e5ac194f8a19d68cceb87bddc25d712c84ed2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ZpowBit1Neg.Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ZpowBit1Neg.Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Field/Power.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Robert Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Lewis, Leonardo de Moura, Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.Power
import Mathlib.Algebra.Parity


namespace GRWTSK.Algebra.UniversalAlgebra.ZpowBit1Neg.Variant0a7755dd2980c22dfad2c645b9ef586b152a6dbfafc7bb2d94841fea072eeb5f

#align_import algebra.field.power from "leanprover-community/mathlib"@"1e05171a5e8cf18d98d9cf7b207540acb044acae"

/-!
# Results about powers in fields or division rings.

This file exists to ensure we can define `Field` with minimal imports,
so contains some lemmas about powers of elements which need imports
beyond those needed for the basic definition.
-/


variable {α : Type*}

section DivisionRing

variable [DivisionRing α] {n : ℤ}

set_option linter.deprecated false in
@[simp]
theorem zpow_bit1_neg (a : α) (n : ℤ) : (-a) ^ bit1 n = -a ^ bit1 n := by
  rw [zpow_bit1', zpow_bit1', neg_mul_neg, neg_mul_eq_mul_neg]
#align zpow_bit1_neg zpow_bit1_neg

theorem Odd.neg_zpow (h : Odd n) (a : α) : (-a) ^ n = -a ^ n := by
  obtain ⟨k, rfl⟩ := h.exists_bit1
  exact zpow_bit1_neg _ _
#align odd.neg_zpow Odd.neg_zpow

theorem Odd.neg_one_zpow (h : Odd n) : (-1 : α) ^ n = -1 := by rw [h.neg_zpow, one_zpow]
#align odd.neg_one_zpow Odd.neg_one_zpow

end DivisionRing
```
