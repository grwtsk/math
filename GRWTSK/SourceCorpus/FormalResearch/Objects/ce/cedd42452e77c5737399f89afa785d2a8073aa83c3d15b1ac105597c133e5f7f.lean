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

/-- The payment exponent in this module, with the following exact parameterization.

noncomputable def paymentExponent (theta alpha : ℝ) : ℝ := 1 / 2 - alpha * (1 - theta)
-/
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
