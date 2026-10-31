/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Bochner integration and AE measure theory retain upstream attribution
and Apache-2.0 licenses. Imported sources retain attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceAbsoluteRayleigh

/-!
# Actual sign supports supply the strict Wilson Rayleigh mass hypotheses

The nonnegative lifts |f|+f and |f|-f are actual integrable real functions of an
L2 representative. Their supports are exactly its positive and negative sets.
Positive support measure therefore gives strictly positive integrals, whose
linear identities are exactly the two mass premises of the existing consumer.
AE replacement preserves both sign-set measures. Zero sign mass is equivalent
to the corresponding one-sign AE condition, so no strict improvement is claimed
for a nonnegative or nonpositive vector.

Principal simplicity and the regulator-uniform continuum mass gap are not
conclusions. SOURCE_PROOF_CANDIDATE; compilation, replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceSignMass
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantAbsoluteValue
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAbsoluteRayleigh
variable (L : ℕ) [NeZero L]

def positiveSet (u : Slice L SU2 → ℝ) : Set (Slice L SU2) := {a | 0 < u a}
def negativeSet (u : Slice L SU2 → ℝ) : Set (Slice L SU2) := {a | u a < 0}
def positiveLift (f : RealSliceL2 L) (a : Slice L SU2) : ℝ := |f a| + f a
def negativeLift (f : RealSliceL2 L) (a : Slice L SU2) : ℝ := |f a| - f a

theorem positiveSet_measure_congr {u v : Slice L SU2 → ℝ}
    (h : u =ᵐ[sliceHaar L] v) :
    sliceHaar L (positiveSet L u) = sliceHaar L (positiveSet L v) :=
  measure_congr (h.preimage (Set.Ioi (0 : ℝ)))

theorem negativeSet_measure_congr {u v : Slice L SU2 → ℝ}
    (h : u =ᵐ[sliceHaar L] v) :
    sliceHaar L (negativeSet L u) = sliceHaar L (negativeSet L v) :=
  measure_congr (h.preimage (Set.Iio (0 : ℝ)))

private theorem integrable_absolute (f : RealSliceL2 L) :
    Integrable (fun a => |f a|) (sliceHaar L) := by
  simpa only [Real.norm_eq_abs] using (integrable_L2 L f).norm

theorem integrable_positiveLift (f : RealSliceL2 L) :
    Integrable (positiveLift L f) (sliceHaar L) :=
  (integrable_absolute L f).add (integrable_L2 L f)

theorem integrable_negativeLift (f : RealSliceL2 L) :
    Integrable (negativeLift L f) (sliceHaar L) :=
  (integrable_absolute L f).sub (integrable_L2 L f)

theorem positiveLift_nonnegative (f : RealSliceL2 L) (a : Slice L SU2) :
    0 ≤ positiveLift L f a := by
  dsimp [positiveLift]
  linarith [neg_abs_le (f a)]

theorem negativeLift_nonnegative (f : RealSliceL2 L) (a : Slice L SU2) :
    0 ≤ negativeLift L f a := sub_nonneg.mpr (le_abs_self _)

theorem positiveLift_support (f : RealSliceL2 L) :
    Function.support (positiveLift L f) = positiveSet L f := by
  ext a
  change (|f a| + f a ≠ 0) ↔ 0 < f a
  constructor
  · intro h
    by_contra hn
    have hle : f a ≤ 0 := le_of_not_gt hn
    apply h
    rw [abs_of_nonpos hle]
    ring
  · intro h
    rw [abs_of_pos h]
    exact ne_of_gt (add_pos h h)

theorem negativeLift_support (f : RealSliceL2 L) :
    Function.support (negativeLift L f) = negativeSet L f := by
  ext a
  change (|f a| - f a ≠ 0) ↔ f a < 0
  constructor
  · intro h
    by_contra hn
    have hle : 0 ≤ f a := le_of_not_gt hn
    apply h
    rw [abs_of_nonneg hle, sub_self]
  · intro h
    apply ne_of_gt
    rw [abs_of_neg h]
    linarith

