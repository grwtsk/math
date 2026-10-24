# Complete source: GRWTSK.Algebra.UniversalAlgebra.Rat.Variant3b59d109ade7f81ac9653b33747bc631a1e6fcd998ef0c616a10f9121f2324cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b47d8017c85881dce0570202c43bc69a3d0e36d1` · SHA-256 `f6b0d3953ed571825c2242903279192a015bce3aa47645a37722194f9df8040e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Module.Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Module.Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Module/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Module.Defs
import Mathlib.Data.NNRat.Lemmas
import Mathlib.Data.Rat.Cast.Order

/-!
# Monotonicity of the action by rational numbers
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Module.Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734

variable {α : Type*}

instance PosSMulMono.nnrat_of_rat [Preorder α] [MulAction ℚ α] [PosSMulMono ℚ α] :
    PosSMulMono ℚ≥0 α where elim _q hq _a₁ _a₂ ha := smul_le_smul_of_nonneg_left (α := ℚ) ha hq

instance PosSMulStrictMono.nnrat_of_rat [Preorder α] [MulAction ℚ α] [PosSMulStrictMono ℚ α] :
    PosSMulStrictMono ℚ≥0 α where elim _q hq _a₁ _a₂ ha := smul_lt_smul_of_pos_left (α := ℚ) ha hq

section LinearOrderedAddCommGroup
variable [AddCommGroup α] [LinearOrder α] [IsOrderedAddMonoid α]

@[simp] lemma abs_nnqsmul [DistribMulAction ℚ≥0 α] [PosSMulMono ℚ≥0 α] (q : ℚ≥0) (a : α) :
    |q • a| = q • |a| := by
  obtain ha | ha := le_total a 0 <;>
    simp [*, abs_of_nonneg, abs_of_nonpos, smul_nonneg, smul_nonpos_of_nonneg_of_nonpos]

@[simp] lemma abs_qsmul [Module ℚ α] [PosSMulMono ℚ α] (q : ℚ) (a : α) :
    |q • a| = |q| • |a| := by
  obtain ha | ha := le_total a 0 <;> obtain hq | hq := le_total q 0 <;>
    simp [*, abs_of_nonneg, abs_of_nonpos, smul_nonneg, smul_nonpos_of_nonneg_of_nonpos,
      smul_nonpos_of_nonpos_of_nonneg, smul_nonneg_of_nonpos_of_nonpos]

end LinearOrderedAddCommGroup

section LinearOrderedSemifield
variable [Semifield α] [LinearOrder α] [IsStrictOrderedRing α]

instance LinearOrderedSemifield.toPosSMulStrictMono_rat : PosSMulStrictMono ℚ≥0 α where
  elim q hq a b hab := by
    rw [NNRat.smul_def, NNRat.smul_def]; exact mul_lt_mul_of_pos_left hab <| NNRat.cast_pos.2 hq

end LinearOrderedSemifield

section LinearOrderedField
variable [Field α] [LinearOrder α] [IsStrictOrderedRing α]

instance LinearOrderedField.toPosSMulStrictMono_rat : PosSMulStrictMono ℚ α where
  elim q hq a b hab := by
    rw [Rat.smul_def, Rat.smul_def]; exact mul_lt_mul_of_pos_left hab <| Rat.cast_pos.2 hq

end LinearOrderedField
```
