/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonIteratedOscillation

/-!
# Stationary means and centered actual Wilson row iterates

Fubini is justified by the compact continuous relative kernel and observable.
The actual stationary probability is retained throughout. SOURCE_PROOF_CANDIDATE;
compile, fresh replay, transitive axioms and interfaces NOT_RUN. No finite-loop
covariance or physical continuum gap is asserted.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonStationaryIterateMean
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
open GRWTSK.Geometry.GaugeTheory.WilsonRelativeKernelPowers
open GRWTSK.Geometry.GaugeTheory.WilsonRowOscillation
open GRWTSK.Geometry.GaugeTheory.WilsonIteratedOscillation
variable (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)
variable (hn : ‖f‖ = 1)
variable (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
local instance stationary_probability_instance : IsProbabilityMeasure (stationaryMeasure L β hβ f) :=
  stationary_probability L β hβ f hn he

theorem evolve_eq_relative (h : Obs L) (a : Slice L SU2) :
    evolve L β hβ f hf hne hn he h a =
      ∫ b, relativeKernel L β hβ f a b * h b ∂stationaryMeasure L β hβ f := by
  change (∫ b, relativeKernel L β hβ f a b *
    (ContinuousMap.toLp 2 (stationaryMeasure L β hβ f) ℝ h) b
      ∂stationaryMeasure L β hβ f) = _
  apply integral_congr_ae
  filter_upwards [ContinuousMap.coeFn_toLp (stationaryMeasure L β hβ f) h
    (p := 2) (𝕜 := ℝ)] with b hb
  rw [hb]

/-- The actual row map preserves the actual stationary mean. -/
theorem mean_evolve (h : Obs L) :
    (∫ a, evolve L β hβ f hf hne hn he h a ∂stationaryMeasure L β hβ f) =
      ∫ a, h a ∂stationaryMeasure L β hβ f := by
  simp_rw [evolve_eq_relative]
  have hc : Continuous (fun p : Slice L SU2 × Slice L SU2 =>
      relativeKernel L β hβ f p.1 p.2 * h p.2) :=
    (relativeContinuous L β hβ f hf hne).continuous.mul (h.continuous.comp continuous_snd)
  rw [integral_integral_swap (hc.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _))]
  apply integral_congr_ae
  refine ae_of_all _ (fun b => ?_)
  simp_rw [relativeKernel_symm L β hβ f _ b]
  rw [integral_mul_const, relative_row_integral L β hβ f hf hne he b, one_mul]

theorem mean_rowIterate (m : ℕ) (h : Obs L) :
    (∫ a, rowIterate L β hβ f hf hne hn he m h a ∂stationaryMeasure L β hβ f) =
      ∫ a, h a ∂stationaryMeasure L β hβ f := by
  induction m with
  | zero => rfl
  | succ m ih => rw [rowIterate_succ, mean_evolve, ih]

/-- Probability, not an assumed centering condition, places the mean between extrema. -/
theorem mean_bounds (h : Obs L) :
    lower L h ≤ (∫ a, h a ∂stationaryMeasure L β hβ f) ∧
      (∫ a, h a ∂stationaryMeasure L β hβ f) ≤ upper L h := by
  have hi := h.continuous.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
  constructor
  · have hh := integral_mono (integrable_const (lower L h)) hi (lower_le L h)
    simpa using hh
  · have hh := integral_mono hi (integrable_const (upper L h)) (le_upper L h)
    simpa using hh

/-- Centered pointwise bound for the actual iterates of each continuous observable. -/
theorem centered_rowIterate (m : ℕ) (h : Obs L) (a : Slice L SU2) :
    |rowIterate L β hβ f hf hne hn he m h a -
      (∫ b, h b ∂stationaryMeasure L β hβ f)| ≤ (theta L β)^m * oscillation L h := by
  let g := rowIterate L β hβ f hf hne hn he m h
  have hm := mean_bounds L β hβ f hn he g
  rw [mean_rowIterate L β hβ f hf hne hn he m h] at hm
  have hl := lower_le L g a
  have hu := le_upper L g a
  have hc : |g a - (∫ b, h b ∂stationaryMeasure L β hβ f)| ≤ oscillation L g := by
    rw [abs_le]
    unfold oscillation
    constructor <;> linarith [hm.1, hm.2]
  exact hc.trans (oscillation_rowIterate L β hβ f hf hne hn he m h)

end GRWTSK.Geometry.GaugeTheory.WilsonStationaryIterateMean
