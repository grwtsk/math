# Complete source: GRWTSK.Algebra.UniversalAlgebra.Synonym.Variant20e54a2a0ba08b227f71c64792db8a819a6aaae27a4391c36b332982643eb92b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6af1f0af62a1c4dc0e018f6943be7f86379e2e77` · SHA-256 `20e54a2a0ba08b227f71c64792db8a819a6aaae27a4391c36b332982643eb92b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
