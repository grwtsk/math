# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandJet

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b4c46eed5df6994f448f1d7557ba5533b3f05a6` · SHA-256 `0d1a062dfa425decef5e968f3847f1dcb251a52075a22d40ee4515dbc88a9ee2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightSourceEnclosure

set_option autoImplicit false
set_option maxRecDepth 8192

/-!
# A fresh source-bound value jet on the fifteen-to-sixteen upper band

The logarithm enclosures and cutoff-eight arithmetic coefficient are reused
exactly. The center and all power samples are NEW. Error radii are not inherited
from the older spatial band. Every power sample, displacement remainder and
coefficient rounding is supplied by a written proof. This is value information,
not a derivative bound and not a blanket nonvanishing theorem below height15.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SixteenBandJet
open Complex Finset Set
noncomputable section

def center : ℂ := ⟨3/4,31/2⟩
-- Same exact log record, not another branch convention.
abbrev logRadius : ℝ := CutoffEightJet.logRadius
abbrev sampleRadius : ℝ := CutoffEightJet.sampleRadius
abbrev logCenter : Fin 8 → ℝ := CutoffEightJet.logCenter

def sample : Fin 8 → ℂ := ![⟨1, 0⟩, ⟨(-2485377 / 16777216), (2415307 / 4194304)⟩, ⟨(-1822815 / 16777216), (1782681 / 4194304)⟩, ⟨(-2597637 / 8388608), (-2862429 / 16777216)⟩, ⟨(154081 / 524288), (930133 / 16777216)⟩, ⟨(-3836225 / 16777216), (-2106021 / 16777216)⟩, ⟨(606645 / 8388608), (3704881 / 16777216)⟩, ⟨(2417969 / 16777216), (-5015 / 32768)⟩]

def powerJet (i : Fin 8) (s : ℂ) : ℂ :=
  CenteredPowerJet.value center (sample i) (logCenter i) 8 s

def powerError (i : Fin 8) : ℝ :=
  if i=0 then 0 else
    16*(5/8)*logRadius + complexExpTaylorRadius 8 ((5/8)*|logCenter i|) + 9*sampleRadius

lemma center_norm_le : ‖center‖ ≤ (16 : ℝ) := by
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 16)).mp
  rw [Complex.sq_norm, Complex.normSq_apply]
  norm_num [center]

lemma log_enclosed (i : Fin 8) :
    |Real.log ((i.val+1 : ℕ) : ℝ)-logCenter i| ≤ logRadius :=
  CutoffEightJet.log_enclosed i

lemma center_power_helper {k : ℝ} (hk : 1 ≤ k) (i : Fin 8)
    (hlog : |Real.log k-logCenter i| ≤ logRadius)
    (harg : (16 : ℝ)*|logCenter i| ≤ 34)
    (hround : |(complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i).re|+
      |(complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i).im| ≤ 1/16777216) :
    ‖(k : ℂ)^(-center)-sample i‖ ≤ sampleRadius := by
  let e : RealLogEnclosure k := ⟨logCenter i,logRadius,by norm_num [logRadius,CutoffEightJet.logRadius],hlog⟩
  have p := negativePowerEnclosureOfBounds hk e center (by norm_num [center])
    128 16 34 center_norm_le (by norm_num [e,logRadius,CutoffEightJet.logRadius]) harg (by norm_num)
  have hp := p.encloses
  change ‖(k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ))‖ ≤
    2*(16*logRadius)+complexExpTaylorRadius 128 34 at hp
  have hr := (Complex.norm_le_abs_re_add_abs_im _).trans hround
  have htri : ‖(k : ℂ)^(-center)-sample i‖ ≤
      ‖(k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ))‖+
      ‖complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i‖ := by
    convert norm_add_le ((k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ)))
      (complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i) using 1 <;> ring
  have hb : 2*(16*logRadius)+complexExpTaylorRadius 128 34+1/16777216 ≤ sampleRadius := by
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
def weightCoefficient : Fin 7 → ℂ := ![⟨(4430716999957 / 811748818944), (-514594588981 / 67645734912)⟩, ⟨(-81377251399 / 169114337280), (93137177201 / 253671505920)⟩, ⟨(546643273 / 36238786560), (-796979 / 704643072)⟩, ⟨(-48773 / 1056964608), (-1895743 / 7927234560)⟩, ⟨(-99593 / 15854469120), (31 / 29360128)⟩, ⟨(1 / 73400320), (31 / 330301440)⟩, ⟨(1 / 990904320), 0⟩]

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
def coefficient : Fin 14 → ℂ := ![⟨(-224642809 / 16777216), (75054321 / 8388608)⟩, ⟨(90874727 / 8388608), (124333185 / 16777216)⟩, ⟨(-59982491 / 16777216), (-68987813 / 16777216)⟩, ⟨(13149757 / 16777216), (12615851 / 8388608)⟩, ⟨(-765033 / 8388608), (-6817179 / 16777216)⟩, ⟨(-5451 / 1048576), (717599 / 8388608)⟩, ⟨(90851 / 16777216), (-240599 / 16777216)⟩, ⟨(-12835 / 8388608), (1995 / 1048576)⟩, ⟨(-33045 / 8388608), (-11253 / 4194304)⟩, ⟨(-1197 / 16777216), (663 / 8388608)⟩, ⟨(23 / 16777216), (17 / 16777216)⟩, ⟨0, (-1 / 16777216)⟩, ⟨0, 0⟩, ⟨0, 0⟩]

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
    17*(∑ i : Fin 8, powerError i)+22*powerError 7+
      (17^6*18 : ℝ)/(30240*(11/2)*65536)+1/1048576 ≤ 1/8 := by
  norm_num [powerError,logRadius,CutoffEightJet.logRadius,sampleRadius,
    CutoffEightJet.sampleRadius,logCenter,CutoffEightJet.logCenter,
    complexExpTaylorRadius,Fin.sum_univ_succ]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SixteenBandJet
```
