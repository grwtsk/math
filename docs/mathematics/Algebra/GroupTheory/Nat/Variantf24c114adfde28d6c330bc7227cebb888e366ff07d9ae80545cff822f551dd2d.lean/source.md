# Complete source: GRWTSK.Algebra.GroupTheory.Nat.Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d02952ab3d79c00199cbcc4dee9ca5fc1353bf47` · SHA-256 `8fa29effed40786723ad73592721ffff874900ceb6ef1603ce79b2d5b50cd9e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Nat.Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Nat.Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299","mathematical_subject":"Algebra.Groups","original_sha256":"15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Tactic.Spread

/-!
# The natural numbers form a `CancelCommMonoidWithZero`

This file contains the `CancelCommMonoidWithZero` instance on the natural numbers.

See note [foundational algebra order theory].
-/


namespace GRWTSK.Algebra.GroupTheory.Nat.Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299

assert_not_exists Ring

namespace Nat

instance instMulZeroClass : MulZeroClass ℕ where
  zero_mul := Nat.zero_mul
  mul_zero := Nat.mul_zero

instance instSemigroupWithZero : SemigroupWithZero ℕ where
  __ := instSemigroup
  __ := instMulZeroClass

instance instMonoidWithZero : MonoidWithZero ℕ where
  __ := instMonoid
  __ := instMulZeroClass
  __ := instSemigroupWithZero

instance instCommMonoidWithZero : CommMonoidWithZero ℕ where
  __ := instCommMonoid
  __ := instMonoidWithZero

instance instIsLeftCancelMulZero : IsLeftCancelMulZero ℕ where
  mul_left_cancel_of_ne_zero h := Nat.eq_of_mul_eq_mul_left (Nat.pos_of_ne_zero h)

instance instCancelCommMonoidWithZero : CancelCommMonoidWithZero ℕ where
  __ := instCommMonoidWithZero
  __ := instIsLeftCancelMulZero

instance instMulDivCancelClass : MulDivCancelClass ℕ where
  mul_div_cancel _ _b hb := Nat.mul_div_cancel _ (Nat.pos_iff_ne_zero.2 hb)

instance instMulZeroOneClass : MulZeroOneClass ℕ where
  __ := instMulZeroClass
  __ := instMulOneClass

end Nat
```
