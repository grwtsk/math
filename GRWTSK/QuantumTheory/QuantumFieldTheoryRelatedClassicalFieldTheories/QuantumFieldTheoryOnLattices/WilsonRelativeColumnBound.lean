/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonStationaryIterateMean

/-!
# Pointwise relative Wilson kernel-power bound at a fixed regulator

The initial constant is the norm of the actual continuous relative kernel.
Both it and the contraction factor depend on the regulator. SOURCE_PROOF_CANDIDATE;
compile, fresh replay, transitive axioms and interfaces NOT_RUN. No finite-loop
replacement, physical uniformity or continuum mass gap is asserted.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonRelativeColumnBound
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
open GRWTSK.Geometry.GaugeTheory.WilsonRelativeKernelPowers
open GRWTSK.Geometry.GaugeTheory.WilsonRowOscillation
open GRWTSK.Geometry.GaugeTheory.WilsonIteratedOscillation
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryIterateMean
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
variable (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)

def column (y : Slice L SU2) : Obs L :=
  ⟨fun x => relativeContinuous L β hβ f hf hne (x,y),
    (relativeContinuous L β hβ f hf hne).continuous.comp (continuous_id.prodMk continuous_const)⟩

def initialBound : ℝ := ‖relativeContinuous L β hβ f hf hne‖

theorem column_nonnegative (x y : Slice L SU2) : 0 ≤ column L β hβ f hf hne y x := by
  change 0 ≤ relativeKernel L β hβ f x y
  unfold relativeKernel
  exact div_nonneg (K_pos L β hβ.le x y).le
    (mul_pos (mul_pos (lambda0_pos L β hβ)
      (principalRepresentative_pos L β hβ f hf hne x))
      (principalRepresentative_pos L β hβ f hf hne y)).le

theorem column_le_bound (x y : Slice L SU2) :
    column L β hβ f hf hne y x ≤ initialBound L β hβ f hf hne :=
  (le_abs_self _).trans ((relativeContinuous L β hβ f hf hne).norm_coe_le_norm (x,y))

theorem column_oscillation (y : Slice L SU2) :
    oscillation L (column L β hβ f hf hne y) ≤ initialBound L β hβ f hf hne := by
  have hl := column_nonnegative L β hβ f hf hne
    (minPoint L (column L β hβ f hf hne y)) y
  have hu := column_le_bound L β hβ f hf hne
    (maxPoint L (column L β hβ f hf hne y)) y
  unfold oscillation lower upper
  linarith

variable (hn : ‖f‖ = 1)
variable (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
local instance stationary_probability_instance : IsProbabilityMeasure (stationaryMeasure L β hβ f) :=
  stationary_probability L β hβ f hn he

theorem column_mean (y : Slice L SU2) :
    (∫ x, column L β hβ f hf hne y x ∂stationaryMeasure L β hβ f) = 1 := by
  calc
    _ = ∫ x, relativeKernel L β hβ f y x ∂stationaryMeasure L β hβ f := by
      apply integral_congr_ae
      exact ae_of_all _ (fun x => relativeKernel_symm L β hβ f x y)
    _ = 1 := relative_row_integral L β hβ f hf hne he y

theorem iterate_column (m : ℕ) (x y : Slice L SU2) :
    rowIterate L β hβ f hf hne hn he m (column L β hβ f hf hne y) x =
      positivePower (stationaryMeasure L β hβ f) (relativeContinuous L β hβ f hf hne) m (x,y) := by
  induction m generalizing x with
  | zero => rfl
  | succ m ih =>
    rw [rowIterate_succ, evolve_eq_relative, positivePower_succ_apply]
    apply integral_congr_ae
    exact ae_of_all _ (fun z => congrArg (fun t : ℝ => relativeKernel L β hβ f x z * t) (ih z))

/-- Source candidate for every positive-length relative kernel, uniformly in both endpoints. -/
theorem relative_power_bound (m : ℕ) (x y : Slice L SU2) :
    |positivePower (stationaryMeasure L β hβ f) (relativeContinuous L β hβ f hf hne) m (x,y) - 1| ≤
      initialBound L β hβ f hf hne * (theta L β)^m := by
  have hc := centered_rowIterate L β hβ f hf hne hn he m (column L β hβ f hf hne y) x
  rw [iterate_column, column_mean] at hc
  calc
    _ ≤ (theta L β)^m * oscillation L (column L β hβ f hf hne y) := hc
    _ ≤ (theta L β)^m * initialBound L β hβ f hf hne :=
      mul_le_mul_of_nonneg_left (column_oscillation L β hβ f hf hne y)
        (pow_nonneg (theta_nonneg L β hβ.le) _)
    _ = _ := mul_comm _ _

/-- The same estimate concerns the quotient of the actual original Wilson kernel power. -/
theorem quotient_power_bound (m : ℕ) (x y : Slice L SU2) :
    |quotientPower L β hβ f hf hne m (x,y) - 1| ≤
      initialBound L β hβ f hf hne * (theta L β)^m := by
  rw [← relative_positivePower L β hβ f hf hne hn he m]
  exact relative_power_bound L β hβ f hf hne hn he m x y

end GRWTSK.Geometry.GaugeTheory.WilsonRelativeColumnBound
