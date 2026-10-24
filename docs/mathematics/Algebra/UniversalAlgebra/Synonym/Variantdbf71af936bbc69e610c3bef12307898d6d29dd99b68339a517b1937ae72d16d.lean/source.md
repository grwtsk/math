# Complete source: GRWTSK.Algebra.UniversalAlgebra.Synonym.Variantdbf71af936bbc69e610c3bef12307898d6d29dd99b68339a517b1937ae72d16d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d13d44ff4340dc22c52e9cddc911b79c2fcb1640` · SHA-256 `09ea6d8002f1f5f0607356b52a22573239909483931800a453fc671a15ad6125`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.GroupWithZero.Variant20e54a2a0ba08b227f71c64792db8a819a6aaae27a4391c36b332982643eb92b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20e54a2a0ba08b227f71c64792db8a819a6aaae27a4391c36b332982643eb92b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.GroupWithZero.Variant20e54a2a0ba08b227f71c64792db8a819a6aaae27a4391c36b332982643eb92b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"20e54a2a0ba08b227f71c64792db8a819a6aaae27a4391c36b332982643eb92b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/GroupWithZero/Synonym.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
module

public import Mathlib.Algebra.GroupWithZero.Defs
public import Mathlib.Algebra.Order.Group.Synonym

/-!
# Group with zero structure on the order type synonyms

Transfer algebraic instances from `α` to `αᵒᵈ` and `Lex α`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.GroupWithZero.Variant20e54a2a0ba08b227f71c64792db8a819a6aaae27a4391c36b332982643eb92b

public section

variable {α : Type*}


/-! ### Order dual -/


namespace OrderDual

instance [MulZeroClass α] : MulZeroClass αᵒᵈ := inferInstanceAs <| MulZeroClass α

instance [MulZeroOneClass α] : MulZeroOneClass αᵒᵈ := inferInstanceAs <| MulZeroOneClass α

instance [Mul α] [Zero α] [NoZeroDivisors α] : NoZeroDivisors αᵒᵈ :=
  inferInstanceAs <| NoZeroDivisors α

instance [SemigroupWithZero α] : SemigroupWithZero αᵒᵈ := inferInstanceAs <| SemigroupWithZero α

instance [MonoidWithZero α] : MonoidWithZero αᵒᵈ := inferInstanceAs <| MonoidWithZero α

instance [Mul α] [Zero α] [IsLeftCancelMulZero α] : IsLeftCancelMulZero αᵒᵈ :=
  inferInstanceAs <| IsLeftCancelMulZero α

instance [Mul α] [Zero α] [IsRightCancelMulZero α] : IsRightCancelMulZero αᵒᵈ :=
  inferInstanceAs <| IsRightCancelMulZero α

instance [Mul α] [Zero α] [IsCancelMulZero α] : IsCancelMulZero αᵒᵈ where

instance [CommMonoidWithZero α] : CommMonoidWithZero αᵒᵈ := inferInstanceAs <| CommMonoidWithZero α

instance [GroupWithZero α] : GroupWithZero αᵒᵈ := inferInstanceAs <| GroupWithZero α

instance [CommGroupWithZero α] : CommGroupWithZero αᵒᵈ := inferInstanceAs <| CommGroupWithZero α

end OrderDual

/-! ### Lexicographic order -/


namespace Lex

instance [MulZeroClass α] : MulZeroClass (Lex α) := inferInstanceAs <| MulZeroClass α

instance [MulZeroOneClass α] : MulZeroOneClass (Lex α) := inferInstanceAs <| MulZeroOneClass α

instance [Mul α] [Zero α] [NoZeroDivisors α] : NoZeroDivisors (Lex α) :=
  inferInstanceAs <| NoZeroDivisors α

instance [SemigroupWithZero α] : SemigroupWithZero (Lex α) := inferInstanceAs <| SemigroupWithZero α

instance [MonoidWithZero α] : MonoidWithZero (Lex α) := inferInstanceAs <| MonoidWithZero α

instance [Mul α] [Zero α] [IsLeftCancelMulZero α] : IsLeftCancelMulZero (Lex α) :=
  inferInstanceAs <| IsLeftCancelMulZero α

instance [Mul α] [Zero α] [IsRightCancelMulZero α] : IsRightCancelMulZero (Lex α) :=
  inferInstanceAs <| IsRightCancelMulZero α

instance [Mul α] [Zero α] [IsCancelMulZero α] : IsCancelMulZero (Lex α) :=
  inferInstanceAs <| IsCancelMulZero α

instance [CommMonoidWithZero α] : CommMonoidWithZero (Lex α) :=
  inferInstanceAs <| CommMonoidWithZero α

instance [GroupWithZero α] : GroupWithZero (Lex α) := inferInstanceAs <| GroupWithZero α

instance [CommGroupWithZero α] : CommGroupWithZero (Lex α) := inferInstanceAs <| CommGroupWithZero α

end Lex
```
