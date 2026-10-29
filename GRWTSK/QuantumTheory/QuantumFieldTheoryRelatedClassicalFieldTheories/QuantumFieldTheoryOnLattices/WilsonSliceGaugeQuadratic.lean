/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's Haar and Bochner/Fubini integration retain their upstream
authorship and Apache-2.0 license. Imported GRWTSK retains its attribution. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceKernelSymmetry
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# Actual slice-Haar gauge averaging inside the Wilson quadratic integral

For each fixed gauge, the spatial-link transformation is a genuine
coordinatewise two-sided Haar translation, with inverse the inverse gauge.
Full compact joint integrability permits Fubini before the conditional
change of variables. Only then is the remaining gauge integral returned by
its actual mass one. Separate invariance of K is not used as a replacement.

The concrete quadratic integral is on continuous observables, not an L2
operator or an assumed positive form. No strict positivity is asserted.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeQuadratic

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelSymmetry

variable (L : ℕ) [NeZero L]

/-- The literal spatial-link action and its actual inverse. -/
def sliceGaugeHomeomorph (g : SliceGauge L SU2) : Slice L SU2 ≃ₜ Slice L SU2 where
  toEquiv :=
    { toFun := sliceGaugeAction g
      invFun := sliceGaugeAction g⁻¹
      left_inv := by
        intro a
        rw [← sliceGauge_mul, inv_mul_cancel, sliceGauge_one]
      right_inv := by
        intro a
        rw [← sliceGauge_mul, mul_inv_cancel, sliceGauge_one] }
  continuous_toFun := (continuous_sliceGaugeAction L).comp
    (continuous_const.prodMk continuous_id)
  continuous_invFun := (continuous_sliceGaugeAction L).comp
    (continuous_const.prodMk continuous_id)

/-- Explicit measurable equivalence; no inverse or invariance field is assumed. -/
def sliceGaugeMeasurableEquiv (g : SliceGauge L SU2) : Slice L SU2 ≃ᵐ Slice L SU2 where
  toEquiv := (sliceGaugeHomeomorph L g).toEquiv
  measurable_toFun := (sliceGaugeHomeomorph L g).continuous_toFun.measurable
  measurable_invFun := (sliceGaugeHomeomorph L g).continuous_invFun.measurable

/-- The two multipliers at each actual spatial link use its two endpoints. -/
theorem measurePreserving_sliceGauge (g : SliceGauge L SU2) :
    MeasurePreserving (sliceGaugeMeasurableEquiv L g) (sliceHaar L) (sliceHaar L) :=
  measurePreserving_twoSidedProduct
    (fun e : SpatialLink L => g e.1)
    (fun e : SpatialLink L => (g (spatialShift e.1 e.2))⁻¹)

/-- M times the actual continuous complex observable. -/
def weightedObservable (β : ℝ) (f : C(Slice L SU2, ℂ)) : C(Slice L SU2, ℂ) :=
  ⟨fun a => (halfSpatialWeight L β a : ℂ) * f a,
    (Complex.continuous_ofReal.comp (continuous_M L β)).mul f.continuous⟩

theorem weightedObservable_gauge (β : ℝ) (f : C(Slice L SU2, ℂ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a)
    (g : SliceGauge L SU2) (a : Slice L SU2) :
    weightedObservable L β f (sliceGaugeAction g a) = weightedObservable L β f a := by
  change (halfSpatialWeight L β (sliceGaugeAction g a) : ℂ) *
      f (sliceGaugeAction g a) = _
  rw [M_gauge L β g a, hf g a]
  rfl

/-- The concrete (not abstractly supplied) slice quadratic integral. -/
def sliceQuadratic (β : ℝ) (f : C(Slice L SU2, ℂ)) : ℂ :=
  ∫ a, ∫ b, conj (f a) * (sliceKernel L β a b : ℂ) * f b
    ∂sliceHaar L ∂sliceHaar L

theorem integrable_sliceQuadratic (β : ℝ) (f : C(Slice L SU2, ℂ)) :
    Integrable (fun p : Slice L SU2 × Slice L SU2 =>
      conj (f p.1) * (sliceKernel L β p.1 p.2 : ℂ) * f p.2)
        ((sliceHaar L).prod (sliceHaar L)) :=
  (((Complex.continuous_conj.comp (f.continuous.comp continuous_fst)).mul
    (Complex.continuous_ofReal.comp (continuous_K L β))).mul
      (f.continuous.comp continuous_snd)).integrable_of_hasCompactSupport
        (HasCompactSupport.of_compactSpace _)

/-- The gauge variable remains in the literal integrand. -/
def gaugeIntegrand (β : ℝ) (f : C(Slice L SU2, ℂ))
    (a b : Slice L SU2) (g : SliceGauge L SU2) : ℂ :=
  conj (weightedObservable L β f a) *
    (sliceWilsonProduct L β a (sliceGaugeAction g b) : ℂ) * weightedObservable L β f b

theorem continuous_gaugeIntegrand (β : ℝ) (f : C(Slice L SU2, ℂ)) :
    Continuous (fun p : (Slice L SU2 × Slice L SU2) × SliceGauge L SU2 =>
      gaugeIntegrand L β f p.1.1 p.1.2 p.2) :=
  (((Complex.continuous_conj.comp
    ((weightedObservable L β f).continuous.comp continuous_fst.fst)).mul
      (Complex.continuous_ofReal.comp (continuous_temporalFactor L β))).mul
        ((weightedObservable L β f).continuous.comp continuous_fst.snd))

/-- Full three-variable product integrability, before any integration is removed. -/
theorem integrable_gaugeIntegrand (β : ℝ) (f : C(Slice L SU2, ℂ)) :
    Integrable (fun p : (Slice L SU2 × Slice L SU2) × SliceGauge L SU2 =>
      gaugeIntegrand L β f p.1.1 p.1.2 p.2)
        (((sliceHaar L).prod (sliceHaar L)).prod (sliceGaugeHaar L)) :=
  (continuous_gaugeIntegrand L β f).integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

/-- Every fixed outer slice has full joint integrability for its Fubini swap. -/
theorem integrable_gaugeRow (β : ℝ) (f : C(Slice L SU2, ℂ)) (a : Slice L SU2) :
    Integrable (fun p : Slice L SU2 × SliceGauge L SU2 => gaugeIntegrand L β f a p.1 p.2)
      ((sliceHaar L).prod (sliceGaugeHaar L)) :=
  ((continuous_gaugeIntegrand L β f).comp
    ((continuous_const.prodMk continuous_fst).prodMk continuous_snd)).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)

/-- The actual definition of K puts M on both sides of the Haar average. -/
theorem quadraticIntegrand_eq_gaugeIntegral (β : ℝ) (f : C(Slice L SU2, ℂ))
    (a b : Slice L SU2) :
    conj (f a) * (sliceKernel L β a b : ℂ) * f b =
      ∫ g, gaugeIntegrand L β f a b g ∂sliceGaugeHaar L := by
  have h : (∫ g, gaugeIntegrand L β f a b g ∂sliceGaugeHaar L) =
      conj (weightedObservable L β f a) *
        ((∫ g, sliceWilsonProduct L β a (sliceGaugeAction g b) ∂sliceGaugeHaar L) : ℂ) *
          weightedObservable L β f b := by
    unfold gaugeIntegrand
    rw [integral_mul_const, integral_const_mul, integral_complex_ofReal]
  rw [h]
  simp only [sliceKernel, weightedObservable, Complex.ofReal_mul, map_mul, Complex.conj_ofReal]
  ring

/-- Conditional change of variables b -> g.b, with its genuine Haar bijection. -/
theorem fixedGauge_quadraticIntegral (β : ℝ) (f : C(Slice L SU2, ℂ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a)
    (a : Slice L SU2) (g : SliceGauge L SU2) :
    (∫ b, gaugeIntegrand L β f a b g ∂sliceHaar L) =
      ∫ b, conj (weightedObservable L β f a) * (sliceWilsonProduct L β a b : ℂ) *
        weightedObservable L β f b ∂sliceHaar L := by
  calc
    _ = ∫ b, conj (weightedObservable L β f a) *
        (sliceWilsonProduct L β a (sliceGaugeAction g b) : ℂ) *
          weightedObservable L β f (sliceGaugeAction g b) ∂sliceHaar L := by
      apply integral_congr_ae
      exact ae_of_all _ (fun b => by
        rw [weightedObservable_gauge L β f hf g b]
        rfl)
    _ = _ := (measurePreserving_sliceGauge L g).integral_comp
      (sliceGaugeMeasurableEquiv L g).measurableEmbedding
      (fun b => conj (weightedObservable L β f a) * (sliceWilsonProduct L β a b : ℂ) *
        weightedObservable L β f b)

/-- Actual gauge averaging, consumed only after Fubini and the fixed-g Haar change. -/
theorem gauge_averaged_quadratic (β : ℝ) (f : C(Slice L SU2, ℂ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a) :
    sliceQuadratic L β f =
      ∫ a, ∫ b, conj (weightedObservable L β f a) * (sliceWilsonProduct L β a b : ℂ) *
        weightedObservable L β f b ∂sliceHaar L ∂sliceHaar L := by
  unfold sliceQuadratic
  apply integral_congr_ae
  refine ae_of_all _ (fun a => ?_)
  calc
    _ = ∫ b, ∫ g, gaugeIntegrand L β f a b g ∂sliceGaugeHaar L ∂sliceHaar L := by
      apply integral_congr_ae
      exact ae_of_all _ (quadraticIntegrand_eq_gaugeIntegral L β f a)
    _ = ∫ g, ∫ b, gaugeIntegrand L β f a b g ∂sliceHaar L ∂sliceGaugeHaar L :=
      integral_integral_swap (integrable_gaugeRow L β f a)
    _ = ∫ g : SliceGauge L SU2, (∫ b, conj (weightedObservable L β f a) *
        (sliceWilsonProduct L β a b : ℂ) * weightedObservable L β f b ∂sliceHaar L)
          ∂sliceGaugeHaar L := by
      apply integral_congr_ae
      exact ae_of_all _ (fixedGauge_quadraticIntegral L β f hf a)
    _ = _ := by rw [integral_const, probReal_univ, one_smul]

/-- Reality is a consequence of actual kernel symmetry and an integrable swap. -/
theorem sliceQuadratic_conj (β : ℝ) (f : C(Slice L SU2, ℂ)) :
    sliceQuadratic L β f = conj (sliceQuadratic L β f) := by
  unfold sliceQuadratic
  rw [← integral_conj]
  simp_rw [← integral_conj]
  calc
    _ = ∫ b, ∫ a, conj (f a) * (sliceKernel L β a b : ℂ) * f b
        ∂sliceHaar L ∂sliceHaar L :=
      integral_integral_swap (integrable_sliceQuadratic L β f)
    _ = _ := by
      apply integral_congr_ae
      refine ae_of_all _ (fun a => ?_)
      apply integral_congr_ae
      refine ae_of_all _ (fun b => ?_)
      rw [K_symm L β b a]
      simp only [map_mul, starRingEnd_self_apply, Complex.conj_ofReal]
      ring

theorem sliceQuadratic_im_zero (β : ℝ) (f : C(Slice L SU2, ℂ)) :
    (sliceQuadratic L β f).im = 0 :=
  Complex.conj_eq_iff_im.mp (sliceQuadratic_conj L β f).symm

/-- Beta=0 is the actual rank-one quadratic formula, with a large null space. -/
theorem sliceQuadratic_zero (f : C(Slice L SU2, ℂ)) :
    sliceQuadratic L 0 f = (‖∫ a, f a ∂sliceHaar L‖ ^ 2 : ℝ) := by
  unfold sliceQuadratic
  simp only [K_zero, Complex.ofReal_one, mul_one]
  simp_rw [integral_const_mul]
  rw [integral_mul_const, integral_conj, mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq]

end GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeQuadratic
