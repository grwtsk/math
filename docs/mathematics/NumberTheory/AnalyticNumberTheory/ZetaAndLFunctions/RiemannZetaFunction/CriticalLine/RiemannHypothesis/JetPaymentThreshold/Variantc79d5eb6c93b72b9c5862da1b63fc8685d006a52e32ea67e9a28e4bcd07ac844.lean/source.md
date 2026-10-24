# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.JetPaymentThreshold.Variantc79d5eb6c93b72b9c5862da1b63fc8685d006a52e32ea67e9a28e4bcd07ac844

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e7f9112d9a1897d4967def58aaac3459fccdac0` · SHA-256 `c79d5eb6c93b72b9c5862da1b63fc8685d006a52e32ea67e9a28e4bcd07ac844`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.UnitJetCorrection

/-!
# The absolute unit-jet payment retains its natural-range power obstruction

Batch 18 B18-L3–L4 proposes a conditional absolute payment with exponent
1/2-alpha*(1-theta). This module checks its exact threshold and the obstruction
on 0<=alpha<=1 when 1/2<theta<1. At theta=7/8, removing the power requires
alpha>=4, while the natural range retains at least 3/8. The underlying Mertens
envelope, convolution estimate and polylogarithmic factors remain separate;
this is exponent bookkeeping, not a lower bound on the signed source packet.

Human payment/quantifier direction: grwtsk contributors. Local exact threshold
and next-consumer arithmetic: OpenAI Codex. Mathlib real algebra stays upstream.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.JetPaymentThreshold

noncomputable def paymentExponent (theta alpha : ℝ) : ℝ := 1 / 2 - alpha * (1 - theta)

theorem nonpositive_payment_iff (theta alpha : ℝ) :
    paymentExponent theta alpha ≤ 0 ↔ 1 / 2 ≤ alpha * (1 - theta) := by
  unfold paymentExponent
  constructor <;> intro h <;> linarith

theorem natural_range_payment_floor {theta alpha : ℝ} (htheta : theta ≤ 1) (halpha : alpha ≤ 1) :
    theta - 1 / 2 ≤ paymentExponent theta alpha := by
  unfold paymentExponent
  nlinarith [mul_nonneg (sub_nonneg.mpr halpha) (sub_nonneg.mpr htheta)]

theorem natural_range_retains_positive_power {theta alpha : ℝ}
    (hhalf : 1 / 2 < theta) (htheta : theta ≤ 1) (halpha : alpha ≤ 1) :
    0 < paymentExponent theta alpha :=
  (sub_pos.mpr hhalf).trans_le (natural_range_payment_floor htheta halpha)

theorem seven_eighths_requires_four (alpha : ℝ) :
    paymentExponent (7 / 8) alpha ≤ 0 ↔ 4 ≤ alpha := by
  unfold paymentExponent
  constructor <;> intro h <;> linarith

theorem seven_eighths_natural_range_floor {alpha : ℝ} (halpha : alpha ≤ 1) :
    3 / 8 ≤ paymentExponent (7 / 8) alpha := by
  have h := natural_range_payment_floor (theta := (7 / 8 : ℝ)) (by norm_num) halpha
  norm_num at h ⊢
  exact h

end GRWTSK.RiemannHypothesis.Conversation.JetPaymentThreshold
```
