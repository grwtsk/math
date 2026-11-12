/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilContourWeight
import Mathlib.Analysis.Fourier.Inversion

/-!
# Vertical inversion of the actual Weil correlation

MSC2020: 11M41, 42A38. The original whole-line correlation is continuous
by its convolution representation. For every real sigma, its exponentially
tilted version is integrable, and its angular Fourier transform is the actual
contour weight on Re(s)=sigma. Native vertical decay supplies integrability
of this transform. Pinned Mathlib Fourier inversion therefore evaluates the
line pairing at every real logarithmic shift, with normalization 1/(2*pi).
No inversion or regularity hypothesis is added to the canonical smooth test.

Consumer: WeilPrimeLineEvaluation.lean, which evaluates the two actual
Dirichlet-series contributions without an absolute-value replacement.
Method comparison: Anthropic Zeta23/WeilEF/VerticalLine.lean, tilted_inversion,
16a5ce41304fcdaea4e0be7c132e1c361dc26da5. Native objects and native vertical
integrability are used instead of importing its test-function development.
Source baseline 6f7d2e3b6d15f0d2c49aaba984af27c48786943c;
Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE. Elaboration, complete import build, fresh kernel
replay, transitive axiom audit and independent review NOT_RUN.
Novelty UNASSESSED. Coordination math#1801.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Topology FourierTransform ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

open GRWTSK.NumberTheory.WeilNegativeWitness

/-- Continuity is derived from the actual convolution, not assumed for inversion. -/
theorem continuous_correlation_of_admissible (f : ℝ → ℂ) (hf : Admissible f) :
    Continuous (correlation f) := by
  have hfi : Integrable f volume := hf.1.continuous.integrable_of_hasCompactSupport hf.2
  have hn := hfi.comp_neg
  have hR : Integrable (fun t : ℝ => conj (f (-t))) volume := by
    refine hn.norm.mono'
      (Complex.continuous_conj.comp_aestronglyMeasurable hn.aestronglyMeasurable) ?_
    exact Filter.Eventually.of_forall (fun t => by simp)
  have hc := hf.2.continuous_convolution_right
    (L := ContinuousLinearMap.mul ℂ ℂ) hR.locallyIntegrable hf.1.continuous
  have he : correlation f = convolution (fun t : ℝ => conj (f (-t))) f
      (ContinuousLinearMap.mul ℂ ℂ) volume := by
    funext r
    change (∫ t : ℝ, conj (f t) * f (t + r)) =
      ∫ t : ℝ, conj (f (-t)) * f (r - t)
    calc
      _ = ∫ t : ℝ, conj (f (-t)) * f (-t + r) :=
        (integral_neg_eq_self (fun t : ℝ => conj (f t) * f (t + r)) volume).symm
      _ = _ := by
        apply integral_congr_ae
        exact Filter.Eventually.of_forall (fun t => by rw [show -t + r = r - t by ring])
  rw [he]
  exact hc

private theorem angular_dictionary (g : ℝ → ℂ) (t : ℝ) :
    (∫ x : ℝ, g x * Complex.exp (Complex.I * (t : ℂ) * (x : ℂ))) =
      𝓕 g (-t / (2 * Real.pi)) := by
  rw [Real.fourier_real_eq_integral_exp_smul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun x => by
    rw [smul_eq_mul, mul_comm (g x)]
    congr 1
    have he : (-2 * Real.pi * x * (-t / (2 * Real.pi))) = t * x := by
      field_simp
      <;> ring
    rw [he]
    push_cast
    ring)

/-- Angular inversion, with the angular-transform integrability premise displayed.
The source theorem below discharges this premise from native vertical decay. -/
private theorem angular_inversion (g : ℝ → ℂ) (hg : Continuous g)
    (hgi : Integrable g volume)
    (hH : Integrable (fun t : ℝ =>
      ∫ x : ℝ, g x * Complex.exp (Complex.I * (t : ℂ) * (x : ℂ))) volume)
    (y : ℝ) :
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, (∫ x : ℝ, g x * Complex.exp (Complex.I * (t : ℂ) * (x : ℂ))) *
        Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) = g y := by
  let H : ℝ → ℂ := fun t => ∫ x : ℝ, g x * Complex.exp (Complex.I * (t : ℂ) * (x : ℂ))
  have hD (t : ℝ) : H t = 𝓕 g (-t / (2 * Real.pi)) := angular_dictionary g t
  have hF : Integrable (𝓕 g) volume := by
    have hi := hH.comp_mul_left' (show (-2 * Real.pi : ℝ) ≠ 0 by positivity)
    apply hi.congr
    exact Filter.Eventually.of_forall (fun u => by
      change H ((-2 * Real.pi) * u) = 𝓕 g u
      rw [hD]
      congr 1
      field_simp
      <;> ring)
  have hInv : (∫ u : ℝ, 𝓕 g u *
      Complex.exp (2 * (Real.pi : ℂ) * Complex.I * (y : ℂ) * (u : ℂ))) = g y := by
    calc
      _ = 𝓕⁻ (𝓕 g) y := by
        symm
        rw [Real.fourierInv_eq_fourier_neg, Real.fourier_real_eq_integral_exp_smul]
        apply integral_congr_ae
        exact Filter.Eventually.of_forall (fun u => by
          rw [smul_eq_mul]
          have he : 2 * (Real.pi : ℂ) * Complex.I * (y : ℂ) * (u : ℂ) =
              ((-2 * Real.pi * u * (-y) : ℝ) : ℂ) * Complex.I := by push_cast; ring
          rw [he]
          exact mul_comm _ _)
      _ = _ := hgi.fourierInv_fourier_eq hF hg.continuousAt
  have heq : (fun t : ℝ => H t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
      fun t : ℝ => (fun u : ℝ => 𝓕 g u *
        Complex.exp (2 * (Real.pi : ℂ) * Complex.I * (y : ℂ) * (u : ℂ)))
          ((-(1 / (2 * Real.pi))) * t) := by
    funext t
    rw [hD, show -(1 / (2 * Real.pi)) * t = -t / (2 * Real.pi) by ring]
    congr 1
    congr 1
    push_cast
    field_simp
    <;> ring
  change (1 / (2 * (Real.pi : ℂ))) *
    (∫ t : ℝ, H t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) = _
  rw [heq, Measure.integral_comp_mul_left]
  have habs : |(-(1 / (2 * Real.pi)) : ℝ)⁻¹| = 2 * Real.pi := by
    rw [inv_neg, abs_neg, one_div, inv_inv, abs_of_pos (by positivity)]
  rw [habs, Complex.real_smul, hInv]
  push_cast
  field_simp

/-- Exact inversion of the native correlation weight on every vertical line.
All continuity and both L1 premises come from the unchanged admissible source. -/
theorem correlation_weight_inversion (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) (sigma y : ℝ) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, W ((sigma : ℂ) + Complex.I * (t : ℂ)) *
        Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
      correlation f y * (Real.exp ((sigma - 1 / 2) * y) : ℂ) := by
  intro W
  let g : ℝ → ℂ := fun r => correlation f r * (Real.exp ((sigma - 1 / 2) * r) : ℂ)
  have hfi : Integrable f volume := hf.1.continuous.integrable_of_hasCompactSupport hf.2
  have hfs : ∀ t, A < |t| → f t = 0 := by
    intro t ht
    by_contra hn
    have hm := hs (subset_tsupport f hn)
    exact (not_le_of_gt ht) (abs_le.mpr hm)
  have hg : Continuous g := (continuous_correlation_of_admissible f hf).mul (by fun_prop)
  have hgi : Integrable g volume := by
    have hi := integrable_correlation_laplace_integrand f A hfi hfs (-(sigma - 1 / 2))
    simpa only [neg_neg, g] using hi
  have hline (t : ℝ) : W ((sigma : ℂ) + Complex.I * (t : ℂ)) =
      ∫ r : ℝ, g r * Complex.exp (Complex.I * (t : ℂ) * (r : ℂ)) := by
    apply integral_congr_ae
    exact Filter.Eventually.of_forall (fun r => by
      have he : (((sigma : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) * (r : ℂ) =
          (((sigma - 1 / 2) * r : ℝ) : ℂ) + Complex.I * (t : ℂ) * (r : ℂ) := by
        push_cast
        ring
      dsimp only [g]
      rw [he, Complex.exp_add, ← Complex.ofReal_exp, mul_assoc])
  have hHi : Integrable (fun t : ℝ =>
      ∫ r : ℝ, g r * Complex.exp (Complex.I * (t : ℂ) * (r : ℂ))) volume := by
    have hi := (integrable_correlation_contour_weight_vertical f A hA hf hs sigma).1
    exact hi.congr (Filter.Eventually.of_forall hline)
  simp_rw [hline]
  exact angular_inversion g hg hgi hHi y

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
