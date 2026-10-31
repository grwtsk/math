/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.TopologicalGroupsLieGroups.CompactGroups.SU2TrigonometricPath

/-!
# Differentiated actual SU2 words with fixed surrounding factors

This module treats A*D(t)*B with arbitrary actual SU2 A,B. It does not replace
that word by D(t) alone. Repeated moving factors in a plaquette remain separate.
SOURCE_PROOF_CANDIDATE; all four qualification facets NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.SU2PathWordDerivatives
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2DiagonalTrace
open GRWTSK.Geometry.GaugeTheory.SU2TrigonometricPath

theorem matrix_path_linear (t : ℝ) :
    matrix (path t) = (Real.cos t : ℂ) • (1 : Mat2)+
      (Real.sin t : ℂ) • matrix (path (Real.pi/2)) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    apply Complex.ext <;>
    simp [path, diagonalSU2, diagonalMatrix, entry, matrix, Complex.normSq_apply]

def wordTrace (A B : SU2) (t : ℝ) : ℝ := (Matrix.trace (matrix (A*path t*B))).re

theorem wordTrace_linear (A B : SU2) (t : ℝ) :
    wordTrace A B t =
      (Matrix.trace (matrix (A*B))).re*Real.cos t+
        wordTrace A B (Real.pi/2)*Real.sin t := by
  simp only [wordTrace, matrix_mul]
  rw [matrix_path_linear]
  simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_smul, Matrix.smul_mul,
    Matrix.mul_one, Matrix.trace_add, Matrix.trace_smul, smul_eq_mul,
    Complex.add_re, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, sub_zero]
  ring

def wordSlope (A B : SU2) (t : ℝ) : ℝ :=
  -(Matrix.trace (matrix (A*B))).re*Real.sin t+
    wordTrace A B (Real.pi/2)*Real.cos t

theorem wordTrace_hasDerivAt (A B : SU2) (t : ℝ) :
    HasDerivAt (wordTrace A B) (wordSlope A B t) t := by
  have heq : wordTrace A B = fun s =>
      (Matrix.trace (matrix (A*B))).re*Real.cos s+
        wordTrace A B (Real.pi/2)*Real.sin s := funext (wordTrace_linear A B)
  rw [heq]
  convert ((Real.hasDerivAt_cos t).const_mul (Matrix.trace (matrix (A*B))).re).add
    ((Real.hasDerivAt_sin t).const_mul (wordTrace A B (Real.pi/2))) using 1
  <;> dsimp [wordSlope] <;> ring

theorem wordSlope_hasDerivAt (A B : SU2) (t : ℝ) :
    HasDerivAt (wordSlope A B) (-wordTrace A B t) t := by
  unfold wordSlope
  convert ((Real.hasDerivAt_sin t).const_mul (-(Matrix.trace (matrix (A*B))).re)).add
    ((Real.hasDerivAt_cos t).const_mul (wordTrace A B (Real.pi/2))) using 1
  <;> simp only [wordTrace_linear] <;> ring

theorem wordSlope_eq_shift (A B : SU2) (t : ℝ) :
    wordSlope A B t = wordTrace A B (t+Real.pi/2) := by
  rw [wordTrace_linear]
  simp [wordSlope, Real.cos_add, Real.sin_add]

theorem wordSlope_bounds (A B : SU2) (t : ℝ) :
    -2 ≤ wordSlope A B t ∧ wordSlope A B t ≤ 2 := by
  rw [wordSlope_eq_shift]
  exact real_trace_bounds (A*path (t+Real.pi/2)*B)

theorem wordPenalty_hasDerivAt (A B : SU2) (t : ℝ) :
    HasDerivAt (fun s => penalty (A*path s*B)) (-(1/2 : ℝ)*wordSlope A B t) t := by
  have h := (hasDerivAt_const t (1 : ℝ)).sub ((wordTrace_hasDerivAt A B t).const_mul (1/2))
  convert h using 1 <;> dsimp [penalty, wordTrace] <;> ring

theorem wordPenalty_slope_bounds (A B : SU2) (t : ℝ) :
    -1 ≤ -(1/2 : ℝ)*wordSlope A B t ∧ -(1/2 : ℝ)*wordSlope A B t ≤ 1 := by
  have h := wordSlope_bounds A B t
  constructor <;> linarith

theorem wordPenalty_deriv (A B : SU2) (t : ℝ) :
    deriv (fun s => penalty (A*path s*B)) t = -(1/2 : ℝ)*wordSlope A B t :=
  (wordPenalty_hasDerivAt A B t).deriv

theorem wordPenalty_second_hasDerivAt (A B : SU2) (t : ℝ) :
    HasDerivAt (deriv (fun s => penalty (A*path s*B)))
      ((1/2 : ℝ)*wordTrace A B t) t := by
  have heq : deriv (fun s => penalty (A*path s*B)) =
      (fun s => -(1/2 : ℝ)*wordSlope A B s) := funext (wordPenalty_deriv A B)
  rw [heq]
  convert (wordSlope_hasDerivAt A B t).const_mul (-(1/2 : ℝ)) using 1 <;> ring

theorem wordPenalty_second_bounds (A B : SU2) (t : ℝ) :
    -1 ≤ (1/2 : ℝ)*wordTrace A B t ∧ (1/2 : ℝ)*wordTrace A B t ≤ 1 := by
  have h := real_trace_bounds (A*path t*B)
  change -2 ≤ wordTrace A B t ∧ wordTrace A B t ≤ 2 at h
  constructor <;> linarith

end GRWTSK.Geometry.GaugeTheory.SU2PathWordDerivatives