theorem integral_positiveLift (f : RealSliceL2 L) :
    (∫ a, positiveLift L f a ∂sliceHaar L) =
      (∫ a, |f a| ∂sliceHaar L) + ∫ a, f a ∂sliceHaar L :=
  integral_add (integrable_absolute L f) (integrable_L2 L f)

theorem integral_negativeLift (f : RealSliceL2 L) :
    (∫ a, negativeLift L f a ∂sliceHaar L) =
      (∫ a, |f a| ∂sliceHaar L) - ∫ a, f a ∂sliceHaar L :=
  integral_sub (integrable_absolute L f) (integrable_L2 L f)

theorem positive_mass_pos (f : RealSliceL2 L)
    (h : 0 < sliceHaar L (positiveSet L f)) :
    0 < (∫ a, |f a| ∂sliceHaar L) + ∫ a, f a ∂sliceHaar L := by
  rw [← integral_positiveLift]
  apply (integral_pos_iff_support_of_nonneg (positiveLift_nonnegative L f)
    (integrable_positiveLift L f)).2
  simpa only [positiveLift_support] using h

theorem negative_mass_pos (f : RealSliceL2 L)
    (h : 0 < sliceHaar L (negativeSet L f)) :
    0 < (∫ a, |f a| ∂sliceHaar L) - ∫ a, f a ∂sliceHaar L := by
  rw [← integral_negativeLift]
  apply (integral_pos_iff_support_of_nonneg (negativeLift_nonnegative L f)
    (integrable_negativeLift L f)).2
  simpa only [negativeLift_support] using h

theorem positive_mass_zero_iff_nonpositive_ae (f : RealSliceL2 L) :
    (∫ a, |f a| ∂sliceHaar L) + (∫ a, f a ∂sliceHaar L) = 0 ↔
      ∀ᵐ a ∂sliceHaar L, f a ≤ 0 := by
  rw [← integral_positiveLift]
  rw [integral_eq_zero_iff_of_nonneg (positiveLift_nonnegative L f)
    (integrable_positiveLift L f)]
  constructor
  · intro h
    filter_upwards [h] with a ha
    change |f a| + f a = 0 at ha
    linarith [abs_nonneg (f a)]
  · intro h
    filter_upwards [h] with a ha
    change |f a| + f a = 0
    rw [abs_of_nonpos ha]
    ring

theorem negative_mass_zero_iff_nonnegative_ae (f : RealSliceL2 L) :
    (∫ a, |f a| ∂sliceHaar L) - (∫ a, f a ∂sliceHaar L) = 0 ↔
      ∀ᵐ a ∂sliceHaar L, 0 ≤ f a := by
  rw [← integral_negativeLift]
  rw [integral_eq_zero_iff_of_nonneg (negativeLift_nonnegative L f)
    (integrable_negativeLift L f)]
  constructor
  · intro h
    filter_upwards [h] with a ha
    change |f a| - f a = 0 at ha
    linarith [abs_nonneg (f a)]
  · intro h
    filter_upwards [h] with a ha
    change |f a| - f a = 0
    rw [abs_of_nonneg ha, sub_self]

/-- The sign-support hypotheses now directly feed the actual strict competitor. -/
theorem invariant_quadratic_lt_of_sign_supports (β : ℝ) (hβ : 0 ≤ β)
    (f : gaugeInvariantSpace L)
    (hp : 0 < sliceHaar L (positiveSet L (f : RealSliceL2 L)))
    (hn : 0 < sliceHaar L (negativeSet L (f : RealSliceL2 L))) :
    inner ℝ f (invariantOperator L β hβ f) <
      inner ℝ (invariantAbsoluteValue L f)
        (invariantOperator L β hβ (invariantAbsoluteValue L f)) :=
  invariant_quadratic_lt_of_two_sign_masses L β hβ f
    (positive_mass_pos L f hp) (negative_mass_pos L f hn)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceSignMass
