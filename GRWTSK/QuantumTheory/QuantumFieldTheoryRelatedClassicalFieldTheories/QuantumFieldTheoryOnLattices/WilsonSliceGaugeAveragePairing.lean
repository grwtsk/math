/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib L2, linear-isometry and Fubini theory retain their upstream authorship
and Apache-2.0 license. Other imports retain attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGaugeAverage
import Mathlib.Analysis.InnerProductSpace.LinearMap

/-!
# Gauge averaging preserves pairing with the actual invariant L2 population

The mixed integral has the explicit integrable majorant norm(f)_infty*|h(a)|.
Each fixed-g pairing is paid by the actual composition linear isometry and
the defining fixed-space equality for h. Only after Fubini is the gauge
integral returned by its actual probability mass. No common AE invariant
representative of h over an uncountable gauge family is assumed.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeAveragePairing

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeAverage

variable (L : ℕ) [NeZero L]

theorem inner_toLp (h : RealSliceL2 L) (f : C(Slice L SU2, ℝ)) :
    inner ℝ h (ContinuousMap.toLp 2 (sliceHaar L) ℝ f) = ∫ a, h a * f a ∂sliceHaar L := by
  rw [L2.inner_def]
  apply integral_congr_ae
  filter_upwards [ContinuousMap.coeFn_toLp (sliceHaar L) f (p := 2) (𝕜 := ℝ)] with a ha
  rw [Real.inner_apply, ha]

theorem mixed_average_norm_le (h : RealSliceL2 L) (f : C(Slice L SU2, ℝ))
    (a : Slice L SU2) (g : SliceGauge L SU2) :
    ‖h a * f (sliceGaugeAction g a)‖ ≤ ‖f‖ * ‖h a‖ := by
  rw [norm_mul, mul_comm ‖f‖]
  exact mul_le_mul_of_nonneg_left (f.norm_coe_le_norm _) (norm_nonneg (h a))

theorem integrable_average_majorant (h : RealSliceL2 L) (f : C(Slice L SU2, ℝ)) :
    Integrable (fun p : Slice L SU2 × SliceGauge L SU2 => ‖f‖ * ‖h p.1‖)
      ((sliceHaar L).prod (sliceGaugeHaar L)) :=
  (((integrable_L2 L h).comp_fst (sliceGaugeHaar L)).norm).const_mul ‖f‖

/-- Actual full product integrability for every real L2 h, prior to a Fubini swap. -/
theorem integrable_mixed_average (h : RealSliceL2 L) (f : C(Slice L SU2, ℝ)) :
    Integrable (fun p : Slice L SU2 × SliceGauge L SU2 => h p.1 * f (sliceGaugeAction p.2 p.1))
      ((sliceHaar L).prod (sliceGaugeHaar L)) :=
  (integrable_average_majorant L h f).mono'
    (((Lp.aestronglyMeasurable h).comp_fst).mul
      (continuous_gaugeObservable L f).aestronglyMeasurable)
    (ae_of_all _ (fun p => mixed_average_norm_le L h f p.1 p.2))

/-- One fixed gauge: use the proved actual isometry, not pointwise invariance of h. -/
theorem inner_gaugePullback (h : RealSliceL2 L) (hh : h ∈ gaugeInvariantSpace L)
    (g : SliceGauge L SU2) (f : C(Slice L SU2, ℝ)) :
    inner ℝ h (ContinuousMap.toLp 2 (sliceHaar L) ℝ (gaugePullback L g f)) =
      inner ℝ h (ContinuousMap.toLp 2 (sliceHaar L) ℝ f) := by
  rw [← gaugeComposition_toLp L g f]
  have he := (gaugeComposition L g).inner_map_map h (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)
  rw [hh g] at he
  exact he

theorem fixedGauge_integral_pairing (h : RealSliceL2 L) (hh : h ∈ gaugeInvariantSpace L)
    (g : SliceGauge L SU2) (f : C(Slice L SU2, ℝ)) :
    (∫ a, h a * f (sliceGaugeAction g a) ∂sliceHaar L) =
      inner ℝ h (ContinuousMap.toLp 2 (sliceHaar L) ℝ f) := by
  calc
    _ = inner ℝ h (ContinuousMap.toLp 2 (sliceHaar L) ℝ (gaugePullback L g f)) :=
      (inner_toLp L h (gaugePullback L g f)).symm
    _ = _ := inner_gaugePullback L h hh g f

/-- The actual averaging/pairing identity consumed by invariant-continuous density. -/
theorem inner_average (h : RealSliceL2 L) (hh : h ∈ gaugeInvariantSpace L)
    (f : C(Slice L SU2, ℝ)) :
    inner ℝ h (ContinuousMap.toLp 2 (sliceHaar L) ℝ (average L f)) =
      inner ℝ h (ContinuousMap.toLp 2 (sliceHaar L) ℝ f) := by
  calc
    _ = ∫ a, h a * (∫ g, f (sliceGaugeAction g a) ∂sliceGaugeHaar L) ∂sliceHaar L :=
      inner_toLp L h (average L f)
    _ = ∫ a, ∫ g, h a * f (sliceGaugeAction g a) ∂sliceGaugeHaar L ∂sliceHaar L := by
      simp only [integral_const_mul]
    _ = ∫ g, ∫ a, h a * f (sliceGaugeAction g a) ∂sliceHaar L ∂sliceGaugeHaar L :=
      integral_integral_swap (integrable_mixed_average L h f)
    _ = ∫ _g : SliceGauge L SU2, inner ℝ h (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)
        ∂sliceGaugeHaar L := by
      apply integral_congr_ae
      exact ae_of_all _ (fun g => fixedGauge_integral_pairing L h hh g f)
    _ = _ := by rw [integral_const, probReal_univ, one_smul]

end GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeAveragePairing
