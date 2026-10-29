/- Copyright (c) 2026 grwtsk contributors. MIT.
The actual matrix group retains Shing Tak Lam's attribution; normalized
Haar and finite products retain Floris van Doorn's. Imported Mathlib and
GRWTSK sources retain their original attribution and licenses. -/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteRealGramMoments
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.ContinuousWordMoments
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceCompactOperator

/-!
# Strict positivity on the actual continuous invariant slice population

For beta>0, zero quadratic value forces every literal coordinate-word moment
of M*f to vanish. The full eight real/imaginary entry coordinates at EVERY
spatial link separate actual slices. Their real coordinate-polynomial algebra
is uniformly dense by the proved word-algebra/Stone--Weierstrass supplier.
The actual normalized product Haar has full support, so M*f is pointwise zero.
Actual M>0 then forces f=0. The exact continuous quadratic agreement returns
strict positivity to the existing embedding and invariantOperator on H.

The no-kernel consumer is ONLY for embedded continuous invariant functions.
No all-L2 injectivity, infinite dimension/rank, eigenvalue sequence or physical
gap is asserted. Beta0's rank-one exception remains outside strict beta>0.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousStrictPositivity

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2WilsonPositiveType
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeQuadratic
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFeatures
open GRWTSK.Geometry.GaugeTheory.WilsonSliceQuadraticPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousOperatorQuadratic
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantContinuousDensity
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramMoments
open GRWTSK.Analysis.InnerProductSpace.ContinuousWordMoments

theorem realCoordinates_injective : Function.Injective realCoordinates := by
  intro A B h
  apply Subtype.ext
  funext i j
  apply Complex.ext
  · simpa [realCoordinates, matrix] using congrFun h ((i, j), 0)
  · simpa [realCoordinates, matrix] using congrFun h ((i, j), 1)

variable (L : ℕ) [NeZero L]

/-- All entries of every actual link are retained, including their imaginary parts. -/
theorem sliceFeatures_injective : Function.Injective (sliceFeatures L) := by
  intro a b h
  funext e
  apply realCoordinates_injective
  funext k
  exact congrFun h (e, k)

/-- The original one-link Haar full support and actual finite-product instance. -/
theorem sliceHaar_isOpenPosMeasure : Measure.IsOpenPosMeasure (sliceHaar L) := by
  letI : Measure.IsOpenPosMeasure haarProbability := inferInstance
  change Measure.IsOpenPosMeasure (Measure.pi (fun _ : SpatialLink L => haarProbability))
  infer_instance

def weightedRealObservable (β : ℝ) (f : C(Slice L SU2, ℝ)) : C(Slice L SU2, ℝ) :=
  ⟨fun a => halfSpatialWeight L β a * f a, (continuous_M L β).mul f.continuous⟩

theorem halfSpatialWeight_pos (β : ℝ) (a : Slice L SU2) :
    0 < halfSpatialWeight L β a := Real.exp_pos _

theorem eq_zero_of_weightedReal_eq_zero (β : ℝ) (f : C(Slice L SU2, ℝ))
    (hz : weightedRealObservable L β f = 0) : f = 0 := by
  ext a
  have ha : halfSpatialWeight L β a * f a = 0 :=
    congrArg (fun h : C(Slice L SU2, ℝ) => h a) hz
  exact (mul_eq_zero.mp ha).resolve_left (halfSpatialWeight_pos L β a).ne'

/-- Exact real/complex weighted source agreement, before applying the paid gauge reduction. -/
theorem weightedReal_complex (β : ℝ) (f : C(Slice L SU2, ℝ)) :
    complexObservable L (weightedRealObservable L β f) =
      weightedObservable L β (complexObservable L f) := by
  ext a
  exact Complex.ofReal_mul _ _

/-- Retain exp(-beta*E_s), all temporal Haar integration and the actual M*f. -/
theorem sliceQuadratic_re_eq_expGram (β : ℝ) (f : C(Slice L SU2, ℝ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a) :
    (sliceQuadratic L β (complexObservable L f)).re =
      Real.exp (-β * (spatialLinkCount L : ℝ)) *
        (quadraticIntegral (sliceHaar L)
          (fun a b => Real.exp ((β / 2) * gram (sliceFeatures L) a b))
          (complexObservable L (weightedRealObservable L β f))).re := by
  rw [gauge_averaged_quadratic L β (complexObservable L f)
    (fun g a => congrArg (fun r : ℝ => (r : ℂ)) (hf g a)),
    W_quadratic_eq_generic, ← weightedReal_complex]
  have hW : sliceWilsonProduct L β = fun a b =>
      Real.exp (-β * (spatialLinkCount L : ℝ)) *
        Real.exp ((β / 2) * gram (sliceFeatures L) a b) := by
    funext a b
    exact W_eq_exp_gram L β a b
  rw [hW, quadraticIntegral_scale]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]

theorem realWordMoment_eq_zero (β : ℝ) (hβ : 0 < β) (f : C(Slice L SU2, ℝ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a)
    (hz : (sliceQuadratic L β (complexObservable L f)).re = 0)
    (n : ℕ) (w : Fin n → SliceCoordinate L) :
    ∫ a, weightedRealObservable L β f a * wordFeature (sliceFeatures L) w a ∂sliceHaar L = 0 := by
  have he := sliceQuadratic_re_eq_expGram L β f hf
  rw [hz] at he
  have hq : (quadraticIntegral (sliceHaar L)
      (fun a b => Real.exp ((β / 2) * gram (sliceFeatures L) a b))
      (complexObservable L (weightedRealObservable L β f))).re = 0 :=
    (mul_eq_zero.mp he.symm).resolve_left (Real.exp_ne_zero _)
  have hw := wordMoment_eq_zero_of_expGramIntegral_re_eq_zero (sliceHaar L)
    (div_pos hβ (by norm_num)) (sliceFeatures L) (continuous_sliceFeatures L)
    (sliceGram_abs_le L) (complexObservable L (weightedRealObservable L β f)) hq w
  have hm : (∫ a, wordObservable (sliceFeatures L) (continuous_sliceFeatures L)
      (complexObservable L (weightedRealObservable L β f)) w a ∂sliceHaar L) =
      ((∫ a, weightedRealObservable L β f a * wordFeature (sliceFeatures L) w a
        ∂sliceHaar L : ℝ) : ℂ) := by
    simp only [wordObservable, complexObservable, ← Complex.ofReal_mul, integral_complex_ofReal]
  rw [hm] at hw
  simpa only [Complex.ofReal_re, Complex.zero_re] using congrArg Complex.re hw

theorem eq_zero_of_sliceQuadratic_re_eq_zero (β : ℝ) (hβ : 0 < β)
    (f : C(Slice L SU2, ℝ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a)
    (hz : (sliceQuadratic L β (complexObservable L f)).re = 0) : f = 0 := by
  letI : Measure.IsOpenPosMeasure (sliceHaar L) := sliceHaar_isOpenPosMeasure L
  have hw : weightedRealObservable L β f = 0 :=
    eq_zero_of_wordMoments (sliceHaar L) (sliceFeatures L) (continuous_sliceFeatures L)
      (sliceFeatures_injective L) (weightedRealObservable L β f)
      (realWordMoment_eq_zero L β hβ f hf hz)
  exact eq_zero_of_weightedReal_eq_zero L β f hw

/-- Strictness is on continuous invariant real inputs, using the existing exact agreement. -/
theorem continuous_quadratic_pos (β : ℝ) (hβ : 0 < β) (f : C(Slice L SU2, ℝ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a) (hne : f ≠ 0) :
    0 < inner ℝ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)
      (operator L β hβ.le (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)) := by
  have hp := continuous_quadratic_nonnegative L β hβ.le f hf
  by_contra hn
  have hz : inner ℝ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)
      (operator L β hβ.le (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)) = 0 :=
    le_antisymm (le_of_not_gt hn) hp
  rw [inner_operator_of_continuous L β hβ.le f] at hz
  exact hne (eq_zero_of_sliceQuadratic_re_eq_zero L β hβ f hf hz)

/-- The requested strict quadratic supplier, on the ACTUAL embedding in the existing H. -/
theorem invariantEmbedding_quadratic_pos (β : ℝ) (hβ : 0 < β)
    (f : invariantContinuousSpace L) (hne : f ≠ 0) :
    0 < inner ℝ (invariantEmbedding L f)
      (invariantOperator L β hβ.le (invariantEmbedding L f)) := by
  change 0 < inner ℝ (ContinuousMap.toLp 2 (sliceHaar L) ℝ f.val)
    (operator L β hβ.le (ContinuousMap.toLp 2 (sliceHaar L) ℝ f.val))
  exact continuous_quadratic_pos L β hβ f.val f.property
    (fun hz => hne (Subtype.ext hz))

/-- No kernel vector comes from a nonzero continuous invariant observable.
This is not injectivity on all of H; independent continuous families are still needed. -/
theorem invariantOperator_embedding_eq_zero_iff (β : ℝ) (hβ : 0 < β)
    (f : invariantContinuousSpace L) :
    invariantOperator L β hβ.le (invariantEmbedding L f) = 0 ↔ f = 0 := by
  constructor
  · intro hz
    by_contra hne
    have hp := invariantEmbedding_quadratic_pos L β hβ f hne
    rw [hz, inner_zero_right] at hp
    exact (lt_irrefl (0 : ℝ)) hp
  · rintro rfl
    simp only [map_zero]

/-- Injectivity only on the continuous invariant domain, for the finite-rank consumer. -/
theorem invariantOperator_embedding_injective (β : ℝ) (hβ : 0 < β) :
    Function.Injective ((invariantOperator L β hβ.le).comp (invariantEmbedding L)) := by
  intro f g he
  have hz : ((invariantOperator L β hβ.le).comp (invariantEmbedding L)) (f - g) = 0 := by
    rw [map_sub]
    exact sub_eq_zero.mpr he
  exact sub_eq_zero.mp ((invariantOperator_embedding_eq_zero_iff L β hβ (f - g)).mp hz)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousStrictPositivity
