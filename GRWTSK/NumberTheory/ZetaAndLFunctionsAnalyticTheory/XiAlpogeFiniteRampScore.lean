/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRationalRampWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeFiniteRampBounds

/-!
# The finite rational test against the centered von Mangoldt ramp

The one-sided error combines the proper-prime-power correction and a uniform
centering error. A passing rational comparison consequently supplies an upper
bound for the actual centered ramp at the tested integer.
-/

noncomputable section
namespace GRWTSK.XiAlpogeFiniteRampScore
open XiAlpogeOrdinaryRamp XiAlpogeRationalRampWindow XiAlpogeRationalRampCenter XiAlpogeFiniteRampBounds

/-- The centered principal von Mangoldt ramp in Alpöge's window criterion. -/
def centeredRamp (x : ℝ) : ℝ :=
  mangoldtRamp x - x*(Real.log x-1-Real.eulerMascheroniConstant)

/-- Exact separation of the arithmetic and centering contributions to the error. -/
theorem score_sub_centeredRamp {n : ℕ} (hn : 0 < n) :
    score n (approxExp n) - centeredRamp n =
      cutoffCorrection n -
       n*(1+Real.eulerMascheroniConstant + Real.log ((n:ℝ)+1) - Real.log (approxExp n : ℝ)) := by
  have hn' : 0 < (n:ℝ) := by exact_mod_cast hn
  have hE : 0 < (approxExp n : ℝ) := by exact_mod_cast approxExp_pos n
  have hnext : (n:ℝ)+1 ≠ 0 := by positivity
  rw [← finiteRamp_sub_mangoldt]
  unfold score centeredRamp finiteRamp
  rw [Real.log_div hE.ne' (mul_ne_zero hn'.ne' hnext), Real.log_mul hn'.ne' hnext]
  ring

private theorem scaled_center_error {n : ℕ} (hn : 0 < n) :
    0 ≤ (n:ℝ)*(1+Real.eulerMascheroniConstant + Real.log ((n:ℝ)+1) - Real.log (approxExp n : ℝ)) ∧
    (n:ℝ)*(1+Real.eulerMascheroniConstant + Real.log ((n:ℝ)+1) - Real.log (approxExp n : ℝ)) ≤ 4 := by
  have hn' : 0 < (n:ℝ) := by exact_mod_cast hn
  obtain ⟨h₁,h₂⟩ := gamma_log_error hn
  refine ⟨mul_nonneg hn'.le h₁, ?_⟩
  calc
    _ ≤ (n:ℝ)*(4/n) := mul_le_mul_of_nonneg_left h₂ hn'.le
    _ = 4 := by field_simp

/-- A uniform lower error of four and a one-sided upper error bounded
by the proper-prime-power correction. -/
theorem finite_score_bounds {n : ℕ} (hn : 0 < n) :
    centeredRamp n - 4 ≤ score n (approxExp n) ∧
    score n (approxExp n) ≤ centeredRamp n + correction n := by
  have he := score_sub_centeredRamp hn
  obtain ⟨h₀,hc⟩ := cutoffCorrection_bounds n
  obtain ⟨h₁,h₂⟩ := scaled_center_error hn
  constructor <;> linarith

/-- Passing the positive rational comparison at an integer bounds the actual
centered von Mangoldt ramp, with an additive error of four. -/
theorem centeredRamp_le_of_rational {n m : ℕ} (hn : 2 ≤ n)
    (h : value n (approxExp n) ≤ (n:ℚ)^(n.factorial*m)) :
    centeredRamp n ≤ (m:ℝ)*Real.log n + 4 := by
  have hscore := (center_rational_iff_score hn m).mp h
  linarith [(finite_score_bounds (n := n) (by omega)).1]

/-- An upper ceiling with room for the proper-prime-power correction supplies
the finite rational test in the other direction. -/
theorem rational_of_centeredRamp_le {n m : ℕ} (hn : 2 ≤ n)
    (h : centeredRamp n + correction n ≤ (m:ℝ)*Real.log n) :
    value n (approxExp n) ≤ (n:ℚ)^(n.factorial*m) :=
  (center_rational_iff_score hn m).mpr ((finite_score_bounds (n := n) (by omega)).2.trans h)

end GRWTSK.XiAlpogeFiniteRampScore
