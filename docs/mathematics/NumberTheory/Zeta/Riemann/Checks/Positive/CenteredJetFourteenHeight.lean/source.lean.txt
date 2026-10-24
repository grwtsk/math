/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffFourEightOverlap

set_option autoImplicit false
set_option maxRecDepth 8192

/-! UNELABORATED regression scripts. These are not test execution receipts. -/
namespace GRWTSK.RiemannHypothesis.Checks.CenteredJetFourteenHeight
open Complex
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
open CutoffEightJet
noncomputable section

example (s : ℂ) : CenteredMellin.SexticPrimitive.finiteModel 8 s =
    (s-1)*(∑ i : Fin 8, (((i.val+1 : ℕ) : ℂ))^(-s))+weight s*(8 : ℂ)^(-s) :=
  finiteModel_eight s

example (i : Fin 8) :
    ‖(((i.val+1 : ℕ) : ℂ))^(-center)-sample i‖ ≤ sampleRadius := sample_enclosed i

example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    ‖poleNormalizedZeta s-polynomial s‖ ≤ (1/20 : ℝ) := source_enclosed hx hx1 ht ht1

example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    (13/4 : ℝ) ≤ (poleNormalizedZeta s*(starRingEnd ℂ) (direction s)).re :=
  source_projection hx hx1 ht ht1

example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    (1/5 : ℝ) ≤ ‖poleNormalizedZeta s‖ := poleNormalized_norm_lower_fourteenUpperBand hx hx1 ht ht1

example : ShellRH 13 := shellRH_thirteen
example : WindowRH 14 := windowRH_fourteen
-- Inhabit the PREVIOUS next-step interface without changing its proposition.
example : WindowRH 14 := CenteredMellin.SexticPrimitive.CutoffTwo.window_fourteen_of_shell shellRH_thirteen

example {z : ℂ} (hz : NontrivialZetaZero z) :
    (14 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_fourteen hz

example : (4 : ℝ)-(1/20)*15=13/4 := by norm_num
example : (1/5 : ℝ)<(13/4)/15 := by norm_num
-- The direction is not the old reference, and it vanishes at 1.
example : direction (1 : ℂ)=0 := by simp [direction]
example : CutoffEightJet.deformation 0 1=0 := by simp [direction]
example (s : ℂ) : CutoffEightJet.deformation 1 s =
    CenteredMellin.SexticPrimitive.CutoffTwo.deformation 1 s := by simp
-- Small approximation error alone does not exclude a source zero.
example : ‖(0 : ℂ)-1/40‖ ≤ (1/20 : ℝ) := by norm_num
-- A sign error in the rotated projection reverses positivity.
example : -(((I : ℂ)*(starRingEnd ℂ) 1).im) = -1 := by norm_num
example : -(((-I : ℂ)*(starRingEnd ℂ) 1).im) = 1 := by norm_num
-- This is a polynomial, NOT a zeta-zero witness, and lies outside the admitted band.
example : projection (⟨1/2,29/2⟩ : ℂ)<0 := by
  norm_num [projection,polynomial,coefficient,center,Fin.sum_univ_succ,
    Complex.mul_re,Complex.mul_im,Complex.conj_re,Complex.conj_im]

example {s : ℂ} {t : ℝ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) (hl : 0 ≤ t) (hu : t ≤ 1) :
    (1/5 : ℝ) ≤ ‖CutoffEightJet.deformation t s‖ := deformation_norm_lower hx hx1 ht ht1 hl hu

-- Later shells permit critical-line zeros and retain their genuine missing proof.
example (h : ShellRH 14) : WindowRH 15 := window_fifteen_of_shell h
example (h : ∀ N : ℕ, 14 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_fourteen h

-- Independent cutoff-four and cutoff-eight objects agree through H, not by name.
example : CutoffEightJet.center = FourteenJet.center := CutoffFourEightOverlap.centers_agree
example {s : ℂ} (hs : 0 < s.re) :
    CenteredMellin.SexticPrimitive.finiteModel 8 s - CenteredMellin.SexticPrimitive.finiteModel 4 s =
      CenteredMellin.SexticPrimitive.multiplier s *
        (CenteredMellin.SexticPrimitive.tail 8 s - CenteredMellin.SexticPrimitive.tail 4 s) :=
  CutoffFourEightOverlap.finite_cutoff_telescope hs
example {s : ℂ} (hs : CenteredMellin.SexticPrimitive.CutoffFour.Band s) :
    ‖CutoffEightJet.polynomial s - CenteredMellin.SexticPrimitive.CutoffFour.model s‖ ≤ (39/80 : ℝ) :=
  CutoffFourEightOverlap.model_distance_le hs
example {s : ℂ} (hs : CenteredMellin.SexticPrimitive.CutoffFour.Band s) :
    (7/16 : ℝ) ≤ ‖poleNormalizedZeta s‖ := CutoffFourEightOverlap.source_norm_lower hs
example : (5/16 : ℝ) < 7/16 := by norm_num
example : (7/16 : ℝ) + 1/20 = 39/80 := by norm_num
example (s : ℂ) : CutoffEightJet.deformation 1 s =
    CenteredMellin.SexticPrimitive.CutoffFour.deformation 1 s :=
  CutoffFourEightOverlap.homotopy_source_endpoints s

end
end GRWTSK.RiemannHypothesis.Checks.CenteredJetFourteenHeight
