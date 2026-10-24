# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedVariance.Variant5f42f68685c4d348fabe5b13f08bd933af3633597810c8b2d552e5fb3d6bc0c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `434e2c6227a8e918e8a80409e7d02cca0d7e3ad8` · SHA-256 `5f42f68685c4d348fabe5b13f08bd933af3633597810c8b2d552e5fb3d6bc0c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge

/-!
# Exact variance credit and the two-port Schur boundary

Finite identities from audited RH conversation Batches 13 and 19. The positive
variance credit is retained instead of separately paying each diagonal. A
positive-semidefinite detector form still requires its Schur inequality; this
module does not produce that inequality for the actual arithmetic detectors.

Human direction: grwtsk contributors. Local interfaces and Lean implementation:
OpenAI Codex. Standard finite algebra: Mathlib.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.WeightedVariance

open scoped BigOperators

noncomputable section

private theorem inner_pair_expand {ι : Type*} (s : Finset ι) (w B : ι → ℝ) (i : ι) :
    (∑ j ∈ s, w i * w j * (B i - B j) ^ 2) =
      w i * B i ^ 2 * (∑ j ∈ s, w j) -
      2 * w i * B i * (∑ j ∈ s, w j * B j) +
      w i * (∑ j ∈ s, w j * B j ^ 2) := by
  calc
    _ = ∑ j ∈ s, (w i * B i ^ 2 * w j -
        2 * w i * B i * (w j * B j) + w i * (w j * B j ^ 2)) := by
      apply Finset.sum_congr rfl
      intro j _hj
      ring
    _ = _ := by rw [Finset.sum_add_distrib, Finset.sum_sub_distrib,
      ← Finset.mul_sum, ← Finset.mul_sum, ← Finset.mul_sum]

/-- The root deficit is exactly half the sum over all ordered pair differences. -/
theorem weighted_pair_variance {ι : Type*} (s : Finset ι) (w B : ι → ℝ) :
    (∑ i ∈ s, w i) * (∑ i ∈ s, w i * B i ^ 2) - (∑ i ∈ s, w i * B i) ^ 2 =
      (1 / 2) * ∑ i ∈ s, ∑ j ∈ s, w i * w j * (B i - B j) ^ 2 := by
  simp_rw [inner_pair_expand]
  have h₁ : (∑ i ∈ s, w i * B i ^ 2 * (∑ j ∈ s, w j)) =
      (∑ i ∈ s, w i * B i ^ 2) * (∑ j ∈ s, w j) := by rw [Finset.sum_mul]
  have h₂ : (∑ i ∈ s, 2 * w i * B i * (∑ j ∈ s, w j * B j)) =
      2 * (∑ i ∈ s, w i * B i) * (∑ j ∈ s, w j * B j) := by
    simp_rw [show ∀ i : ι, 2 * w i * B i = 2 * (w i * B i) by intro i; ring]
    rw [← Finset.sum_mul, ← Finset.mul_sum]
  have h₃ : (∑ i ∈ s, w i * (∑ j ∈ s, w j * B j ^ 2)) =
      (∑ i ∈ s, w i) * (∑ j ∈ s, w j * B j ^ 2) := by rw [Finset.sum_mul]
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, h₁, h₂, h₃]
  ring

theorem weighted_variance_nonneg {ι : Type*} (s : Finset ι) (w B : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) :
    (∑ i ∈ s, w i * B i) ^ 2 ≤ (∑ i ∈ s, w i) * (∑ i ∈ s, w i * B i ^ 2) := by
  have h := weighted_pair_variance s w B
  have hp : 0 ≤ ∑ i ∈ s, ∑ j ∈ s, w i * w j * (B i - B j) ^ 2 :=
    Finset.sum_nonneg (fun i hi => Finset.sum_nonneg (fun j hj =>
      mul_nonneg (mul_nonneg (hw i hi) (hw j hj)) (sq_nonneg _)))
  nlinarith

/-- The joint quadratic in this module, with the following exact parameterization.

def jointQuadratic (a b κ x y : ℝ) : ℝ := a * x ^ 2 - 2 * κ * x * y + b * y ^ 2
-/
def jointQuadratic (a b κ x y : ℝ) : ℝ := a * x ^ 2 - 2 * κ * x * y + b * y ^ 2

/-- The exact cross credit and remaining Schur cost are both retained. -/
theorem schur_completion {a : ℝ} (ha : a ≠ 0) (b κ x y : ℝ) :
    jointQuadratic a b κ x y =
      a * (x - (κ / a) * y) ^ 2 + (b - κ ^ 2 / a) * y ^ 2 := by
  unfold jointQuadratic
  field_simp
  ring

theorem jointQuadratic_nonneg {a b κ : ℝ} (ha : 0 < a) (hschur : κ ^ 2 ≤ a * b)
    (x y : ℝ) : 0 ≤ jointQuadratic a b κ x y := by
  rw [schur_completion ha.ne']
  have hrem : 0 ≤ b - κ ^ 2 / a := by
    have h : κ ^ 2 / a ≤ b := (div_le_iff₀ ha).mpr (by nlinarith [hschur])
    exact sub_nonneg.mpr h
  exact add_nonneg (mul_nonneg ha.le (sq_nonneg _)) (mul_nonneg hrem (sq_nonneg _))

/-- Separate diagonal payments omit exactly this mixed credit. -/
theorem separated_payment_credit (a b κ x y : ℝ) :
    a * x ^ 2 + b * y ^ 2 - jointQuadratic a b κ x y = 2 * κ * x * y := by
  unfold jointQuadratic
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedVariance
```
