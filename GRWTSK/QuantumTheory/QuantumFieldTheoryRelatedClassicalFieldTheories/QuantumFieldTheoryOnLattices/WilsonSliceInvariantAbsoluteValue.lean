/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Lipschitz/Lp theory retains its upstream authorship and Apache-2.0
license. All imported mathematical sources retain their attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceGaugeHilbert
import Mathlib.Analysis.Normed.Group.Uniform

/-!
# Absolute values in the actual gauge-invariant real slice L2 space

The Lipschitz map x ↦ |x| acts on actual AE L2 classes. Its commutation with
Haar-preserving gauge pullback proves that the existing invariant Hilbert space
is closed under absolute value, with exactly the same L2 norm. This supplies the
representation step needed to compare a vector and its absolute value in the
principal Rayleigh quotient. The map is not asserted to be linear.

The strict sign-changing quadratic comparison, principal simplicity, a finite
separation certificate, and regulator-uniform continuum estimates remain unpaid.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantAbsoluteValue

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert

variable (L : ℕ) [NeZero L]

private theorem realNorm_lipschitz : LipschitzWith 1 (fun x : ℝ => ‖x‖) :=
  lipschitzWith_one_norm

/-- Absolute value of an actual real L2 class, defined by Lipschitz composition. -/
def absoluteVector (f : RealSliceL2 L) : RealSliceL2 L :=
  realNorm_lipschitz.compLp (by simp) f

theorem absoluteVector_apply_ae (f : RealSliceL2 L) :
    absoluteVector L f =ᵐ[sliceHaar L] (fun a => |f a|) := by
  simpa only [absoluteVector, Function.comp_apply, Real.norm_eq_abs] using
    (realNorm_lipschitz.coeFn_compLp (by simp) f)

theorem absoluteVector_nonnegative_ae (f : RealSliceL2 L) :
    ∀ᵐ a ∂sliceHaar L, 0 ≤ absoluteVector L f a := by
  filter_upwards [absoluteVector_apply_ae L f] with a ha
  rw [ha]
  exact abs_nonneg _

theorem absoluteVector_norm (f : RealSliceL2 L) : ‖absoluteVector L f‖ = ‖f‖ := by
  apply le_antisymm
  · apply Lp.norm_le_norm_of_ae_le
    filter_upwards [absoluteVector_apply_ae L f] with a ha
    simp only [ha, Real.norm_eq_abs, abs_abs, le_refl]
  · apply Lp.norm_le_norm_of_ae_le
    filter_upwards [absoluteVector_apply_ae L f] with a ha
    simp only [ha, Real.norm_eq_abs, abs_abs, le_refl]

/-- Equality is in L2, justified by AE pullback under the actual slice gauge. -/
theorem gaugeComposition_absoluteVector (g : SliceGauge L SU2) (f : RealSliceL2 L) :
    gaugeComposition L g (absoluteVector L f) =
      absoluteVector L (gaugeComposition L g f) := by
  apply Lp.ext
  have hpull := (measurePreserving_sliceGauge L g).quasiMeasurePreserving.ae_eq_comp
    (absoluteVector_apply_ae L f)
  filter_upwards [gaugeComposition_apply_ae L g (absoluteVector L f), hpull,
    absoluteVector_apply_ae L (gaugeComposition L g f), gaugeComposition_apply_ae L g f]
    with a hleft hp hright hg
  rw [hleft, hp, hright, hg]

/-- The actual gauge-invariant Hilbert space is closed under this operation. -/
def invariantAbsoluteValue (f : gaugeInvariantSpace L) : gaugeInvariantSpace L :=
  ⟨absoluteVector L f, by
    intro g
    rw [gaugeComposition_absoluteVector, f.property g]⟩

theorem invariantAbsoluteValue_coe (f : gaugeInvariantSpace L) :
    (invariantAbsoluteValue L f : RealSliceL2 L) = absoluteVector L f := rfl

/-- The Rayleigh-quotient competitor has exactly the original norm. -/
theorem invariantAbsoluteValue_norm (f : gaugeInvariantSpace L) :
    ‖invariantAbsoluteValue L f‖ = ‖f‖ :=
  absoluteVector_norm L f

theorem invariantAbsoluteValue_ne_zero (f : gaugeInvariantSpace L) (hf : f ≠ 0) :
    invariantAbsoluteValue L f ≠ 0 := by
  intro hzero
  apply hf
  apply norm_eq_zero.mp
  calc
    ‖f‖ = ‖invariantAbsoluteValue L f‖ := (invariantAbsoluteValue_norm L f).symm
    _ = 0 := by rw [hzero, norm_zero]

end GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantAbsoluteValue
