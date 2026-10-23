/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteHybridEnergy
import Mathlib.Analysis.PSeries
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Canonical universal p-series constants used by every residual-energy
component. -/
def greenPSeriesC2 : ℝ := ∑' n : ℕ, 1 / (n : ℝ)^2
def greenPSeriesC4 : ℝ := ∑' n : ℕ, 1 / (n : ℝ)^4

theorem greenPSeriesC2_nonneg : 0 ≤ greenPSeriesC2 :=
  tsum_nonneg (fun _ => by positivity)

theorem greenPSeriesC4_nonneg : 0 ≤ greenPSeriesC4 :=
  tsum_nonneg (fun _ => by positivity)

theorem green_reciprocalSquare_partial_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, 1 / (n : ℝ)^2) ≤ greenPSeriesC2 := by
  unfold greenPSeriesC2
  have hs : Summable (fun n : ℕ => 1 / (n : ℝ)^2) := by
    simpa using (Real.summable_nat_pow_inv.mpr (by norm_num : 1 < (2 : ℕ)))
  exact hs.sum_le_tsum (fun _ _ => by positivity)

theorem green_reciprocalFourth_partial_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, 1 / (n : ℝ)^4) ≤ greenPSeriesC4 := by
  unfold greenPSeriesC4
  have hs : Summable (fun n : ℕ => 1 / (n : ℝ)^4) := by
    simpa using (Real.summable_nat_pow_inv.mpr (by norm_num : 1 < (4 : ℕ)))
  exact hs.sum_le_tsum (fun _ _ => by positivity)

/-- Canonical version of the high quotient residue-majorant bound. -/
theorem greenHighQuotientResidueMajorant_le_canonical
    {X Q : ℕ} (hX : 1 ≤ X) :
    greenHighQuotientResidueMajorant X Q ≤
      (5 / (X : ℝ)^2) * greenPSeriesC2 * greenPSeriesC2 := by
  calc
    greenHighQuotientResidueMajorant X Q ≤
      (5 / (X : ℝ)^2) *
        (∑ r ∈ greenPositivePrincipalResidues X, 1 / (r : ℝ)^2) *
        (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^2) :=
      greenHighQuotientResidueMajorant_le hX
    _ ≤ (5 / (X : ℝ)^2) * greenPSeriesC2 * greenPSeriesC2 := by
      have hfac : 0 ≤ 5 / (X : ℝ)^2 := by positivity
      exact mul_le_mul
        (mul_le_mul_of_nonneg_left
          (green_reciprocalSquare_partial_le (X / 2)) hfac)
        (green_reciprocalSquare_partial_le Q)
        (by positivity) (by positivity)

/-- Canonical alias-family bound. -/
theorem greenAliasResidualEnergy_le_canonical
    {X Q : ℕ} (hX : 1 ≤ X) :
    greenAliasResidualEnergy X Q ≤
      (9 / (4 * Real.pi^4)) * greenPSeriesC4 / (X : ℝ)^4 +
      ((Real.log 2)^2 / Real.pi^2) * greenPSeriesC2 / (X : ℝ)^2 := by
  obtain ⟨C2, C4, hC2, hC4, h⟩ :=
    greenAliasResidualEnergy_le (Q := Q) hX
  -- Reprove directly with the canonical partial-sum bounds, avoiding any
  -- dependence on the existential witnesses returned above.
  calc
    greenAliasResidualEnergy X Q ≤
      4 * ∑ q ∈ Finset.Icc 1 Q,
        (greenAliasResidualA ((q * X : ℕ) : ℤ)^2 +
         greenAliasResidualD ((q * X : ℕ) : ℤ)^2) :=
      greenAliasResidualEnergy_le_components hX
    _ = 4 * ((9 / (16 * Real.pi^4 * (X : ℝ)^4)) *
          (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^4) +
        (((Real.log 2)^2 / (4 * Real.pi^2 * (X : ℝ)^2)) *
          (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^2))) := by
      apply congrArg (fun z : ℝ => 4 * z)
      rw [Finset.sum_add_distrib]
      congr 1 <;> rw [Finset.mul_sum] <;>
        apply Finset.sum_congr rfl <;> intro q hq
      · rw [greenAliasResidualA_mul_eq hX (Finset.mem_Icc.mp hq).1]
        ring
      · rw [greenAliasResidualD_mul_eq hX (Finset.mem_Icc.mp hq).1]
        ring
    _ ≤ (9 / (4 * Real.pi^4)) * greenPSeriesC4 / (X : ℝ)^4 +
      ((Real.log 2)^2 / Real.pi^2) * greenPSeriesC2 / (X : ℝ)^2 := by
      have h2 := green_reciprocalSquare_partial_le Q
      have h4 := green_reciprocalFourth_partial_le Q
      positivity

end GRWTSK.RiemannHypothesis
