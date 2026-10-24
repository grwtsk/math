# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ArithmeticErrorIntegrabilityModule.Variant126513eb9ea87ea429dff5bbb9132fdfab8e969a5474b2a0a9d1cad22ab1df3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3932872be8d4c604e20a5a25222396746cfdf520` · SHA-256 `126513eb9ea87ea429dff5bbb9132fdfab8e969a5474b2a0a9d1cad22ab1df3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateLineBounds
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerBoundary
import FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence
import Mathlib.MeasureTheory.Function.L2Space

/-! Genuine integrability of the complete signed arithmetic boundary error. -/
set_option autoImplicit false
namespace ArithmeticErrorIntegrabilityScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission FixedLaplaceContinuation FixedLaplaceBoundary
open CorrectedControllerAnalytic CorrectedControllerBoundary SourceFilterDelta
open SourceFilterDeltaConvergence MobiusPoleNumerator MobiusSourceFilterQuotient
open CandidateLineBoundsScratch
noncomputable section

/-- The genuine boundary transform of the actual L1 kernel has its full-kernel norm bound. -/
theorem actualLaplace_boundary_norm_le (t : ℝ) :
    ‖actualLaplace ((t : ℂ)*Complex.I)‖ ≤ ∫ u : ℝ in Ioi 0, |fixedKernel u| := by
  apply norm_integral_le_of_norm_le fixedKernel_integrableOn_Ioi.abs
  filter_upwards with u
  simp [Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp,
    Complex.mul_re, Complex.mul_im]

/-- The exact full-axis arithmetic error uses the unchanged signed zeta–Möbius factor. -/
def arithmeticErrorSq (X : ℕ) (ε h : ℝ) : ℝ :=
  (1/(2*Real.pi)) * ∫ t : ℝ,
    ‖boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
      correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I))‖^2

/-- Every finite corrected family has a genuine signed arithmetic-error square integral. -/
theorem arithmetic_error_sq_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1/4) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      ‖boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
        correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I))‖^2) := by
  let Q : ℝ → ℂ := fun t => candidate X ε h ((t : ℂ)*Complex.I)
  let L : ℝ → ℂ := fun t => actualLaplace ((t : ℂ)*Complex.I)
  let H : ℝ → ℂ := fun t => boundaryFilter ε h t
  let M : ℝ := ∫ u : ℝ in Ioi 0, |fixedKernel u|
  have hM : 0 ≤ M := integral_nonneg (fun _ => abs_nonneg _)
  have hL : Continuous L := actualLaplace_continuousOn_closed.comp_continuous
    (by fun_prop) (fun t => by simp)
  have hQ : Continuous Q := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simp)).continuousAt.comp
      (by fun_prop)
  have hH : Measurable H := by
    dsimp [H, boundaryFilter]
    have hw : Continuous W := (Complex.continuous_exp.comp continuous_neg).mul V_continuous
    fun_prop
  have hHsq : Integrable (fun t : ℝ => ‖H t‖^2) := by
    apply (integrable_inv_one_add_sq.const_mul ((2*Real.exp 1)^2)).mono'
      (hH.norm.pow_const 2).aestronglyMeasurable
    filter_upwards with t
    change |‖H t‖^2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _)]
    have hn := boundaryFilter_norm_le ε h t hε hsmall hh.le
    have hsq := pow_le_pow_left₀ (norm_nonneg _) hn 2
    have hden : ‖1+(t : ℂ)*Complex.I‖^2 = 1+t^2 := by
      rw [← Complex.normSq_eq_norm_sq]
      simp [Complex.normSq_apply, pow_two]
    simpa only [H, div_eq_mul_inv, mul_pow, inv_pow, hden] using hsq
  obtain ⟨C, _, hc⟩ := candidate_line_square_integrable_bound ε hε
  have hQsq : Integrable (fun t : ℝ => ‖Q t‖^2) := by
    simpa only [Q, Complex.ofReal_zero, zero_add] using (hc X hX h hh hh1 0 le_rfl).1
  have hLQsq : Integrable (fun t : ℝ => ‖L t * Q t‖^2) := by
    apply (hQsq.const_mul (M^2)).mono' ((hL.mul hQ).norm.pow 2).aestronglyMeasurable
    filter_upwards with t
    change |‖L t * Q t‖^2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _), norm_mul, mul_pow]
    apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
    exact pow_le_pow_left₀ (norm_nonneg _) (actualLaplace_boundary_norm_le t) 2
  have hmemH : MemLp H 2 volume := (memLp_two_iff_integrable_sq_norm
    hH.aestronglyMeasurable).mpr hHsq
  have hmemLQ : MemLp (fun t => L t * Q t) 2 volume :=
    (memLp_two_iff_integrable_sq_norm (hL.mul hQ).aestronglyMeasurable).mpr hLQsq
  have hi : Integrable (fun t : ℝ => ‖H t - L t * Q t‖^2) :=
    (memLp_two_iff_integrable_sq_norm (hmemH.sub hmemLQ).aestronglyMeasurable).mp
      (hmemH.sub hmemLQ)
  have heq (t : ℝ) :
      boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
        correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I)) = H t - L t * Q t := by
    dsimp [H, L, Q]
    rw [actual_boundary_product X ε h t hε (by linarith)]
    ring
  simpa only [heq] using hi

end
end ArithmeticErrorIntegrabilityScratch
```
