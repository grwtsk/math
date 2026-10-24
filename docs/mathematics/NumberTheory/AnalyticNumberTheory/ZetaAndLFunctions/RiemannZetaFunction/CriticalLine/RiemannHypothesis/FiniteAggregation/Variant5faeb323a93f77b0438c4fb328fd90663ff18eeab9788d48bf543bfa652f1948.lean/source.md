# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteAggregation.Variant5faeb323a93f77b0438c4fb328fd90663ff18eeab9788d48bf543bfa652f1948

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3caf0caa30eaecacb8e9a22fe1664a319c8ddf77` · SHA-256 `5faeb323a93f77b0438c4fb328fd90663ff18eeab9788d48bf543bfa652f1948`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.WeightedVariance

/-!
# Positive aggregation pays for cancellation before the response budget

Batch 03's finite interface retains the original signed column loads and a
nonnegative column-stochastic aggregation. Total variation contracts; the
exact removed mass must pay any reconstruction deficit. This does not supply
the source's exponentially large kernel-weighted mass lower bound and does
not lower-bound the already-cancelled signed arithmetic readout.

Human direction: grwtsk contributors. Local finite laws and consumers:
OpenAI Codex. Upstream triangle and finite-sum laws retain Mathlib origin.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FiniteAggregation

open scoped BigOperators
noncomputable section

def variation {ι : Type*} [Fintype ι] (a : ι → ℝ) : ℝ := ∑ i, |a i|
def aggregate {ι κ : Type*} [Fintype κ] (P : ι → κ → ℝ) (a : κ → ℝ) : ι → ℝ :=
  fun i => ∑ j, P i j * a j
def cancelledMass {ι κ : Type*} [Fintype ι] [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ) : ℝ := (variation a - variation (aggregate P a)) / 2

theorem variation_contracts {ι κ : Type*} [Fintype ι] [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ) (hP : ∀ i j, 0 ≤ P i j)
    (hcolumns : ∀ j, (∑ i, P i j) = 1) : variation (aggregate P a) ≤ variation a := by
  have hrow (i : ι) : |∑ j, P i j * a j| ≤ ∑ j, P i j * |a j| := by
    calc
      _ ≤ ∑ j, |P i j * a j| := Finset.abs_sum_le_sum_abs _ _
      _ = _ := by
        apply Finset.sum_congr rfl
        intro j _hj
        rw [abs_mul, abs_of_nonneg (hP i j)]
  unfold variation aggregate
  calc
    _ ≤ ∑ i, ∑ j, P i j * |a j| := Finset.sum_le_sum (fun i _ => hrow i)
    _ = ∑ j, (∑ i, P i j) * |a j| := by
      rw [Finset.sum_comm]
      simp_rw [Finset.sum_mul]
    _ = _ := by simp only [hcolumns, one_mul]

theorem cancelledMass_nonneg {ι κ : Type*} [Fintype ι] [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ) (hP : ∀ i j, 0 ≤ P i j)
    (hcolumns : ∀ j, (∑ i, P i j) = 1) : 0 ≤ cancelledMass P a := by
  unfold cancelledMass
  exact div_nonneg (sub_nonneg.mpr (variation_contracts P a hP hcolumns)) (by norm_num)

theorem exact_removed_mass {ι κ : Type*} [Fintype ι] [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ) :
    variation (aggregate P a) = variation a - 2 * cancelledMass P a := by
  unfold cancelledMass
  ring

/-- Reconstruction budget is a premise; it cannot silently absorb removed absolute mass. -/
theorem response_budget_tradeoff {ι κ : Type*} [Fintype ι] [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ) {B E : ℝ}
    (hbudget : variation (aggregate P a) ≤ B + E) :
    variation a ≤ B + E + 2 * cancelledMass P a := by
  rw [exact_removed_mass] at hbudget
  linarith

theorem cancelled_fraction_lower {ι κ : Type*} [Fintype ι] [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ) {B E : ℝ} (hV : 0 < variation a)
    (hbudget : variation (aggregate P a) ≤ B + E) :
    1 - (B + E) / variation a ≤ 2 * cancelledMass P a / variation a := by
  have h := response_budget_tradeoff P a hbudget
  apply (le_div_iff₀ hV).mpr
  field_simp
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteAggregation
```
