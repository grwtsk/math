/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonRelativeKernelPowers
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceRowDifference
import Mathlib.Topology.Order.Compact

/-!
# Actual continuous Wilson row evolution and one-step oscillation

The row map is built through the maintained continuous kernel L2 map and
actual stationary probability. Compact extrema are attained on the actual
nonempty slice. SOURCE_PROOF_CANDIDATE; compile, fresh replay, axioms and
interfaces NOT_RUN. Iterated decay and finite-loop estimates remain separate.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonRowOscillation
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGroundStateRows
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
open GRWTSK.Geometry.GaugeTheory.WilsonRelativeKernelPowers
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRowDifference
open GRWTSK.Analysis.Integration.ContinuousKernelL2Bound
variable (L : ℕ) [NeZero L]

abbrev Obs := C(Slice L SU2, ℝ)

def minPoint (h : Obs L) : Slice L SU2 :=
  Classical.choose (isCompact_univ.exists_isMinOn Set.univ_nonempty h.continuous.continuousOn)

def maxPoint (h : Obs L) : Slice L SU2 :=
  Classical.choose (isCompact_univ.exists_isMaxOn Set.univ_nonempty h.continuous.continuousOn)

def lower (h : Obs L) : ℝ := h (minPoint L h)
def upper (h : Obs L) : ℝ := h (maxPoint L h)
def oscillation (h : Obs L) : ℝ := upper L h - lower L h

theorem lower_le (h : Obs L) (a : Slice L SU2) : lower L h ≤ h a :=
  (Classical.choose_spec (isCompact_univ.exists_isMinOn Set.univ_nonempty
    h.continuous.continuousOn)).2 (Set.mem_univ a)

theorem le_upper (h : Obs L) (a : Slice L SU2) : h a ≤ upper L h :=
  (Classical.choose_spec (isCompact_univ.exists_isMaxOn Set.univ_nonempty
    h.continuous.continuousOn)).2 (Set.mem_univ a)

theorem oscillation_nonneg (h : Obs L) : 0 ≤ oscillation L h :=
  sub_nonneg.mpr (lower_le L h (maxPoint L h))

variable (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
variable (hn : ‖f‖ = 1)
variable (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
local instance stationary_probability_instance : IsProbabilityMeasure (stationaryMeasure L β hβ f) :=
  stationary_probability L β hβ f hn he

/-- Actual maintained kernel map composed with the actual continuous-input embedding. -/
def evolve (h : Obs L) : Obs L :=
  toContinuous (stationaryMeasure L β hβ f) (relativeContinuous L β hβ f hf hne)
    (ContinuousMap.toLp 2 (stationaryMeasure L β hβ f) ℝ h)

theorem evolve_eq_row (h : Obs L) (a : Slice L SU2) :
    evolve L β hβ f hf hne hn he h a = ∫ b, rowDensity L β hβ f a b * h b ∂sliceHaar L := by
  change (∫ b, relativeKernel L β hβ f a b *
    (ContinuousMap.toLp 2 (stationaryMeasure L β hβ f) ℝ h) b
    ∂stationaryMeasure L β hβ f) = _
  calc
    _ = ∫ b, relativeKernel L β hβ f a b * h b ∂stationaryMeasure L β hβ f := by
      apply integral_congr_ae
      filter_upwards [ContinuousMap.coeFn_toLp (stationaryMeasure L β hβ f) h
        (p := 2) (𝕜 := ℝ)] with b hb
      rw [hb]
    _ = _ := by
      rw [stationaryMeasure, integral_withDensity_eq_integral_toReal_smul
        (density_continuous L β hβ f).measurable.ennreal_ofReal
        (ae_of_all _ (fun _ => ENNReal.ofReal_lt_top))]
      apply integral_congr_ae
      refine ae_of_all _ (fun b => ?_)
      rw [ENNReal.toReal_ofReal (sq_nonneg _), smul_eq_mul]
      have hh := relative_times_density L β hβ f hf hne a b
      calc
        _ = (relativeKernel L β hβ f a b * stationaryDensity L β hβ f b) * h b := by ring
        _ = _ := by rw [hh]

/-- Compact extrema turn the actual row-difference theorem into oscillation contraction. -/
theorem oscillation_evolve (h : Obs L) :
    oscillation L (evolve L β hβ f hf hne hn he h) ≤
      (1 - Real.exp (-12 * β * (L : ℝ)^3)) * oscillation L h := by
  unfold oscillation upper lower
  rw [evolve_eq_row, evolve_eq_row]
  exact row_difference_bound L β hβ f hf hne he h
    (lower L h) (upper L h) (lower_le L h) (le_upper L h)
    (maxPoint L (evolve L β hβ f hf hne hn he h))
    (minPoint L (evolve L β hβ f hf hne hn he h))

end GRWTSK.Geometry.GaugeTheory.WilsonRowOscillation
