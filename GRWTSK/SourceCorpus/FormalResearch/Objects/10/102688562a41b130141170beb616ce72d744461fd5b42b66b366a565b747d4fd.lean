module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-!
# Cyclic neutral color coordinates

This module represents a phase in `ℝ / ℤ` by a real lift and proves that the
analytic sample is periodic with period one.  `NormalizedPhase` supplies the
canonical representative `t ∈ [0, 1)`.  The lightness, cosine-quadrature green
shift, and opacity coordinates are

```text
L(t) = mid - amplitude * sin(2πt)
q(t) = (1 - cos(2πt)) / 2
G(t) = q(t)
α(t) = q(t) + (1 - q(t)) * |sin(2πt)|.
```

The exact real-valued map is formalized here.  An implementation must retain its
phase as authoritative state: no injectivity claim is made for a quantized RGBA
encoding or for colors after compositing.
-/

public section

namespace Surface.Core.CyclicNeutral

noncomputable section

/-! ## Authoritative data -/

/--
A canonical representative of a cyclic phase.  The retained value is in the
half-open interval `[0, 1)`, so zero represents the wrap point and one is not a
second representation of it.
-/
@[ext]
structure NormalizedPhase where
  value : ℝ
  nonnegative : 0 ≤ value
  lt_one : value < 1

instance instCoeNormalizedPhaseReal : Coe NormalizedPhase ℝ :=
  ⟨NormalizedPhase.value⟩

namespace NormalizedPhase

/-- The wrap point of the normalized phase interval. -/
@[expose]
def zero : NormalizedPhase :=
  ⟨0, by norm_num, by norm_num⟩

/-- One quarter of a turn. -/
@[expose]
def quarter : NormalizedPhase :=
  ⟨1 / 4, by norm_num, by norm_num⟩

/-- One half of a turn. -/
@[expose]
def half : NormalizedPhase :=
  ⟨1 / 2, by norm_num, by norm_num⟩

/-- Three quarters of a turn. -/
@[expose]
def threeQuarters : NormalizedPhase :=
  ⟨3 / 4, by norm_num, by norm_num⟩

/-- Wrap an arbitrary real lift to its canonical representative in `[0, 1)`. -/
@[expose]
def normalize (t : ℝ) : NormalizedPhase :=
  ⟨Int.fract t, Int.fract_nonneg t, Int.fract_lt_one t⟩

@[simp]
theorem value_zero : zero.value = 0 :=
  rfl

@[simp]
theorem value_quarter : quarter.value = (1 / 4 : ℝ) :=
  rfl

@[simp]
theorem value_half : half.value = (1 / 2 : ℝ) :=
  rfl

@[simp]
theorem value_threeQuarters : threeQuarters.value = (3 / 4 : ℝ) :=
  rfl

@[simp]
theorem value_normalize (t : ℝ) : (normalize t).value = Int.fract t :=
  rfl

@[surface_novel, surface_published, simp]
theorem normalize_add_one (t : ℝ) : normalize (t + 1) = normalize t := by
  apply NormalizedPhase.ext
  exact Int.fract_add_one t

@[surface_novel, surface_published, simp]
theorem normalize_zero : normalize 0 = zero := by
  apply NormalizedPhase.ext
  exact Int.fract_zero

@[surface_novel, surface_published, simp]
theorem normalize_one : normalize 1 = zero := by
  apply NormalizedPhase.ext
  exact Int.fract_one

end NormalizedPhase

/-! ## Derived maps or views -/

/-- Convert a turn-valued phase to its angle in radians. -/
@[expose]
def phaseAngle (t : ℝ) : ℝ :=
  2 * Real.pi * t

/-- The cyclic neutral lightness coordinate. -/
@[expose]
def lightness (mid amplitude t : ℝ) : ℝ :=
  mid - amplitude * Real.sin (phaseAngle t)

/-- The cosine quadrature used by `opacity`. -/
@[expose]
def opacityBase (t : ℝ) : ℝ :=
  (1 - Real.cos (phaseAngle t)) / 2

/--
The green-channel shift is the cosine quadrature of the cyclic phase.  Its
range is normalized to `[0, 1]`; it is color data derived from the retained
phase, not a replacement for that phase.
-/
@[expose]
def greenShift (t : ℝ) : ℝ :=
  opacityBase t

/-- Opacity carries the quadrature that separates equal-lightness branches. -/
@[expose]
def opacity (t : ℝ) : ℝ :=
  opacityBase t + (1 - opacityBase t) * |Real.sin (phaseAngle t)|

/-- The exact analytic coordinates derived from a retained phase. -/
@[ext]
structure Sample where
  lightness : ℝ
  opacity : ℝ

/-- Evaluate both exact analytic coordinates at a phase representative. -/
@[expose]
def sample (mid amplitude t : ℝ) : Sample where
  lightness := lightness mid amplitude t
  opacity := opacity t

/-- Lightness evaluated only through a canonical normalized phase. -/
@[expose]
def lightnessAt (mid amplitude : ℝ) (t : NormalizedPhase) : ℝ :=
  lightness mid amplitude t.value

/-- Opacity evaluated only through a canonical normalized phase. -/
@[expose]
def opacityAt (t : NormalizedPhase) : ℝ :=
  opacity t.value

/-- Green shift evaluated only through a canonical normalized phase. -/
@[expose]
def greenShiftAt (t : NormalizedPhase) : ℝ :=
  greenShift t.value

/-- The original lightness/opacity pair evaluated at a normalized phase. -/
@[expose]
def sampleAt (mid amplitude : ℝ) (t : NormalizedPhase) : Sample :=
  sample mid amplitude t.value

/-- Exact lightness, opacity, and green-shift coordinates of a color phase. -/
@[ext]
structure ColorSample where
  lightness : ℝ
  opacity : ℝ
  greenShift : ℝ

/-- Evaluate all exact color coordinates at a real phase representative. -/
@[expose]
def colorSample (mid amplitude t : ℝ) : ColorSample where
  lightness := lightness mid amplitude t
  opacity := opacity t
  greenShift := greenShift t

/-- Evaluate all exact color coordinates at a canonical normalized phase. -/
@[expose]
def colorSampleAt (mid amplitude : ℝ) (t : NormalizedPhase) : ColorSample :=
  colorSample mid amplitude t.value

/-! ## Exact theorems -/

@[simp]
theorem sample_lightness (mid amplitude t : ℝ) :
    (sample mid amplitude t).lightness = lightness mid amplitude t :=
  rfl

@[simp]
theorem sample_opacity (mid amplitude t : ℝ) :
    (sample mid amplitude t).opacity = opacity t :=
  rfl

@[simp]
theorem colorSample_lightness (mid amplitude t : ℝ) :
    (colorSample mid amplitude t).lightness = lightness mid amplitude t :=
  rfl

@[simp]
theorem colorSample_opacity (mid amplitude t : ℝ) :
    (colorSample mid amplitude t).opacity = opacity t :=
  rfl

@[simp]
theorem colorSample_greenShift (mid amplitude t : ℝ) :
    (colorSample mid amplitude t).greenShift = greenShift t :=
  rfl

private theorem phaseAngle_zero : phaseAngle 0 = 0 := by
  simp [phaseAngle]

private theorem phaseAngle_quarter :
    phaseAngle (1 / 4 : ℝ) = Real.pi / 2 := by
  unfold phaseAngle
  ring

private theorem phaseAngle_half :
    phaseAngle (1 / 2 : ℝ) = Real.pi := by
  unfold phaseAngle
  ring

private theorem phaseAngle_three_quarters :
    phaseAngle (3 / 4 : ℝ) = Real.pi / 2 + Real.pi := by
  unfold phaseAngle
  ring

private theorem phaseAngle_one : phaseAngle 1 = 2 * Real.pi := by
  simp [phaseAngle]

/-- Adding one turn adds exactly `2π` to the radian-valued lift. -/
@[surface_novel, surface_published]
theorem phaseAngle_add_one (t : ℝ) :
    phaseAngle (t + 1) = phaseAngle t + 2 * Real.pi := by
  unfold phaseAngle
  ring

private theorem phaseAngle_add_half (t : ℝ) :
    phaseAngle (t + 1 / 2) = phaseAngle t + Real.pi := by
  unfold phaseAngle
  ring

/-! ## Direct period-one rewrite lemmas -/

@[surface_novel, surface_published, simp]
theorem lightness_add_one (mid amplitude t : ℝ) :
    lightness mid amplitude (t + 1) = lightness mid amplitude t := by
  simp [lightness, phaseAngle_add_one, Real.sin_add_two_pi]

@[surface_novel, surface_published, simp]
theorem opacityBase_add_one (t : ℝ) :
    opacityBase (t + 1) = opacityBase t := by
  simp [opacityBase, phaseAngle_add_one, Real.cos_add_two_pi]

@[surface_novel, surface_published, simp]
theorem greenShift_add_one (t : ℝ) :
    greenShift (t + 1) = greenShift t := by
  simp [greenShift]

@[surface_novel, surface_published, simp]
theorem opacity_add_one (t : ℝ) :
    opacity (t + 1) = opacity t := by
  simp [opacity, phaseAngle_add_one, Real.sin_add_two_pi]

@[surface_novel, surface_published, simp]
theorem sample_add_one (mid amplitude t : ℝ) :
    sample mid amplitude (t + 1) = sample mid amplitude t := by
  ext
  · exact lightness_add_one mid amplitude t
  · exact opacity_add_one t

@[surface_novel, surface_published, simp]
theorem colorSample_add_one (mid amplitude t : ℝ) :
    colorSample mid amplitude (t + 1) = colorSample mid amplitude t := by
  ext
  · exact lightness_add_one mid amplitude t
  · exact opacity_add_one t
  · exact greenShift_add_one t

@[surface_novel, surface_published, simp]
theorem lightness_zero (mid amplitude : ℝ) :
    lightness mid amplitude 0 = mid := by
  simp [lightness, phaseAngle_zero]

@[surface_novel, surface_published, simp]
theorem lightness_quarter (mid amplitude : ℝ) :
    lightness mid amplitude (1 / 4 : ℝ) = mid - amplitude := by
  rw [lightness, phaseAngle_quarter, Real.sin_pi_div_two]
  ring

@[surface_novel, surface_published, simp]
theorem lightness_half (mid amplitude : ℝ) :
    lightness mid amplitude (1 / 2 : ℝ) = mid := by
  rw [lightness, phaseAngle_half, Real.sin_pi]
  ring

@[surface_novel, surface_published, simp]
theorem lightness_three_quarters (mid amplitude : ℝ) :
    lightness mid amplitude (3 / 4 : ℝ) = mid + amplitude := by
  rw [lightness, phaseAngle_three_quarters, Real.sin_add_pi, Real.sin_pi_div_two]
  ring

@[surface_novel, surface_published, simp]
theorem lightness_one (mid amplitude : ℝ) :
    lightness mid amplitude 1 = mid := by
  rw [lightness, phaseAngle_one, Real.sin_two_pi]
  ring

@[surface_novel, surface_published, simp]
theorem opacity_zero : opacity 0 = 0 := by
  simp [opacity, opacityBase, phaseAngle_zero]

@[surface_novel, surface_published, simp]
theorem opacity_quarter : opacity (1 / 4 : ℝ) = 1 := by
  rw [opacity, opacityBase, phaseAngle_quarter,
    Real.cos_pi_div_two, Real.sin_pi_div_two]
  norm_num

@[surface_novel, surface_published, simp]
theorem opacity_half : opacity (1 / 2 : ℝ) = 1 := by
  rw [opacity, opacityBase, phaseAngle_half, Real.cos_pi, Real.sin_pi]
  norm_num

@[surface_novel, surface_published, simp]
theorem opacity_three_quarters : opacity (3 / 4 : ℝ) = 1 := by
  rw [opacity, opacityBase, phaseAngle_three_quarters,
    Real.cos_add_pi, Real.cos_pi_div_two, Real.sin_add_pi, Real.sin_pi_div_two]
  norm_num

@[surface_novel, surface_published, simp]
theorem opacity_one : opacity 1 = 0 := by
  rw [opacity, opacityBase, phaseAngle_one, Real.cos_two_pi, Real.sin_two_pi]
  norm_num

@[surface_novel, surface_published]
theorem greenShift_mem_Icc (t : ℝ) : greenShift t ∈ Set.Icc (0 : ℝ) 1 := by
  constructor
  · have h := Real.cos_le_one (phaseAngle t)
    simp only [greenShift, opacityBase]
    linarith
  · have h := Real.neg_one_le_cos (phaseAngle t)
    simp only [greenShift, opacityBase]
    linarith

@[surface_novel, surface_published]
theorem opacity_mem_Icc (t : ℝ) : opacity t ∈ Set.Icc (0 : ℝ) 1 := by
  have hq : opacityBase t ∈ Set.Icc (0 : ℝ) 1 := by
    simpa [greenShift] using greenShift_mem_Icc t
  have hsNonnegative : 0 ≤ |Real.sin (phaseAngle t)| := abs_nonneg _
  have hsAtMostOne : |Real.sin (phaseAngle t)| ≤ 1 :=
    Real.abs_sin_le_one (phaseAngle t)
  have hRemainderNonnegative : 0 ≤ 1 - opacityBase t := sub_nonneg.mpr hq.2
  constructor
  · rw [opacity]
    exact add_nonneg hq.1 (mul_nonneg hRemainderNonnegative hsNonnegative)
  · rw [opacity]
    have hProduct := mul_le_mul_of_nonneg_left hsAtMostOne hRemainderNonnegative
    linarith

@[surface_novel, surface_published, simp]
theorem greenShift_zero : greenShift 0 = 0 := by
  simp [greenShift, opacityBase, phaseAngle_zero]

@[surface_novel, surface_published, simp]
theorem greenShift_quarter : greenShift (1 / 4 : ℝ) = 1 / 2 := by
  rw [greenShift, opacityBase, phaseAngle_quarter, Real.cos_pi_div_two]
  norm_num

@[surface_novel, surface_published, simp]
theorem greenShift_half : greenShift (1 / 2 : ℝ) = 1 := by
  rw [greenShift, opacityBase, phaseAngle_half, Real.cos_pi]
  norm_num

@[surface_novel, surface_published, simp]
theorem greenShift_three_quarters : greenShift (3 / 4 : ℝ) = 1 / 2 := by
  rw [greenShift, opacityBase, phaseAngle_three_quarters,
    Real.cos_add_pi, Real.cos_pi_div_two]
  norm_num

@[surface_novel, surface_published, simp]
theorem greenShift_one : greenShift 1 = 0 := by
  rw [greenShift, opacityBase, phaseAngle_one, Real.cos_two_pi]
  norm_num

/-- A half turn complements the normalized green quadrature. -/
@[surface_novel, surface_published]
theorem greenShift_add_half (t : ℝ) :
    greenShift (t + 1 / 2) = 1 - greenShift t := by
  rw [greenShift, greenShift, opacityBase, opacityBase, phaseAngle_add_half,
    Real.cos_add_pi]
  ring

/-- A half turn reflects lightness exactly across the analytic midpoint. -/
@[surface_novel, surface_published]
theorem lightness_add_half (mid amplitude t : ℝ) :
    lightness mid amplitude (t + 1 / 2) =
      2 * mid - lightness mid amplitude t := by
  rw [lightness, lightness, phaseAngle_add_half, Real.sin_add_pi]
  ring

@[surface_novel, surface_published]
theorem lightness_periodic (mid amplitude : ℝ) :
    Function.Periodic (lightness mid amplitude) 1 := by
  intro t
  rw [lightness, lightness, phaseAngle_add_one, Real.sin_add_two_pi]

@[surface_novel, surface_published]
theorem opacity_periodic :
    Function.Periodic opacity 1 := by
  intro t
  rw [opacity, opacity, opacityBase, opacityBase, phaseAngle_add_one,
    Real.cos_add_two_pi, Real.sin_add_two_pi]

@[surface_novel, surface_published]
theorem greenShift_periodic :
    Function.Periodic greenShift 1 := by
  intro t
  rw [greenShift, greenShift, opacityBase, opacityBase, phaseAngle_add_one,
    Real.cos_add_two_pi]

@[surface_novel, surface_published]
theorem sample_periodic (mid amplitude : ℝ) :
    Function.Periodic (sample mid amplitude) 1 := by
  intro t
  ext
  · exact lightness_periodic mid amplitude t
  · exact opacity_periodic t

@[surface_novel, surface_published]
theorem colorSample_periodic (mid amplitude : ℝ) :
    Function.Periodic (colorSample mid amplitude) 1 := by
  intro t
  ext
  · exact lightness_periodic mid amplitude t
  · exact opacity_periodic t
  · exact greenShift_periodic t

@[surface_novel, surface_published, simp]
theorem sample_zero (mid amplitude : ℝ) :
    sample mid amplitude 0 = ⟨mid, 0⟩ := by
  apply Sample.ext
  · exact lightness_zero mid amplitude
  · exact opacity_zero

@[surface_novel, surface_published, simp]
theorem sample_quarter (mid amplitude : ℝ) :
    sample mid amplitude (1 / 4 : ℝ) = ⟨mid - amplitude, 1⟩ := by
  apply Sample.ext
  · exact lightness_quarter mid amplitude
  · exact opacity_quarter

@[surface_novel, surface_published, simp]
theorem sample_half (mid amplitude : ℝ) :
    sample mid amplitude (1 / 2 : ℝ) = ⟨mid, 1⟩ := by
  apply Sample.ext
  · exact lightness_half mid amplitude
  · exact opacity_half

@[surface_novel, surface_published, simp]
theorem sample_three_quarters (mid amplitude : ℝ) :
    sample mid amplitude (3 / 4 : ℝ) = ⟨mid + amplitude, 1⟩ := by
  apply Sample.ext
  · exact lightness_three_quarters mid amplitude
  · exact opacity_three_quarters

@[surface_novel, surface_published, simp]
theorem sample_one (mid amplitude : ℝ) :
    sample mid amplitude 1 = ⟨mid, 0⟩ := by
  apply Sample.ext
  · exact lightness_one mid amplitude
  · exact opacity_one

@[surface_novel, surface_published, simp]
theorem colorSample_zero (mid amplitude : ℝ) :
    colorSample mid amplitude 0 = ⟨mid, 0, 0⟩ := by
  apply ColorSample.ext
  · exact lightness_zero mid amplitude
  · exact opacity_zero
  · exact greenShift_zero

@[surface_novel, surface_published, simp]
theorem colorSample_quarter (mid amplitude : ℝ) :
    colorSample mid amplitude (1 / 4 : ℝ) =
      ⟨mid - amplitude, 1, 1 / 2⟩ := by
  apply ColorSample.ext
  · exact lightness_quarter mid amplitude
  · exact opacity_quarter
  · exact greenShift_quarter

@[surface_novel, surface_published, simp]
theorem colorSample_half (mid amplitude : ℝ) :
    colorSample mid amplitude (1 / 2 : ℝ) = ⟨mid, 1, 1⟩ := by
  apply ColorSample.ext
  · exact lightness_half mid amplitude
  · exact opacity_half
  · exact greenShift_half

@[surface_novel, surface_published, simp]
theorem colorSample_three_quarters (mid amplitude : ℝ) :
    colorSample mid amplitude (3 / 4 : ℝ) =
      ⟨mid + amplitude, 1, 1 / 2⟩ := by
  apply ColorSample.ext
  · exact lightness_three_quarters mid amplitude
  · exact opacity_three_quarters
  · exact greenShift_three_quarters

@[surface_novel, surface_published, simp]
theorem colorSampleAt_zero (mid amplitude : ℝ) :
    colorSampleAt mid amplitude NormalizedPhase.zero = ⟨mid, 0, 0⟩ := by
  simp [colorSampleAt]

@[surface_novel, surface_published, simp]
theorem colorSampleAt_quarter (mid amplitude : ℝ) :
    colorSampleAt mid amplitude NormalizedPhase.quarter =
      ⟨mid - amplitude, 1, 1 / 2⟩ := by
  simpa [colorSampleAt] using colorSample_quarter mid amplitude

@[surface_novel, surface_published, simp]
theorem colorSampleAt_half (mid amplitude : ℝ) :
    colorSampleAt mid amplitude NormalizedPhase.half = ⟨mid, 1, 1⟩ := by
  simpa [colorSampleAt] using colorSample_half mid amplitude

@[surface_novel, surface_published, simp]
theorem colorSampleAt_three_quarters (mid amplitude : ℝ) :
    colorSampleAt mid amplitude NormalizedPhase.threeQuarters =
      ⟨mid + amplitude, 1, 1 / 2⟩ := by
  simp [colorSampleAt]

/--
The two normalized half-turn anchors with analytic neutral lightness remain
distinct in the derived color coordinates.  The retained normalized phase is
still authoritative after quantization or compositing.
-/
@[surface_novel, surface_published]
theorem normalized_neutral_half_distinct (mid amplitude : ℝ) :
    colorSampleAt mid amplitude NormalizedPhase.zero ≠
      colorSampleAt mid amplitude NormalizedPhase.half := by
  rw [colorSampleAt_zero, colorSampleAt_half]
  intro h
  have hGreen := congrArg ColorSample.greenShift h
  norm_num at hGreen

/-- Phase one is the same point of `ℝ / ℤ` as phase zero. -/
@[surface_novel, surface_published]
theorem sample_wrap (mid amplitude : ℝ) :
    sample mid amplitude 1 = sample mid amplitude 0 := by
  rw [sample_one, sample_zero]

/--
The two analytic-grey antipodes have equal lightness, while their exact opacity
coordinates differ.  This theorem is about the unquantized pair only.
-/
@[surface_novel, surface_published]
theorem neutral_antipodes_distinct (mid amplitude : ℝ) :
    sample mid amplitude 0 ≠ sample mid amplitude (1 / 2 : ℝ) := by
  rw [sample_zero, sample_half]
  intro h
  have hOpacity := congrArg Sample.opacity h
  norm_num at hOpacity

/-! ## Authoritative phase and derived color view -/

/--
A color sample bundled with the exact normalized phase from which it was
derived.  The phase remains stored explicitly because quantization and
compositing need not preserve enough information to recover it from color.
-/
structure PhaseDerivedColor (mid amplitude : ℝ) where
  phase : NormalizedPhase
  sample : ColorSample
  sample_eq : sample = colorSampleAt mid amplitude phase

@[surface_novel, surface_published]
theorem phaseDerivedColor_retains_authoritative_phase
    {mid amplitude : ℝ} (derived : PhaseDerivedColor mid amplitude) :
    ∃ phase : NormalizedPhase,
      phase = derived.phase ∧
        derived.sample = colorSampleAt mid amplitude phase := by
  exact ⟨derived.phase, rfl, derived.sample_eq⟩

/-! ## Authority boundary / non-claims -/

/-- A derived color sample is not evidence for an arithmetic torsion claim. -/
@[expose]
def ProvesColorimetricTorsion (_ : ColorSample) : Prop := False

@[surface_novel, surface_published]
theorem cyclicNeutral_has_no_colorimetric_torsion_authority
    (sample : ColorSample) :
    ¬ ProvesColorimetricTorsion sample := by
  simp [ProvesColorimetricTorsion]

end

end Surface.Core.CyclicNeutral
