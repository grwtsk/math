/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Lp, Bochner integral and AE theory retain upstream authorship and
Apache-2.0 licenses. Imported mathematical sources retain attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGaugeHilbert

/-!
# Positivity improvement of the actual Wilson slice integral representative

A nonnegative AE, nonzero real L2 class has strictly positive L1 mass. The
actual pointwise kernel lower bound then gives a strictly positive continuous
output at every slice. Neither an arbitrary input's continuity nor a separate
model operator is assumed. The existing invariant restriction retains the same
AE output, so the result applies to the actual gauge-invariant Hilbert consumer.

The constant exp(-12*beta*L^3) depends on both coupling and regulator volume.
No principal simplicity, uniform physical gap or continuum construction follows
from this lemma alone. SOURCE_PROOF_CANDIDATE; compile/replay/axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivityImproving
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
variable (L : ℕ) [NeZero L]

/-- A statement on the actual AE class, using its integrability and nonzeroness. -/
theorem integral_pos_of_nonnegative_ne_zero (f : RealSliceL2 L)
    (hf : ∀ᵐ a ∂sliceHaar L, 0 ≤ f a) (hne : f ≠ 0) :
    0 < ∫ a, f a ∂sliceHaar L := by
  have hint : (∫ a, f a ∂sliceHaar L) ≠ 0 := by
    intro hz
    apply hne
    exact Lp.eq_zero_iff_ae_eq_zero.mpr
      ((integral_eq_zero_iff_of_nonneg_ae hf (integrable_L2 L f)).mp hz)
  exact lt_of_le_of_ne (integral_nonneg_of_ae hf) hint.symm

/-- The constant is explicit and remains regulator/coupling dependent. -/
theorem kernelRepresentative_lower_mass (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ f b) (a : Slice L SU2) :
    Real.exp (-12 * β * (L : ℝ) ^ 3) * (∫ b, f b ∂sliceHaar L) ≤
      kernelRepresentative L β hβ f a := by
  change Real.exp (-12 * β * (L : ℝ) ^ 3) * (∫ b, f b ∂sliceHaar L) ≤
    ∫ b, sliceKernel L β a b * f b ∂sliceHaar L
  have h := integral_mono_ae
    ((integrable_L2 L f).const_mul (Real.exp (-12 * β * (L : ℝ) ^ 3)))
    (integrable_kernelIntegrand L β hβ (integrable_L2 L f) a)
    (hf.mono (fun b hb => mul_le_mul_of_nonneg_right (K_bounds_explicit L β hβ a b).1 hb))
  simpa only [integral_const_mul] using h

/-- Pointwise strict positivity of the distinguished continuous output. -/
theorem kernelRepresentative_pos (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ f b) (hne : f ≠ 0) (a : Slice L SU2) :
    0 < kernelRepresentative L β hβ f a :=
  (mul_pos (Real.exp_pos (-12 * β * (L : ℝ) ^ 3))
    (integral_pos_of_nonnegative_ne_zero L f hf hne)).trans_le
      (kernelRepresentative_lower_mass L β hβ f hf a)

/-- The actual L2 operator agrees AE with that strictly positive output. -/
theorem operator_strictly_positive_ae (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ f b) (hne : f ≠ 0) :
    ∀ᵐ a ∂sliceHaar L, 0 < operator L β hβ f a := by
  filter_upwards [operator_apply_ae L β hβ f] with a ha
  rw [ha]
  exact kernelRepresentative_pos L β hβ f hf hne a

/-- No substitute finite model: this is the existing invariantOperator. -/
theorem invariantOperator_strictly_positive_ae (β : ℝ) (hβ : 0 ≤ β)
    (f : gaugeInvariantSpace L)
    (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0) :
    ∀ᵐ a ∂sliceHaar L, 0 < (invariantOperator L β hβ f : RealSliceL2 L) a := by
  have hcoe : (f : RealSliceL2 L) ≠ 0 := fun hz => hne (Subtype.ext hz)
  exact operator_strictly_positive_ae L β hβ f hf hcoe

end GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivityImproving
