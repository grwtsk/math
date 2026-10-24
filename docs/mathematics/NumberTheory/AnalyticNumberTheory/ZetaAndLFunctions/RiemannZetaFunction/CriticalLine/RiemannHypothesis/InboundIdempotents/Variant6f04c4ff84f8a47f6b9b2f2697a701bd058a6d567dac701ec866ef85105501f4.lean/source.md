# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InboundIdempotents.Variant6f04c4ff84f8a47f6b9b2f2697a701bd058a6d567dac701ec866ef85105501f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f60516b0af0bc7a591c4a16776668c6bfab638d` · SHA-256 `6f04c4ff84f8a47f6b9b2f2697a701bd058a6d567dac701ec866ef85105501f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# Rational product-field control has exactly four idempotents

Batch 22's inbound algebra has the stated form Q x L, with L a field.
Conditionally on that field model, its only idempotents are zero, one, the
fixed-factor selector and the whole-field-factor selector. The L factor
cannot be cut by a nonzero proper idempotent. The exact source candidate
field, its degree-six recognition and its geometric base-change map remain
separate; this does not identify any specific M23 cover or conjugate.

Human inbound-control direction: grwtsk contributors. Local formalization:
OpenAI Codex. Mathlib's field and product-ring infrastructure remains upstream.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.InboundIdempotents

theorem field_idempotent_is_zero_or_one {F : Type*} [Field F] (a : F)
    (ha : a * a = a) : a = 0 ∨ a = 1 := by
  have h : a * (a - 1) = 0 := by
    calc
      a * (a - 1) = a * a - a := by ring
      _ = 0 := sub_eq_zero.mpr ha
  rcases mul_eq_zero.mp h with hzero | hone
  · exact Or.inl hzero
  · exact Or.inr (sub_eq_zero.mp hone)

theorem product_field_idempotents {F : Type*} [Field F] (e : ℚ × F)
    (he : e * e = e) :
    e = 0 ∨ e = 1 ∨ e = (1, 0) ∨ e = (0, 1) := by
  have hfirst : e.1 * e.1 = e.1 := congrArg Prod.fst he
  have hsecond : e.2 * e.2 = e.2 := congrArg Prod.snd he
  rcases field_idempotent_is_zero_or_one e.1 hfirst with h0 | h1 <;>
    rcases field_idempotent_is_zero_or_one e.2 hsecond with k0 | k1
  · exact Or.inl (Prod.ext h0 k0)
  · exact Or.inr (Or.inr (Or.inr (Prod.ext h0 k1)))
  · exact Or.inr (Or.inr (Or.inl (Prod.ext h1 k0)))
  · exact Or.inr (Or.inl (Prod.ext h1 k1))

theorem no_proper_field_factor_idempotent {F : Type*} [Field F] (a : F)
    (hzero : a ≠ 0) (hone : a ≠ 1) : a * a ≠ a := by
  intro he
  rcases field_idempotent_is_zero_or_one a he with h | h
  · exact hzero h
  · exact hone h

theorem exact_product_channel_split {F : Type*} [Field F] (m : ℚ × F) :
    (1, 0) * m + (0, 1) * m = m := by
  ext <;> simp

theorem fixed_selector_retains_whole_field_residual {F : Type*} [Field F]
    (m : ℚ × F) : m - (1, 0) * m = (0, m.2) := by
  ext <;> simp

theorem field_selector_cannot_select_a_proper_nonzero_component {F : Type*}
    [Field F] (a : F) (ha : a * a = a) (hzero : a ≠ 0) :
    ∀ x : F, a * x = x := by
  have hone := (field_idempotent_is_zero_or_one a ha).resolve_left hzero
  simp [hone]

end GRWTSK.RiemannHypothesis.Conversation.InboundIdempotents
```
