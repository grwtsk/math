# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImplicitUniverses.Variantd2a05726f2000c18af18065210b624bf543453b65f18daf651135167861b122b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bd84f6d7e7ac24cc0f7a8c9da6813145d486268` · SHA-256 `d2a05726f2000c18af18065210b624bf543453b65f18daf651135167861b122b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.SuccessIfFailWithMsg

private axiom test_sorry : ∀ {α}, α
noncomputable example (_x _y : Type*) : test_sorry := by
  success_if_fail_with_msg
"type mismatch
  _y
has type
  Type u_2 : Type (u_2 + 1)
but is expected to have type
  Type u_1 : Type (u_1 + 1)" (exact _x = _y)
  exact test_sorry

noncomputable example (_x : Sort*) : test_sorry := by
  success_if_fail_with_msg
"type mismatch
  Prop
has type
  Type : Type 1
but is expected to have type
  Sort u_1 : Type u_1" (exact _x = Prop)
  exact test_sorry

noncomputable example : test_sorry := by
  success_if_fail_with_msg
"type mismatch
  y
has type
  Type u_2 : Type (u_2 + 1)
but is expected to have type
  Type u_1 : Type (u_1 + 1)" (exact ∀ x y : Type*, x = y)
  exact test_sorry

noncomputable example : test_sorry := by
  success_if_fail_with_msg
"type mismatch
  Prop
has type
  Type : Type 1
but is expected to have type
  Sort u_1 : Type u_1" (exact ∀ x : Sort*, x = Prop)
  exact test_sorry
```
