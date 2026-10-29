/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic

/-!
# Compact weighted derivative moments

Genuine compact product integrability supplies whole-line
integration by parts. C1 suffices for the first identities and C2 for the second.
The final differential-moment statement retains both zero-moment premises.
No arithmetic estimate, source smoothness or native identification is asserted.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.CompactWeightedDerivativeMoments

open MeasureTheory
open scoped ContDiff

noncomputable section

/-- Continuous weights preserve the genuine integral admission of a compact profile. -/
theorem compact_weight_integrable {f w : ℝ → ℝ} (hf : Continuous f)
    (hs : HasCompactSupport f) (hw : Continuous w) : Integrable (fun x ↦ w x * f x) :=
  (hw.mul hf).integrable_of_hasCompactSupport hs.mul_left

/-- Whole-line integration by parts retains the exponential derivative factor. -/
theorem weighted_deriv_integral {f : ℝ → ℝ} (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) (c : ℝ) :
    (∫ x : ℝ, Real.exp (c * x) * deriv f x) =
      -c * ∫ x : ℝ, Real.exp (c * x) * f x := by
  have he : Continuous (fun x : ℝ ↦ Real.exp (c * x)) := by fun_prop
  have h0 := compact_weight_integrable hf.continuous hs he
  have h1 := compact_weight_integrable hf.continuous_deriv_one hs.deriv he
  have hc : Integrable (fun x : ℝ ↦ (c * Real.exp (c * x)) * f x) := by
    simpa only [mul_assoc] using h0.const_mul c
  have hexp (x : ℝ) : HasDerivAt (fun y : ℝ ↦ Real.exp (c * y))
      (c * Real.exp (c * x)) x := by
    simpa only [id_eq, mul_one, mul_comm] using ((hasDerivAt_id x).const_mul c).exp
  have parts := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x ↦ Real.exp (c * x)) (u' := fun x ↦ c * Real.exp (c * x))
    (v := f) (v' := deriv f)
    (fun x _ ↦ hexp x)
    (fun x _ ↦ ((hf.differentiable one_ne_zero) x).hasDerivAt) h1 hc h0
  simp only [mul_assoc, integral_const_mul] at parts
  simpa only [neg_mul] using parts

/-- The first weighted derivative moment keeps the zeroth-moment correction. -/
theorem first_weighted_deriv_integral {f : ℝ → ℝ} (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) (c : ℝ) :
    (∫ x : ℝ, x * Real.exp (c * x) * deriv f x) =
      -(∫ x : ℝ, Real.exp (c * x) * f x) -
        c * ∫ x : ℝ, x * Real.exp (c * x) * f x := by
  have he : Continuous (fun x : ℝ ↦ Real.exp (c * x)) := by fun_prop
  have hx : Continuous (fun x : ℝ ↦ x * Real.exp (c * x)) := by fun_prop
  have hp : Continuous (fun x : ℝ ↦ Real.exp (c * x) + c * x * Real.exp (c * x)) :=
    by fun_prop
  have h0 := compact_weight_integrable hf.continuous hs he
  have hx0 := compact_weight_integrable hf.continuous hs hx
  have hx1 := compact_weight_integrable hf.continuous_deriv_one hs.deriv hx
  have hprime := compact_weight_integrable hf.continuous hs hp
  have hexp (x : ℝ) : HasDerivAt (fun y : ℝ ↦ Real.exp (c * y))
      (c * Real.exp (c * x)) x := by
    simpa only [id_eq, mul_one, mul_comm] using ((hasDerivAt_id x).const_mul c).exp
  have hxexp (x : ℝ) : HasDerivAt (fun y : ℝ ↦ y * Real.exp (c * y))
      (Real.exp (c * x) + c * x * Real.exp (c * x)) x := by
    have multiplied := (hasDerivAt_id x).mul (hexp x)
    have scalar : 1 * Real.exp (c * x) + x * (c * Real.exp (c * x)) =
        Real.exp (c * x) + c * x * Real.exp (c * x) := by ring
    change HasDerivAt (fun y : ℝ ↦ y * Real.exp (c * y))
      (1 * Real.exp (c * x) + x * (c * Real.exp (c * x))) x at multiplied
    rw [scalar] at multiplied
    exact multiplied
  have parts := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x ↦ x * Real.exp (c * x))
    (u' := fun x ↦ Real.exp (c * x) + c * x * Real.exp (c * x))
    (v := f) (v' := deriv f)
    (fun x _ ↦ hxexp x)
    (fun x _ ↦ ((hf.differentiable one_ne_zero) x).hasDerivAt) hx1 hprime hx0
  have split :
      (∫ x : ℝ, (Real.exp (c * x) + c * x * Real.exp (c * x)) * f x) =
        (∫ x : ℝ, Real.exp (c * x) * f x) +
          c * ∫ x : ℝ, x * Real.exp (c * x) * f x := by
    have reorganized :
        (fun x : ℝ ↦ (Real.exp (c * x) + c * x * Real.exp (c * x)) * f x) =
          fun x : ℝ ↦ Real.exp (c * x) * f x + c * (x * Real.exp (c * x) * f x) := by
      funext x
      ring
    rw [reorganized, integral_add h0 (hx0.const_mul c), integral_const_mul]
  rw [split] at parts
  calc
    _ = -((∫ x : ℝ, Real.exp (c * x) * f x) +
      c * ∫ x : ℝ, x * Real.exp (c * x) * f x) := parts
    _ = _ := by ring

/-- Two integrations by parts require only C2, with genuine compact admission. -/
theorem weighted_second_deriv_integral {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f)
    (hs : HasCompactSupport f) (c : ℝ) :
    (∫ x : ℝ, Real.exp (c * x) * deriv (deriv f) x) =
      c ^ 2 * ∫ x : ℝ, Real.exp (c * x) * f x := by
  have one : ContDiff ℝ 1 f := hf.of_le (by norm_num)
  have derivative : ContDiff ℝ 1 (deriv f) := hf.deriv'
  rw [weighted_deriv_integral derivative hs.deriv c,
    weighted_deriv_integral one hs c]
  ring

/-- The second derivative's first weighted moment retains both lower moments. -/
theorem first_weighted_second_deriv_integral {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f)
    (hs : HasCompactSupport f) (c : ℝ) :
    (∫ x : ℝ, x * Real.exp (c * x) * deriv (deriv f) x) =
      2 * c * (∫ x : ℝ, Real.exp (c * x) * f x) +
        c ^ 2 * ∫ x : ℝ, x * Real.exp (c * x) * f x := by
  have one : ContDiff ℝ 1 f := hf.of_le (by norm_num)
  have derivative : ContDiff ℝ 1 (deriv f) := hf.deriv'
  rw [first_weighted_deriv_integral derivative hs.deriv c,
    weighted_deriv_integral one hs c, first_weighted_deriv_integral one hs c]
  ring

/-- Both zero moments pass through the full second-minus-first differential expression. -/
theorem differential_moments_zero {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f)
    (hs : HasCompactSupport f) (c d : ℝ)
    (zero : (∫ x : ℝ, Real.exp (c * x) * f x) = 0)
    (firstZero : (∫ x : ℝ, x * Real.exp (c * x) * f x) = 0) :
    Integrable (fun x : ℝ ↦ Real.exp (c * x) *
      (deriv (deriv f) x - d * deriv f x)) ∧
    Integrable (fun x : ℝ ↦ x * Real.exp (c * x) *
      (deriv (deriv f) x - d * deriv f x)) ∧
    (∫ x : ℝ, Real.exp (c * x) * (deriv (deriv f) x - d * deriv f x)) = 0 ∧
    (∫ x : ℝ, x * Real.exp (c * x) * (deriv (deriv f) x - d * deriv f x)) = 0 := by
  have one : ContDiff ℝ 1 f := hf.of_le (by norm_num)
  have derivative : ContDiff ℝ 1 (deriv f) := hf.deriv'
  have ce : Continuous (fun x : ℝ ↦ Real.exp (c * x)) := by fun_prop
  have cxe : Continuous (fun x : ℝ ↦ x * Real.exp (c * x)) := by fun_prop
  have cfirst := one.continuous_deriv_one
  have csecond := derivative.continuous_deriv_one
  have hi1 := compact_weight_integrable cfirst hs.deriv ce
  have hi2 := compact_weight_integrable csecond hs.deriv.deriv ce
  have hxi1 := compact_weight_integrable cfirst hs.deriv cxe
  have hxi2 := compact_weight_integrable csecond hs.deriv.deriv cxe
  have expression :
      (fun x : ℝ ↦ Real.exp (c * x) * (deriv (deriv f) x - d * deriv f x)) =
        fun x : ℝ ↦ Real.exp (c * x) * deriv (deriv f) x -
          d * (Real.exp (c * x) * deriv f x) := by
    funext x
    ring
  have firstExpression :
      (fun x : ℝ ↦ x * Real.exp (c * x) * (deriv (deriv f) x - d * deriv f x)) =
        fun x : ℝ ↦ x * Real.exp (c * x) * deriv (deriv f) x -
          d * (x * Real.exp (c * x) * deriv f x) := by
    funext x
    ring
  rw [expression, firstExpression]
  refine ⟨hi2.sub (hi1.const_mul d), hxi2.sub (hxi1.const_mul d), ?_, ?_⟩
  · rw [integral_sub hi2 (hi1.const_mul d), integral_const_mul,
      weighted_second_deriv_integral hf hs c, weighted_deriv_integral one hs c, zero]
    ring
  · rw [integral_sub hxi2 (hxi1.const_mul d), integral_const_mul,
      first_weighted_second_deriv_integral hf hs c,
      first_weighted_deriv_integral one hs c, zero, firstZero]
    ring

end

end GRWTSK.Analysis.RealAnalysis.Integration.CompactWeightedDerivativeMoments
