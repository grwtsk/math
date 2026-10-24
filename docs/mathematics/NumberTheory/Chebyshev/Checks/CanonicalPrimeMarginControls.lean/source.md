# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalPrimeMarginControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `664571a36189d3970cc6bbe6ebe930018229b4da` · SHA-256 `04d293bfffdeb1ce3ee779290f8bae619956923acbdbab35ffd5a29d3df5e665`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCoverage
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Exact controls for the canonical prime margin

Scalar fixtures are synthetic enclosure models, not zeta samples or numerical
prime certificates. The arithmetic fixture at n=1 is separate from the n>=2
analytic domain. These proof scripts have NOT been executed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalPrimeMarginControls

open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection

/-- A coefficient-one tail may pass where the correctly scaled tail fails. -/
theorem omitted_scale_false_positive :
    0 < (3 : ℝ) - 1 - 1 ∧ ¬ 0 < (3 : ℝ) - 3 * 1 - 1 := by norm_num

/-- Positive Mangoldt mass alone does not survive proper-power subtraction. -/
theorem proper_power_mass_not_prime_margin :
    0 < (1 : ℝ) ∧ ¬ 0 < (1 : ℝ) - 1 := by norm_num

/-- Reversing a negative correction can change a failed margin into a pass. -/
theorem signed_correction_false_positive :
    ¬ 0 < (1 / 4 : ℝ) + (-1 / 2) ∧ 0 < (1 / 4 : ℝ) - (-1 / 2) := by norm_num

/-- The negative prefix lies ABOVE the complete correction. -/
theorem prefix_is_not_lower_enclosure :
    (-1 / 2 : ℝ) < -1 / 4 ∧ (-1 / 4 : ℝ) - 1 / 4 = -1 / 2 := by norm_num

/-- Omitting finite evaluation error can independently create a false pass. -/
theorem omitted_evaluation_error_false_positive :
    0 < (1 : ℝ) - 1 / 4 ∧ ¬ 0 < (1 : ℝ) - 1 / 4 - 1 := by norm_num

/-- Equality at the proper-power threshold is not strict prime positivity. -/
theorem zero_margin_is_rejected : ¬ 0 < (1 : ℝ) - 1 := by norm_num

/-- Inventory cardinality cannot replace exact source membership. -/
theorem same_cardinality_wrong_inventory :
    ({2} : Finset ℕ).card = ({3} : Finset ℕ).card ∧
      ¬ (∀ z : ℕ, z ∈ ({2} : Finset ℕ) ↔ z ∈ ({3} : Finset ℕ)) := by
  constructor
  · simp
  · intro h
    have h2 := h 2
    norm_num at h2

/-- Dropping source multiplicity changes even a one-location contribution. -/
theorem multiplicity_cannot_be_cardinality :
    (2 : ℝ) * (1 / 3) ≠ (1 : ℝ) * (1 / 3) := by norm_num

/-- An empty correction prefix still carries its complete geometric allowance. -/
theorem empty_prefix_keeps_budget (n : ℕ) :
    squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ (0 : ℕ) = squareTrivialBudget n := by simp

/-- The analytic domain starts at n=2 although the first prime interval is valid. -/
theorem first_square_stage_separate :
    ¬ (2 ≤ (1 : ℕ)) ∧
      (∃ p : ℕ, Nat.Prime p ∧ 1 ^ 2 < p ∧ p < (1 + 1) ^ 2) := by
  constructor
  · norm_num
  · refine ⟨2, ?_, ?_, ?_⟩ <;> norm_num

/-- The all-input supplier needs n>=2; its threshold is at least one. -/
theorem fixed_threshold_preserves_domain (N n : ℕ) (hN : 1 ≤ N) (hn : N < n) : 2 ≤ n := by
  omega

/-- Good samples through K do not cover the next interval. -/
theorem finite_samples_not_universal (K : ℕ) :
    (∀ n : ℕ, n ≤ K → n ≠ K + 1) ∧ ¬ (∀ n : ℕ, n ≠ K + 1) := by
  constructor
  · intro n hn
    omega
  · intro h
    exact h (K + 1) rfl

end GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalPrimeMarginControls
```
