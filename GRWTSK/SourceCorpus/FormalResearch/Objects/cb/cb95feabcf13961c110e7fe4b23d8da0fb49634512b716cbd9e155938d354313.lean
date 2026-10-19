import FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction
import Mathlib.Analysis.Calculus.ContDiff.Convolution

/-!
# Ordinary curvature of the actual compact primitive correlations

Differentiating the two convolution factors separately gives the negative
derivative autocorrelation. The actual primitive is globally C², so its first
derivative is C¹; no C⁴ assertion about the zero-extended bump is required.
These exact identities retain every real shift and supply no arithmetic bound.

Research direction, source selection and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex; independent review is a separate gate.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature

open MeasureTheory Function
open scoped Convolution
open SourceCausalEnergy SourcePrimitivePrimeInteraction

private theorem compact_autocorrelation_deriv_eq_convolution {f : ℝ → ℝ}
    (hf : ContDiff ℝ 1 f) (hs : HasCompactSupport f) :
    deriv (fun s : ℝ => ∫ x : ℝ, f x * f (x - s)) =
      (deriv f ⋆ fun x : ℝ => f (-x)) := by
  have hr : HasCompactSupport (fun x : ℝ => f (-x)) :=
    hs.comp_homeomorph (Homeomorph.neg ℝ)
  have hir : Integrable (fun x : ℝ => f (-x)) :=
    (hf.continuous.comp continuous_neg).integrable_of_hasCompactSupport hr
  have hc : (fun s : ℝ => ∫ x : ℝ, f x * f (x - s)) =
      (f ⋆ fun x : ℝ => f (-x)) := by
    funext s
    simp only [convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul, neg_sub]
  rw [hc]
  funext s
  exact (hs.hasDerivAt_convolution_left (ContinuousLinearMap.lsmul ℝ ℝ)
    hf hir.locallyIntegrable s).deriv

private theorem compact_autocorrelation_contDiff_two {f : ℝ → ℝ}
    (hf : ContDiff ℝ 1 f) (hs : HasCompactSupport f) :
    ContDiff ℝ 2 (fun s : ℝ => ∫ x : ℝ, f x * f (x - s)) := by
  have hr : HasCompactSupport (fun x : ℝ => f (-x)) :=
    hs.comp_homeomorph (Homeomorph.neg ℝ)
  have hfr : ContDiff ℝ 1 (fun x : ℝ => f (-x)) := hf.comp contDiff_neg
  have hir : Integrable (fun x : ℝ => f (-x)) :=
    hfr.continuous.integrable_of_hasCompactSupport hr
  have hif : Integrable (deriv f) :=
    (hf.continuous_deriv (by norm_num)).integrable_of_hasCompactSupport hs.deriv
  have hc : (fun s : ℝ => ∫ x : ℝ, f x * f (x - s)) =
      (f ⋆ fun x : ℝ => f (-x)) := by
    funext s
    simp only [convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul, neg_sub]
  have hc1 : ContDiff ℝ 1 (fun s : ℝ => ∫ x : ℝ, f x * f (x - s)) := by
    rw [hc]
    exact hs.contDiff_convolution_left (ContinuousLinearMap.lsmul ℝ ℝ)
      hf hir.locallyIntegrable
  rw [show (2 : WithTop ℕ∞) = 1 + 1 from rfl, contDiff_succ_iff_deriv]
  refine ⟨hc1.differentiable (by norm_num), by norm_num, ?_⟩
  rw [compact_autocorrelation_deriv_eq_convolution hf hs]
  exact hr.contDiff_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
    hif.locallyIntegrable hfr

private theorem compact_autocorrelation_curvature {f : ℝ → ℝ}
    (hf : ContDiff ℝ 1 f) (hs : HasCompactSupport f) (t : ℝ) :
    Integrable (fun x : ℝ => deriv f x * deriv f (x - t)) ∧
      deriv (deriv (fun s : ℝ => ∫ x : ℝ, f x * f (x - s))) t =
        -(∫ x : ℝ, deriv f x * deriv f (x - t)) := by
  have hr : HasCompactSupport (fun x : ℝ => f (-x)) :=
    hs.comp_homeomorph (Homeomorph.neg ℝ)
  have hfr : ContDiff ℝ 1 (fun x : ℝ => f (-x)) := hf.comp contDiff_neg
  have hif : Integrable (deriv f) :=
    (hf.continuous_deriv (by norm_num)).integrable_of_hasCompactSupport hs.deriv
  have hprod : Integrable (fun x : ℝ => deriv f x * deriv f (x - t)) :=
    ((hf.continuous_deriv (by norm_num)).mul
      ((hf.continuous_deriv (by norm_num)).comp
        (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
      hs.deriv.mul_right
  have hrefl : deriv (fun x : ℝ => f (-x)) =
      fun x : ℝ => -deriv f (-x) := by
    funext x
    have h := (hf.differentiable (by norm_num) (-x)).hasDerivAt
    have hn : HasDerivAt (fun y : ℝ => f (-y)) (-deriv f (-x)) x := by
      convert h.comp x (hasDerivAt_neg x) using 1 <;> first | rfl | simp
    exact hn.deriv
  refine ⟨hprod, ?_⟩
  rw [compact_autocorrelation_deriv_eq_convolution hf hs]
  have h := hr.hasDerivAt_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
    hif.locallyIntegrable hfr t
  simpa only [hrefl, convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul,
    neg_sub, mul_neg, integral_neg] using h.deriv

/-- The actual normalized primitive's second correlation derivative retains the minus sign. -/
theorem primitiveCorrelationZero_second_deriv_eq_neg_one {A : ℝ}
    (hA : 0 < A) (t : ℝ) :
    deriv (deriv (primitiveCorrelationZero A)) t = -primitiveCorrelationOne A t := by
  have hf : ContDiff ℝ 1 (normalizedPrimitiveBump A) :=
    (normalizedPrimitiveBump_contDiff hA).of_le (by norm_num)
  exact (compact_autocorrelation_curvature hf
    (normalizedPrimitiveBump_hasCompactSupport hA) t).2

/-- C² of the primitive suffices for the next exact derivative-correlation identity. -/
theorem primitiveCorrelationOne_second_deriv_eq_neg_two {A : ℝ}
    (hA : 0 < A) (t : ℝ) :
    deriv (deriv (primitiveCorrelationOne A)) t = -primitiveCorrelationTwo A t := by
  have hf : ContDiff ℝ 1 (deriv (normalizedPrimitiveBump A)) :=
    (normalizedPrimitiveBump_contDiff hA).deriv'
  exact (compact_autocorrelation_curvature hf
    (normalizedPrimitiveBump_deriv_hasCompactSupport hA) t).2

/-- The actual compact primitive correlation is C² at every shift and support seam. -/
theorem primitiveCorrelationZero_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (primitiveCorrelationZero A) :=
  compact_autocorrelation_contDiff_two
    ((normalizedPrimitiveBump_contDiff hA).of_le (by norm_num))
    (normalizedPrimitiveBump_hasCompactSupport hA)

/-- The first-derivative correlation is globally C² using only the primitive's C². -/
theorem primitiveCorrelationOne_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (primitiveCorrelationOne A) :=
  compact_autocorrelation_contDiff_two (normalizedPrimitiveBump_contDiff hA).deriv'
    (normalizedPrimitiveBump_deriv_hasCompactSupport hA)

/-- Differentiating separate factors gives C⁴ of the correlation without C⁴ of the bump. -/
theorem primitiveCorrelationZero_contDiff_four {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 4 (primitiveCorrelationZero A) := by
  have hc2 := primitiveCorrelationZero_contDiff_two hA
  have hd2 : ContDiff ℝ 2 (deriv (deriv (primitiveCorrelationZero A))) := by
    have he : deriv (deriv (primitiveCorrelationZero A)) =
        fun t => -primitiveCorrelationOne A t :=
      funext (primitiveCorrelationZero_second_deriv_eq_neg_one hA)
    rw [he]
    exact (primitiveCorrelationOne_contDiff_two hA).neg
  have hd3 : ContDiff ℝ 3 (deriv (primitiveCorrelationZero A)) := by
    have hc1 : ContDiff ℝ 1 (deriv (primitiveCorrelationZero A)) := hc2.deriv'
    rw [show (3 : WithTop ℕ∞) = 2 + 1 from rfl, contDiff_succ_iff_deriv]
    exact ⟨hc1.differentiable (by norm_num), by norm_num, hd2⟩
  rw [show (4 : WithTop ℕ∞) = 3 + 1 from rfl, contDiff_succ_iff_deriv]
  exact ⟨hc2.differentiable (by norm_num), by norm_num, hd3⟩

end FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature
