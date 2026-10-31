/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSlicePositivePrincipal

/-!
# Two-sided bounds for the actual continuous principal representative

For a nonnegative actual principal input with mass I and principal value lambda,
its distinguished continuous representative lies between c I/lambda and I/lambda,
where c=exp(-12 beta L^3). Its continuous-to-L2 image is the original eigenvector;
continuity is asserted for this output, never for an arbitrary L2 input.
This is a quantitative fixed-regulator supplier, not a normalized spectral-ratio
estimate, a regulator-uniform physical gap or a continuum construction.
SOURCE_PROOF_CANDIDATE; compile, fresh replay, transitive axiom audit and
expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivityImproving
variable (L : ℕ) [NeZero L]

theorem kernelRepresentative_upper_mass (β : ℝ) (hβ : 0 ≤ β)
    (f : RealSliceL2 L) (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ f b) (a : Slice L SU2) :
    kernelRepresentative L β hβ f a ≤ ∫ b, f b ∂sliceHaar L := by
  change (∫ b, sliceKernel L β a b * f b ∂sliceHaar L) ≤ _
  apply integral_mono_ae
    (integrable_kernelIntegrand L β hβ (integrable_L2 L f) a) (integrable_L2 L f)
  filter_upwards [hf] with b hb
  exact (mul_le_mul_of_nonneg_right (K_bounds_explicit L β hβ a b).2 hb).trans_eq
    (one_mul _)

/-- Distinguished output, defined before imposing any eigenvector condition. -/
def principalRepresentative (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L) :
    C(Slice L SU2, ℝ) :=
  (lambda0 L β hβ.le)⁻¹ • kernelRepresentative L β hβ.le f

theorem principalRepresentative_toLp (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    ContinuousMap.toLp 2 (sliceHaar L) ℝ (principalRepresentative L β hβ f) =
      (f : RealSliceL2 L) := by
  rw [principalRepresentative, map_smul]
  change (lambda0 L β hβ.le)⁻¹ • operator L β hβ.le (f : RealSliceL2 L) = _
  have h := congrArg (fun x : gaugeInvariantSpace L => (x : RealSliceL2 L)) he
  change operator L β hβ.le (f : RealSliceL2 L) =
    lambda0 L β hβ.le • (f : RealSliceL2 L) at h
  rw [h, smul_smul, inv_mul_cancel₀ (ne_of_gt (lambda0_pos L β hβ)), one_smul]

theorem principalRepresentative_eq_ae (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    (f : RealSliceL2 L) =ᵐ[sliceHaar L] principalRepresentative L β hβ f := by
  have h := ContinuousMap.coeFn_toLp (sliceHaar L) (principalRepresentative L β hβ f)
  rwa [principalRepresentative_toLp L β hβ f he] at h

/-- Actual L2 embedding and operator identity, not a substitute continuous input. -/
theorem principalRepresentative_eigenvector (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L)
    (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f) :
    operator L β hβ.le
      (ContinuousMap.toLp 2 (sliceHaar L) ℝ (principalRepresentative L β hβ f)) =
      lambda0 L β hβ.le •
        ContinuousMap.toLp 2 (sliceHaar L) ℝ (principalRepresentative L β hβ f) := by
  rw [principalRepresentative_toLp L β hβ f he]
  exact congrArg (fun x : gaugeInvariantSpace L => (x : RealSliceL2 L)) he

theorem principalRepresentative_bounds (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b)
    (a : Slice L SU2) :
    Real.exp (-12 * β * (L : ℝ) ^ 3) * (∫ b, (f : RealSliceL2 L) b ∂sliceHaar L) /
        lambda0 L β hβ.le ≤ principalRepresentative L β hβ f a ∧
      principalRepresentative L β hβ f a ≤
        (∫ b, (f : RealSliceL2 L) b ∂sliceHaar L) / lambda0 L β hβ.le := by
  have hi : 0 ≤ (lambda0 L β hβ.le)⁻¹ := (inv_pos.mpr (lambda0_pos L β hβ)).le
  have hlo := mul_le_mul_of_nonneg_left (kernelRepresentative_lower_mass L β hβ.le f hf a) hi
  have hup := mul_le_mul_of_nonneg_left (kernelRepresentative_upper_mass L β hβ.le f hf a) hi
  constructor
  · simpa only [principalRepresentative, ContinuousMap.smul_apply, smul_eq_mul,
      div_eq_mul_inv, mul_comm] using hlo
  · simpa only [principalRepresentative, ContinuousMap.smul_apply, smul_eq_mul,
      div_eq_mul_inv, mul_comm] using hup

theorem principalRepresentative_pos (β : ℝ) (hβ : 0 < β)
    (f : gaugeInvariantSpace L) (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b)
    (hne : f ≠ 0) (a : Slice L SU2) : 0 < principalRepresentative L β hβ f a := by
  have hcoe : (f : RealSliceL2 L) ≠ 0 := fun hz => hne (Subtype.ext hz)
  exact (div_pos (mul_pos (Real.exp_pos _)
    (integral_pos_of_nonnegative_ne_zero L f hf hcoe)) (lambda0_pos L β hβ)).trans_le
      (principalRepresentative_bounds L β hβ f hf a).1

end GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
