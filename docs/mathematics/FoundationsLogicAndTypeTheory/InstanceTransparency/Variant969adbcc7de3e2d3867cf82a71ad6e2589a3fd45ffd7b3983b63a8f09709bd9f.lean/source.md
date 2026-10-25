# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.InstanceTransparency.Variant969adbcc7de3e2d3867cf82a71ad6e2589a3fd45ffd7b3983b63a8f09709bd9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94dd553ea49e0e554d9622ef98ac5142b8029176` · SHA-256 `969adbcc7de3e2d3867cf82a71ad6e2589a3fd45ffd7b3983b63a8f09709bd9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Real.Basic

/-! # Test transparency level of `Div` field in `DivInvMonoid`

It is desirable that particular `DivInvMonoid`s have their `Div` instance not unfold at `.instance`
transparency level, in the same way that the `Div` field of a generic `DivInvMonoid` does not.

To ensure this, in examples where the `Div` field is defined as `fun a b ↦ a * b⁻¹`, we hide this
under one layer of other function (so for example the `Div` instance for `Rat` is defined to be
`⟨Rat.div⟩`, where `Rat.div` is defined to be `fun a b ↦ a * b⁻¹`).

This file checks that this and similar tricks have had the desired effect:
`with_reducible_and_instances apply mul_le_mul` fails although `apply mul_le_mul` succeeds.
-/

set_option autoImplicit true

example {a b : α} [LinearOrderedField α] : a / 2 ≤ b / 2 := by
  fail_if_success with_reducible_and_instances apply mul_le_mul -- fails, as desired
  sorry

example {a b : ℚ} : a / 2 ≤ b / 2 := by
  fail_if_success with_reducible_and_instances apply mul_le_mul -- fails, as desired
  apply mul_le_mul
  repeat sorry

example {a b : ℝ} : a / 2 ≤ b / 2 := by
  fail_if_success with_reducible_and_instances apply mul_le_mul -- fails, as desired
  apply mul_le_mul
  repeat sorry
```
