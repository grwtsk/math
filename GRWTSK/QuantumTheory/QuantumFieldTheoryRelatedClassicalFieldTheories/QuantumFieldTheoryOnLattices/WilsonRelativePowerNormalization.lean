/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonRelativeKernelPowers
import GRWTSK.MeasureAndIntegration.TwoDensityCovarianceBound

/-!
# Actual Wilson relative powers preserve both normalization directions

The consumer is TwoDensityCovarianceBound.covariance_bound, whose four row and
column hypotheses are now supplied for the two positive arcs. Centered observable
bounds and the exact normalized finite-loop transport remain separate bridges.
Index m denotes length m+1; no zero-length continuous identity is assumed.
SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay, transitive axiom audit
and expected-interface checks NOT_RUN. No physical or regulator-uniform gap.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonRelativePowerNormalization
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
open GRWTSK.Geometry.GaugeTheory.WilsonPartitionDiagonal
open GRWTSK.Analysis.Integration.ContinuousKernelComposition
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
variable (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)

open GRWTSK.Geometry.GaugeTheory.WilsonRelativeKernelPowers
variable (hn : ‖f‖ = 1)
variable (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
local instance stationary_probability_instance : IsProbabilityMeasure (stationaryMeasure L β hβ f) :=
  stationary_probability L β hβ f hn he
include hf hne hn he

local notation "π" => stationaryMeasure L β hβ f
local notation "Q" => relativeContinuous L β hβ f hf hne

theorem one_step_row (x : Slice L SU2) : (∫ y, Q (x,y) ∂π) = 1 := by
  exact relative_row_integral L β hβ f hf hne he x

theorem one_step_column (y : Slice L SU2) : (∫ x, Q (x,y) ∂π) = 1 := by
  calc
    _ = ∫ x, relativeKernel L β hβ f y x ∂π := by
      apply integral_congr_ae
      exact ae_of_all _ (fun x => relativeKernel_symm L β hβ f x y)
    _ = 1 := relative_row_integral L β hβ f hf hne he y

/-- Row normalization by continuous product integrability and actual Fubini. -/
theorem positive_power_row (m : ℕ) (x : Slice L SU2) :
    (∫ y, positivePower π Q m (x,y) ∂π) = 1 := by
  induction m generalizing x with
  | zero => exact one_step_row L β hβ f hf hne hn he x
  | succ m ih =>
    let A : C(Slice L SU2 × Slice L SU2, ℝ) :=
      ⟨fun p => Q (x,p.2) * positivePower π Q m (p.2,p.1),
        (Q.continuous.comp (continuous_const.prodMk continuous_snd)).mul
          ((positivePower π Q m).continuous.comp continuous_swap)⟩
    have hi : Integrable A (π.prod π) :=
      A.continuous.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
    simp_rw [positivePower_succ_apply]
    rw [integral_integral_swap hi]
    simp_rw [integral_const_mul, ih, mul_one]
    exact one_step_row L β hβ f hf hne hn he x

/-- Column normalization uses the same convolution order, not a transposed substitute. -/
theorem positive_power_column (m : ℕ) (y : Slice L SU2) :
    (∫ x, positivePower π Q m (x,y) ∂π) = 1 := by
  induction m with
  | zero => exact one_step_column L β hβ f hf hne hn he y
  | succ m ih =>
    let A : C(Slice L SU2 × Slice L SU2, ℝ) :=
      ⟨fun p => Q p * positivePower π Q m (p.2,y),
        Q.continuous.mul ((positivePower π Q m).continuous.comp
          (continuous_snd.prodMk continuous_const))⟩
    have hi : Integrable A (π.prod π) :=
      A.continuous.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
    simp_rw [positivePower_succ_apply]
    rw [integral_integral_swap hi]
    simp_rw [integral_mul_const, one_step_column L β hβ f hf hne hn he, one_mul]
    exact ih

/-- Literal Wilson quotient powers inherit normalization through the proved source bridge. -/
theorem quotient_power_row (m : ℕ) (x : Slice L SU2) :
    (∫ y, quotientPower L β hβ f hf hne m (x,y) ∂π) = 1 := by
  rw [← relative_positivePower L β hβ f hf hne hn he m]
  exact positive_power_row L β hβ f hf hne hn he m x

theorem quotient_power_column (m : ℕ) (y : Slice L SU2) :
    (∫ x, quotientPower L β hβ f hf hne m (x,y) ∂π) = 1 := by
  rw [← relative_positivePower L β hβ f hf hne hn he m]
  exact positive_power_column L β hβ f hf hne hn he m y

end GRWTSK.Geometry.GaugeTheory.WilsonRelativePowerNormalization
