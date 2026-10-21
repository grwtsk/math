/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Rational arithmetic for a two-denominator analytic budget

The note derives the analytic envelope comparison and model bounds. This
module proves ONLY the algebra of the resulting rational expression; it does
not assert that the expression bounds an integral without that bridge.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget

open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel

noncomputable section

/-- A specified untwisted all-prefix rate. The `k+1` endpoint is intentional.
This predicate does not assert any cutoff or prime-distribution theorem. -/
def GoldbachThetaPrefixSupplier (N₀ : ℕ) (ε : ℝ) : Prop :=
  0 ≤ ε ∧ ∀ N, N₀ ≤ N → 2 < N → Even N →
    ∀ k, k ≤ N → |goldbachPrimeLogTotal k - (k + 1 : ℝ)| ≤ ε * (N + 1 : ℝ)

/-- An explicit rational upper expression obtained from the written Q=2
calculation, retaining the non-reduced prime-two correction. -/
def goldbachTwoArcRationalBudget (X B : ℝ) : ℝ :=
  (40 * B * X + 12 * X + 310 * B ^ 2 + 70 * B + 30) / X

theorem goldbachTwoArcRationalBudget_nonneg
    {X B : ℝ} (hX : 0 < X) (hB : 0 ≤ B) :
    0 ≤ goldbachTwoArcRationalBudget X B := by
  unfold goldbachTwoArcRationalBudget
  positivity

/-- One-percent all-prefix input makes this rational expression at most X/2
for X>=1000. No analytic integral comparison is inferred by this lemma. -/
theorem goldbachTwoArcRationalBudget_le_half
    {X B : ℝ} (hX : 1000 ≤ X) (hB : 0 ≤ B) (hsmall : B ≤ X / 100) :
    goldbachTwoArcRationalBudget X B ≤ X / 2 := by
  have hXp : 0 < X := by linarith
  have hBsmall : 100 * B ≤ X := by linarith
  have hBX : 100 * B * X ≤ X ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hBsmall) (le_of_lt hXp)]
  have hBB : 10000 * B ^ 2 ≤ X ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hBsmall)
      (show 0 ≤ X + 100 * B by positivity)]
  have hXX : 1000 * X ≤ X ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hX) (le_of_lt hXp)]
  unfold goldbachTwoArcRationalBudget
  apply (div_le_iff₀ hXp).2
  nlinarith

/-- The chosen major and directional-minor allowances leave a strict margin
below the written 13X/9 model lower bound. -/
theorem goldbachTwoArcRationalBudget_strict_margin
    {X B : ℝ} (hX : 1000 ≤ X) (hB : 0 ≤ B) (hsmall : B ≤ X / 100) :
    goldbachTwoArcRationalBudget X B + X / 2 < 13 * X / 9 := by
  have h := goldbachTwoArcRationalBudget_le_half hX hB hsmall
  linarith

end
end GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget
