module

public meta import Surface.Core.Classification
public import Surface.Core.CyclicNeutral
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Angle
public import Mathlib.Topology.Instances.AddCircle.Real
import Mathlib.Tactic

/-!
# Intrinsic angles for cyclic neutral coordinates

`CyclicNeutral.NormalizedPhase` remains the authoritative storage and UI type:
it records the unique turn representative in `[0, 1)`.  This module supplies an
exact bridge to `Real.Angle = ℝ ⧸ 2πℤ`, the intrinsic analytic type used by
`Real.Angle.sin` and `Real.Angle.cos`.

The quotient whose units are literally turns is `UnitAddCircle = AddCircle 1`.
`turnCircleEquivAngle` records the exact rescaling from that quotient to the
radian quotient.  `NormalizedPhase` is then the canonical half-open storage
coordinate, `UnitAddCircle` the intrinsic turn space, and `Real.Angle` the
trigonometric presentation of the same circle.

The forward map multiplies turns by `2π`.  The inverse deliberately uses
`AddCircle.equivIco` to select radians in `[0, 2π)` and then divides by `2π`.
Thus the two representations are exactly equivalent, while serving different
purposes: `NormalizedPhase` is stable serialization data and `Real.Angle`
removes periodicity boilerplate from trigonometric definitions.

Two cut-coordinate cautions are explicit:

* `Real.Angle.toReal` is the *signed* representative in `(-π, π]`; it is not
  the `[0, 2π)` representative used by `fromAngle`.
  Consequently, `(toAngle t).toReal = phaseAngle t.value` is true only through
  the closed first half-turn `t.value ≤ 1 / 2`.  After that cut, `toReal`
  subtracts exactly `2π`: at three quarters, for example, the stored radian
  lift is `3π / 2` while the signed representative is `-π / 2`.
* The numeric representative selected by `fromAngle` jumps at the wrap point.
  This is an unavoidable coordinate cut, not a discontinuity of functions
  defined intrinsically on `Real.Angle`.

Finally, moving trigonometric evaluation to `Real.Angle` does not remove the
factor `2π` from derivatives with respect to a real turn parameter.  For a
real lift `t ↦ (2πt : Real.Angle)`, the ordinary real chain rule still supplies
that factor.
-/

public section

namespace Surface.Core.CyclicAngle

noncomputable section

open Surface.Core.CyclicNeutral

/-! ## Authoritative data: intrinsic turn and radian quotients -/

/-- The intrinsic circle measured in turns: `ℝ / ℤ`. -/
abbrev TurnCircle :=
  UnitAddCircle

/-- Rescale the intrinsic turn circle to the intrinsic radian circle. -/
@[expose]
def turnCircleEquivAngle : TurnCircle ≃+ Real.Angle :=
  AddCircle.equivAddCircle (1 : ℝ) (2 * Real.pi)
    one_ne_zero (ne_of_gt Real.two_pi_pos)

/-- On real lifts, the quotient rescaling is exactly multiplication by `2π`. -/
@[surface_adapter, surface_published]
theorem turnCircleEquivAngle_coe (t : ℝ) :
    turnCircleEquivAngle (t : TurnCircle) =
      (phaseAngle t : Real.Angle) := by
  change
    AddCircle.equivAddCircle (1 : ℝ) (2 * Real.pi)
      one_ne_zero (ne_of_gt Real.two_pi_pos) (t : AddCircle (1 : ℝ)) =
        (phaseAngle t : AddCircle (2 * Real.pi))
  rw [AddCircle.equivAddCircle_apply_mk]
  congr 1
  simp only [phaseAngle, inv_one, one_mul]
  ring

/-! ## Derived maps or views -/

/-- Map an arbitrary real number of turns to its intrinsic angle. -/
@[expose]
def turnsToAngle (t : ℝ) : Real.Angle :=
  (phaseAngle t : Real.Angle)

/--
Map the canonical stored turn representative to its intrinsic angle.  Storage
remains in `NormalizedPhase`; this map is the analytic boundary.
-/
@[expose]
def toAngle (t : NormalizedPhase) : Real.Angle :=
  turnsToAngle t.value

/-- The canonical radian representative of an angle in `[0, 2π)`. -/
@[expose]
def radiansIco (θ : Real.Angle) :
    Set.Ico (0 : ℝ) (0 + 2 * Real.pi) := by
  letI : Fact (0 < 2 * Real.pi) := ⟨Real.two_pi_pos⟩
  exact AddCircle.equivIco (2 * Real.pi) 0 θ

/--
Recover the canonical stored turn from an intrinsic angle by selecting its
radian representative in `[0, 2π)` and dividing by `2π`.

This is intentionally *not* defined with `Real.Angle.toReal`, whose range is
the signed interval `(-π, π]`.  As a real coordinate, this representative has
the unavoidable jump from values approaching `1` back to `0` at the cut.
-/
@[expose]
def fromAngle (θ : Real.Angle) : NormalizedPhase where
  value := (radiansIco θ : ℝ) / (2 * Real.pi)
  nonnegative := div_nonneg (radiansIco θ).property.1 Real.two_pi_pos.le
  lt_one := (div_lt_one Real.two_pi_pos).2 (by
    simpa only [zero_add] using (radiansIco θ).property.2)

private theorem phaseAngle_mem_Ico (t : NormalizedPhase) :
    phaseAngle t.value ∈ Set.Ico (0 : ℝ) (2 * Real.pi) := by
  constructor
  · exact mul_nonneg Real.two_pi_pos.le t.nonnegative
  · simpa only [phaseAngle, mul_one] using
      (mul_lt_mul_of_pos_left t.lt_one Real.two_pi_pos)

/-! ## Exact theorems: the signed `Real.Angle.toReal` coordinate cut -/

/--
On the first closed half-turn, the signed representative chosen by
`Real.Angle.toReal` is the nonnegative radian lift itself.  The endpoint is
included because `toReal` uses the interval `(-π, π]`, so the half-turn is
represented by `π`, not `-π`.
-/
@[surface_novel, surface_published]
theorem toAngle_toReal_eq_phaseAngle_of_le_half (t : NormalizedPhase)
    (ht : t.value ≤ (1 / 2 : ℝ)) :
    (toAngle t).toReal = phaseAngle t.value := by
  unfold toAngle turnsToAngle
  apply Real.Angle.toReal_coe_eq_self_iff.2
  constructor
  · have hnonnegative : 0 ≤ phaseAngle t.value :=
      mul_nonneg Real.two_pi_pos.le t.nonnegative
    linarith [Real.pi_pos]
  · unfold phaseAngle
    calc
      2 * Real.pi * t.value ≤ 2 * Real.pi * (1 / 2 : ℝ) :=
        mul_le_mul_of_nonneg_left ht Real.two_pi_pos.le
      _ = Real.pi := by ring

/--
On the open second half-turn, the signed representative chosen by
`Real.Angle.toReal` is the canonical nonnegative radian lift minus `2π`.
Together with `toAngle_toReal_eq_phaseAngle_of_le_half`, this exhausts every
`NormalizedPhase`, whose stored value is always strictly below `1`.
-/
@[surface_novel, surface_published]
theorem toAngle_toReal_eq_phaseAngle_sub_two_pi_of_half_lt
    (t : NormalizedPhase) (ht : (1 / 2 : ℝ) < t.value) :
    (toAngle t).toReal = phaseAngle t.value - 2 * Real.pi := by
  unfold toAngle turnsToAngle
  apply Real.Angle.toReal_coe_eq_self_sub_two_pi_iff.2
  constructor
  · unfold phaseAngle
    calc
      Real.pi = 2 * Real.pi * (1 / 2 : ℝ) := by ring
      _ < 2 * Real.pi * t.value :=
        mul_lt_mul_of_pos_left ht Real.two_pi_pos
  · have hlt : phaseAngle t.value < 2 * Real.pi :=
      (phaseAngle_mem_Ico t).2
    linarith [Real.pi_pos]

/-- Converting the canonical turn to an angle and back loses no information. -/
@[surface_novel, surface_published, simp]
theorem fromAngle_toAngle (t : NormalizedPhase) :
    fromAngle (toAngle t) = t := by
  letI : Fact (0 < 2 * Real.pi) := ⟨Real.two_pi_pos⟩
  apply NormalizedPhase.ext
  have hIco := phaseAngle_mem_Ico t
  have hIco' :
      phaseAngle t.value ∈ Set.Ico (0 : ℝ) (0 + 2 * Real.pi) := by
    simpa only [zero_add] using hIco
  have hEq :
      radiansIco (toAngle t) =
        ⟨phaseAngle t.value, hIco'⟩ := by
    unfold radiansIco toAngle turnsToAngle
    exact AddCircle.equivIco_coe_eq hIco'
  rw [fromAngle]
  change (radiansIco (toAngle t) : ℝ) / (2 * Real.pi) = t.value
  rw [hEq]
  simp only [phaseAngle]
  exact mul_div_cancel_left₀ t.value (mul_ne_zero two_ne_zero Real.pi_ne_zero)

