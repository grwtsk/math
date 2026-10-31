/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSlicePrincipalRepresentativeBounds

/-!
# Pointwise rank-one minorization of the actual Wilson kernel

The actual probability-Haar L1<=L2 bound gives I<=1 for a unit nonnegative input.
The distinguished representative satisfies 0<=lambda*phi<=I<=1, so
lambda^2*phi(a)*phi(b)<=1. Actual K>=c then supplies
c*lambda^2*phi(a)*phi(b)<=K(a,b), with c=exp(-12 beta L^3).
For a principal input the same phi embeds as the actual original L2 vector.
Pointwise kernel order is not asserted to be quadratic positive-operator order.
No spectral-ratio, regulator-uniform physical gap or continuum theorem follows
here. SOURCE_PROOF_CANDIDATE; compilation, fresh replay, transitive axiom and
expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceRankOneMinorization
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
variable (L : ℕ) [NeZero L]

theorem unit_mass_le_one (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1) :
    (∫ a, (f : RealSliceL2 L) a ∂sliceHaar L) ≤ 1 := by
  calc
    _ ≤ ∫ a, ‖(f : RealSliceL2 L) a‖ ∂sliceHaar L := by
      apply integral_mono (integrable_L2 L f) (integrable_L2 L f).norm
      intro a
      exact le_abs_self _
    _ ≤ ‖(f : RealSliceL2 L)‖ := integral_norm_le_L2 L f
    _ = 1 := hn

theorem scaledRepresentative_bounds (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (a : Slice L SU2) :
    0 ≤ lambda0 L β hβ.le * principalRepresentative L β hβ f a ∧
      lambda0 L β hβ.le * principalRepresentative L β hβ f a ≤ 1 := by
  have hne : f ≠ 0 := by
    intro hz
    simpa [hz] using hn
  have hp := principalRepresentative_pos L β hβ f hf hne a
  have hu := (principalRepresentative_bounds L β hβ f hf a).2
  have hm := (le_div_iff₀ (lambda0_pos L β hβ)).mp hu
  refine ⟨mul_nonneg (lambda0_pos L β hβ).le hp.le, ?_⟩
  have hm' : lambda0 L β hβ.le * principalRepresentative L β hβ f a ≤
      ∫ b, (f : RealSliceL2 L) b ∂sliceHaar L := by
    simpa only [mul_comm] using hm
  exact hm'.trans (unit_mass_le_one L f hn)

theorem principal_product_le_one (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (a b : Slice L SU2) :
    (lambda0 L β hβ.le)^2 * principalRepresentative L β hβ f a *
      principalRepresentative L β hβ f b ≤ 1 := by
  have ha := scaledRepresentative_bounds L β hβ f hn hf a
  have hb := scaledRepresentative_bounds L β hβ f hn hf b
  have h := mul_le_mul ha.2 hb.2 hb.1 (by norm_num : (0 : ℝ) ≤ 1)
  calc
    _ = (lambda0 L β hβ.le * principalRepresentative L β hβ f a) *
        (lambda0 L β hβ.le * principalRepresentative L β hβ f b) := by ring
    _ ≤ 1 := by simpa only [one_mul] using h

theorem kernel_rankOne_lower (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (a b : Slice L SU2) :
    Real.exp (-12 * β * (L : ℝ)^3) * (lambda0 L β hβ.le)^2 *
      principalRepresentative L β hβ f a * principalRepresentative L β hβ f b ≤
      sliceKernel L β a b := by
  have h := mul_le_mul_of_nonneg_left (principal_product_le_one L β hβ f hn hf a b)
    (Real.exp_pos (-12 * β * (L : ℝ)^3)).le
  calc
    _ = Real.exp (-12 * β * (L : ℝ)^3) *
        ((lambda0 L β hβ.le)^2 * principalRepresentative L β hβ f a *
          principalRepresentative L β hβ f b) := by ring
    _ ≤ Real.exp (-12 * β * (L : ℝ)^3) := by simpa only [mul_one] using h
    _ ≤ sliceKernel L β a b := (K_bounds_explicit L β hβ.le a b).1

/-- The minorizing function is the representative of the actual principal class. -/
theorem principal_rankOne_minorization (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hn : ‖f‖ = 1)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    ContinuousMap.toLp 2 (sliceHaar L) ℝ (principalRepresentative L β hβ f) =
      (f : RealSliceL2 L) ∧
      ∀ a b : Slice L SU2,
        Real.exp (-12 * β * (L : ℝ)^3) * (lambda0 L β hβ.le)^2 *
          principalRepresentative L β hβ f a * principalRepresentative L β hβ f b ≤
          sliceKernel L β a b :=
  ⟨principalRepresentative_toLp L β hβ f he,
    fun a b => kernel_rankOne_lower L β hβ f hn hf a b⟩

end GRWTSK.Geometry.GaugeTheory.WilsonSliceRankOneMinorization
