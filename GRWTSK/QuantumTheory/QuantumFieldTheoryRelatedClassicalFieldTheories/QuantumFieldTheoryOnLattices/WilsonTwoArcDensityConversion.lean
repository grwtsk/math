/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonRelativeKernelPowers

/-!
# Actual two-arc stationary density conversion

Both endpoint densities and both directed arc powers are retained until exact
cancellation. This identity does not set the relative loop normalizer to one.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, axioms and interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonTwoArcDensityConversion
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonPartitionDiagonal
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
open GRWTSK.Geometry.GaugeTheory.WilsonRelativeKernelPowers
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
variable (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)

/-- Literal conversion under the actual finite square-density measure. -/
theorem stationary_integral (g : Slice L SU2 → ℝ) :
    (∫ x, g x ∂stationaryMeasure L β hβ f) =
      ∫ x, stationaryDensity L β hβ f x * g x ∂sliceHaar L := by
  rw [stationaryMeasure, integral_withDensity_eq_integral_toReal_smul
    (density_continuous L β hβ f).measurable.ennreal_ofReal
    (ae_of_all _ (fun _ => ENNReal.ofReal_lt_top))]
  apply integral_congr_ae
  exact ae_of_all _ (fun x => by rw [ENNReal.toReal_ofReal (sq_nonneg _), smul_eq_mul])

/-- Each endpoint density is converted separately, in the original nested order. -/
theorem stationary_double_integral (G : Slice L SU2 → Slice L SU2 → ℝ) :
    (∫ x, ∫ y, G x y ∂stationaryMeasure L β hβ f ∂stationaryMeasure L β hβ f) =
      ∫ x, ∫ y, stationaryDensity L β hβ f x *
        (stationaryDensity L β hβ f y * G x y) ∂sliceHaar L ∂sliceHaar L := by
  rw [stationary_integral]
  simp_rw [stationary_integral, integral_const_mul]

variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)

/-- The endpoint densities cancel both directed quotient denominators exactly. -/
theorem two_density_cancel (p q : ℕ) (F : C(Slice L SU2 × Slice L SU2, ℝ))
    (x y : Slice L SU2) :
    stationaryDensity L β hβ f x * (stationaryDensity L β hβ f y *
      (F (x,y) * quotientPower L β hβ f hf hne p (x,y) *
        quotientPower L β hβ f hf hne q (y,x))) =
    (F (x,y) * positivePower (sliceHaar L) (actualKernel L β) p (x,y) *
      positivePower (sliceHaar L) (actualKernel L β) q (y,x)) /
        (lambda0 L β hβ.le)^(p+q+2) := by
  have hx := (principalRepresentative_pos L β hβ f hf hne x).ne'
  have hy := (principalRepresentative_pos L β hβ f hf hne y).ne'
  have hl := (lambda0_pos L β hβ).ne'
  dsimp [stationaryDensity, quotientPower]
  rw [show p+q+2 = (p+1)+(q+1) by omega, pow_add]
  field_simp [hx, hy, hl]
  <;> ring

variable (hn : ‖f‖ = 1)
variable (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
local instance stationary_probability_instance : IsProbabilityMeasure (stationaryMeasure L β hβ f) :=
  stationary_probability L β hβ f hn he

/-- Actual positive stationary arc powers, integrated with both actual density factors. -/
theorem two_arc_density_integral (p q : ℕ) (F : C(Slice L SU2 × Slice L SU2, ℝ)) :
    (∫ x, ∫ y, F (x,y) *
      positivePower (stationaryMeasure L β hβ f) (relativeContinuous L β hβ f hf hne) p (x,y) *
      positivePower (stationaryMeasure L β hβ f) (relativeContinuous L β hβ f hf hne) q (y,x)
      ∂stationaryMeasure L β hβ f ∂stationaryMeasure L β hβ f) =
    (∫ x, ∫ y, F (x,y) * positivePower (sliceHaar L) (actualKernel L β) p (x,y) *
      positivePower (sliceHaar L) (actualKernel L β) q (y,x)
      ∂sliceHaar L ∂sliceHaar L) / (lambda0 L β hβ.le)^(p+q+2) := by
  rw [relative_positivePower L β hβ f hf hne hn he p,
    relative_positivePower L β hβ f hf hne hn he q, stationary_double_integral]
  simp_rw [two_density_cancel L β hβ f hf hne p q F, integral_div]

end GRWTSK.Geometry.GaugeTheory.WilsonTwoArcDensityConversion
