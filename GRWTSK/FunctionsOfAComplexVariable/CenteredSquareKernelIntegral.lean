/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FunctionsOfAComplexVariable.FinitePrincipalPartCircle
import GRWTSK.FunctionsOfAComplexVariable.RectangleFactorIndex
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

set_option autoImplicit false

/-!
# The centered-square simple-pole integral with explicit parametrizations

The two scalar integrals reuse Mathlib's existing evaluations. Each oriented edge
is parameterized on [-1,1]; the four multipliers are 1, I, I^2, I^3. Translation
and nonzero complex scaling cancel in the logarithmic differential. Thus the
actual derivative divided by the displacement integrates to pi*I/2 on each edge.

The final comparison is ONLY with the repository's already constructed rational
reference-square index. It is not a general rectangle winding/integral theorem,
and it does not bypass the missing general rectangular excision interface.

Mathlib API pin: d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.CenteredSquareKernelIntegral

open Complex Real MeasureTheory
open scoped BigOperators
open GRWTSK.Analysis.ComplexAnalysis.FinitePrincipalPartCircle

noncomputable section

/-- Reuse the established arctangent integral, rather than reprove its FTC API. -/
theorem integral_arctan_kernel :
    (∫ t in (-1 : ℝ)..1, 1 / (1 + t ^ 2)) = Real.pi / 2 := by
  rw [intervalIntegral.integral_one_div_one_add_sq, Real.arctan_neg, Real.arctan_one]
  ring

/-- Reuse the logarithmic-primitive evaluation with a nonzero real parameter. -/
theorem integral_odd_kernel :
    (∫ t in (-1 : ℝ)..1, t / (1 + t ^ 2)) = 0 := by
  simpa using (intervalIntegral.integral_id_div_sq_add_sq
    (a := (-1 : ℝ)) (b := 1) (c := 1) one_ne_zero)

theorem right_denominator_ne_zero (t : ℝ) :
    (1 : ℂ) + Complex.I * (t : ℂ) ≠ 0 := by
  intro h
  have hreal := congrArg Complex.re h
  norm_num at hreal

/-- Real and imaginary components avoid fragile denominator-clearing casts. -/
theorem right_edge_integrand (t : ℝ) :
    Complex.I / (1 + Complex.I * (t : ℂ)) =
      ((t / (1 + t ^ 2) : ℝ) : ℂ) +
        Complex.I * ((1 / (1 + t ^ 2) : ℝ) : ℂ) := by
  apply Complex.ext <;>
    simp [Complex.div_re, Complex.div_im, Complex.normSq_apply, pow_two]

theorem right_edge_integral :
    (∫ t in (-1 : ℝ)..1, Complex.I / (1 + Complex.I * (t : ℂ))) =
      (Real.pi : ℂ) * Complex.I / 2 := by
  have hd : ∀ t : ℝ, (1 : ℝ) + t ^ 2 ≠ 0 := fun t => by positivity
  have hreal : Continuous (fun t : ℝ => t / (1 + t ^ 2)) :=
    continuous_id.div (continuous_const.add (continuous_id.pow 2)) hd
  have himag : Continuous (fun t : ℝ => 1 / (1 + t ^ 2)) :=
    continuous_const.div (continuous_const.add (continuous_id.pow 2)) hd
  have hR : IntervalIntegrable (fun t : ℝ => ((t / (1 + t ^ 2) : ℝ) : ℂ))
      volume (-1) 1 := (Complex.continuous_ofReal.comp hreal).intervalIntegrable _ _
  have hI : IntervalIntegrable
      (fun t : ℝ => Complex.I * ((1 / (1 + t ^ 2) : ℝ) : ℂ)) volume (-1) 1 :=
    (continuous_const.mul (Complex.continuous_ofReal.comp himag)).intervalIntegrable _ _
  calc
    (∫ t in (-1 : ℝ)..1, Complex.I / (1 + Complex.I * (t : ℂ))) =
        ∫ t in (-1 : ℝ)..1,
          ((t / (1 + t ^ 2) : ℝ) : ℂ) +
            Complex.I * ((1 / (1 + t ^ 2) : ℝ) : ℂ) :=
      intervalIntegral.integral_congr (fun t _ => right_edge_integrand t)
    _ = (∫ t in (-1 : ℝ)..1, ((t / (1 + t ^ 2) : ℝ) : ℂ)) +
        Complex.I * (∫ t in (-1 : ℝ)..1, ((1 / (1 + t ^ 2) : ℝ) : ℂ)) := by
      rw [intervalIntegral.integral_add hR hI, intervalIntegral.integral_const_mul]
    _ = (Real.pi : ℂ) * Complex.I / 2 := by
      rw [intervalIntegral.integral_ofReal, intervalIntegral.integral_ofReal,
        integral_odd_kernel, integral_arctan_kernel]
      push_cast
      ring

/-- Rotation/scale cancellation is valid even if v is zero under Lean's total
field operations. The actual edge nonvanishing is proved separately below. -/
theorem scaled_quotient (u v s : ℂ) (hs : s ≠ 0) :
    (s * u) / (s * v) = u / v := by
  simp only [div_eq_mul_inv, mul_inv_rev]
  calc
    (s * u) * (v⁻¹ * s⁻¹) = (s * s⁻¹) * (u * v⁻¹) := by ring
    _ = u * v⁻¹ := by rw [mul_inv_cancel₀ hs, one_mul]

/-- Right, top, left, bottom, all with positive orientation. -/
def edgePath (root : ℂ) (ε : ℝ) (k : Fin 4) (t : ℝ) : ℂ :=
  root + (ε : ℂ) * Complex.I ^ (k : ℕ) * (1 + Complex.I * (t : ℂ))

def edgeVelocity (ε : ℝ) (k : Fin 4) : ℂ :=
  (ε : ℂ) * Complex.I ^ (k : ℕ) * Complex.I

theorem hasDerivAt_edgePath (root : ℂ) (ε : ℝ) (k : Fin 4) (t : ℝ) :
    HasDerivAt (edgePath root ε k) (edgeVelocity ε k) t := by
  have h := ((((Complex.ofRealCLM.hasDerivAt (x := t)).const_mul Complex.I).
    const_add (1 : ℂ)).const_mul ((ε : ℂ) * Complex.I ^ (k : ℕ))).const_add root
  simpa [edgePath, edgeVelocity, Complex.ofRealCLM_apply, mul_assoc] using h

theorem edge_avoids_center (root : ℂ) (ε : ℝ) (hε : ε ≠ 0)
    (k : Fin 4) (t : ℝ) : edgePath root ε k t ≠ root := by
  have hs : (ε : ℂ) * Complex.I ^ (k : ℕ) ≠ 0 :=
    mul_ne_zero (Complex.ofReal_ne_zero.mpr hε) (pow_ne_zero _ Complex.I_ne_zero)
  intro he
  have hz := sub_eq_zero.mpr he
  simp only [edgePath, add_sub_cancel_left] at hz
  exact mul_ne_zero hs (right_denominator_ne_zero t) hz

/-- The parametrizations join cyclically; this is a closed four-edge source. -/
theorem edges_join (root : ℂ) (ε : ℝ) (k : Fin 4) :
    edgePath root ε k 1 = edgePath root ε (k + 1) (-1) := by
  fin_cases k <;>
    norm_num [edgePath, pow_succ, Complex.I_sq, Complex.I_mul_I] <;>
    ring_nf <;> simp only [Complex.I_sq] <;> ring

def edgeIntegral (root : ℂ) (ε : ℝ) (k : Fin 4) : ℂ :=
  ∫ t in (-1 : ℝ)..1, edgeVelocity ε k / (edgePath root ε k t - root)

theorem edgeIntegral_eq (root : ℂ) (ε : ℝ) (hε : ε ≠ 0) (k : Fin 4) :
    edgeIntegral root ε k = (Real.pi : ℂ) * Complex.I / 2 := by
  have hs : (ε : ℂ) * Complex.I ^ (k : ℕ) ≠ 0 :=
    mul_ne_zero (Complex.ofReal_ne_zero.mpr hε) (pow_ne_zero _ Complex.I_ne_zero)
  calc
    edgeIntegral root ε k =
        ∫ t in (-1 : ℝ)..1, Complex.I / (1 + Complex.I * (t : ℂ)) := by
      apply intervalIntegral.integral_congr
      intro t _
      simpa only [edgeVelocity, edgePath, add_sub_cancel_left] using
        scaled_quotient Complex.I (1 + Complex.I * (t : ℂ))
          ((ε : ℂ) * Complex.I ^ (k : ℕ)) hs
    _ = _ := right_edge_integral

def squareIntegral (root : ℂ) (ε : ℝ) : ℂ :=
  ∑ k : Fin 4, edgeIntegral root ε k

/-- A complete square calculation, including all four actual edge integrals. -/
theorem squareIntegral_eq_period (root : ℂ) (ε : ℝ) (hε : ε ≠ 0) :
    squareIntegral root ε = period := by
  unfold squareIntegral
  simp_rw [edgeIntegral_eq root ε hε]
  norm_num [period, Finset.sum_const, nsmul_eq_mul] <;> ring

/-- Independent normalization cross-check with the existing positively oriented
rational reference square. This is not a general integral/index bridge. -/
theorem normalized_unitSquare_eq_reference_index :
    squareIntegral 0 1 / period =
      (GRWTSK.Analysis.ComplexAnalysis.ClosedCurveFactorIndex.index
        GRWTSK.Analysis.ComplexAnalysis.RectangleFactorIndex.referenceCurve
        GRWTSK.Analysis.ComplexAnalysis.RectangleFactorIndex.reference_closed
        GRWTSK.Analysis.ComplexAnalysis.RectangleFactorIndex.reference_nonzero : ℂ) := by
  rw [squareIntegral_eq_period 0 1 one_ne_zero,
    GRWTSK.Analysis.ComplexAnalysis.RectangleFactorIndex.reference_index]
  simp [period_ne_zero]

end
end GRWTSK.Analysis.ComplexAnalysis.CenteredSquareKernelIntegral
