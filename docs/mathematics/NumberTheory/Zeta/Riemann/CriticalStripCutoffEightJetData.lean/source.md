# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightJetData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c75c5598790548212086143fa75022d8daafb3d` · SHA-256 `0a4941df777e01423f5fddac331051aecaa4f17a61b9cd5d60da4c4a8df725b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCenteredPowerJet
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive

set_option autoImplicit false
set_option maxRecDepth 8192

/-!
# Explicit cutoff-eight centered polynomial data for the 13-to-14 upper band

All log centers, power samples, and rounded polynomial coefficients are rational.
The seven nontrivial center evaluations use a 128-term finite exponential series
and a proved log enclosure. Only an eight-term series is used in the displacement.
The finite arithmetic scripts below are NOT executed in this patch. Python
verification of their rational statements is not Lean elaboration or axiom audit.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CutoffEightJet
open Complex Finset Set
noncomputable section

def center : ℂ := ⟨3/4,27/2⟩
def logRadius : ℝ := 1/16777216
def sampleRadius : ℝ := 1/262144

def logCenter : Fin 8 → ℝ := ![0, (1453635 / 2097152), (2303957 / 2097152), (1453635 / 1048576), (27001887 / 16777216), (469699 / 262144), (32646955 / 16777216), (4360905 / 2097152)]
def sample : Fin 8 → ℂ := ![⟨1, 0⟩, ⟨(-9953215 / 16777216), (-670775 / 16777216)⟩, ⟨(-4708155 / 16777216), (-5657133 / 16777216)⟩, ⟨(5878005 / 16777216), (795885 / 16777216)⟩, ⟨(-4844063 / 16777216), (-1308029 / 16777216)⟩, ⟨(2566971 / 16777216), (3544377 / 16777216)⟩, ⟨(1638445 / 16777216), (-3537473 / 16777216)⟩, ⟨(-431919 / 2097152), (-707175 / 16777216)⟩]

def powerJet (i : Fin 8) (s : ℂ) : ℂ :=
  CenteredPowerJet.value center (sample i) (logCenter i) 8 s

def powerError (i : Fin 8) : ℝ :=
  if i=0 then 0 else
    16*(5/8)*logRadius + complexExpTaylorRadius 8 ((5/8)*|logCenter i|) + 9*sampleRadius

lemma center_norm_le : ‖center‖ ≤ (14 : ℝ) := by
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 14)).mp
  rw [Complex.sq_norm, Complex.normSq_apply]
  norm_num [center]

lemma rounded_log {x a E : ℝ} (e : RealLogEnclosure x)
    (h : |e.center-a|+e.radius ≤ E) : |Real.log x-a| ≤ E := by
  have ht : |Real.log x-a| ≤ |Real.log x-e.center|+|e.center-a| := by
    convert abs_add_le (Real.log x-e.center) (e.center-a) using 1 <;> ring
  linarith [e.encloses]

lemma log_enclosed_1 : |Real.log (1 : ℝ)-logCenter 0| ≤ logRadius := by
  norm_num [logCenter, logRadius]

lemma log_enclosed_2 : |Real.log (2 : ℝ)-logCenter 1| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 1 1 (by norm_num) (by norm_num) 32)
    (a := logCenter 1) (E := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_3 : |Real.log (3 : ℝ)-logCenter 2| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 1 (3 / 2) (by norm_num) (by norm_num) 32)
    (a := logCenter 2) (E := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_4 : |Real.log (4 : ℝ)-logCenter 3| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 2 1 (by norm_num) (by norm_num) 32)
    (a := logCenter 3) (E := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_5 : |Real.log (5 : ℝ)-logCenter 4| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 2 (5 / 4) (by norm_num) (by norm_num) 32)
    (a := logCenter 4) (E := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_6 : |Real.log (6 : ℝ)-logCenter 5| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 2 (3 / 2) (by norm_num) (by norm_num) 32)
    (a := logCenter 5) (E := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_7 : |Real.log (7 : ℝ)-logCenter 6| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 2 (7 / 4) (by norm_num) (by norm_num) 32)
    (a := logCenter 6) (E := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed_8 : |Real.log (8 : ℝ)-logCenter 7| ≤ logRadius := by
  have h := rounded_log (dyadicLogEnclosure 3 1 (by norm_num) (by norm_num) 32)
    (a := logCenter 7) (E := logRadius) (by
      norm_num [dyadicLogEnclosure, logEnclosureOfRatio, RealLogEnclosure.mul,
        RealLogEnclosure.powNat, ratioLogCenter, ratioLogRadius, Complex.logTaylor,
        Finset.sum_range_succ, logCenter, logRadius])
  norm_num at h
  exact h

lemma log_enclosed (i : Fin 8) :
    |Real.log ((i.val+1 : ℕ) : ℝ)-logCenter i| ≤ logRadius := by
  fin_cases i
  · exact log_enclosed_1
  · exact log_enclosed_2
  · exact log_enclosed_3
  · exact log_enclosed_4
  · exact log_enclosed_5
  · exact log_enclosed_6
  · exact log_enclosed_7
  · exact log_enclosed_8

lemma center_power_helper {k : ℝ} (hk : 1 ≤ k) (i : Fin 8)
    (hlog : |Real.log k-logCenter i| ≤ logRadius)
    (harg : (14 : ℝ)*|logCenter i| ≤ 32)
    (hround : |(complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i).re|+
      |(complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i).im| ≤ 1/16777216) :
    ‖(k : ℂ)^(-center)-sample i‖ ≤ sampleRadius := by
  let e : RealLogEnclosure k := ⟨logCenter i,logRadius,by norm_num [logRadius],hlog⟩
  have p := negativePowerEnclosureOfBounds hk e center (by norm_num [center])
    128 14 32 center_norm_le (by norm_num [e,logRadius]) harg (by norm_num)
  have hp := p.encloses
  change ‖(k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ))‖ ≤
    2*(14*logRadius)+complexExpTaylorRadius 128 32 at hp
  have hr := (Complex.norm_le_abs_re_add_abs_im _).trans hround
  have htri : ‖(k : ℂ)^(-center)-sample i‖ ≤
      ‖(k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ))‖+
      ‖complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i‖ := by
    convert norm_add_le ((k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ)))
      (complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i) using 1 <;> ring
  have hb : 2*(14*logRadius)+complexExpTaylorRadius 128 32+1/16777216 ≤ sampleRadius := by
    norm_num [logRadius, sampleRadius, complexExpTaylorRadius]
  linarith

/-- These seven large finite arithmetic proofs require an actual future replay.
They are proof scripts, not a trust grant to the accompanying JSON. -/
lemma sample_enclosed (i : Fin 8) :
    ‖(((i.val+1 : ℕ) : ℂ))^(-center)-sample i‖ ≤ sampleRadius := by
  apply center_power_helper (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le i.val))
    i (log_enclosed i)
  · fin_cases i <;> norm_num [logCenter]
  · fin_cases i <;>
      norm_num [complexExpTaylor, Finset.sum_range_succ, pow_succ, center, sample,
        logCenter, Complex.mul_re, Complex.mul_im, Complex.div_re, Complex.div_im,
        Complex.normSq_apply]

lemma powerError_nonneg (i : Fin 8) : 0 ≤ powerError i := by
  fin_cases i <;> norm_num [powerError,logRadius,sampleRadius,logCenter,complexExpTaylorRadius]

lemma powerJet_enclosed (i : Fin 8) {s : ℂ}
    (hd : ‖s-center‖ ≤ (5/8 : ℝ)) (hl : -(s-center).re ≤ 1) :
    ‖(((i.val+1 : ℕ) : ℂ))^(-s)-powerJet i s‖ ≤ powerError i := by
  by_cases hi : i=0
  · subst i
    simp [powerJet,CenteredPowerJet.value,logCenter,sample,powerError,complexExpTaylor]
  · have hk : (1 : ℝ) ≤ ((i.val+1 : ℕ) : ℝ) := by positivity
    have hk8 : ((i.val+1 : ℕ) : ℝ) ≤ 8 := by exact_mod_cast (show i.val+1 ≤ 8 by omega)
    have h := CenteredPowerJet.encloses hk hk8 (by norm_num [center])
      (by norm_num [logRadius]) (log_enclosed i)
      (by norm_num [sampleRadius]) (sample_enclosed i) hd hl
      (by norm_num [logRadius])
      (by fin_cases i <;> norm_num [logCenter])
      (by fin_cases i <;> norm_num [logCenter,logRadius,complexExpTaylorRadius])
    simpa only [powerJet,powerError,if_neg hi, Nat.cast_add,Nat.cast_one,
      Complex.ofReal_natCast] using h

/-- The same N=8 endpoint/Bernoulli coefficient, with no term omitted. -/
def weight (s : ℂ) : ℂ := 8-(s-1)/2+s*(s-1)/96-
  CenteredMellin.CubicPrimitive.multiplier s/(720*8^3)+
  CenteredMellin.QuarticPrimitive.multiplier s*(s+4)/(30240*8^5)

def sourcePolynomial (s : ℂ) : ℂ :=
  (s-1)*(∑ i : Fin 8, powerJet i s)+weight s*powerJet 7 s

/-- Coefficients of weight(c+w), checked by a polynomial identity. -/
def weightCoefficient : Fin 7 → ℂ := ![⟨(184418129199 / 30064771072), (-49912289601 / 7516192768)⟩, ⟨(-82054236679 / 169114337280), (2907777583 / 9395240960)⟩, ⟨(3498920767 / 253671505920), (-29475 / 33554432)⟩, ⟨(-40421 / 1056964608), (-56513 / 293601280)⟩, ⟨(-12239 / 2264924160), (27 / 29360128)⟩, ⟨(1 / 73400320), (3 / 36700160)⟩, ⟨(1 / 990904320), 0⟩]

lemma weight_identity (w : ℂ) : weight (center+w) =
    ∑ j : Fin 7, weightCoefficient j*w^j.val := by
  norm_num [weight,weightCoefficient,center,Fin.sum_univ_succ,
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
def coefficient : Fin 14 → ℂ := ![⟨(74928083 / 16777216), (36570491 / 8388608)⟩, ⟨(-36947747 / 8388608), (50346027 / 8388608)⟩, ⟨(1491667 / 524288), (-914043 / 524288)⟩, ⟨(-15829093 / 16777216), (945243 / 4194304)⟩, ⟨(3723599 / 16777216), (386033 / 16777216)⟩, ⟨(-324779 / 8388608), (-321057 / 16777216)⟩, ⟨(82647 / 16777216), (90251 / 16777216)⟩, ⟨(-1621 / 4194304), (-2161 / 2097152)⟩, ⟨(-545 / 16777216), (43591 / 8388608)⟩, ⟨(401 / 4194304), (301 / 16777216)⟩, ⟨(1 / 8388608), (-23 / 16777216)⟩, ⟨(-1 / 16777216), 0⟩, ⟨0, 0⟩, ⟨0, 0⟩]

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
      logCenter,Fin.sum_univ_succ,Complex.mul_re,Complex.mul_im,Complex.div_re,
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
    15*(∑ i : Fin 8, powerError i)+20*powerError 7+
      (15^6*16 : ℝ)/(30240*(11/2)*65536)+1/1048576 ≤ 1/20 := by
  norm_num [powerError,logRadius,sampleRadius,logCenter,complexExpTaylorRadius,Fin.sum_univ_succ]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CutoffEightJet
```
