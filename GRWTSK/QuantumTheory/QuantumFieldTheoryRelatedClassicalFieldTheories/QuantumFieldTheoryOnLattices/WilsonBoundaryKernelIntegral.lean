/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonBoundaryFeatures

/-!
# Nonnegative boundary-kernel Haar quadratic integral

The existing halfMeasure is the actual normalized product Haar. Compactness,
Borel and second-countable structure are inherited from the actual finite
SU(2) configuration coordinates. Concatenated features and the trace bound
supply every hypothesis of the word-integral and dominated-series argument.
The final theorem quantifies arbitrary continuous complex g and assumes
neither positivity nor a gluing certificate.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
attribute [local instance] Classical.propDecidable
open scoped BigOperators ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonBoundaryKernelIntegral

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.WilsonHaarCoordinates
open GRWTSK.Geometry.GaugeTheory.WilsonSplitAction
open GRWTSK.Geometry.GaugeTheory.WilsonBoundaryFeatures
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral

variable (T : ℕ) [NeZero (2 * T)]

/-- The actual integrated coordinate words; repeated indices and the empty word remain. -/
theorem boundaryGramPower_integral_words (hT : 2 ≤ T) (g : C(HalfConfig T, ℂ)) (n : ℕ) :
    quadraticIntegral (halfMeasure T) (fun u v => (gram (boundaryFeatures T hT) u v) ^ n) g =
      ((∑ w : Fin n → BoundaryCoordinate T,
        ‖∫ u, wordObservable (boundaryFeatures T hT) (continuous_boundaryFeatures T hT) g w u
          ∂halfMeasure T‖ ^ 2 : ℝ) : ℂ) :=
  gramPower_integral_words (halfMeasure T) (boundaryFeatures T hT)
    (continuous_boundaryFeatures T hT) g n

/-- Continuity on the actual compact product supplies full product integrability. -/
theorem boundaryKernelProduct_integrable (hT : 2 ≤ T) (β : ℝ)
    (g : C(HalfConfig T, ℂ)) :
    Integrable (fun p : HalfConfig T × HalfConfig T =>
      conj (g p.2) * g p.1 * (boundaryKernelProduct T hT β p.1 p.2 : ℂ))
        ((halfMeasure T).prod (halfMeasure T)) :=
  integrable_quadratic (halfMeasure T) (boundaryKernelProduct T hT β)
    (continuous_boundaryKernelProduct T hT β) g

/-- The same source also supplies integrability in the outer Haar variable. -/
theorem boundaryKernelProduct_outer_integrable (hT : 2 ≤ T) (β : ℝ)
    (g : C(HalfConfig T, ℂ)) :
    Integrable (fun u => ∫ v, conj (g v) * g u *
      (boundaryKernelProduct T hT β u v : ℂ) ∂halfMeasure T) (halfMeasure T) :=
  (boundaryKernelProduct_integrable T hT β g).integral_prod_left

/-- The missing positive-type integral inequality, with its actual Haar measure. -/
theorem boundaryKernelProduct_integral_nonnegative (hT : 2 ≤ T) (β : ℝ)
    (hβ : 0 ≤ β) (g : C(HalfConfig T, ℂ)) :
    0 ≤ (∫ u, ∫ v, conj (g v) * g u *
      (boundaryKernelProduct T hT β u v : ℂ) ∂halfMeasure T ∂halfMeasure T).re := by
  have hp : 0 ≤ (quadraticIntegral (halfMeasure T)
      (fun u v => Real.exp ((β / 2) * gram (boundaryFeatures T hT) u v)) g).re :=
    expGram_integral_nonnegative (halfMeasure T) (div_nonneg hβ (by norm_num))
      (boundaryFeatures T hT) (continuous_boundaryFeatures T hT)
      (boundaryGram_abs_le T hT) g
  have heq : boundaryKernelProduct T hT β = fun u v =>
      Real.exp (-β * (boundaryCount T : ℝ)) *
        Real.exp ((β / 2) * gram (boundaryFeatures T hT) u v) := by
    funext u v
    exact boundaryKernelProduct_eq_exp_gram T hT β u v
  have hpos : 0 ≤ (quadraticIntegral (halfMeasure T) (boundaryKernelProduct T hT β) g).re := by
    rw [heq, quadraticIntegral_scale]
    simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using
      mul_nonneg (Real.exp_nonneg (-β * (boundaryCount T : ℝ))) hp
  rw [quadraticIntegral_eq_double (halfMeasure T) (boundaryKernelProduct T hT β)
    (continuous_boundaryKernelProduct T hT β) g] at hpos
  exact hpos

end GRWTSK.Geometry.GaugeTheory.WilsonBoundaryKernelIntegral
