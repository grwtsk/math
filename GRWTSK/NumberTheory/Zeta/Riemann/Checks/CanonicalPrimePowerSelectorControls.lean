/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerSelector
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.CanonicalPrimePowerSelectorControls

open GRWTSK.RiemannHypothesis

/-- The first canonical event is at least two and is an actual prime power. -/
theorem first_event_is_prime_power :
    IsPrimePow (canonicalPrimePowerValueSequence 0) :=
  canonicalPrimePowerValueSequence_isPrimePow 0

/-- Every adjacent pair is strictly increasing. -/
theorem selector_never_repeats (n : ℕ) :
    canonicalPrimePowerValueSequence n ≠
      canonicalPrimePowerValueSequence (n + 1) :=
  ne_of_lt (canonicalPrimePowerValueSequence_strict n)

/-- A hypothetical prime power between adjacent selected values cannot lie
strictly below the successor. -/
theorem selector_has_no_skipped_value
    (n q : ℕ)
    (hl : canonicalPrimePowerValueSequence n < q)
    (hq : IsPrimePow q) :
    canonicalPrimePowerValueSequence (n + 1) ≤ q :=
  canonicalPrimePowerValueSequence_next_le n q hl hq

end GRWTSK.RiemannHypothesis.Checks.CanonicalPrimePowerSelectorControls