/-- Converting an intrinsic angle through `[0, 2π)` returns the same angle. -/
@[surface_novel, surface_published, simp]
theorem toAngle_fromAngle (θ : Real.Angle) :
    toAngle (fromAngle θ) = θ := by
  letI : Fact (0 < 2 * Real.pi) := ⟨Real.two_pi_pos⟩
  unfold toAngle turnsToAngle fromAngle
  change
    ((phaseAngle ((radiansIco θ : ℝ) / (2 * Real.pi)) : ℝ) :
        Real.Angle) = θ
  have hScale :
      phaseAngle ((radiansIco θ : ℝ) / (2 * Real.pi)) =
        (radiansIco θ : ℝ) := by
    simp only [phaseAngle]
    field_simp
  rw [hScale]
  unfold radiansIco
  exact AddCircle.coe_equivIco

/-- The storage/angle bridge as an actual equivalence. -/
@[expose]
def normalizedPhaseEquivAngle : NormalizedPhase ≃ Real.Angle where
  toFun := toAngle
  invFun := fromAngle
  left_inv := fromAngle_toAngle
  right_inv := toAngle_fromAngle

/--
The exact storage equivalence expressed on the intrinsic turn circle.  This is
obtained by rescaling the already-proved radian-circle equivalence; it does not
choose an additional branch cut.
-/
@[expose]
def normalizedPhaseEquivTurnCircle : NormalizedPhase ≃ TurnCircle :=
  normalizedPhaseEquivAngle.trans turnCircleEquivAngle.toEquiv.symm

@[surface_novel, surface_published, simp]
theorem normalizedPhaseEquivTurnCircle_symm_apply_apply
    (phase : NormalizedPhase) :
    normalizedPhaseEquivTurnCircle.symm
        (normalizedPhaseEquivTurnCircle phase) = phase :=
  normalizedPhaseEquivTurnCircle.symm_apply_apply phase

@[surface_novel, surface_published, simp]
theorem normalizedPhaseEquivTurnCircle_apply_symm_apply
    (turn : TurnCircle) :
    normalizedPhaseEquivTurnCircle
        (normalizedPhaseEquivTurnCircle.symm turn) = turn :=
  normalizedPhaseEquivTurnCircle.apply_symm_apply turn

@[surface_novel, surface_published, simp]
theorem toAngle_zero : toAngle NormalizedPhase.zero = 0 := by
  simp [toAngle, turnsToAngle, phaseAngle]

@[surface_novel, surface_published, simp]
theorem toAngle_quarter :
    toAngle NormalizedPhase.quarter = (Real.pi / 2 : ℝ) := by
  unfold toAngle turnsToAngle phaseAngle
  simp only [NormalizedPhase.value_quarter]
  congr 1
  ring

@[surface_novel, surface_published, simp]
theorem toAngle_half :
    toAngle NormalizedPhase.half = (Real.pi : Real.Angle) := by
  unfold toAngle turnsToAngle phaseAngle
  simp only [NormalizedPhase.value_half]
  congr 1
  ring

@[surface_novel, surface_published, simp]
theorem toAngle_threeQuarters :
    toAngle NormalizedPhase.threeQuarters = (3 * Real.pi / 2 : ℝ) := by
  unfold toAngle turnsToAngle phaseAngle
  simp only [NormalizedPhase.value_threeQuarters]
  congr 1
  ring

@[surface_novel, surface_published, simp]
theorem fromAngle_zero : fromAngle 0 = NormalizedPhase.zero := by
  rw [← toAngle_zero]
  exact fromAngle_toAngle NormalizedPhase.zero

@[surface_novel, surface_published, simp]
theorem fromAngle_piDivTwo :
    fromAngle (Real.pi / 2 : ℝ) = NormalizedPhase.quarter := by
  rw [← toAngle_quarter]
  exact fromAngle_toAngle NormalizedPhase.quarter

@[surface_novel, surface_published, simp]
theorem fromAngle_pi :
    fromAngle (Real.pi : Real.Angle) = NormalizedPhase.half := by
  rw [← toAngle_half]
  exact fromAngle_toAngle NormalizedPhase.half

