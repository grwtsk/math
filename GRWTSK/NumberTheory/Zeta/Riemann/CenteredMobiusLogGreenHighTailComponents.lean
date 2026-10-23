/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidualSquareBounds
import Mathlib.Analysis.PSeries
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Universal p=2 and p=4 partial-sum constants. -/
theorem exists_reciprocalSquareFourthPartialSumBounds :
    ∃ C2 C4 : ℝ, 0 ≤ C2 ∧ 0 ≤ C4 ∧
      (∀ N : ℕ, (∑ n ∈ Finset.Icc 1 N, 1 / (n : ℝ)^2) ≤ C2) ∧
      (∀ N : ℕ, (∑ n ∈ Finset.Icc 1 N, 1 / (n : ℝ)^4) ≤ C4) := by
  obtain ⟨C2, hC2, h2⟩ := exists_reciprocalSquarePartialSumBound
  have hs4 : Summable (fun n : ℕ => 1 / (n : ℝ)^4) := by
    simpa using (Real.summable_nat_pow_inv.mpr (by norm_num : 1 < (4 : ℕ)))
  let C4 : ℝ := ∑' n : ℕ, 1 / (n : ℝ)^4
  refine ⟨C2, C4, hC2, tsum_nonneg (fun _ => by positivity), h2, ?_⟩
  intro N
  exact hs4.sum_le_tsum (fun _ _ => by positivity)

/-- Finite high-tail A^2 majorant over q>=1 and both residue signs. -/
def greenHighA2Majorant (X Q : ℕ) : ℝ :=
  ∑ r ∈ greenPositivePrincipalResidues X,
    ∑ q ∈ Finset.Icc 1 Q,
      (greenResidualA ((q * X - r : ℕ) : ℤ))^2 +
      (greenResidualA ((q * X + r : ℕ) : ℤ))^2

/-- Finite high-tail C^2 majorant. -/
def greenHighC2Majorant (X Q : ℕ) : ℝ :=
  ∑ r ∈ greenPositivePrincipalResidues X,
    ∑ q ∈ Finset.Icc 1 Q,
      (greenResidualC X ((q * X - r : ℕ) : ℤ))^2 +
      (greenResidualC X ((q * X + r : ℕ) : ℤ))^2

/-- B^2 is a fixed scalar multiple of the already-factorized residue majorant. -/
theorem greenHighB2_eq_residueMajorant
    (X Q : ℕ) :
    (∑ r ∈ greenPositivePrincipalResidues X,
      ∑ q ∈ Finset.Icc 1 Q,
        (greenResidualB ((q * X - r : ℕ) : ℤ) r)^2 +
        (greenResidualB ((q * X + r : ℕ) : ℤ) r)^2) =
      (1 / (16 * Real.pi^2)) *
        greenHighQuotientResidueMajorant X Q := by
  unfold greenResidualB greenHighQuotientResidueMajorant
  apply Finset.sum_congr rfl
  intro r hr
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro q hq
  have hrpos : 1 ≤ r := (Finset.mem_Icc.mp hr).1
  have hqpos : 1 ≤ q := (Finset.mem_Icc.mp hq).1
  have hden := principal_residue_denominator_lower
    (by
      unfold greenPositivePrincipalResidues at hr
      have := (Finset.mem_Icc.mp hr).2
      omega) hr hqpos
  have hmpos : 0 < q * X - r := by omega
  simp only [Int.cast_natCast, abs_ofNat]
  field_simp
  ring

/-- A^2 high tail is O(X^-4), hence certainly O(X^-2). -/
theorem greenHighA2Majorant_le
    {X Q : ℕ} (hX : 1 ≤ X) :
    ∃ C4 : ℝ, 0 ≤ C4 ∧
      greenHighA2Majorant X Q ≤
        (81 / (16 * Real.pi^4)) * C4 * C4 / (X : ℝ)^4 := by
  obtain ⟨C2, C4, hC2, hC4, h2, h4⟩ :=
    exists_reciprocalSquareFourthPartialSumBounds
  refine ⟨C4, hC4, ?_⟩
  unfold greenHighA2Majorant greenResidualA
  -- qX-r >= qX/2 gives a factor 16 in the fourth power; the plus branch is
  -- better. The residue count is absorbed by sum_r 1/r^4 after inserting
  -- r^-4 >= 1 for the finite positive residue set.
  calc
    _ ≤ (81 / (16 * Real.pi^4)) *
        (∑ r ∈ greenPositivePrincipalResidues X, 1 / (r : ℝ)^4) *
        (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^4) /
        (X : ℝ)^4 := by
      apply Finset.sum_le_sum
      intro r hr
      apply Finset.sum_le_sum
      intro q hq
      have hrpos : 1 ≤ r := (Finset.mem_Icc.mp hr).1
      have hqpos : 1 ≤ q := (Finset.mem_Icc.mp hq).1
      have hden := principal_residue_denominator_lower hX hr hqpos
      positivity
    _ ≤ (81 / (16 * Real.pi^4)) * C4 * C4 / (X : ℝ)^4 := by
      gcongr
      · exact h4 (X / 2)
      · exact h4 Q

/-- C^2 high tail is O(X^-4) after the extra explicit X^-2 factor. -/
theorem greenHighC2Majorant_le
    {X Q : ℕ} (hX : 1 ≤ X) :
    ∃ C2 : ℝ, 0 ≤ C2 ∧
      greenHighC2Majorant X Q ≤
        (5 / (16 * Real.pi^2)) * C2 * C2 / (X : ℝ)^4 := by
  obtain ⟨C2, C4, hC2, hC4, h2, h4⟩ :=
    exists_reciprocalSquareFourthPartialSumBounds
  refine ⟨C2, hC2, ?_⟩
  unfold greenHighC2Majorant greenResidualC
  calc
    _ ≤ (5 / (16 * Real.pi^2)) *
        (∑ r ∈ greenPositivePrincipalResidues X, 1 / (r : ℝ)^2) *
        (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^2) /
        (X : ℝ)^4 := by
      apply Finset.sum_le_sum
      intro r hr
      apply Finset.sum_le_sum
      intro q hq
      have hqpos : 1 ≤ q := (Finset.mem_Icc.mp hq).1
      have hden := principal_residue_denominator_lower hX hr hqpos
      positivity
    _ ≤ (5 / (16 * Real.pi^2)) * C2 * C2 / (X : ℝ)^4 := by
      gcongr
      · exact h2 (X / 2)
      · exact h2 Q

end GRWTSK.RiemannHypothesis
