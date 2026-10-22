/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticChannelPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftQuarticChannelPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem structured_source_is_positive (z : ZeroPoint) (n : ℕ) :
    0 ≤ safeQuarticStructuredPackingValue z n :=
  safeQuarticStructuredPackingValue_nonnegative z n

theorem transverse_channel_dies_at_zero_height
    (z : ZeroPoint) (n : ℕ) (ht : z.1.im = 0) :
    (safeTransversePackingSequence z).valueAt n = 0 :=
  safeTransversePacking_valueAt_eq_zero_of_im_zero z n ht

end GRWTSK.RiemannHypothesis.Checks.SafeShiftQuarticChannelPackingControls
