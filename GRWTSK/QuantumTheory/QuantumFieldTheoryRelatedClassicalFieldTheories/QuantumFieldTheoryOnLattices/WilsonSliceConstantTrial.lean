/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceNormalizedSeparation

/-!
# Constant trial and an explicit finite Wilson separation

The actual invariant constant vector has norm one for probability slice Haar.
Its actual integral-operator Rayleigh value is at least c=exp(-12 beta L^3).
Thus lambda0 >= c and the normalized separation is at least c^2.
These constants depend on coupling and volume. This is no continuum or physical
mass-gap assertion. SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay,
transitive axiom audit and expected-interface checks remain NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceConstantTrial
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeAveragePairing
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivityImproving
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSliceNormalizedSeparation
open GRWTSK.Analysis.InnerProductSpace.VariationalSpectralBracket
variable (L : ℕ) [NeZero L]

theorem inner_oneVector (x : RealSliceL2 L) :
    inner ℝ x (oneVector L) = mean L x := by
  simpa only [oneVector, mean, ContinuousMap.const_apply, mul_one] using
    inner_toLp L x (ContinuousMap.const (Slice L SU2) (1 : ℝ))

theorem constantVector_norm : ‖constantVector L‖ = 1 := by
  have hi : inner ℝ (constantVector L) (constantVector L) = 1 := by
    change inner ℝ (oneVector L) (oneVector L) = 1
    rw [inner_oneVector, mean_oneVector]
  rw [real_inner_self_eq_norm_sq] at hi
  nlinarith [norm_nonneg (constantVector L)]

theorem constantVector_quadratic_lower (β : ℝ) (hβ : 0 ≤ β) :
    Real.exp (-12 * β * (L : ℝ)^3) ≤
      quadratic (invariantOperator L β hβ) (constantVector L) := by
  have hone : ∀ᵐ a ∂sliceHaar L, (oneVector L) a = 1 :=
    ContinuousMap.coeFn_toLp (sliceHaar L)
      (ContinuousMap.const (Slice L SU2) (1 : ℝ))
  have hnonneg : ∀ᵐ a ∂sliceHaar L, 0 ≤ (oneVector L) a :=
    hone.mono (fun _ ha => by rw [ha]; norm_num)
  have hout : ∀ᵐ a ∂sliceHaar L,
      Real.exp (-12 * β * (L : ℝ)^3) ≤ (operator L β hβ (oneVector L)) a := by
    filter_upwards [operator_apply_ae L β hβ (oneVector L)] with a ha
    rw [ha]
    have hl := kernelRepresentative_lower_mass L β hβ (oneVector L) hnonneg a
    simpa only [← mean, mean_oneVector, mul_one] using hl
  have hint := integral_mono_ae
    (integrable_const (Real.exp (-12 * β * (L : ℝ)^3)))
    (integrable_L2 L (operator L β hβ (oneVector L))) hout
  have hmean : Real.exp (-12 * β * (L : ℝ)^3) ≤
      mean L (operator L β hβ (oneVector L)) := by
    simpa [mean, integral_const, probReal_univ] using hint
  change Real.exp (-12 * β * (L : ℝ)^3) ≤
    inner ℝ (oneVector L) (operator L β hβ (oneVector L))
  rw [real_inner_comm, inner_oneVector]
  exact hmean

theorem lambda0_lower (β : ℝ) (hβ : 0 ≤ β) :
    Real.exp (-12 * β * (L : ℝ)^3) ≤ lambda0 L β hβ := by
  apply (constantVector_quadratic_lower L β hβ).trans
  exact quadratic_le_ballValue (invariantOperator L β hβ) ⊤
    (Submodule.mem_top) (constantVector_norm L).le

theorem normalized_difference_explicit (β : ℝ) (hβ : 0 < β) :
    Real.exp (-24 * β * (L : ℝ)^3) ≤
      1 - lambda1 L β hβ.le / lambda0 L β hβ.le := by
  have hmul := mul_le_mul_of_nonneg_left (lambda0_lower L β hβ.le)
    (Real.exp_pos (-12 * β * (L : ℝ)^3)).le
  have he : Real.exp (-24 * β * (L : ℝ)^3) =
      Real.exp (-12 * β * (L : ℝ)^3) * Real.exp (-12 * β * (L : ℝ)^3) := by
    rw [← Real.exp_add]
    congr 1 <;> ring
  rw [he]
  exact hmul.trans (normalized_difference_lower L β hβ)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceConstantTrial
