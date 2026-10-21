/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.CanonicalPrimePowerPackingControls

open GRWTSK.RiemannHypothesis

theorem concrete_stage_nonnegative (n : ℕ) :
    0 ≤ canonicalPrimePowerPackingSequence.valueAt n :=
  canonicalPrimePowerPackingSequence.valueAt_nonnegative n

theorem concrete_schedule_strict (n : ℕ) :
    canonicalPrimePowerPackingSequence.source n <
      canonicalPrimePowerPackingSequence.source (n + 1) :=
  canonicalPrimePowerPackingSequence.source_strict n

end GRWTSK.RiemannHypothesis.Checks.CanonicalPrimePowerPackingControls
