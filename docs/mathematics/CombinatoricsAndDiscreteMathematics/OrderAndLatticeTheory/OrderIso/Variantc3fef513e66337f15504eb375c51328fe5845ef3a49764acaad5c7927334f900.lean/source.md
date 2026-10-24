# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variantc3fef513e66337f15504eb375c51328fe5845ef3a49764acaad5c7927334f900

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e51796cc4bfeef0a905716fb32d785f6957fa2cf` · SHA-256 `42a95a9befde0231fb19876ec439395cf405b94859e2de21902bde553527a067`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MulLeft.Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.MulLeft.Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd","mathematical_subject":"Algebra.OrderTheory","original_sha256":"80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/GroupWithZero/Unbundled/OrderIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Algebra.GroupWithZero.Units.Equiv
import Mathlib.Order.Hom.Basic

/-!
# Multiplication by a positive element as an order isomorphism
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MulLeft.Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd

namespace OrderIso
variable {G₀} [GroupWithZero G₀] [PartialOrder G₀]

section left
variable [PosMulReflectLT G₀]

attribute [local instance] PosMulReflectLT.toPosMulStrictMono PosMulReflectLT.toPosMulReflectLE

/-- `Equiv.mulLeft₀` as an order isomorphism. -/
@[simps! +simpRhs]
def mulLeft₀ (a : G₀) (ha : 0 < a) : G₀ ≃o G₀ where
  toEquiv := .mulLeft₀ a ha.ne'
  map_rel_iff' := mul_le_mul_left ha

lemma mulLeft₀_symm (a : G₀) (ha : 0 < a) : (mulLeft₀ a ha).symm = mulLeft₀ a⁻¹ (inv_pos.2 ha) := by
  ext; rfl

end left

attribute [local instance] MulPosReflectLT.toMulPosStrictMono MulPosReflectLT.toMulPosReflectLE

section right
variable [MulPosReflectLT G₀]

/-- `Equiv.mulRight₀` as an order isomorphism. -/
@[simps! +simpRhs]
def mulRight₀ (a : G₀) (ha : 0 < a) : G₀ ≃o G₀ where
  toEquiv := .mulRight₀ a ha.ne'
  map_rel_iff' := mul_le_mul_right ha

lemma mulRight₀_symm (a : G₀) (ha : 0 < a) :
    (mulRight₀ a ha).symm = mulRight₀ a⁻¹ (Right.inv_pos.2 ha) := by ext; rfl

/-- `Equiv.divRight₀` as an order isomorphism. -/
@[simps! +simpRhs]
def divRight₀ (a : G₀) (ha : 0 < a) : G₀ ≃o G₀ where
  toEquiv := .divRight₀ a ha.ne'
  map_rel_iff' {b c} := by
    simp only [Equiv.divRight₀_apply, div_eq_mul_inv]
    exact mul_le_mul_right (a := a⁻¹) (Right.inv_pos.mpr ha)

end right

end OrderIso
```
