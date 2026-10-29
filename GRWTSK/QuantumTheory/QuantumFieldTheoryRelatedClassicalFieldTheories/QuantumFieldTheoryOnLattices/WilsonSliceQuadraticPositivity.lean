/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's scalar exponential series, Bochner integration and Fubini retain
their upstream authorship and Apache-2.0 license. Imports retain attribution. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGaugeQuadratic
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceFeatures

/-!
# Positive quadratic supplier for the constructed gauge-averaged slice kernel

The full spatial-link exponential Gram identity supplies the actual finite
coordinate words, nonnegative Taylor coefficients and dominated limit through
the maintained integrated-Gram theorem. The observable is the actual M*f.
Fubini, symmetry and the paid gauge-Haar reduction return to the requested
conjugate-first integral for K. This is a continuous-function result only.

No L2 operator/subspace, strict positivity, infinite rank, compact spectral
decomposition or eigenfunction/evaluation theorem is assumed or obtained.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceQuadraticPositivity

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeQuadratic
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFeatures
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral

variable (L : ℕ) [NeZero L]

/-- Full spatial product integrability for arbitrary continuous complex h. -/
theorem integrable_W_quadratic (β : ℝ) (h : C(Slice L SU2, ℂ)) :
    Integrable (fun p : Slice L SU2 × Slice L SU2 =>
      conj (h p.1) * (sliceWilsonProduct L β p.1 p.2 : ℂ) * h p.2)
        ((sliceHaar L).prod (sliceHaar L)) :=
  (((Complex.continuous_conj.comp (h.continuous.comp continuous_fst)).mul
    (Complex.continuous_ofReal.comp (continuous_W_exp_gram L β))).mul
      (h.continuous.comp continuous_snd)).integrable_of_hasCompactSupport
        (HasCompactSupport.of_compactSpace _)

/-- Match the maintained integrated-Gram convention by an actual Fubini swap. -/
theorem W_quadratic_eq_generic (β : ℝ) (h : C(Slice L SU2, ℂ)) :
    (∫ a, ∫ b, conj (h a) * (sliceWilsonProduct L β a b : ℂ) * h b
      ∂sliceHaar L ∂sliceHaar L) = quadraticIntegral (sliceHaar L) (sliceWilsonProduct L β) h := by
  rw [quadraticIntegral_eq_double (sliceHaar L) (sliceWilsonProduct L β)
    (continuous_W_exp_gram L β) h]
  calc
    _ = ∫ b, ∫ a, conj (h a) * (sliceWilsonProduct L β a b : ℂ) * h b
        ∂sliceHaar L ∂sliceHaar L :=
      integral_integral_swap (integrable_W_quadratic L β h)
    _ = _ := by
      apply integral_congr_ae
      refine ae_of_all _ (fun a => ?_)
      apply integral_congr_ae
      refine ae_of_all _ (fun b => ?_)
      rw [W_symm L β b a]
      ring

/-- Existing word-integral/Taylor/dominated convergence supplier, on actual slices. -/
theorem W_quadratic_nonnegative (β : ℝ) (hβ : 0 ≤ β) (h : C(Slice L SU2, ℂ)) :
    0 ≤ (∫ a, ∫ b, conj (h a) * (sliceWilsonProduct L β a b : ℂ) * h b
      ∂sliceHaar L ∂sliceHaar L).re := by
  have hp : 0 ≤ (quadraticIntegral (sliceHaar L)
      (fun a b => Real.exp ((β / 2) *
        GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential.gram (sliceFeatures L) a b)) h).re :=
    expGram_integral_nonnegative (sliceHaar L) (div_nonneg hβ (by norm_num))
      (sliceFeatures L) (continuous_sliceFeatures L) (sliceGram_abs_le L) h
  have heq : sliceWilsonProduct L β = fun a b =>
      Real.exp (-β * (spatialLinkCount L : ℝ)) *
        Real.exp ((β / 2) *
          GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential.gram (sliceFeatures L) a b) := by
    funext a b
    exact W_eq_exp_gram L β a b
  rw [W_quadratic_eq_generic, heq, quadraticIntegral_scale]
  simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using
    mul_nonneg (Real.exp_nonneg (-β * (spatialLinkCount L : ℝ))) hp

/-- The actual positive quadratic supplier; no assumed positive-operator field. -/
theorem sliceQuadratic_nonnegative (β : ℝ) (hβ : 0 ≤ β) (f : C(Slice L SU2, ℂ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a) :
    0 ≤ (sliceQuadratic L β f).re := by
  rw [gauge_averaged_quadratic L β f hf]
  exact W_quadratic_nonnegative L β hβ (weightedObservable L β f)

/-- Reality and semidefiniteness for the literal conjugate-first K integral. -/
theorem sliceKernel_quadratic_positive (β : ℝ) (hβ : 0 ≤ β) (f : C(Slice L SU2, ℂ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a) :
    (∫ a, ∫ b, conj (f a) * (sliceKernel L β a b : ℂ) * f b
      ∂sliceHaar L ∂sliceHaar L).im = 0 ∧
    0 ≤ (∫ a, ∫ b, conj (f a) * (sliceKernel L β a b : ℂ) * f b
      ∂sliceHaar L ∂sliceHaar L).re :=
  ⟨sliceQuadratic_im_zero L β f, sliceQuadratic_nonnegative L β hβ f hf⟩

end GRWTSK.Geometry.GaugeTheory.WilsonSliceQuadraticPositivity
