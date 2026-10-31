/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGroundStateRows
import Mathlib.MeasureTheory.Integral.Bochner.Basic

/-!
# Actual stationary density of the Wilson principal transform

The density measure uses the actual continuous representative squared.
Stationarity is stated as an actual density-integral equality. It does not
replace a finite periodic Wilson law by its ground-state limit.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, axioms and interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelSymmetry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualKernel
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGroundStateRows
variable (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)

def stationaryDensity (a : Slice L SU2) : ℝ := (principalRepresentative L β hβ f a)^2

def stationaryMeasure : Measure (Slice L SU2) :=
  (sliceHaar L).withDensity (fun a => ENNReal.ofReal (stationaryDensity L β hβ f a))

theorem density_continuous : Continuous (stationaryDensity L β hβ f) :=
  (principalRepresentative L β hβ f).continuous.pow 2

theorem density_integrable : Integrable (stationaryDensity L β hβ f) (sliceHaar L) :=
  (density_continuous L β hβ f).integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)

theorem stationary_probability (hn : ‖f‖ = 1)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    IsProbabilityMeasure (stationaryMeasure L β hβ f) := by
  constructor
  rw [stationaryMeasure, Measure.withDensity_apply _ MeasurableSet.univ]
  simp only [Measure.restrict_univ]
  rw [← ofReal_integral_eq_lintegral_ofReal (density_integrable L β hβ f)
    (ae_of_all _ (fun a => sq_nonneg _))]
  rw [show (∫ a, stationaryDensity L β hβ f a ∂sliceHaar L) = 1 from
    principal_square_integral L β hβ f hn he]
  simp

def relativeKernel (a b : Slice L SU2) : ℝ :=
  sliceKernel L β a b /
    (lambda0 L β hβ.le * principalRepresentative L β hβ f a * principalRepresentative L β hβ f b)

theorem relativeKernel_symm (a b : Slice L SU2) :
    relativeKernel L β hβ f a b = relativeKernel L β hβ f b a := by
  unfold relativeKernel
  rw [K_symm L β a b]
  congr 1
  ring

variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)

theorem relative_times_density (a b : Slice L SU2) :
    relativeKernel L β hβ f a b * stationaryDensity L β hβ f b = rowDensity L β hβ f a b := by
  have ha := (principalRepresentative_pos L β hβ f hf hne a).ne'
  have hb := (principalRepresentative_pos L β hβ f hf hne b).ne'
  have hl := (lambda0_pos L β hβ).ne'
  unfold relativeKernel stationaryDensity rowDensity
  field_simp
  <;> ring

theorem relative_row_integral
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) (a : Slice L SU2) :
    (∫ b, relativeKernel L β hβ f a b ∂stationaryMeasure L β hβ f) = 1 := by
  rw [stationaryMeasure, integral_withDensity_eq_integral_toReal_smul
    (density_continuous L β hβ f).measurable.ennreal_ofReal
    (ae_of_all _ (fun _ => ENNReal.ofReal_lt_top))]
  calc
    _ = ∫ b, rowDensity L β hβ f a b ∂sliceHaar L := by
      apply integral_congr_ae
      refine ae_of_all _ (fun b => ?_)
      rw [ENNReal.toReal_ofReal (sq_nonneg _), smul_eq_mul, mul_comm]
      exact relative_times_density L β hβ f hf hne a b
    _ = 1 := rowDensity_integral L β hβ f hf hne he a

/-- Pointwise detailed balance under the actual square density. -/
theorem detailed_balance (a b : Slice L SU2) :
    stationaryDensity L β hβ f a * rowDensity L β hβ f a b =
      stationaryDensity L β hβ f b * rowDensity L β hβ f b a := by
  rw [← relative_times_density L β hβ f hf hne a b,
    ← relative_times_density L β hβ f hf hne b a, relativeKernel_symm L β hβ f a b]
  ring

/-- Actual stationarity as a density integral, with the full eigenvector premise. -/
theorem stationary_density_integral
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) (b : Slice L SU2) :
    (∫ a, stationaryDensity L β hβ f a * rowDensity L β hβ f a b ∂sliceHaar L) =
      stationaryDensity L β hβ f b := by
  calc
    _ = ∫ a, stationaryDensity L β hβ f b * rowDensity L β hβ f b a ∂sliceHaar L := by
      apply integral_congr_ae
      exact ae_of_all _ (fun a => detailed_balance L β hβ f hf hne a b)
    _ = _ := by rw [integral_const_mul, rowDensity_integral L β hβ f hf hne he b, mul_one]

end GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
