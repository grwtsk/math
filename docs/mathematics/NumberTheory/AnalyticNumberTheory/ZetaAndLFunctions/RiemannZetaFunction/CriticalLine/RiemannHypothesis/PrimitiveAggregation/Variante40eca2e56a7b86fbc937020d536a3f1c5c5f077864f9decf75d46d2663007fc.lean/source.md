# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimitiveAggregation.Variante40eca2e56a7b86fbc937020d536a3f1c5c5f077864f9decf75d46d2663007fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `784969da19bd0858ed4a46d4c18371e1724f722d` · SHA-256 `e40eca2e56a7b86fbc937020d536a3f1c5c5f077864f9decf75d46d2663007fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.FiniteAggregation
import FormalResearch.RiemannHypothesis.Conversation.MangoldtPrimitiveAbsoluteMass
import FormalResearch.RiemannHypothesis.Conversation.FiniteTentPrimitiveIdentity

/-!
# Literal channel cancellation and the actual primitive reconstruction payment

A nonnegative column-stochastic matrix retains the signed total. Its removed
absolute mass is exactly twice the sum of positive-negative matches inside
its channels. The finite Mangoldt primitive supplies the unchanged row; its
checked absolute lower bound therefore prices every such reconstruction.
No lower bound for the signed primitive or an arithmetic cancellation bound
is inferred.

Source: audited RH conversation Batch 3, BL03-02/03 and BL03-01F. Human
programme and source direction: grwtsk contributors. Local adapters and Lean
implementation: OpenAI Codex. Qualified source APIs retain their identity.
-/

set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.PrimitiveAggregation
open FiniteAggregation MangoldtPrimitiveAbsoluteMass
open scoped BigOperators
noncomputable section

private theorem signed_parts (a : ℝ) : a = max a 0 - max (-a) 0 := by
  by_cases ha : 0 ≤ a
  · rw [max_eq_left ha, max_eq_right (by linarith)]
    ring
  · rw [max_eq_right (by linarith), max_eq_left (by linarith)]
    ring

private theorem absolute_parts (a : ℝ) : |a| = max a 0 + max (-a) 0 := by
  by_cases ha : 0 ≤ a
  · rw [abs_of_nonneg ha, max_eq_left ha, max_eq_right (by linarith)]
    ring
  · rw [abs_of_nonpos (by linarith), max_eq_right (by linarith),
      max_eq_left (by linarith)]
    ring

private theorem scalar_match {p n : ℝ} :
    |p - n| = p + n - 2 * min p n := by
  by_cases h : p ≤ n
  · rw [min_eq_left h, abs_of_nonpos (by linarith)]
    ring
  · rw [min_eq_right (by linarith), abs_of_nonneg (by linarith)]
    ring

/-- The positive channel in this module, with the following exact parameterization.

def positiveChannel {ι κ : Type*} [Fintype κ] (P : ι → κ → ℝ) (a : κ → ℝ) (i : ι) : ℝ := ∑ j,
P i j * max (a j) 0
-/
def positiveChannel {ι κ : Type*} [Fintype κ] (P : ι → κ → ℝ) (a : κ → ℝ)
    (i : ι) : ℝ := ∑ j, P i j * max (a j) 0

/-- The negative channel in this module, with the following exact parameterization.

def negativeChannel {ι κ : Type*} [Fintype κ] (P : ι → κ → ℝ) (a : κ → ℝ) (i : ι) : ℝ := ∑ j,
P i j * max (-a j) 0
-/
def negativeChannel {ι κ : Type*} [Fintype κ] (P : ι → κ → ℝ) (a : κ → ℝ)
    (i : ι) : ℝ := ∑ j, P i j * max (-a j) 0

theorem aggregate_keeps_signed_total {ι κ : Type*} [Fintype ι] [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ) (hcolumns : ∀ j, (∑ i, P i j) = 1) :
    (∑ i, aggregate P a i) = ∑ j, a j := by
  unfold aggregate
  rw [Finset.sum_comm]
  simp_rw [← Finset.sum_mul, hcolumns, one_mul]

theorem exact_channel_signed_balance {ι κ : Type*} [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ) (i : ι) :
    aggregate P a i = positiveChannel P a i - negativeChannel P a i := by
  unfold aggregate positiveChannel negativeChannel
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  rw [← mul_sub, ← signed_parts]

theorem exact_matched_mass {ι κ : Type*} [Fintype ι] [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ)
    (hcolumns : ∀ j, (∑ i, P i j) = 1) :
    cancelledMass P a = ∑ i, min (positiveChannel P a i) (negativeChannel P a i) := by
  have hparts : (∑ i, (positiveChannel P a i + negativeChannel P a i)) = variation a := by
    unfold positiveChannel negativeChannel variation
    simp_rw [← Finset.sum_add_distrib, ← mul_add, ← absolute_parts]
    rw [Finset.sum_comm]
    simp_rw [← Finset.sum_mul, hcolumns, one_mul]
  have hmass : variation (aggregate P a) = variation a -
      2 * ∑ i, min (positiveChannel P a i) (negativeChannel P a i) := by
    unfold variation
    simp_rw [exact_channel_signed_balance P a,
      scalar_match]
    rw [Finset.sum_sub_distrib, ← Finset.mul_sum, hparts]
    rfl
  unfold cancelledMass
  rw [hmass]
  ring

theorem positive_channel_match_nonnegative {ι κ : Type*} [Fintype ι] [Fintype κ]
    (P : ι → κ → ℝ) (a : κ → ℝ) (hP : ∀ i j, 0 ≤ P i j) :
    0 ≤ ∑ i, min (positiveChannel P a i) (negativeChannel P a i) := by
  apply Finset.sum_nonneg
  intro i hi
  apply le_min
  · exact Finset.sum_nonneg (fun j hj ↦ mul_nonneg (hP i j) (le_max_right _ _))
  · exact Finset.sum_nonneg (fun j hj ↦ mul_nonneg (hP i j) (le_max_right _ _))

/-- The primitive row in this module, with the following exact parameterization.

def primitiveRow (x : ℝ) (n : ↥(Finset.Icc 2 ⌊x⌋₊)) : ℝ := (ArithmeticFunction.vonMangoldt
n.val - 1) * primitiveWeight x n.val
-/
def primitiveRow (x : ℝ) (n : ↥(Finset.Icc 2 ⌊x⌋₊)) : ℝ :=
  (ArithmeticFunction.vonMangoldt n.val - 1) * primitiveWeight x n.val

theorem literal_primitive_row_variation {x : ℝ} (hx : 0 ≤ x) :
    variation (primitiveRow x) = absolutePrimitiveMass x := by
  unfold variation primitiveRow absolutePrimitiveMass
  rw [Finset.sum_coe_sort (Finset.Icc 2 ⌊x⌋₊) (fun n : ℕ ↦ |(ArithmeticFunction.vonMangoldt n -
    1) * primitiveWeight x n|)]
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hn2, hnhi⟩ := Finset.mem_Icc.mp hn
  have hnx := (show (n : ℝ) ≤ (⌊x⌋₊ : ℝ) by exact_mod_cast hnhi).trans (Nat.floor_le hx)
  rw [abs_mul, abs_of_nonneg (visible_primitive_weight_nonnegative (by omega) hnx)]

theorem literal_primitive_row_signed_total (x : ℝ) :
    (∑ n, primitiveRow x n) = ArithmeticPrimitive.actualPrimitive x := by
  unfold primitiveRow
  rw [Finset.sum_coe_sort (Finset.Icc 2 ⌊x⌋₊) (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n -
    1) * primitiveWeight x n), ← exact_closed_primitive_weight_row,
    ← FiniteTentPrimitiveIdentity.actual_primitive_is_literal_mangoldt]

theorem actual_primitive_aggregation_retains_total {ι : Type*} [Fintype ι]
    (x : ℝ) (P : ι → ↥(Finset.Icc 2 ⌊x⌋₊) → ℝ)
    (hcolumns : ∀ j, (∑ i, P i j) = 1) :
    (∑ i, aggregate P (primitiveRow x) i) = ArithmeticPrimitive.actualPrimitive x := by
  rw [aggregate_keeps_signed_total P _ hcolumns, literal_primitive_row_signed_total]

theorem actual_primitive_reconstruction_payment {ι : Type*} [Fintype ι]
    {t B E : ℝ} (ht : 4 ≤ t)
    (P : ι → ↥(Finset.Icc 2 ⌊Real.exp t⌋₊) → ℝ)
    (hP : ∀ i j, 0 ≤ P i j) (hcolumns : ∀ j, (∑ i, P i j) = 1)
    (hbudget : variation (aggregate P (primitiveRow (Real.exp t))) ≤ B + E) :
    0 ≤ (∑ i, min (positiveChannel P (primitiveRow (Real.exp t)) i)
      (negativeChannel P (primitiveRow (Real.exp t)) i)) ∧
    Real.exp (t / 2) / 60 ≤ B + E +
      2 * ∑ i, min (positiveChannel P (primitiveRow (Real.exp t)) i)
        (negativeChannel P (primitiveRow (Real.exp t)) i) := by
  constructor
  · exact positive_channel_match_nonnegative P _ hP
  have h := response_budget_tradeoff P _ hbudget
  rw [exact_matched_mass P _ hcolumns, literal_primitive_row_variation (Real.exp_pos t).le] at h
  exact (actual_logarithmic_primitive_absolute_lower ht).trans h

theorem actual_required_cancellation {ι : Type*} [Fintype ι]
    {t B E : ℝ} (ht : 4 ≤ t)
    (P : ι → ↥(Finset.Icc 2 ⌊Real.exp t⌋₊) → ℝ)
    (hP : ∀ i j, 0 ≤ P i j) (hcolumns : ∀ j, (∑ i, P i j) = 1)
    (hbudget : variation (aggregate P (primitiveRow (Real.exp t))) ≤ B + E) :
    Real.exp (t / 2) / 60 - (B + E) ≤
      2 * ∑ i, min (positiveChannel P (primitiveRow (Real.exp t)) i)
        (negativeChannel P (primitiveRow (Real.exp t)) i) := by
  have h := (actual_primitive_reconstruction_payment ht P hP hcolumns hbudget).2
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.PrimitiveAggregation
```
