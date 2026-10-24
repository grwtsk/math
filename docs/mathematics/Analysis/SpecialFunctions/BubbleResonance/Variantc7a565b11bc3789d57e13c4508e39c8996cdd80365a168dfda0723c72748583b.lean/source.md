# Complete source: GRWTSK.Analysis.SpecialFunctions.BubbleResonance.Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef3e7cdea563791a9637e7b42fd406292a2a2501` · SHA-256 `c7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceScope
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Inverse claims for spherical bubble resonance formulas

This module studies squared angular-frequency formulas with fixed density, ambient
pressure and polytropic exponent. The state varies positive radius and nonnegative
surface tension. It proves no fluid-mode existence, experimental readout,
hydrophone observability, damping or nonlinear resonance theorem. The model has
constant polytropic exponent and no vapor-pressure term, coating or confinement.
The strict exponent restriction is essential to the breathing ambiguity witnesses.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace BubbleAcoustics

open SurfaceBulk

noncomputable section

/-- Fixed, known coefficients of the isolated spherical formula model. -/
structure Parameters where
  /-- Liquid density. -/
  density : ℝ
  /-- Ambient pressure in the stated formula, without a vapor-pressure correction. -/
  pressure : ℝ
  /-- Constant polytropic exponent. -/
  kappa : ℝ
  /-- Density is strictly positive. -/
  densityPositive : 0 < density
  /-- Ambient pressure is strictly positive. -/
  pressurePositive : 0 < pressure
  /-- The breathing surface-tension coefficient is strictly positive. -/
  kappaGreaterThird : (1 / 3 : ℝ) < kappa

