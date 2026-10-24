# Complete source: GRWTSK.Algebra.Opposite.Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d571a15857aa45256679cc4328d8106797a83259` · SHA-256 `f0bfa4ad5e9b7173b28b91d457c421f02f74735ad1600948f6e75b524b9a23ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.OpNnratCast.Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.OpNnratCast.Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Field/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Ring.Opposite
import Mathlib.Data.Int.Cast.Lemmas

/-!
# Field structure on the multiplicative/additive opposite
-/


namespace GRWTSK.Algebra.OpNnratCast.Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d

assert_not_exists RelIso

variable {α : Type*}

namespace MulOpposite

@[to_additive] instance instNNRatCast [NNRatCast α] : NNRatCast αᵐᵒᵖ := ⟨fun q ↦ op q⟩
@[to_additive] instance instRatCast [RatCast α] : RatCast αᵐᵒᵖ := ⟨fun q ↦ op q⟩

@[to_additive (attr := simp, norm_cast)]
lemma op_nnratCast [NNRatCast α] (q : ℚ≥0) : op (q : α) = q := rfl

@[to_additive (attr := simp, norm_cast)]
lemma unop_nnratCast [NNRatCast α] (q : ℚ≥0) : unop (q : αᵐᵒᵖ) = q := rfl

@[to_additive (attr := simp, norm_cast)]
lemma op_ratCast [RatCast α] (q : ℚ) : op (q : α) = q := rfl

@[to_additive (attr := simp, norm_cast)]
lemma unop_ratCast [RatCast α] (q : ℚ) : unop (q : αᵐᵒᵖ) = q := rfl

instance instDivisionSemiring [DivisionSemiring α] : DivisionSemiring αᵐᵒᵖ where
  __ := instSemiring
  __ := instGroupWithZero
  nnqsmul := _
  nnqsmul_def := fun _ _ => rfl
  nnratCast_def q := unop_injective <| by rw [unop_nnratCast, unop_div, unop_natCast, unop_natCast,
    NNRat.cast_def, div_eq_mul_inv, Nat.cast_comm]

instance instDivisionRing [DivisionRing α] : DivisionRing αᵐᵒᵖ where
  __ := instRing
  __ := instDivisionSemiring
  qsmul := _
  qsmul_def := fun _ _ => rfl
  ratCast_def q := unop_injective <| by rw [unop_ratCast, Rat.cast_def, unop_div,
    unop_natCast, unop_intCast, Int.commute_cast, div_eq_mul_inv]

instance instSemifield [Semifield α] : Semifield αᵐᵒᵖ where
  __ := instCommSemiring
  __ := instDivisionSemiring

instance instField [Field α] : Field αᵐᵒᵖ where
  __ := instCommRing
  __ := instDivisionRing

end MulOpposite

namespace AddOpposite

instance instDivisionSemiring [DivisionSemiring α] : DivisionSemiring αᵃᵒᵖ where
  __ := instSemiring
  __ := instGroupWithZero
  nnqsmul := _
  nnqsmul_def := fun _ _ => rfl
  nnratCast_def q := unop_injective <| by rw [unop_nnratCast, unop_div, unop_natCast, unop_natCast,
    NNRat.cast_def, div_eq_mul_inv]

instance instDivisionRing [DivisionRing α] : DivisionRing αᵃᵒᵖ where
  __ := instRing
  __ := instDivisionSemiring
  qsmul := _
  qsmul_def := fun _ _ => rfl
  ratCast_def q := unop_injective <| by rw [unop_ratCast, Rat.cast_def, unop_div, unop_natCast,
    unop_intCast, div_eq_mul_inv]

instance instSemifield [Semifield α] : Semifield αᵃᵒᵖ where
  __ := instCommSemiring
  __ := instDivisionSemiring

instance instField [Field α] : Field αᵃᵒᵖ where
  __ := instCommRing
  __ := instDivisionRing

end AddOpposite
```
