/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib integration and real analysis retain upstream attribution and Apache-2.0
licenses. Imported GRWTSK mathematical sources retain attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceInvariantAbsoluteValue

/-!
# Absolute-value Rayleigh comparison for the actual Wilson slice operator

The product-integrable kernel defect is bounded below by the actual pointwise
Wilson lower bound times the unweighted sign defect. Fubini and the product
integral identity give c*((integral |f|)^2-(integral f)^2), c=exp(-12*beta*L^3).
Thus genuine L1 cancellation gives strict quadratic improvement in the SAME
invariant Hilbert space, with its norm preserved by the imported construction.
The two-sign-mass corollary retains concrete positive and negative mass premises;
no estimate of a spectral gap is supplied as a free hypothesis.

Sign-support-to-mass transport, principal eigenspace simplicity, finite
separation and a regulator-uniform continuum mass gap remain separate steps.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceAbsoluteRayleigh

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2SelfAdjoint
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantAbsoluteValue

variable (L : ℕ) [NeZero L]

def signDefect (f : RealSliceL2 L) (p : Slice L SU2 × Slice L SU2) : ℝ :=
  |f p.1| * |f p.2| - f p.1 * f p.2

def kernelDefect (β : ℝ) (f : RealSliceL2 L) (p : Slice L SU2 × Slice L SU2) : ℝ :=
  |f p.1| * sliceKernel L β p.1 p.2 * |f p.2| -
    f p.1 * sliceKernel L β p.1 p.2 * f p.2

private theorem integrable_absolute (f : RealSliceL2 L) :
    Integrable (fun a => |f a|) (sliceHaar L) := by
  simpa only [Real.norm_eq_abs] using (integrable_L2 L f).norm

theorem signDefect_nonnegative (f : RealSliceL2 L) (p : Slice L SU2 × Slice L SU2) :
    0 ≤ signDefect L f p := by
  exact sub_nonneg.mpr ((le_abs_self (f p.1 * f p.2)).trans_eq (abs_mul _ _))

theorem integrable_signDefect (f : RealSliceL2 L) :
    Integrable (signDefect L f) ((sliceHaar L).prod (sliceHaar L)) :=
  ((integrable_absolute L f).mul_prod (integrable_absolute L f)).sub
    ((integrable_L2 L f).mul_prod (integrable_L2 L f))

private theorem integrable_absoluteKernel (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L) :
    Integrable (fun p : Slice L SU2 × Slice L SU2 =>
      |f p.1| * sliceKernel L β p.1 p.2 * |f p.2|)
        ((sliceHaar L).prod (sliceHaar L)) := by
  have h := ((integrable_absolute L f).mul_prod (integrable_absolute L f)).bdd_mul
    (continuous_K L β).aestronglyMeasurable
    (ae_of_all _ (fun p : Slice L SU2 × Slice L SU2 => norm_K_le_one L β hβ p.1 p.2))
  exact h.congr (ae_of_all _ (fun p => by dsimp; ring))

theorem integrable_kernelDefect (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L) :
    Integrable (kernelDefect L β f) ((sliceHaar L).prod (sliceHaar L)) :=
  (integrable_absoluteKernel L β hβ f).sub (integrable_mixedKernel L β hβ f f)

theorem integral_signDefect (f : RealSliceL2 L) :
    (∫ p, signDefect L f p ∂(sliceHaar L).prod (sliceHaar L)) =
      (∫ a, |f a| ∂sliceHaar L) ^ 2 - (∫ a, f a ∂sliceHaar L) ^ 2 := by
  rw [signDefect, integral_sub
    ((integrable_absolute L f).mul_prod (integrable_absolute L f))
    ((integrable_L2 L f).mul_prod (integrable_L2 L f)), integral_prod_mul, integral_prod_mul]
  ring

