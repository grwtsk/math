/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNormalizedRationalPair
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandSeed

set_option autoImplicit false

/-!
# Source-bound normalized pair at height eighteen and hostile controls

Forty logarithm degrees, ninety-six exponential terms, cutoff four. All centers
are rounded from finite rational polynomials, not transcendental evaluations.
Ordinary decide scripts below have NOT been executed and may require resource
repairs. This excludes ONE actual point, not a neighborhood or WindowRH 18.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.MultiplierNormalized
open Complex
open CriticalStripHeightDescent CriticalStripHeightDescent.ZeroIsolation
open NormalizedRationalPair
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
open GRWTSK.Analysis.ComplexAnalysis.SymmetricPair.Rational
open CenteredMellin.SexticPrimitive

def plus1 : RationalPowerEvaluation.Proposal :=
  ⟨40,96,⟨1,0⟩,0⟩
def plus2 : RationalPowerEvaluation.Proposal :=
  ⟨40,96,⟨10174123075/17179869184,28602923/536870912⟩,1/68719476736⟩
def plus3 : RationalPowerEvaluation.Proposal :=
  ⟨40,96,⟨9066043255/34359738368,-24084170987/68719476736⟩,1/68719476736⟩
def plus4 : RationalPowerEvaluation.Proposal :=
  ⟨40,96,⟨23905890545/68719476736,2168190931/34359738368⟩,253/68719476736⟩
def minus1 : RationalPowerEvaluation.Proposal :=
  ⟨40,96,⟨1,0⟩,0⟩
def minus2 : RationalPowerEvaluation.Proposal :=
  ⟨40,96,⟨7194191419/8589934592,323605133/4294967296⟩,1/68719476736⟩
def minus3 : RationalPowerEvaluation.Proposal :=
  ⟨40,96,⟨31405695083/68719476736,-651796997/1073741824⟩,1/68719476736⟩
def minus4 : RationalPowerEvaluation.Proposal :=
  ⟨40,96,⟨47811781089/68719476736,8672763723/68719476736⟩,123/34359738368⟩

def actual : Input := ⟨⟨[plus1,plus2,plus3,plus4]⟩,⟨[minus1,minus2,minus3,minus4]⟩⟩

/-- The full guard, including all power proposals, not only the final channel bit. -/
theorem actual_accepts : Input.check actual 4 (3/4) 18=true := by decide

theorem actual_not_target : ¬ NontrivialZetaZero (⟨3/4,18⟩ : ℂ) :=
  Input.not_target actual_accepts

example : sourceValue 4=(1/154828800 : ℚ) := by decide
example : sourceSecant 4=(1/30965760 : ℚ) := by decide

lemma actual_even_radius : (Input.packed actual 4 (3/4) 18).evenRadius ≤ (1/100000000 : ℚ) := by decide
lemma actual_even_center : (1/20000000 : ℚ)^2 <
    (Input.packed actual 4 (3/4) 18).evenCenter.normSq := by decide

/-- A real bound on the NORMALIZED source channel, not a raw-H energy claim. -/
theorem actual_even_lower : (1/25000000 : ℝ) ≤
    ‖even UnitNormalization.source (⟨1/2,18⟩ : ℂ) (1/4 : ℂ)‖ := by
  obtain ⟨⟨hx,hx1,hoff⟩,hp,hm,hpass⟩ := (Input.check_iff actual 4 (3/4) 18).mp actual_accepts
  have hv := Input.valid hx hx1 hoff hp hm
  have hl := Selected.channel_lower hv.1
  have hr : ((Input.packed actual 4 (3/4) 18).evenRadius : ℝ) ≤ 1/100000000 :=
    by exact_mod_cast actual_even_radius
  have hs : (1/20000000 : ℝ)^2 <
      ‖(Input.packed actual 4 (3/4) 18).evenCenter.value‖^2 := by
    rw [← Gaussian.normSq_cast]
    exact_mod_cast actual_even_center
  have hn : (1/20000000 : ℝ) ≤ ‖(Input.packed actual 4 (3/4) 18).evenCenter.value‖ :=
    by nlinarith [norm_nonneg (Input.packed actual 4 (3/4) 18).evenCenter.value]
  change ‖(Input.packed actual 4 (3/4) 18).evenCenter.value‖-
      ((Input.packed actual 4 (3/4) 18).evenRadius : ℝ) ≤
      ‖even UnitNormalization.source (RationalEvaluatedPair.pairCenter 18)
        (RationalEvaluatedPair.pairOffset (3/4))‖ at hl
  norm_num [RationalEvaluatedPair.pairCenter,RationalEvaluatedPair.pairOffset,
    RationalEvaluatedPair.displacement,Gaussian.value] at hl
  linarith

-- Source/domain guards remain essential after normalization.
example : Input.check actual 0 (3/4) 18=false := by decide
example : Input.check actual 3 (3/4) 18=false := by decide
example : Input.check actual 4 (1/2) 18=false := by decide
example : Input.check actual 4 1 18=false := by decide
example : Input.check actual 4 0 18=false := by decide
example : Input.check actual 4 (3/4) 19=false := by decide
example : ({plus2 with radius := 0} : RationalPowerEvaluation.Proposal).check 2
    (RationalEvaluatedPair.plusPoint (3/4) 18)=false := by decide

-- A zero denominator creates a spurious totalized quotient; no global-unit claim.
example : UnitNormalization.source 1=0 ∧ poleNormalizedZeta 1=1 ∧
    (1 : ℂ) ∉ UnitNormalization.strip := UnitNormalization.excluded_pole_control

-- Unit normalization is not an isometry of the pair energy.
example : energy (fun _ : ℂ => (1 : ℂ)) 0 1=1 ∧
    energy (fun _ : ℂ => (1 : ℂ)/2) 0 1=1/4 := by norm_num [energy,even,odd]

-- Pointwise division of channels is false, even for a nonzero endpoint multiplier.
example : even (fun z : ℂ => z/(2+z)) 0 1= -(1/3 : ℂ) ∧
    even (fun z : ℂ => z) 0 1/even (fun z : ℂ => 2+z) 0 1=0 := by
  norm_num [even]

-- Small or zero approximation errors cannot rule out a genuine mirror-zero pair.
example : even (fun z : ℂ => z^2-1) 0 1=0 ∧
    odd (fun z : ℂ => z^2-1) 0 1=0 := by norm_num [even,odd]

-- The remaining cover must supply actual margins at EVERY eligible point.
example (h : ∀ z ∈ HeightFiber.successorBox 17, MirrorApproximation.Eligible z →
    ∃ N : ℕ, 1 ≤ N ∧
      (C1Approximation.tailRadius N < ‖even (UnitNormalization.model N)
        (MirrorChannels.center z) (MirrorChannels.offset z)‖ ∨
       C1Approximation.logRadius N < ‖odd (UnitNormalization.model N)
        (MirrorChannels.center z) (MirrorChannels.offset z)‖)) : WindowRH 18 :=
  UnitNormalization.window_successor_of_model_channels SeventeenBandJet.windowRH_seventeen h

end GRWTSK.RiemannHypothesis.Checks.MultiplierNormalized
