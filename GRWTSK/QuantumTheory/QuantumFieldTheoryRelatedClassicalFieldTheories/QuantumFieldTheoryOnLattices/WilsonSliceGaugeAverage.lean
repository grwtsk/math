/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Haar/product and compact parametric integration retain their public
upstream authorship and Apache-2.0 license. Imports retain attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGaugeHilbert

/-!
# Actual continuous gauge averaging on the maintained spatial slice

P f(a)=integral_g f(g.a) dg uses the actual normalized product gauge Haar.
Compact joint continuity supplies the integrals. Right gauge-Haar translation
pays pointwise invariance, using the actual action order g.(k.a)=(g*k).a.
No invariant projection or density certificate is assumed.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeAverage

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelSymmetry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeQuadratic
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert

variable (L : ℕ) [NeZero L]

def gaugePullback (g : SliceGauge L SU2) (f : C(Slice L SU2, ℝ)) : C(Slice L SU2, ℝ) :=
  ⟨fun a => f (sliceGaugeAction g a),
    f.continuous.comp ((continuous_sliceGaugeAction L).comp
      (continuous_const.prodMk continuous_id))⟩

theorem continuous_gaugeObservable (f : C(Slice L SU2, ℝ)) :
    Continuous (fun p : Slice L SU2 × SliceGauge L SU2 => f (sliceGaugeAction p.2 p.1)) :=
  f.continuous.comp ((continuous_sliceGaugeAction L).comp
    (continuous_snd.prodMk continuous_fst))

theorem integrable_gaugeObservable (f : C(Slice L SU2, ℝ)) :
    Integrable (fun p : Slice L SU2 × SliceGauge L SU2 => f (sliceGaugeAction p.2 p.1))
      ((sliceHaar L).prod (sliceGaugeHaar L)) :=
  (continuous_gaugeObservable L f).integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

theorem integrable_gaugeRow (f : C(Slice L SU2, ℝ)) (a : Slice L SU2) :
    Integrable (fun g => f (sliceGaugeAction g a)) (sliceGaugeHaar L) :=
  ((continuous_gaugeObservable L f).comp
    (continuous_const.prodMk continuous_id)).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)

theorem continuous_average (f : C(Slice L SU2, ℝ)) :
    Continuous (fun a => ∫ g, f (sliceGaugeAction g a) ∂sliceGaugeHaar L) := by
  have h := continuous_parametric_integral_of_continuous
    (μ := sliceGaugeHaar L) (continuous_gaugeObservable L f)
    (isCompact_univ : IsCompact (Set.univ : Set (SliceGauge L SU2)))
  simpa only [Measure.restrict_univ] using h

def average (f : C(Slice L SU2, ℝ)) : C(Slice L SU2, ℝ) :=
  ⟨fun a => ∫ g, f (sliceGaugeAction g a) ∂sliceGaugeHaar L, continuous_average L f⟩

/-- The action order requires RIGHT translation of the actual gauge variable. -/
theorem average_gauge (f : C(Slice L SU2, ℝ)) (k : SliceGauge L SU2) (a : Slice L SU2) :
    average L f (sliceGaugeAction k a) = average L f a := by
  calc
    _ = ∫ g, f (sliceGaugeAction (g * k) a) ∂sliceGaugeHaar L := by
      apply integral_congr_ae
      exact ae_of_all _ (fun g => by rw [sliceGauge_mul])
    _ = _ := by
      have h := (measurePreserving_gaugeTranslate L 1 k).integral_comp
        (gaugeTranslateHomeomorph L 1 k).measurableEmbedding
        (fun g => f (sliceGaugeAction g a))
      simpa only [gaugeTranslateHomeomorph, one_mul, average] using h

theorem average_fixed (f : C(Slice L SU2, ℝ))
    (hf : ∀ (g : SliceGauge L SU2) a, f (sliceGaugeAction g a) = f a) : average L f = f := by
  ext a
  change (∫ g, f (sliceGaugeAction g a) ∂sliceGaugeHaar L) = f a
  exact integral_eq_const (ae_of_all _ (fun g => hf g a))

theorem average_idempotent (f : C(Slice L SU2, ℝ)) : average L (average L f) = average L f :=
  average_fixed L (average L f) (average_gauge L f)

theorem norm_average_apply_le (f : C(Slice L SU2, ℝ)) (a : Slice L SU2) :
    ‖average L f a‖ ≤ ‖f‖ := by
  have h := norm_integral_le_of_norm_le_const
    (μ := sliceGaugeHaar L) (ae_of_all _ (fun g => f.norm_coe_le_norm (sliceGaugeAction g a)))
  simpa only [probReal_univ, mul_one] using h

theorem norm_average_le (f : C(Slice L SU2, ℝ)) : ‖average L f‖ ≤ ‖f‖ :=
  (ContinuousMap.norm_le _ (norm_nonneg f)).mpr (norm_average_apply_le L f)

def averageLinearMap : C(Slice L SU2, ℝ) →ₗ[ℝ] C(Slice L SU2, ℝ) where
  toFun := average L
  map_add' f h := by
    ext a
    change (∫ g, f (sliceGaugeAction g a) + h (sliceGaugeAction g a) ∂sliceGaugeHaar L) = _
    exact integral_add (integrable_gaugeRow L f a) (integrable_gaugeRow L h a)
  map_smul' r f := by
    ext a
    change (∫ g, r * f (sliceGaugeAction g a) ∂sliceGaugeHaar L) = _
    exact integral_const_mul r _

def averageCLM : C(Slice L SU2, ℝ) →L[ℝ] C(Slice L SU2, ℝ) :=
  (averageLinearMap L).mkContinuous 1 (fun f => by
    simpa only [one_mul] using norm_average_le L f)

/-- The actual L2 composition isometry agrees with the actual continuous pullback. -/
theorem gaugeComposition_toLp (g : SliceGauge L SU2) (f : C(Slice L SU2, ℝ)) :
    gaugeComposition L g (ContinuousMap.toLp 2 (sliceHaar L) ℝ f) =
      ContinuousMap.toLp 2 (sliceHaar L) ℝ (gaugePullback L g f) := by
  apply Lp.ext
  have hf := ContinuousMap.coeFn_toLp (sliceHaar L) f (p := 2) (𝕜 := ℝ)
  have hp := (measurePreserving_sliceGauge L g).quasiMeasurePreserving.ae_eq_comp hf
  filter_upwards [gaugeComposition_apply_ae L g (ContinuousMap.toLp 2 (sliceHaar L) ℝ f),
    hp, ContinuousMap.coeFn_toLp (sliceHaar L) (gaugePullback L g f) (p := 2) (𝕜 := ℝ)]
      with a hc ha hb
  rw [hc, ha, hb]

end GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeAverage
