/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightSourceEnclosure

set_option autoImplicit false
set_option maxRecDepth 8192

/-!
# A fresh source-bound value jet on the sixteen-to-seventeen upper band

The logarithm enclosures and cutoff-eight arithmetic coefficient are reused
exactly. The center and all power samples are NEW. Error radii are not inherited
from the older spatial band. Every power sample, displacement remainder and
coefficient rounding is supplied by a written proof. This is value information,
not a derivative bound and not a blanket nonvanishing theorem below height16.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SeventeenBandJet
open Complex Finset Set
noncomputable section

def center : ℂ := ⟨3/4,33/2⟩
-- Same exact log record, not another branch convention.
abbrev logRadius : ℝ := CutoffEightJet.logRadius
abbrev sampleRadius : ℝ := CutoffEightJet.sampleRadius
abbrev logCenter : Fin 8 → ℝ := CutoffEightJet.logCenter

def sample : Fin 8 → ℂ := ![⟨1, 0⟩, ⟨(2130651 / 8388608), (2254963 / 4194304)⟩, ⟨(690173 / 2097152), (2433321 / 8388608)⟩, ⟨(-941739 / 4194304), (2290983 / 8388608)⟩, ⟨(46185 / 1048576), (-4962845 / 16777216)⟩, ⟨(-1214033 / 16777216), (2102265 / 8388608)⟩, ⟨(1501371 / 8388608), (-1243157 / 8388608)⟩, ⟨(-1710081 / 8388608), (-861421 / 16777216)⟩]

def powerJet (i : Fin 8) (s : ℂ) : ℂ :=
  CenteredPowerJet.value center (sample i) (logCenter i) 8 s

def powerError (i : Fin 8) : ℝ :=
  if i=0 then 0 else
    16*(5/8)*logRadius + complexExpTaylorRadius 8 ((5/8)*|logCenter i|) + 9*sampleRadius

lemma center_norm_le : ‖center‖ ≤ (17 : ℝ) := by
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 17)).mp
  rw [Complex.sq_norm, Complex.normSq_apply]
  norm_num [center]

lemma log_enclosed (i : Fin 8) :
    |Real.log ((i.val+1 : ℕ) : ℝ)-logCenter i| ≤ logRadius :=
  CutoffEightJet.log_enclosed i

lemma center_power_helper {k : ℝ} (hk : 1 ≤ k) (i : Fin 8)
    (hlog : |Real.log k-logCenter i| ≤ logRadius)
    (harg : (17 : ℝ)*|logCenter i| ≤ 36)
    (hround : |(complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i).re|+
      |(complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i).im| ≤ 1/16777216) :
    ‖(k : ℂ)^(-center)-sample i‖ ≤ sampleRadius := by
  let e : RealLogEnclosure k := ⟨logCenter i,logRadius,by norm_num [logRadius,CutoffEightJet.logRadius],hlog⟩
  have p := negativePowerEnclosureOfBounds hk e center (by norm_num [center])
    128 17 36 center_norm_le (by norm_num [e,logRadius,CutoffEightJet.logRadius]) harg (by norm_num)
  have hp := p.encloses
  change ‖(k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ))‖ ≤
    2*(17*logRadius)+complexExpTaylorRadius 128 36 at hp
  have hr := (Complex.norm_le_abs_re_add_abs_im _).trans hround
  have htri : ‖(k : ℂ)^(-center)-sample i‖ ≤
      ‖(k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ))‖+
      ‖complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i‖ := by
    convert norm_add_le ((k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ)))
      (complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i) using 1 <;> ring
  have hb : 2*(17*logRadius)+complexExpTaylorRadius 128 36+1/16777216 ≤ sampleRadius := by
    norm_num [logRadius,CutoffEightJet.logRadius, sampleRadius,CutoffEightJet.sampleRadius, complexExpTaylorRadius]
  linarith

/-- These seven large finite arithmetic proofs require an actual future replay.
They are proof scripts, not a trust grant to the accompanying JSON. -/
lemma sample_enclosed (i : Fin 8) :
    ‖(((i.val+1 : ℕ) : ℂ))^(-center)-sample i‖ ≤ sampleRadius := by
  apply center_power_helper (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le i.val))
    i (log_enclosed i)
  · fin_cases i <;> norm_num [logCenter,CutoffEightJet.logCenter]
  · fin_cases i <;>
      norm_num [complexExpTaylor, Finset.sum_range_succ, pow_succ, center, sample,
        logCenter,CutoffEightJet.logCenter, Complex.mul_re, Complex.mul_im, Complex.div_re, Complex.div_im,
        Complex.normSq_apply]

lemma powerError_nonneg (i : Fin 8) : 0 ≤ powerError i := by
  fin_cases i <;> norm_num [powerError,logRadius,CutoffEightJet.logRadius,sampleRadius,CutoffEightJet.sampleRadius,logCenter,CutoffEightJet.logCenter,complexExpTaylorRadius]

lemma powerJet_enclosed (i : Fin 8) {s : ℂ}
    (hd : ‖s-center‖ ≤ (5/8 : ℝ)) (hl : -(s-center).re ≤ 1) :
    ‖(((i.val+1 : ℕ) : ℂ))^(-s)-powerJet i s‖ ≤ powerError i := by
  by_cases hi : i=0
  · subst i
    simp [powerJet,CenteredPowerJet.value,logCenter,CutoffEightJet.logCenter,sample,powerError,complexExpTaylor]
  · have hk : (1 : ℝ) ≤ ((i.val+1 : ℕ) : ℝ) := by positivity
    have hk8 : ((i.val+1 : ℕ) : ℝ) ≤ 8 := by exact_mod_cast (show i.val+1 ≤ 8 by omega)
    have h := CenteredPowerJet.encloses hk hk8 (by norm_num [center])
      (by norm_num [logRadius,CutoffEightJet.logRadius]) (log_enclosed i)
      (by norm_num [sampleRadius,CutoffEightJet.sampleRadius]) (sample_enclosed i) hd hl
      (by norm_num [logRadius,CutoffEightJet.logRadius])
      (by fin_cases i <;> norm_num [logCenter,CutoffEightJet.logCenter])
      (by fin_cases i <;> norm_num [logCenter,CutoffEightJet.logCenter,logRadius,CutoffEightJet.logRadius,complexExpTaylorRadius])
    simpa only [powerJet,powerError,if_neg hi, Nat.cast_add,Nat.cast_one,
      Complex.ofReal_natCast] using h

/-- The inherited coefficient, with all eight-source endpoint corrections. -/
abbrev weight : ℂ → ℂ := CutoffEightJet.weight

def sourcePolynomial (s : ℂ) : ℂ :=
  (s-1)*(∑ i : Fin 8, powerJet i s)+weight s*powerJet 7 s

/-- Coefficients of weight(c+w), checked by a polynomial identity. -/
def weightCoefficient : Fin 7 → ℂ := ![⟨(457803769261 / 90194313216), (-182355261913 / 22548578304)⟩, ⟨(-80970564679 / 169114337280), (33659556293 / 84557168640)⟩, ⟨(574042441 / 36238786560), (-299695 / 234881024)⟩, ⟨(-53381 / 1056964608), (-700843 / 2642411520)⟩, ⟨(-107273 / 15854469120), (33 / 29360128)⟩, ⟨(1 / 73400320), (11 / 110100480)⟩, ⟨(1 / 990904320), 0⟩]

lemma weight_identity (w : ℂ) : weight (center+w) =
    ∑ j : Fin 7, weightCoefficient j*w^j.val := by
  norm_num [weight,CutoffEightJet.weight,weightCoefficient,center,Fin.sum_univ_succ,
    CenteredMellin.CubicPrimitive.multiplier,CenteredMellin.QuarticPrimitive.multiplier]
  ring

def expCoefficient (i : Fin 8) (j : ℕ) : ℂ :=
  if j<8 then sample i*(-(logCenter i : ℂ))^j/(j.factorial : ℂ) else 0

def exactCoefficient (j : Fin 14) : ℂ :=
  (center-1)*(∑ i : Fin 8, expCoefficient i j.val)+
    (if j.val=0 then 0 else ∑ i : Fin 8, expCoefficient i (j.val-1))+
    ∑ m : Fin 7, if m.val≤j.val then
      weightCoefficient m*expCoefficient 7 (j.val-m.val) else 0

/-- Rounded coefficients are an approximation; their rounding is charged below. -/
def coefficient : Fin 14 → ℂ := ![⟨(-16673829 / 1048576), (381054109 / 16777216)⟩, ⟨(254162107 / 16777216), (-14436595 / 4194304)⟩, ⟨(-27895449 / 4194304), (8204603 / 16777216)⟩, ⟨(35821011 / 16777216), (1078139 / 4194304)⟩, ⟨(-2161323 / 4194304), (-765549 / 4194304)⟩, ⟨(406097 / 4194304), (1077981 / 16777216)⟩, ⟨(-236255 / 16777216), (-135215 / 8388608)⟩, ⟨(24665 / 16777216), (3329 / 1048576)⟩, ⟨(-5735 / 16777216), (39149 / 8388608)⟩, ⟨(915 / 8388608), (415 / 16777216)⟩, ⟨(5 / 16777216), (-31 / 16777216)⟩, ⟨(-1 / 16777216), 0⟩, ⟨0, 0⟩, ⟨0, 0⟩]

def polynomial (s : ℂ) : ℂ := ∑ j : Fin 14, coefficient j*(s-center)^j.val

lemma sourcePolynomial_coefficients (s : ℂ) : sourcePolynomial s =
    ∑ j : Fin 14, exactCoefficient j*(s-center)^j.val := by
  have hw : weight s = ∑ j : Fin 7, weightCoefficient j*(s-center)^j.val := by
    convert weight_identity (s-center) using 1 <;> ring
  unfold sourcePolynomial
  rw [hw]
  norm_num [powerJet,CenteredPowerJet.value,complexExpTaylor,Finset.sum_range_succ,
    exactCoefficient,expCoefficient,Fin.sum_univ_succ]
  ring

lemma coefficient_rounding (j : Fin 14) :
    ‖exactCoefficient j-coefficient j‖ ≤ (1/16777216 : ℝ) := by
  apply (Complex.norm_le_abs_re_add_abs_im _).trans
  fin_cases j <;>
    norm_num [exactCoefficient,expCoefficient,weightCoefficient,coefficient,center,sample,
      logCenter,CutoffEightJet.logCenter,Fin.sum_univ_succ,Complex.mul_re,Complex.mul_im,Complex.div_re,
      Complex.div_im,Complex.normSq_apply]

lemma polynomial_rounding {s : ℂ} (hd : ‖s-center‖ ≤ (5/8 : ℝ)) :
    ‖sourcePolynomial s-polynomial s‖ ≤ (1/1048576 : ℝ) := by
  rw [sourcePolynomial_coefficients,polynomial,←Finset.sum_sub_distrib]
  have hp : ‖s-center‖ ≤ (1 : ℝ) := hd.trans (by norm_num)
  calc
    _ ≤ ∑ j : Fin 14, ‖exactCoefficient j*(s-center)^j.val-
        coefficient j*(s-center)^j.val‖ := norm_sum_le _ _
    _ ≤ ∑ _j : Fin 14, (1/16777216 : ℝ) := by
      apply Finset.sum_le_sum
      intro j _
      rw [←sub_mul,norm_mul,norm_pow]
      have hj : ‖s-center‖^j.val ≤ (1 : ℝ) := pow_le_one₀ (norm_nonneg _) hp
      exact (mul_le_mul (coefficient_rounding j) hj (by positivity) (by norm_num)).trans_eq (by ring)
    _ ≤ 1/1048576 := by norm_num

lemma finite_error_budget :
    18*(∑ i : Fin 8, powerError i)+22*powerError 7+
      (18^6*19 : ℝ)/(30240*(11/2)*65536)+1/1048576 ≤ 1/8 := by
  norm_num [powerError,logRadius,CutoffEightJet.logRadius,sampleRadius,
    CutoffEightJet.sampleRadius,logCenter,CutoffEightJet.logCenter,
    complexExpTaylorRadius,Fin.sum_univ_succ]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SeventeenBandJet