/-- The varying state consists of positive radius and nonnegative tension. -/
abbrev State := PositiveRadius × {surfaceTension : ℝ // 0 ≤ surfaceTension}

/-- The radius coordinate of a formula state. -/
def radius (state : State) : ℝ := state.1

/-- The tension coordinate of a formula state. -/
def tension (state : State) : ℝ := state.2

/-- The gas-pressure coefficient in the breathing formula. -/
def gasCoefficient (parameters : Parameters) : ℝ :=
  3 * parameters.kappa * parameters.pressure

/-- The corrected surface-tension coefficient in the breathing formula. -/
def capillaryCoefficient (parameters : Parameters) : ℝ :=
  2 * (3 * parameters.kappa - 1)

/-- The real polynomial coefficient for the degree-indexed shape formula.
Physical shape modes have degree at least two. -/
def shapeCoefficient (degree : ℕ) : ℝ :=
  ((degree : ℝ) - 1) * ((degree : ℝ) + 1) * ((degree : ℝ) + 2)

/-- Corrected breathing squared angular frequency for the stated spherical formula model. -/
def breathingSquared (parameters : Parameters) (state : State) : ℝ :=
  gasCoefficient parameters / (parameters.density * radius state ^ 2) +
    capillaryCoefficient parameters * tension state /
      (parameters.density * radius state ^ 3)

/-- Shape squared angular-frequency formula; degree two is the first nontrivial shape mode. -/
def shapeSquared (degree : ℕ) (parameters : Parameters) (state : State) : ℝ :=
  shapeCoefficient degree * tension state / (parameters.density * radius state ^ 3)

/-- The target retains the spherical volume formula and the varying tension. -/
def volumeTension (state : State) : ℝ × ℝ :=
  (sphereVolumeFormula state.1, tension state)

/-- Joint breathing and degree-two shape readings at fixed known parameters. -/
def breathingShapeCarrier (parameters : Parameters) (state : State) : ℝ × ℝ :=
  (breathingSquared parameters state, shapeSquared 2 parameters state)

/-- The gas coefficient is positive on the declared parameter scope. -/
theorem gasCoefficient_pos (parameters : Parameters) : 0 < gasCoefficient parameters := by
  have hk : 0 < parameters.kappa := by linarith [parameters.kappaGreaterThird]
  exact mul_pos (mul_pos (by norm_num) hk) parameters.pressurePositive

/-- Strictly exceeding one third makes the corrected capillary coefficient positive. -/
theorem capillaryCoefficient_pos (parameters : Parameters) :
    0 < capillaryCoefficient parameters := by
  unfold capillaryCoefficient
  linarith [parameters.kappaGreaterThird]

/-- Radius is strictly positive in every admitted state. -/
theorem radius_pos (state : State) : 0 < radius state := state.1.property

/-- Surface tension is nonnegative in every admitted state. -/
theorem tension_nonneg (state : State) : 0 ≤ tension state := state.2.property

/-- The breathing squared frequency is strictly positive in the admitted scope. -/
theorem breathingSquared_pos (parameters : Parameters) (state : State) :
    0 < breathingSquared parameters state := by
  have first := div_pos (gasCoefficient_pos parameters)
    (mul_pos parameters.densityPositive (pow_pos (radius_pos state) 2))
  have second := div_nonneg
    (mul_nonneg (capillaryCoefficient_pos parameters).le (tension_nonneg state))
    (mul_pos parameters.densityPositive (pow_pos (radius_pos state) 3)).le
  exact add_pos_of_pos_of_nonneg first second

/-- Clearing the positive denominators gives the corrected radius cubic. -/
theorem breathing_corrected_cubic (parameters : Parameters) (state : State) :
    parameters.density * breathingSquared parameters state * radius state ^ 3 -
      3 * parameters.kappa * parameters.pressure * radius state -
      2 * (3 * parameters.kappa - 1) * tension state = 0 := by
  have hr := (radius_pos state).ne'
  have hd := parameters.densityPositive.ne'
  unfold breathingSquared gasCoefficient capillaryCoefficient
  field_simp
  ring

/-- The degree-two shape coefficient is exactly twelve. -/
theorem shapeCoefficient_two : shapeCoefficient 2 = 12 := by
  norm_num [shapeCoefficient]

/-- Explicit degree-two squared frequency. -/
theorem shapeSquared_two (parameters : Parameters) (state : State) :
    shapeSquared 2 parameters state =
      12 * tension state / (parameters.density * radius state ^ 3) := by
  rw [shapeSquared, shapeCoefficient_two]

/-- The linear combination that removes the unknown tension from the joint readings. -/
def jointDenominator (parameters : Parameters) (readings : ℝ × ℝ) : ℝ :=
  readings.1 - (3 * parameters.kappa - 1) / 6 * readings.2

/-- Joint breathing/shape cancellation retains the inverse-square radius term exactly. -/
theorem joint_cancellation (parameters : Parameters) (state : State) :
    jointDenominator parameters (breathingShapeCarrier parameters state) =
      gasCoefficient parameters / (parameters.density * radius state ^ 2) := by
  unfold jointDenominator breathingShapeCarrier breathingSquared
  rw [shapeSquared_two]
  unfold capillaryCoefficient
  ring

/-- Every admitted joint reading has a strictly positive cancellation denominator. -/
theorem jointDenominator_pos (parameters : Parameters) (state : State) :
    0 < jointDenominator parameters (breathingShapeCarrier parameters state) := by
  rw [joint_cancellation]
  exact div_pos (gasCoefficient_pos parameters)
    (mul_pos parameters.densityPositive (pow_pos (radius_pos state) 2))

/-- A nonpositive measured cancellation denominator cannot fit any admitted formula state. -/
theorem no_state_of_nonpositive_joint_denominator (parameters : Parameters)
    (readings : ℝ × ℝ) (nonpositive : jointDenominator parameters readings ≤ 0) :
    ¬∃ state, breathingShapeCarrier parameters state = readings := by
  rintro ⟨state, equal⟩
  exact (not_lt_of_ge nonpositive) (equal ▸ jointDenominator_pos parameters state)

/-- Radius decoder for readings known to lie in the joint formula image. -/
def jointRadiusDecoder (parameters : Parameters) (readings : ℝ × ℝ) : ℝ :=
  Real.sqrt (gasCoefficient parameters /
    (parameters.density * jointDenominator parameters readings))

/-- The radius decoder is exact on every admitted state. -/
theorem joint_radius_decoder (parameters : Parameters) (state : State) :
    jointRadiusDecoder parameters (breathingShapeCarrier parameters state) = radius state := by
  have hg := (gasCoefficient_pos parameters).ne'
  have hd := parameters.densityPositive.ne'
  have hr := (radius_pos state).ne'
  unfold jointRadiusDecoder
  rw [joint_cancellation]
  have quotient : gasCoefficient parameters /
      (parameters.density * (gasCoefficient parameters /
        (parameters.density * radius state ^ 2))) = radius state ^ 2 := by
    field_simp
  rw [quotient, Real.sqrt_sq (radius_pos state).le]

/-- Tension decoder, using the radius recovered from the same joint readings. -/
def jointTensionDecoder (parameters : Parameters) (readings : ℝ × ℝ) : ℝ :=
  readings.2 * parameters.density * jointRadiusDecoder parameters readings ^ 3 / 12

/-- The tension decoder is exact on every admitted state, including zero tension. -/
theorem joint_tension_decoder (parameters : Parameters) (state : State) :
    jointTensionDecoder parameters (breathingShapeCarrier parameters state) = tension state := by
  have hd := parameters.densityPositive.ne'
  have hr := (radius_pos state).ne'
  unfold jointTensionDecoder
  rw [joint_radius_decoder]
  change shapeSquared 2 parameters state * parameters.density * radius state ^ 3 / 12 = _
  rw [shapeSquared_two]
  field_simp

/-- Joint readings recover the entire radius/tension state on the declared parameter scope. -/
theorem breathingShape_injective (parameters : Parameters) :
    Function.Injective (breathingShapeCarrier parameters) := by
  intro first second equal
  apply Prod.ext
  · apply Subtype.ext
    change radius first = radius second
    rw [← joint_radius_decoder parameters first, ← joint_radius_decoder parameters second, equal]
  · apply Subtype.ext
    change tension first = tension second
    rw [← joint_tension_decoder parameters first, ← joint_tension_decoder parameters second, equal]

/-- The requested volume/tension target descends through the joint readings. -/
theorem volumeTension_descends_joint (parameters : Parameters) :
    DescendsThrough (breathingShapeCarrier parameters) volumeTension :=
  fun {_ _} equal => congrArg volumeTension (breathingShape_injective parameters equal)

/-- Spherical volume together with tension identifies a state in this radius-only geometry. -/
theorem volumeTension_injective : Function.Injective volumeTension := by
  intro first second equal
  apply Prod.ext
  · exact sphereVolumeFormula_injective (congrArg Prod.fst equal)
  · apply Subtype.ext
    exact congrArg Prod.snd equal

/-- A strictly positive base state used by both individual-carrier collisions. -/
def unitState : State := (⟨1, by norm_num⟩, ⟨1, by norm_num⟩)

/-- A larger-radius state whose tension compensates the full corrected breathing expression. -/
def breathingDoubleState (parameters : Parameters) : State :=
  (⟨2, by norm_num⟩,
    ⟨8 + 6 * gasCoefficient parameters / capillaryCoefficient parameters, by
      have hg := gasCoefficient_pos parameters
      have hc := capillaryCoefficient_pos parameters
      positivity⟩)

/-- The breathing ambiguity uses strictly positive tension on both states. -/
theorem breathing_double_tension_gt_one (parameters : Parameters) :
    1 < tension (breathingDoubleState parameters) := by
  have ratio := div_pos (mul_pos (by norm_num : (0 : ℝ) < 6) (gasCoefficient_pos parameters))
    (capillaryCoefficient_pos parameters)
  change 1 < 8 + 6 * gasCoefficient parameters / capillaryCoefficient parameters
  linarith

/-- The two distinct-radius states have exactly equal corrected breathing readings. -/
theorem breathing_witness_equal (parameters : Parameters) :
    breathingSquared parameters unitState =
      breathingSquared parameters (breathingDoubleState parameters) := by
  have hd := parameters.densityPositive.ne'
  have hc := (capillaryCoefficient_pos parameters).ne'
  unfold breathingSquared radius tension unitState breathingDoubleState
  dsimp
  field_simp
  ring

/-- A shape-only ambiguity scales radius by two and tension by eight. -/
def shapeDoubleState : State := (⟨2, by norm_num⟩, ⟨8, by norm_num⟩)

/-- Every degree-indexed shape formula agrees on the radius/tension scaling collision. -/
theorem shape_witness_equal (degree : ℕ) (parameters : Parameters) :
    shapeSquared degree parameters unitState = shapeSquared degree parameters shapeDoubleState := by
  unfold shapeSquared radius tension unitState shapeDoubleState
  dsimp
  ring

/-- Breathing alone loses the radius coordinate even with all medium parameters fixed. -/
def breathingRadiusObstruction (parameters : Parameters) :
    DescentObstruction (breathingSquared parameters) radius where
  left := unitState
  right := breathingDoubleState parameters
  sameCarrier := breathing_witness_equal parameters
  targetSeparated := by norm_num [radius, unitState, breathingDoubleState]

/-- Breathing alone also loses the unknown tension coordinate. -/
def breathingTensionObstruction (parameters : Parameters) :
    DescentObstruction (breathingSquared parameters) tension where
  left := unitState
  right := breathingDoubleState parameters
  sameCarrier := breathing_witness_equal parameters
  targetSeparated := ne_of_lt (breathing_double_tension_gt_one parameters)

/-- The degree-two shape reading alone loses the radius coordinate. -/
def shapeRadiusObstruction (parameters : Parameters) :
    DescentObstruction (shapeSquared 2 parameters) radius where
  left := unitState
  right := shapeDoubleState
  sameCarrier := shape_witness_equal 2 parameters
  targetSeparated := by norm_num [radius, unitState, shapeDoubleState]

/-- The degree-two shape reading alone also loses the tension coordinate. -/
def shapeTensionObstruction (parameters : Parameters) :
    DescentObstruction (shapeSquared 2 parameters) tension where
  left := unitState
  right := shapeDoubleState
  sameCarrier := shape_witness_equal 2 parameters
  targetSeparated := by norm_num [tension, unitState, shapeDoubleState]

/-- Explicit breathing-only obstruction for the requested volume/tension target. -/
def breathingVolumeTensionObstruction (parameters : Parameters) :
    DescentObstruction (breathingSquared parameters) volumeTension where
  left := unitState
  right := breathingDoubleState parameters
  sameCarrier := breathing_witness_equal parameters
  targetSeparated := fun equal => (breathingRadiusObstruction parameters).targetSeparated
    (congrArg radius (volumeTension_injective equal))

/-- Explicit shape-only obstruction for the requested volume/tension target. -/
def shapeVolumeTensionObstruction (parameters : Parameters) :
    DescentObstruction (shapeSquared 2 parameters) volumeTension where
  left := unitState
  right := shapeDoubleState
  sameCarrier := shape_witness_equal 2 parameters
  targetSeparated := fun equal => (shapeRadiusObstruction parameters).targetSeparated
    (congrArg radius (volumeTension_injective equal))

/-- At fixed nonnegative tension, the corrected breathing reading decreases strictly with radius. -/
theorem breathing_fixed_tension_strictAnti (parameters : Parameters)
    (surfaceTension : {surfaceTension : ℝ // 0 ≤ surfaceTension}) :
    StrictAnti (fun r : PositiveRadius => breathingSquared parameters (r, surfaceTension)) := by
  intro r s less
  have lessReal : (r : ℝ) < (s : ℝ) := less
  have squareLess := mul_lt_mul_of_pos_left
    (pow_lt_pow_left₀ lessReal r.property.le (by decide : 2 ≠ 0)) parameters.densityPositive
  have cubeLess := mul_lt_mul_of_pos_left
    (pow_lt_pow_left₀ lessReal r.property.le (by decide : 3 ≠ 0)) parameters.densityPositive
  have first := div_lt_div_of_pos_left (gasCoefficient_pos parameters)
    (mul_pos parameters.densityPositive (pow_pos r.property 2)) squareLess
  have second := div_le_div_of_nonneg_left
    (mul_nonneg (capillaryCoefficient_pos parameters).le surfaceTension.property)
    (mul_pos parameters.densityPositive (pow_pos r.property 3)) cubeLess.le
  exact add_lt_add_of_lt_of_le first second

/-- Fixed tension makes the positive radius unique for a breathing reading. -/
theorem breathing_fixed_tension_injective (parameters : Parameters)
    (surfaceTension : {surfaceTension : ℝ // 0 ≤ surfaceTension}) :
    Function.Injective
      (fun r : PositiveRadius => breathingSquared parameters (r, surfaceTension)) :=
  (breathing_fixed_tension_strictAnti parameters surfaceTension).injective

/-- The corrected cubic is equivalent to fitting the given squared-frequency reading. -/
theorem breathing_cubic_iff (parameters : Parameters) (state : State) (measured : ℝ) :
    parameters.density * measured * radius state ^ 3 -
        3 * parameters.kappa * parameters.pressure * radius state -
        2 * (3 * parameters.kappa - 1) * tension state = 0 ↔
      measured = breathingSquared parameters state := by
  constructor
  · intro equation
    apply mul_left_cancel₀
      (mul_pos parameters.densityPositive (pow_pos (radius_pos state) 3)).ne'
    nlinarith [breathing_corrected_cubic parameters state]
  · intro equal
    rw [equal]
    exact breathing_corrected_cubic parameters state

/-- In the declared fixed-tension scope, two positive roots of the measured cubic coincide. -/
theorem breathing_cubic_positive_root_unique (parameters : Parameters)
    (surfaceTension : {surfaceTension : ℝ // 0 ≤ surfaceTension}) (measured : ℝ)
    (r s : PositiveRadius)
    (rEquation : parameters.density * measured * (r : ℝ) ^ 3 -
      3 * parameters.kappa * parameters.pressure * (r : ℝ) -
      2 * (3 * parameters.kappa - 1) * (surfaceTension : ℝ) = 0)
    (sEquation : parameters.density * measured * (s : ℝ) ^ 3 -
      3 * parameters.kappa * parameters.pressure * (s : ℝ) -
      2 * (3 * parameters.kappa - 1) * (surfaceTension : ℝ) = 0) : r = s := by
  apply breathing_fixed_tension_injective parameters surfaceTension
  exact ((breathing_cubic_iff parameters (r, surfaceTension) measured).mp rEquation).symm.trans
    ((breathing_cubic_iff parameters (s, surfaceTension) measured).mp sEquation)

/-- The zero-tension state at a supplied positive radius. -/
def zeroTensionState (r : PositiveRadius) : State := (r, ⟨0, le_rfl⟩)

/-- The zero-tension squared angular-frequency formula. -/
def minnaertSquared (parameters : Parameters) (r : PositiveRadius) : ℝ :=
  breathingSquared parameters (zeroTensionState r)

/-- Removing surface tension leaves exactly the inverse-square Minnaert expression. -/
theorem minnaert_squared_formula (parameters : Parameters) (r : PositiveRadius) :
    minnaertSquared parameters r =
      gasCoefficient parameters / (parameters.density * (r : ℝ) ^ 2) := by
  simp [minnaertSquared, breathingSquared, zeroTensionState, tension, radius]

/-- The inverse square-root radius formula takes a squared angular-frequency reading. -/
def minnaertRadiusDecoder (parameters : Parameters) (squaredFrequency : ℝ) : ℝ :=
  Real.sqrt (gasCoefficient parameters / (parameters.density * squaredFrequency))

/-- The zero-tension squared-frequency decoder recovers positive radius exactly. -/
theorem minnaert_radius_decoder (parameters : Parameters) (r : PositiveRadius) :
    minnaertRadiusDecoder parameters (minnaertSquared parameters r) = (r : ℝ) := by
  have hg := (gasCoefficient_pos parameters).ne'
  have hd := parameters.densityPositive.ne'
  have hr := r.property.ne'
  unfold minnaertRadiusDecoder
  rw [minnaert_squared_formula]
  have quotient : gasCoefficient parameters /
      (parameters.density * (gasCoefficient parameters /
        (parameters.density * (r : ℝ) ^ 2))) = (r : ℝ) ^ 2 := by field_simp
  rw [quotient, Real.sqrt_sq r.property.le]

/-- The exact spherical volume law for a zero-tension squared-frequency reading. -/
theorem minnaert_volume_formula (parameters : Parameters) (r : PositiveRadius) :
    sphereVolumeFormula r = (4 / 3 : ℝ) * Real.pi *
      minnaertRadiusDecoder parameters (minnaertSquared parameters r) ^ 3 := by
  rw [minnaert_radius_decoder]
  rfl

/-- The nonnegative angular frequency corresponding to the positive zero-tension square. -/
def minnaertAngularFrequency (parameters : Parameters) (r : PositiveRadius) : ℝ :=
  Real.sqrt (minnaertSquared parameters r)

/-- The ordinary angular frequency is proportional to inverse radius, with the exact coefficient. -/
theorem minnaert_angular_frequency_formula (parameters : Parameters) (r : PositiveRadius) :
    minnaertAngularFrequency parameters r =
      Real.sqrt (gasCoefficient parameters / parameters.density) / (r : ℝ) := by
  unfold minnaertAngularFrequency
  rw [minnaert_squared_formula, ← div_div,
    Real.sqrt_div (div_pos (gasCoefficient_pos parameters) parameters.densityPositive).le,
    Real.sqrt_sq r.property.le]

/-- The inverse angular-frequency expression also recovers the exact positive radius. -/
theorem minnaert_inverse_frequency (parameters : Parameters) (r : PositiveRadius) :
    Real.sqrt (gasCoefficient parameters / parameters.density) /
      minnaertAngularFrequency parameters r = (r : ℝ) := by
  have coefficient := (Real.sqrt_pos.mpr
    (div_pos (gasCoefficient_pos parameters) parameters.densityPositive)).ne'
  have hr := r.property.ne'
  rw [minnaert_angular_frequency_formula]
  field_simp

/-- The volume law in terms of ordinary angular frequency, without a hidden hertz conversion. -/
theorem minnaert_volume_frequency_formula (parameters : Parameters) (r : PositiveRadius) :
    sphereVolumeFormula r = (4 / 3 : ℝ) * Real.pi *
      (Real.sqrt (gasCoefficient parameters / parameters.density) /
        minnaertAngularFrequency parameters r) ^ 3 := by
  rw [minnaert_inverse_frequency]
  rfl

/-- Degrees at least two have positive shape coefficients. -/
theorem shapeCoefficient_pos (degree : ℕ) (degreeAtLeastTwo : 2 ≤ degree) :
    0 < shapeCoefficient degree := by
  have degreeReal : (2 : ℝ) ≤ (degree : ℝ) := by exact_mod_cast degreeAtLeastTwo
  have first : 0 < (degree : ℝ) - 1 := by linarith
  have second : 0 < (degree : ℝ) + 1 := by linarith
  have third : 0 < (degree : ℝ) + 2 := by linarith
  exact mul_pos (mul_pos first second) third

/-- Positive tension makes every physical shape squared-frequency formula positive. -/
theorem shapeSquared_pos (degree : ℕ) (parameters : Parameters) (state : State)
    (degreeAtLeastTwo : 2 ≤ degree) (positiveTension : 0 < tension state) :
    0 < shapeSquared degree parameters state :=
  div_pos (mul_pos (shapeCoefficient_pos degree degreeAtLeastTwo) positiveTension)
    (mul_pos parameters.densityPositive (pow_pos (radius_pos state) 3))

/-- Each degree-indexed shape formula is a fixed multiple of the degree-two reading. -/
theorem shapeSquared_from_degree_two (degree : ℕ) (parameters : Parameters) (state : State) :
    shapeSquared degree parameters state =
      shapeCoefficient degree / 12 * shapeSquared 2 parameters state := by
  rw [shapeSquared_two]
  unfold shapeSquared
  ring

/-- Positive tension permits division by the degree-two reading and gives the exact modal ratio. -/
theorem higher_shape_ratio (degree : ℕ) (parameters : Parameters) (state : State)
    (positiveTension : 0 < tension state) :
    shapeSquared degree parameters state / shapeSquared 2 parameters state =
      shapeCoefficient degree / 12 := by
  have nonzero := (shapeSquared_pos 2 parameters state (by decide) positiveTension).ne'
  rw [shapeSquared_from_degree_two]
  field_simp

/-- At known positive tension, each degree at least two determines the spherical volume formula. -/
theorem shape_volume_formula (degree : ℕ) (parameters : Parameters) (state : State)
    (degreeAtLeastTwo : 2 ≤ degree) (positiveTension : 0 < tension state) :
    sphereVolumeFormula state.1 = (4 / 3 : ℝ) * Real.pi * shapeCoefficient degree *
      tension state / (parameters.density * shapeSquared degree parameters state) := by
  have hc := (shapeCoefficient_pos degree degreeAtLeastTwo).ne'
  have ht := positiveTension.ne'
  have hd := parameters.densityPositive.ne'
  have hr := (radius_pos state).ne'
  unfold shapeSquared sphereVolumeFormula
  change (4 / 3 : ℝ) * Real.pi * radius state ^ 3 = _
  field_simp

/-- The first shape mode gives the exact coefficient sixteen pi in the volume formula. -/
theorem shape_two_volume_formula (parameters : Parameters) (state : State)
    (positiveTension : 0 < tension state) :
    sphereVolumeFormula state.1 = 16 * Real.pi * tension state /
      (parameters.density * shapeSquared 2 parameters state) := by
  rw [shape_volume_formula 2 parameters state (by decide) positiveTension, shapeCoefficient_two]
  ring

end
end BubbleAcoustics
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