@[surface_novel, surface_published, simp]
theorem fromAngle_threePiDivTwo :
    fromAngle (3 * Real.pi / 2 : ℝ) =
      NormalizedPhase.threeQuarters := by
  rw [← toAngle_threeQuarters]
  exact fromAngle_toAngle NormalizedPhase.threeQuarters

/-! ## Intrinsic analytic coordinates -/

/-- Cyclic neutral lightness as a function on the angle quotient. -/
@[expose]
def lightness (mid amplitude : ℝ) (θ : Real.Angle) : ℝ :=
  mid - amplitude * Real.Angle.sin θ

/-- Cosine quadrature as a function on the angle quotient. -/
@[expose]
def opacityBase (θ : Real.Angle) : ℝ :=
  (1 - Real.Angle.cos θ) / 2

/-- Intrinsic green-channel quadrature. -/
@[expose]
def greenShift (θ : Real.Angle) : ℝ :=
  opacityBase θ

/-- Intrinsic opacity coordinate. -/
@[expose]
def opacity (θ : Real.Angle) : ℝ :=
  opacityBase θ + (1 - opacityBase θ) * |Real.Angle.sin θ|

/-- Intrinsic lightness agrees exactly with the existing real-turn formula. -/
@[surface_novel, surface_published, simp]
theorem lightness_turnsToAngle (mid amplitude t : ℝ) :
    lightness mid amplitude (turnsToAngle t) =
      CyclicNeutral.lightness mid amplitude t := by
  simp [lightness, turnsToAngle, CyclicNeutral.lightness,
    Real.Angle.sin_coe]

/-- Intrinsic quadrature agrees exactly with the existing real-turn formula. -/
@[surface_novel, surface_published, simp]
theorem opacityBase_turnsToAngle (t : ℝ) :
    opacityBase (turnsToAngle t) = CyclicNeutral.opacityBase t := by
  simp [opacityBase, turnsToAngle, CyclicNeutral.opacityBase,
    Real.Angle.cos_coe]

/-- Intrinsic green shift agrees exactly with the existing real-turn formula. -/
@[surface_novel, surface_published, simp]
theorem greenShift_turnsToAngle (t : ℝ) :
    greenShift (turnsToAngle t) = CyclicNeutral.greenShift t := by
  simp [greenShift, CyclicNeutral.greenShift]

/-- Intrinsic opacity agrees exactly with the existing real-turn formula. -/
@[surface_novel, surface_published, simp]
theorem opacity_turnsToAngle (t : ℝ) :
    opacity (turnsToAngle t) = CyclicNeutral.opacity t := by
  rw [opacity, CyclicNeutral.opacity, opacityBase_turnsToAngle]
  simp only [turnsToAngle, Real.Angle.sin_coe]

@[surface_novel, surface_published, simp]
theorem lightness_toAngle (mid amplitude : ℝ) (t : NormalizedPhase) :
    lightness mid amplitude (toAngle t) =
      CyclicNeutral.lightnessAt mid amplitude t := by
  exact lightness_turnsToAngle mid amplitude t.value

@[surface_novel, surface_published, simp]
theorem opacityBase_toAngle (t : NormalizedPhase) :
    opacityBase (toAngle t) = CyclicNeutral.opacityBase t.value := by
  exact opacityBase_turnsToAngle t.value

@[surface_novel, surface_published, simp]
theorem greenShift_toAngle (t : NormalizedPhase) :
    greenShift (toAngle t) = CyclicNeutral.greenShiftAt t := by
  exact greenShift_turnsToAngle t.value

@[surface_novel, surface_published, simp]
theorem opacity_toAngle (t : NormalizedPhase) :
    opacity (toAngle t) = CyclicNeutral.opacityAt t := by
  exact opacity_turnsToAngle t.value

/-! ## Authority boundary / non-claims -/

/-- A circle-valued hue coordinate is not an elliptic uniformization proof. -/
@[expose]
def ProvesEllipticUniformization (_ : NormalizedPhase) : Prop := False

@[surface_novel, surface_published]
theorem cyclicAngle_has_no_elliptic_uniformization_authority
    (phase : NormalizedPhase) :
    ¬ ProvesEllipticUniformization phase := by
  simp [ProvesEllipticUniformization]

end

end Surface.Core.CyclicAngle
