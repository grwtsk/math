/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib continuous linear maps, Stone--Weierstrass and L2 theory retain
their upstream authorship and Apache-2.0 licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceContinuousStrictPositivity
import Mathlib.Analysis.Normed.Operator.Mul

/-!
# Strict quadratic positivity on the actual invariant L2 space

Each weighted word moment has a quantitative bound by the actual quadratic
form on continuous invariant inputs. Closedness and the actual invariant
continuous density extend EACH bound to every invariant L2 input. This is
stronger than extending a strict inequality by density, which is invalid.
Zero quadratic value kills all moments. The actual coordinate algebra is
uniformly dense; its annihilator is a continuous functional on continuous
maps. Division by the everywhere positive continuous spatial half weight
then gives orthogonality to every ambient continuous input. Actual ambient
continuous-to-L2 density forces the original L2 class to vanish.

No pointwise invariant representative of an arbitrary L2 class is used.
No coercive constant, infinite rank, spectral sequence or mass gap follows.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceL2StrictPositivity

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFeatures
open GRWTSK.Geometry.GaugeTheory.WilsonSliceQuadraticPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeAveragePairing
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantContinuousDensity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantOperatorPositive
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousOperatorQuadratic
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousStrictPositivity
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramMoments
open GRWTSK.Topology.FiniteRealCoordinateAlgebra

variable (L : ℕ) [NeZero L]

def spatialWeight (β : ℝ) : C(Slice L SU2, ℝ) :=
  ⟨halfSpatialWeight L β, continuous_M L β⟩

def weightedWord (β : ℝ) {n : ℕ} (w : Fin n → SliceCoordinate L) :
    C(Slice L SU2, ℝ) :=
  spatialWeight L β * wordMap (sliceFeatures L) (continuous_sliceFeatures L) w

def wordMoment (β : ℝ) {n : ℕ} (w : Fin n → SliceCoordinate L)
    (h : gaugeInvariantSpace L) : ℝ :=
  inner ℝ (h : RealSliceL2 L)
    (ContinuousMap.toLp 2 (sliceHaar L) ℝ (weightedWord L β w))

theorem continuous_wordMoment (β : ℝ) {n : ℕ} (w : Fin n → SliceCoordinate L) :
    Continuous (wordMoment L β w) :=
  continuous_subtype_val.inner continuous_const

theorem wordMoment_embedding (β : ℝ) (f : invariantContinuousSpace L)
    {n : ℕ} (w : Fin n → SliceCoordinate L) :
    wordMoment L β w (invariantEmbedding L f) =
      ∫ a, weightedRealObservable L β f.val a *
        wordFeature (sliceFeatures L) w a ∂sliceHaar L := by
  rw [wordMoment, invariantEmbedding_coe, inner_toLp]
  apply integral_congr_ae
  filter_upwards [ContinuousMap.coeFn_toLp (sliceHaar L) f.val (p := 2) (𝕜 := ℝ)]
    with a ha
  rw [ha]
  change f.val a * (halfSpatialWeight L β a * wordFeature (sliceFeatures L) w a) =
    (halfSpatialWeight L β a * f.val a) * wordFeature (sliceFeatures L) w a
  ring

/-- The estimate retains the original normalization and every ordered word. -/
theorem wordMoment_bound_embedding (β : ℝ) (hβ : 0 < β)
    (f : invariantContinuousSpace L) {n : ℕ} (w : Fin n → SliceCoordinate L) :
    Real.exp (-β * (spatialLinkCount L : ℝ)) *
      ((β / 2) ^ n / (n.factorial : ℝ)) *
        (wordMoment L β w (invariantEmbedding L f)) ^ 2 ≤
      inner ℝ (invariantEmbedding L f)
        (invariantOperator L β hβ.le (invariantEmbedding L f)) := by
  have hb := wordTerm_le_expGramIntegral (sliceHaar L)
    (div_nonneg hβ.le (by norm_num)) (sliceFeatures L) (continuous_sliceFeatures L)
    (sliceGram_abs_le L) (complexObservable L (weightedRealObservable L β f.val)) w
  have hm : (∫ a, wordObservable (sliceFeatures L) (continuous_sliceFeatures L)
      (complexObservable L (weightedRealObservable L β f.val)) w a ∂sliceHaar L) =
      (wordMoment L β w (invariantEmbedding L f) : ℂ) := by
    rw [wordMoment_embedding]
    simp only [wordObservable, complexObservable, ← Complex.ofReal_mul,
      integral_complex_ofReal]
  rw [hm, Complex.norm_real, Real.norm_eq_abs, sq_abs] at hb
  have he : inner ℝ (invariantEmbedding L f)
      (invariantOperator L β hβ.le (invariantEmbedding L f)) =
      (GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeQuadratic.sliceQuadratic L β
        (complexObservable L f.val)).re :=
    inner_operator_of_continuous L β hβ.le f.val
  rw [he, sliceQuadratic_re_eq_expGram L β f.val f.property]
  simpa only [mul_assoc] using
    mul_le_mul_of_nonneg_left hb (Real.exp_pos (-β * (spatialLinkCount L : ℝ))).le

/-- Closed non-strict moment estimates, rather than strictness, pass through density. -/
theorem wordMoment_bound (β : ℝ) (hβ : 0 < β)
    {n : ℕ} (w : Fin n → SliceCoordinate L) (h : gaugeInvariantSpace L) :
    Real.exp (-β * (spatialLinkCount L : ℝ)) *
      ((β / 2) ^ n / (n.factorial : ℝ)) * (wordMoment L β w h) ^ 2 ≤
      inner ℝ h (invariantOperator L β hβ.le h) := by
  have hc : IsClosed {v : gaugeInvariantSpace L |
      Real.exp (-β * (spatialLinkCount L : ℝ)) *
        ((β / 2) ^ n / (n.factorial : ℝ)) * (wordMoment L β w v) ^ 2 ≤
          inner ℝ v (invariantOperator L β hβ.le v)} :=
    isClosed_le (continuous_const.mul ((continuous_wordMoment L β w).pow 2))
      (continuous_invariantQuadratic L β hβ.le)
  have hs : Set.range (invariantEmbedding L) ⊆ {v : gaugeInvariantSpace L |
      Real.exp (-β * (spatialLinkCount L : ℝ)) *
        ((β / 2) ^ n / (n.factorial : ℝ)) * (wordMoment L β w v) ^ 2 ≤
          inner ℝ v (invariantOperator L β hβ.le v)} := by
    rintro v ⟨f, rfl⟩
    exact wordMoment_bound_embedding L β hβ f w
  exact (closure_minimal hs hc) ((invariantEmbedding_denseRange L) h)

theorem wordMoment_zero_of_quadratic_zero (β : ℝ) (hβ : 0 < β)
    (h : gaugeInvariantSpace L)
    (hz : inner ℝ h (invariantOperator L β hβ.le h) = 0)
    {n : ℕ} (w : Fin n → SliceCoordinate L) : wordMoment L β w h = 0 := by
  have hc : 0 < Real.exp (-β * (spatialLinkCount L : ℝ)) *
      ((β / 2) ^ n / (n.factorial : ℝ)) :=
    mul_pos (Real.exp_pos _) (div_pos (pow_pos (div_pos hβ (by norm_num)) n)
      (by exact_mod_cast Nat.factorial_pos n))
  have hb := wordMoment_bound L β hβ w h
  rw [hz] at hb
  have he : (Real.exp (-β * (spatialLinkCount L : ℝ)) *
      ((β / 2) ^ n / (n.factorial : ℝ))) * (wordMoment L β w h) ^ 2 = 0 :=
    le_antisymm hb (mul_nonneg hc.le (sq_nonneg _))
  have hs : (wordMoment L β w h) ^ 2 = 0 :=
    (mul_eq_zero.mp he).resolve_left hc.ne'
  nlinarith [sq_nonneg (wordMoment L β w h)]

/-- A genuine bounded functional on continuous maps for an arbitrary L2 class. -/
def weightedPairing (β : ℝ) (h : gaugeInvariantSpace L) : C(Slice L SU2, ℝ) →L[ℝ] ℝ :=
  (innerSL ℝ (h : RealSliceL2 L)).comp
    ((ContinuousMap.toLp 2 (sliceHaar L) ℝ).comp
      (ContinuousLinearMap.mul ℝ C(Slice L SU2, ℝ) (spatialWeight L β)))

theorem eq_zero_of_wordMoments (β : ℝ) (h : gaugeInvariantSpace L)
    (hm : ∀ (n : ℕ) (w : Fin n → SliceCoordinate L), wordMoment L β w h = 0) : h = 0 := by
  have hs : wordSpan (sliceFeatures L) (continuous_sliceFeatures L) ≤
      (weightedPairing L β h).ker := by
    unfold wordSpan
    apply Submodule.span_le.mpr
    rintro p ⟨⟨n, w⟩, rfl⟩
    exact hm n w
  have hc : IsClosed {p : C(Slice L SU2, ℝ) | weightedPairing L β h p = 0} :=
    isClosed_eq (weightedPairing L β h).continuous continuous_const
  have hall (p : C(Slice L SU2, ℝ)) : weightedPairing L β h p = 0 := by
    have hp : p ∈ closure (coordinateAlgebra (sliceFeatures L)
        (continuous_sliceFeatures L) : Set C(Slice L SU2, ℝ)) := by
      change p ∈ (coordinateAlgebra (sliceFeatures L) (continuous_sliceFeatures L)).topologicalClosure
      rw [coordinateAlgebra_topologicalClosure _ _ (sliceFeatures_injective L)]
      trivial
    exact (closure_minimal hs hc) hp
  have hz : (h : RealSliceL2 L) = 0 :=
    (continuous_toLp_denseRange L).eq_zero_of_inner_left ℝ (fun p => by
      let q : C(Slice L SU2, ℝ) :=
        ⟨fun a => p a / halfSpatialWeight L β a,
          p.continuous.div (continuous_M L β) (fun a => (halfSpatialWeight_pos L β a).ne')⟩
      have he : spatialWeight L β * q = p := by
        ext a
        change halfSpatialWeight L β a * (p a / halfSpatialWeight L β a) = p a
        exact mul_div_cancel₀ _ (halfSpatialWeight_pos L β a).ne'
      have hp := hall q
      change inner ℝ (h : RealSliceL2 L)
        (ContinuousMap.toLp 2 (sliceHaar L) ℝ (spatialWeight L β * q)) = 0 at hp
      rw [he] at hp
      exact hp)
  exact Subtype.ext hz

theorem eq_zero_of_quadratic_zero (β : ℝ) (hβ : 0 < β) (h : gaugeInvariantSpace L)
    (hz : inner ℝ h (invariantOperator L β hβ.le h) = 0) : h = 0 :=
  eq_zero_of_wordMoments L β h (fun _ w => wordMoment_zero_of_quadratic_zero L β hβ h hz w)

/-- Every nonzero input of the existing invariant L2 operator, at beta>0. -/
theorem invariantOperator_inner_pos (β : ℝ) (hβ : 0 < β)
    (h : gaugeInvariantSpace L) (hne : h ≠ 0) :
    0 < inner ℝ h (invariantOperator L β hβ.le h) := by
  exact lt_of_le_of_ne (invariantOperator_inner_nonnegative L β hβ.le h)
    (fun hz => hne (eq_zero_of_quadratic_zero L β hβ h hz.symm))

theorem invariantOperator_injective (β : ℝ) (hβ : 0 < β) :
    Function.Injective (invariantOperator L β hβ.le) := by
  intro h k he
  have ha : invariantOperator L β hβ.le (h - k) = 0 := by
    rw [map_sub, he, sub_self]
  have hz : inner ℝ (h - k) (invariantOperator L β hβ.le (h - k)) = 0 := by
    rw [ha, inner_zero_right]
  exact sub_eq_zero.mp (eq_zero_of_quadratic_zero L β hβ (h - k) hz)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceL2StrictPositivity