theorem kernelDefect_lower (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (p : Slice L SU2 × Slice L SU2) :
    Real.exp (-12 * β * (L : ℝ) ^ 3) * signDefect L f p ≤ kernelDefect L β f p := by
  have h := mul_le_mul_of_nonneg_right (K_bounds_explicit L β hβ p.1 p.2).1
    (signDefect_nonnegative L f p)
  dsimp [signDefect, kernelDefect] at *
  nlinarith

theorem quadratic_difference_eq_integral (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L) :
    inner ℝ (absoluteVector L f) (operator L β hβ (absoluteVector L f)) -
      inner ℝ f (operator L β hβ f) =
        ∫ p, kernelDefect L β f p ∂(sliceHaar L).prod (sliceHaar L) := by
  have habs : inner ℝ (absoluteVector L f) (operator L β hβ (absoluteVector L f)) =
      ∫ a, ∫ b, |f a| * sliceKernel L β a b * |f b| ∂sliceHaar L ∂sliceHaar L := by
    rw [inner_operator_eq_double]
    apply integral_congr_ae
    filter_upwards [absoluteVector_apply_ae L f] with a ha
    apply integral_congr_ae
    filter_upwards [absoluteVector_apply_ae L f] with b hb
    rw [ha, hb]
  rw [habs, inner_operator_eq_double]
  calc
    _ = ∫ a, ∫ b, kernelDefect L β f (a,b) ∂sliceHaar L ∂sliceHaar L :=
      (integral_integral_sub (integrable_absoluteKernel L β hβ f)
        (integrable_mixedKernel L β hβ f f)).symm
    _ = _ := integral_integral (integrable_kernelDefect L β hβ f)

theorem quadratic_difference_lower (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L) :
    Real.exp (-12 * β * (L : ℝ) ^ 3) *
      ((∫ a, |f a| ∂sliceHaar L) ^ 2 - (∫ a, f a ∂sliceHaar L) ^ 2) ≤
        inner ℝ (absoluteVector L f) (operator L β hβ (absoluteVector L f)) -
          inner ℝ f (operator L β hβ f) := by
  rw [quadratic_difference_eq_integral]
  have h := integral_mono ((integrable_signDefect L f).const_mul
    (Real.exp (-12 * β * (L : ℝ) ^ 3))) (integrable_kernelDefect L β hβ f)
    (kernelDefect_lower L β hβ f)
  simpa only [integral_const_mul, integral_signDefect] using h

/-- Strict improvement is paid by concrete cancellation of the actual L1 masses. -/
theorem quadratic_lt_of_cancellation (β : ℝ) (hβ : 0 ≤ β) (f : RealSliceL2 L)
    (hc : |∫ a, f a ∂sliceHaar L| < ∫ a, |f a| ∂sliceHaar L) :
    inner ℝ f (operator L β hβ f) <
      inner ℝ (absoluteVector L f) (operator L β hβ (absoluteVector L f)) := by
  have hA : 0 < ∫ a, |f a| ∂sliceHaar L := (abs_nonneg _).trans_lt hc
  have hm := mul_pos (sub_pos.mpr hc)
    (add_pos_of_pos_of_nonneg hA (abs_nonneg (∫ a, f a ∂sliceHaar L)))
  have hsq : 0 < (∫ a, |f a| ∂sliceHaar L) ^ 2 - (∫ a, f a ∂sliceHaar L) ^ 2 := by
    nlinarith [sq_abs (∫ a, f a ∂sliceHaar L)]
  have hb := quadratic_difference_lower L β hβ f
  have hp := mul_pos (Real.exp_pos (-12 * β * (L : ℝ) ^ 3)) hsq
  linarith

/-- The strict competitor lives in the actual invariant space, with equal norm
by invariantAbsoluteValue_norm. The two hypotheses are twice the positive and
negative masses, expressed without choosing new Lp representatives. -/
theorem invariant_quadratic_lt_of_two_sign_masses (β : ℝ) (hβ : 0 ≤ β)
    (f : gaugeInvariantSpace L)
    (hpositive : 0 < (∫ a, |(f : RealSliceL2 L) a| ∂sliceHaar L) +
      (∫ a, (f : RealSliceL2 L) a ∂sliceHaar L))
    (hnegative : 0 < (∫ a, |(f : RealSliceL2 L) a| ∂sliceHaar L) -
      (∫ a, (f : RealSliceL2 L) a ∂sliceHaar L)) :
    inner ℝ f (invariantOperator L β hβ f) <
      inner ℝ (invariantAbsoluteValue L f)
        (invariantOperator L β hβ (invariantAbsoluteValue L f)) := by
  have hc : |∫ a, (f : RealSliceL2 L) a ∂sliceHaar L| <
      ∫ a, |(f : RealSliceL2 L) a| ∂sliceHaar L :=
    abs_lt.mpr ⟨by linarith, by linarith⟩
  exact quadratic_lt_of_cancellation L β hβ f hc

end GRWTSK.Geometry.GaugeTheory.WilsonSliceAbsoluteRayleigh
