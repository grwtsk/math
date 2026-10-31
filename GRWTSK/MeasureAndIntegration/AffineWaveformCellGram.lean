/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic

/-!
# Uniform scalar control for a causal waveform cell

Consumer: x=Q(N), y=Q(N+1), with causal substitution density between
ell/2 and 2*ell on the unit interpolation interval. The scalar comparison
below does not prove that substitution, the sum-over-cells identity, or any
arithmetic bound on Q. Opposite signs of x and y are allowed.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
namespace GRWTSK.MeasureAndIntegration.AffineWaveformCellGram

def blend (x y t : ℝ) : ℝ := (1 - t) * x + t * y

def gram (x y : ℝ) : ℝ := (x ^ 2 + x * y + y ^ 2) / 3

theorem blend_sq_integrable (x y : ℝ) :
    IntervalIntegrable (fun t : ℝ => blend x y t ^ 2) volume 0 1 := by
  apply Continuous.intervalIntegrable
  unfold blend
  fun_prop

/-- Exact Gram form, before any inequality or arithmetic hypothesis. -/
theorem integral_blend_sq (x y : ℝ) :
    (∫ t : ℝ in (0 : ℝ)..1, blend x y t ^ 2) = gram x y := by
  have he : (fun t : ℝ => blend x y t ^ 2) =
      (fun t : ℝ => x ^ 2 + (2 * x * (y - x)) * t + (y - x) ^ 2 * t ^ 2) := by
    funext t
    unfold blend
    ring
  have h0 : IntervalIntegrable (fun _ : ℝ => x ^ 2) volume 0 1 := intervalIntegrable_const
  have h1 : IntervalIntegrable (fun t : ℝ => (2 * x * (y - x)) * t) volume 0 1 := by
    apply Continuous.intervalIntegrable
    fun_prop
  have h2 : IntervalIntegrable (fun t : ℝ => (y - x) ^ 2 * t ^ 2) volume 0 1 := by
    apply Continuous.intervalIntegrable
    fun_prop
  rw [he, intervalIntegral.integral_add (h0.add h1) h2,
    intervalIntegral.integral_add h0 h1,
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    integral_pow]
  simp [gram, integral_id]
  <;> ring

theorem gram_bounds (x y : ℝ) :
    (x ^ 2 + y ^ 2) / 6 ≤ gram x y ∧ gram x y ≤ (x ^ 2 + y ^ 2) / 2 := by
  unfold gram
  constructor
  · nlinarith [sq_nonneg (x + y)]
  · nlinarith [sq_nonneg (x - y)]

/-- A uniformly comparable substitution density transfers the scalar Gram form.
The actual causal substitution and its integrability must be proved separately. -/
theorem weighted_cell_bounds (x y ell : ℝ) (hell : 0 ≤ ell) (w : ℝ → ℝ)
    (hw : IntervalIntegrable (fun t => w t * blend x y t ^ 2) volume 0 1)
    (hbound : ∀ t ∈ Icc (0 : ℝ) 1, ell / 2 ≤ w t ∧ w t ≤ 2 * ell) :
    ell / 3 * (x ^ 2 + y ^ 2) ≤
        4 * (∫ t : ℝ in (0 : ℝ)..1, w t * blend x y t ^ 2) ∧
      4 * (∫ t : ℝ in (0 : ℝ)..1, w t * blend x y t ^ 2) ≤
        4 * ell * (x ^ 2 + y ^ 2) := by
  have hi := blend_sq_integrable x y
  have hlo := intervalIntegral.integral_mono_on (by norm_num : (0 : ℝ) ≤ 1)
    (hi.const_mul (ell / 2)) hw
    (fun t ht => mul_le_mul_of_nonneg_right (hbound t ht).1 (sq_nonneg _))
  have hhi := intervalIntegral.integral_mono_on (by norm_num : (0 : ℝ) ≤ 1)
    hw (hi.const_mul (2 * ell))
    (fun t ht => mul_le_mul_of_nonneg_right (hbound t ht).2 (sq_nonneg _))
  rw [intervalIntegral.integral_const_mul, integral_blend_sq] at hlo hhi
  have hg := gram_bounds x y
  constructor
  · have h := mul_le_mul_of_nonneg_left hg.1 (by positivity : 0 ≤ ell / 2)
    nlinarith
  · have h := mul_le_mul_of_nonneg_left hg.2 (by positivity : 0 ≤ 2 * ell)
    nlinarith

end GRWTSK.MeasureAndIntegration.AffineWaveformCellGram
