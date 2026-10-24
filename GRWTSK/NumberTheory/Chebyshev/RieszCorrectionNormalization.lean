/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.RationalRieszPrimitive
import GRWTSK.NumberTheory.Chebyshev.RieszSourceSecondDifference

/-! # Corrected first-Riesz defect and actual normalization data

Subtracting the independently defined rational primitive removes the proved
source curvature. Prefix stability and the exact arithmetic values at 2 and
3 fix the corresponding two boundary values. Neither global affineness nor
the identification of its coefficients with classical zeta constants is
assumed or asserted here.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Chebyshev.RieszCorrectionNormalization
open scoped BigOperators
open GRWTSK.Analysis.RealAnalysis.RationalRieszPrimitive
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
open TentSource RieszSourceSecondDifference

theorem firstRieszPrefix_stable (N M : ℕ) (x : ℝ) (hNM : N ≤ M) (hx : x ≤ N) :
    firstRieszPrefix M x = firstRieszPrefix N x := by
  unfold firstRieszPrefix
  symm
  apply Finset.sum_subset (Finset.Icc_subset_Icc (le_refl 2) hNM)
  intro m hm hn
  have hm2 := (Finset.mem_Icc.mp hm).1
  have hNm : N < m := by
    by_contra h
    exact hn (Finset.mem_Icc.mpr ⟨hm2, by omega⟩)
  have hR : (N : ℝ) < m := by exact_mod_cast hNm
  rw [max_eq_right (by linarith : x - (m : ℝ) ≤ 0), mul_zero]

def correctedRieszSourceDefect (N : ℕ) (a x : ℝ) : ℂ :=
  firstRieszSourceDefect N x - (rationalRieszPrimitive a x : ℂ)

/-- The actual corrected source has zero second difference on its precise domain.
This does not determine the two affine coefficients. -/
theorem correctedRieszSourceDefect_second_difference (N : ℕ) (a x h : ℝ)
    (ha : 1 < a) (hh : 0 < h) (hal : a ≤ x - h) (hN : x + h ≤ N) :
    correctedRieszSourceDefect N a (x + h) - 2 * correctedRieszSourceDefect N a x +
      correctedRieszSourceDefect N a (x - h) = 0 := by
  have hs := firstRieszSourceDefect_second_difference N x h hh (by linarith) hN
  have hp := congrArg (fun t : ℝ => (t : ℂ))
    (rationalRieszPrimitive_second_difference a x h ha hh hal)
  push_cast at hp
  unfold correctedRieszSourceDefect
  linear_combination hs - hp

/-- The corrected actual defect obeys the midpoint equation. Recovering
real-affine interpolation still requires a regularity argument. -/
theorem correctedRieszSourceDefect_midpoint (N : ℕ) (a u v : ℝ)
    (ha : 1 < a) (hau : a ≤ u) (huv : u < v) (hvN : v ≤ N) :
    correctedRieszSourceDefect N a ((u + v) / 2) =
      (correctedRieszSourceDefect N a u + correctedRieszSourceDefect N a v) / 2 := by
  have he := correctedRieszSourceDefect_second_difference N a ((u + v) / 2)
    ((v - u) / 2) ha (by linarith) (by linarith) (by linarith)
  rw [show (u + v) / 2 + (v - u) / 2 = v by ring,
    show (u + v) / 2 - (v - u) / 2 = u by ring] at he
  linear_combination -he / 2

theorem firstRieszPrefix_two (N : ℕ) (hN : 2 ≤ N) : firstRieszPrefix N 2 = 0 := by
  rw [firstRieszPrefix_stable 2 N 2 hN (by norm_num)]
  norm_num [firstRieszPrefix]

theorem firstRieszPrefix_three (N : ℕ) (hN : 3 ≤ N) :
    firstRieszPrefix N 3 = Real.log 2 := by
  rw [firstRieszPrefix_stable 3 N 3 hN (by norm_num)]
  have hs : Finset.Icc 2 3 = {2, 3} := by decide
  unfold firstRieszPrefix
  rw [hs]
  norm_num [ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2)]

/-- First normalization datum, with the exact zero series still present. -/
theorem correctedRieszSourceDefect_two (N : ℕ) (hN : 2 ≤ N) :
    correctedRieszSourceDefect N 2 2 = -2 - fullRieszZeroValue 2 := by
  unfold correctedRieszSourceDefect firstRieszSourceDefect
  rw [firstRieszPrefix_two N hN, rationalRieszPrimitive_base]
  norm_num
  ring

/-- Second normalization datum. No unexplained affine constant is set to zero. -/
theorem correctedRieszSourceDefect_three (N : ℕ) (hN : 3 ≤ N) :
    correctedRieszSourceDefect N 2 3 = (Real.log 2 : ℂ) - 9 / 2 -
      fullRieszZeroValue 3 - (rationalRieszPrimitive 2 3 : ℂ) := by
  unfold correctedRieszSourceDefect firstRieszSourceDefect
  rw [firstRieszPrefix_three N hN]
  norm_num
  ring

end GRWTSK.NumberTheory.Chebyshev.RieszCorrectionNormalization
