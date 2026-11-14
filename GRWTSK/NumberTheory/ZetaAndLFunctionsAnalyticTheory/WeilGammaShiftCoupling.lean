/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaThreeBandFloor
import Mathlib.MeasureTheory.Integral.IntegrableOn
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.NumberTheory.DirichletCharacter.Basic
import Mathlib.Tactic

/-!
# Physical gamma-to-shift control and the original signed prime-two return

These are source proof candidates for an inequality involving the actual
SourcePrimeCorrelation.energy, OddRootProjection.parityKernel and
WeilConductorFrontier.gammaCorrectionDensity. No substitute quadratic
form, spectral positivity or completion identity is introduced.

For a continuous complex L2 test with integrable original gamma density,
the physical translation energy at every prescribed s>0 is controlled by
the ENTIRE positive-shift gamma correction:
  (s * parityKernel a s / 4) * energy (fun t => f(t+s)-f t)
     <= integral_(0,infinity) gammaCorrectionDensity a f.
The proof uses whole-line translation subadditivity, interval reflection
and the positive decreasing original parity kernel. The singular naked
kernel is never integrated at the origin; only the integrable density is.

For the actual odd character modulo 3, the native signed weight at n=2 is
  pairedPrimeWeight chi 2 = -log(2)/sqrt(2).
Together with the exact translation energy identity, the gamma estimate
retains cancellation with the original signed prime-two defect. The
source return is to primitiveArithmeticValue on every original real odd
Admissible test at T=1. Every prime power in the existing strict active
inventory remains in its defining pairedPhaseSurplus sum.

Neither this local improvement nor the earlier independent gamma-band
floor supplies the full stage-zero sign. The completed Weil explicit
formula, primitive negative-test return, conductor-one zeta poles,
universal windows and RH/GRH remain unproved.

Hostile test of the tempting false factor-two strengthening:
f(t)=max(1-|t|,0) is continuous and compactly supported, and for
0<=r<=1 its exact translation energy is A_r=2*r^2-r^3.
At s=1/2, s*A_s=3/16 but 2*integral_0^s A_r dr=13/96;
the difference is 5/96>0. Thus the proposed factor 4 is essential
for the elementary integrated squared-triangle argument.

Lean elaboration, fresh kernel replay, transitive axiom audit and
independent source review are NOT_RUN. Source publication is not proof.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ComplexConjugate BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaShiftCoupling

open SourcePrimeCorrelation OddRootProjection LowSchur
open GammaHeadIntegrability GammaThreeBandFloor GammaTailCompensation
open ThreeSliceCorrelation FrobeniusPhaseSurplus
open DirichletStageChain OddConductorThreeObstruction

/-- The exact numerical constant from the complex squared triangle
inequality, before taking any physical or prime-source estimate. -/
private theorem norm_add_sq_le_two (u v : ℂ) :
    ‖u + v‖ ^ 2 ≤ 2 * ‖u‖ ^ 2 + 2 * ‖v‖ ^ 2 := by
  have htri : ‖u + v‖ ≤ ‖u‖ + ‖v‖ := norm_add_le u v
  have hprod :
      0 ≤ (‖u‖ + ‖v‖ - ‖u + v‖) *
        (‖u‖ + ‖v‖ + ‖u + v‖) :=
    mul_nonneg (sub_nonneg.mpr htri) (by positivity)
  nlinarith [sq_nonneg (‖u‖ - ‖v‖)]

/-- Subadditivity of the ORIGINAL whole-line translation energy.
There is no periodic boundary or substitute Hilbert-space norm. -/
theorem shiftEnergy_subadditive
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (s r : ℝ) :
    energy (fun t => f (t + s) - f t) ≤
      2 * energy (fun t => f (t + r) - f t) +
        2 * energy (fun t => f (t + (s-r)) - f t) := by
  have hs := integrable_shift_energy hf s
  have hr := integrable_shift_energy hf r
  have hsr := integrable_shift_energy hf (s-r)
  have hleft :
      Integrable (fun t : ℝ => ‖f (t+s)-f (t+r)‖ ^ 2) volume := by
    have hshift :=
      (measurePreserving_add_right volume r).integrable_comp_of_integrable hsr
    change Integrable
      (fun t : ℝ => ‖f ((t+r)+(s-r))-f (t+r)‖ ^ 2) volume at hshift
    convert hshift using 1
    ext t
    congr 2
    ring
  have hleft_eq :
      (∫ t : ℝ, ‖f (t+s)-f (t+r)‖ ^ 2) =
        energy (fun t => f (t+(s-r))-f t) := by
    calc
      _ = ∫ t : ℝ, ‖f ((t+r)+(s-r))-f (t+r)‖ ^ 2 := by
        apply integral_congr_ae
        exact Filter.Eventually.of_forall (fun t => by
          congr 2
          ring)
      _ = ∫ t : ℝ, ‖f (t+(s-r))-f t‖ ^ 2 :=
        integral_add_right_eq_self
          (fun t : ℝ => ‖f (t+(s-r))-f t‖ ^ 2) r
      _ = _ := rfl
  have hupper : Integrable
      (fun t : ℝ =>
        2 * ‖f (t+s)-f (t+r)‖ ^ 2 +
        2 * ‖f (t+r)-f t‖ ^ 2) volume :=
    (hleft.const_mul 2).add (hr.const_mul 2)
  have hpoint (t : ℝ) :
      ‖f (t+s)-f t‖ ^ 2 ≤
        2 * ‖f (t+s)-f (t+r)‖ ^ 2 +
          2 * ‖f (t+r)-f t‖ ^ 2 := by
    have h :=
      norm_add_sq_le_two (f (t+s)-f (t+r)) (f (t+r)-f t)
    have heq :
        (f (t+s)-f (t+r)) + (f (t+r)-f t) =
          f (t+s)-f t := by ring
    rwa [heq] at h
  have hbound := integral_mono hs hupper hpoint
  unfold energy
  rw [integral_add (hleft.const_mul 2) (hr.const_mul 2),
      integral_const_mul, integral_const_mul, hleft_eq] at hbound
  linarith

/-- A uniform source energy ceiling, needed only to establish finite
interval integrability of the measurable physical shift energy. -/
private theorem shiftEnergy_le_four
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    energy (fun t => f (t+r)-f t) ≤ 4 * energy f := by
  have hnorm := norm_correlation_le_energy hf r
  have hre : -(correlation f r).re ≤ ‖correlation f r‖ :=
    (neg_le_abs _).trans (Complex.abs_re_le_norm _)
  rw [shiftEnergy_eq_two_energy_sub_two_re_correlation hf r]
  linarith

private theorem shiftEnergy_nonneg (f : ℝ → ℂ) (r : ℝ) :
    0 ≤ energy (fun t => f (t+r)-f t) := by
  unfold energy
  exact integral_nonneg (fun t => sq_nonneg _)

/-- On an ordinary finite interval, physical translation energies
are integrable without a Lipschitz or fixed-frequency hypothesis.
The explicit continuity assumption is a property of the original
admissible smooth test class and supplies the existing measurability. -/
private theorem shiftEnergy_integrableOn_Ioc
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (hcont : Continuous f) {s : ℝ} (hs : 0 < s) :
    IntegrableOn (fun r : ℝ => energy (fun t => f (t+r)-f t))
      (Ioc 0 s) := by
  have hm :=
    (GammaHeadIntegrability.shiftEnergy_measurable hcont).aestronglyMeasurable
  apply Measure.integrableOn_of_bounded (s := Ioc (0 : ℝ) s)
    (by simp) hm
  exact Filter.Eventually.of_forall (fun r => by
    rw [Real.norm_eq_abs, abs_of_nonneg (shiftEnergy_nonneg f r)]
    exact shiftEnergy_le_four hf r)

/-- Reflection of the finite real shift interval; no sign or
orientation is lost when replacing r by s-r. -/
private theorem shiftEnergy_reflected_integral
    {f : ℝ → ℂ} (s : ℝ) (hs : 0 ≤ s) :
    (∫ r in Ioc (0 : ℝ) s,
      energy (fun t => f (t+(s-r))-f t)) =
    ∫ r in Ioc (0 : ℝ) s,
      energy (fun t => f (t+r)-f t) := by
  rw [← intervalIntegral.integral_of_le hs,
      ← intervalIntegral.integral_of_le hs]
  simpa only [sub_self, sub_zero] using
    (intervalIntegral.integral_comp_sub_left
      (f := fun r : ℝ => energy (fun t => f (t+r)-f t))
      (a := 0) (b := s) s)

/-- The factor FOUR is the exact consequence of integrating the
two terms of the squared triangle inequality over reflected shifts. -/
theorem shiftEnergy_integrated_subadditive
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (hcont : Continuous f) {s : ℝ} (hs : 0 < s) :
    s * energy (fun t => f (t+s)-f t) ≤
      4 * ∫ r in Ioc (0 : ℝ) s,
        energy (fun t => f (t+r)-f t) := by
  let A : ℝ → ℝ := fun r => energy (fun t => f (t+r)-f t)
  have hm : Measurable A := GammaHeadIntegrability.shiftEnergy_measurable hcont
  have hA : IntegrableOn A (Ioc 0 s) :=
    shiftEnergy_integrableOn_Ioc hf hcont hs
  have hfinite : (volume : Measure ℝ) (Ioc (0 : ℝ) s) ≠ ∞ := by simp
  have hAref : IntegrableOn (fun r : ℝ => A (s-r)) (Ioc 0 s) := by
    have hcomp : Measurable (fun r : ℝ => A (s-r)) :=
      hm.comp (measurable_const.sub measurable_id)
    apply Measure.integrableOn_of_bounded (s := Ioc (0 : ℝ) s)
      hfinite hcomp.aestronglyMeasurable
    exact Filter.Eventually.of_forall (fun r => by
      rw [Real.norm_eq_abs, abs_of_nonneg (shiftEnergy_nonneg f (s-r))]
      exact shiftEnergy_le_four hf (s-r))
  have hc : IntegrableOn (fun _ : ℝ => A s) (Ioc 0 s) :=
    continuous_const.integrableOn_Ioc
  have hupper : IntegrableOn
      (fun r : ℝ => 2*A r+2*A (s-r)) (Ioc 0 s) :=
    (hA.const_mul 2).add (hAref.const_mul 2)
  have hineq :
      (∫ r in Ioc (0 : ℝ) s, A s) ≤
      ∫ r in Ioc (0 : ℝ) s, (2*A r+2*A (s-r)) := by
    apply setIntegral_mono_on hc hupper measurableSet_Ioc
    intro r hr
    dsimp [A]
    exact shiftEnergy_subadditive hf s r
  have hreflect :
      (∫ r in Ioc (0 : ℝ) s, A (s-r)) =
        ∫ r in Ioc (0 : ℝ) s, A r :=
    shiftEnergy_reflected_integral s hs.le
  have heval :
      (∫ r in Ioc (0 : ℝ) s, A s) = s * A s := by
    rw [← intervalIntegral.integral_of_le hs.le,
      intervalIntegral.integral_const]
    simp
  have hsum :
      (∫ r in Ioc (0 : ℝ) s, (2*A r+2*A (s-r))) =
        4 * ∫ r in Ioc (0 : ℝ) s, A r := by
    rw [integral_add (hA.const_mul 2) (hAref.const_mul 2),
      integral_const_mul, integral_const_mul, hreflect]
    ring
  rw [heval, hsum] at hineq
  exact hineq

/-- Positivity of the actual parity-dependent gamma kernel, s>0. -/
private theorem parityKernel_pos (a : ℕ) {s : ℝ} (hs : 0 < s) :
    0 < parityKernel a s :=
  (Real.exp_pos _).trans_le (GammaTailCompensation.parityKernel_ge_exp a hs)

/-- The same parity kernel is nonincreasing on positive physical shifts.
No division at r=0 is used. -/
theorem parityKernel_antitone_positive
    (a : ℕ) {r s : ℝ} (hr : 0 < r) (hrs : r ≤ s) :
    parityKernel a s ≤ parityKernel a r := by
  have hα : 0 ≤ (a : ℝ) + 1/2 := by positivity
  have hnum :
      Real.exp (-((a : ℝ) + 1/2)*s) ≤
        Real.exp (-((a : ℝ) + 1/2)*r) :=
    Real.exp_le_exp.mpr (by
      have hprod := mul_nonneg hα (sub_nonneg.mpr hrs)
      nlinarith)
  have hdense :
      Real.exp (-2*s) ≤ Real.exp (-2*r) :=
    Real.exp_le_exp.mpr (by linarith)
  have hden :
      1 - Real.exp (-2*r) ≤ 1 - Real.exp (-2*s) := by
    linarith
  have hdenpos : 0 < 1 - Real.exp (-2*r) := by
    have hx : Real.exp (-2*r) < Real.exp 0 :=
      Real.exp_lt_exp.mpr (by linarith)
    simpa only [Real.exp_zero] using sub_pos.mpr hx
  unfold parityKernel
  calc
    Real.exp (-((a : ℝ) + 1/2)*s) /
        (1 - Real.exp (-2*s)) ≤
      Real.exp (-((a : ℝ) + 1/2)*s) /
        (1 - Real.exp (-2*r)) :=
      div_le_div_of_nonneg_left (Real.exp_nonneg _) hdenpos hden
    _ ≤ Real.exp (-((a : ℝ) + 1/2)*r) /
        (1 - Real.exp (-2*r)) :=
      div_le_div_of_nonneg_right hnum hdenpos.le

/-- Source-exact gamma-to-one-shift lower bound. The input includes
integrability of the entire physical gamma correction and contains
no independent derivative, frequency or conductor bound. -/
theorem gammaCorrectionIntegral_ge_exactShiftEnergy
    (a : ℕ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) (hcont : Continuous f)
    {s : ℝ} (hs : 0 < s)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0)) :
    (s * parityKernel a s / 4) *
        energy (fun t => f (t+s)-f t) ≤
      ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  let A : ℝ → ℝ := fun r => energy (fun t => f (t+r)-f t)
  let K : ℝ → ℝ := parityKernel a
  have hK : 0 ≤ K s := (parityKernel_pos a hs).le
  have hA : IntegrableOn A (Ioc 0 s) :=
    shiftEnergy_integrableOn_Ioc hf hcont hs
  have hKtimes : IntegrableOn (fun r => K s * A r) (Ioc 0 s) :=
    hA.const_mul _
  have hcell : IntegrableOn (gammaCorrectionDensity a f) (Ioc 0 s) :=
    harch.mono_set (fun r hr => hr.1)
  have hpoint (r : ℝ) (hr : r ∈ Ioc (0 : ℝ) s) :
      K s * A r ≤ gammaCorrectionDensity a f r := by
    have hmon := parityKernel_antitone_positive a hr.1 hr.2
    have hnonneg : 0 ≤ A r := shiftEnergy_nonneg f r
    calc
      K s * A r ≤ K r * A r :=
        mul_le_mul_of_nonneg_right hmon hnonneg
      _ = gammaCorrectionDensity a f r := rfl
  have hkernel :
      K s * (∫ r in Ioc (0 : ℝ) s, A r) ≤
        ∫ r in Ioc (0 : ℝ) s, gammaCorrectionDensity a f r := by
    have h := setIntegral_mono_on hKtimes hcell measurableSet_Ioc hpoint
    simpa only [integral_const_mul] using h
  have hsubset : Ioc (0 : ℝ) s ⊆ Ioi (0 : ℝ) :=
    fun r hr => hr.1
  have hnonneg :
      0 ≤ᵐ[(volume : Measure ℝ).restrict (Ioi 0)]
        gammaCorrectionDensity a f := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    have hpr : 0 ≤ parityKernel a r :=
      (parityKernel_pos a hr).le
    exact mul_nonneg hpr (shiftEnergy_nonneg f r)
  have hfull :
      (∫ r in Ioc (0 : ℝ) s, gammaCorrectionDensity a f r) ≤
        ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r :=
    setIntegral_mono_set harch hnonneg hsubset.eventuallySubset
  have hintegral := shiftEnergy_integrated_subadditive hf hcont hs
  have hscale := mul_le_mul_of_nonneg_left hintegral hK
  have hfirst :
      (s * parityKernel a s / 4) *
        energy (fun t => f (t+s)-f t) ≤
        K s * (∫ r in Ioc (0 : ℝ) s, A r) := by
    dsimp [K, A] at hscale ⊢
    nlinarith
  exact hfirst.trans (hkernel.trans hfull)

/-- Native parity-one character modulo three really has value -1 at
the integer two. No other conductor or phase is silently included. -/
theorem odd_character_three_at_two
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1) :
    chi (2 : ZMod 3) = -1 := by
  have hnotEven : ¬ chi.Even := by
    intro heven
    have heq : chi (-1) = 1 := heven
    have hp0 : gammaParity chi = 0 := by
      simp [gammaParity, heq]
    omega
  have hchiOdd : chi.Odd := (chi.even_or_odd).resolve_left hnotEven
  have htwo : (2 : ZMod 3) = (-1 : ZMod 3) := by decide
  rw [htwo]
  exact hchiOdd

/-- The actual native weight, including the von Mangoldt prime-two
factor and the character phase, not an invented normalization. -/
theorem odd_character_three_primeTwo_weight
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1) :
    pairedPrimeWeight chi 2 = -(Real.log 2 / Real.sqrt 2) := by
  have hchi := odd_character_three_at_two chi hodd
  have hΛ : ArithmeticFunction.vonMangoldt 2 = Real.log 2 :=
    ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two
  unfold pairedPrimeWeight primeWeight
  rw [hΛ, hchi]
  norm_num

/-- Source gamma normalization evaluated exactly at the physical
prime-two shift. No floating-point approximation. -/
private theorem parityKernel_one_log_two :
    parityKernel 1 (Real.log 2) = Real.sqrt 2 / 3 := by
  have hnum :
      Real.exp (-((3 : ℝ)/2) * Real.log 2) = Real.sqrt 2 / 4 := by
    have hpos : 0 ≤ Real.exp (-((3 : ℝ)/2) * Real.log 2) :=
      (Real.exp_pos _).le
    have hrhs : 0 ≤ Real.sqrt 2 / 4 := by positivity
    have hx :
        (Real.exp (-((3 : ℝ)/2) * Real.log 2)) ^ 2 = 1/8 := by
      calc
        _ = Real.exp (-(3 : ℝ) * Real.log 2) := by
          rw [pow_two, ← Real.exp_add]
          congr 1
          ring
        _ = (1/8 : ℝ) := by
          rw [show -(3 : ℝ) * Real.log 2 =
              -(Real.log 2 + Real.log 2 + Real.log 2) by ring,
            Real.exp_neg]
          norm_num [Real.exp_add, Real.exp_log]
    have hy : (Real.sqrt 2 / 4) ^ 2 = 1/8 := by
      nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]
    nlinarith
  have hden :
      Real.exp (-(2 : ℝ) * Real.log 2) = 1/4 := by
    rw [show -(2 : ℝ)*Real.log 2 =
      -(Real.log 2 + Real.log 2) by ring, Real.exp_neg]
    norm_num [Real.exp_add, Real.exp_log]
  unfold parityKernel
  norm_num only [Nat.cast_one] 
  rw [show -((1 : ℝ) + 1/2)*Real.log 2 =
    -((3 : ℝ)/2)*Real.log 2 by ring, hnum, hden]
  ring

private theorem gamma_primeTwo_coefficient :
    Real.log 2 * parityKernel 1 (Real.log 2) / 4 =
      (Real.log 2 / Real.sqrt 2) / 6 := by
  rw [parityKernel_one_log_two]
  have hne : Real.sqrt 2 ≠ 0 :=
    ne_of_gt (Real.sqrt_pos.2 (by norm_num))
  have hsq : (Real.sqrt 2)^2 = 2 :=
    Real.sq_sqrt (by norm_num)
  field_simp [hne]
  nlinarith

/-- The real source signed prime-two defect equals a fixed energy
payment minus the SAME physical shift energy controlled by gamma. -/
theorem odd_three_primeTwo_defect_exactShift
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    pairedPhaseDefect chi 2 (energy f)
      (correlation f (Real.log 2)) =
        4 * (Real.log 2 / Real.sqrt 2) * energy f -
          (Real.log 2 / Real.sqrt 2) *
            energy (fun t => f (t+Real.log 2)-f t) := by
  have hw := odd_character_three_primeTwo_weight chi hodd
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hp : 0 < Real.log 2 / Real.sqrt 2 :=
    div_pos hlog (Real.sqrt_pos.2 (by norm_num))
  have heq :=
    shiftEnergy_eq_two_energy_sub_two_re_correlation hf (Real.log 2)
  unfold pairedPhaseDefect
  rw [hw, abs_neg, abs_of_pos hp, heq]
  ring

/-- The gamma correction and the native negative-sign prime-two
defect are combined BEFORE an absolute correlation ceiling is used. -/
theorem odd_three_gamma_plus_primeTwo_coupled
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (hcont : Continuous f)
    (harch : IntegrableOn (gammaCorrectionDensity 1 f) (Ioi 0)) :
    4 * (Real.log 2 / Real.sqrt 2) * energy f -
      (5 * (Real.log 2 / Real.sqrt 2) / 6) *
        energy (fun t => f (t+Real.log 2)-f t) ≤
      (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 1 f r) +
        pairedPhaseDefect chi 2 (energy f)
          (correlation f (Real.log 2)) := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hg := gammaCorrectionIntegral_ge_exactShiftEnergy
    1 hf hcont hlog harch
  rw [gamma_primeTwo_coefficient] at hg
  rw [odd_three_primeTwo_defect_exactShift chi hodd hf]
  nlinarith [hg]

/-- On the actual T=1 source support, combine gamma and the signed
prime-two defect before applying the physical three-slice ceiling. -/
theorem odd_three_gamma_plus_primeTwo_energy_lower
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (hcont : Continuous f)
    (hsupport : ∀ t, t ∉ Icc (-(1 : ℝ)) 1 → f t = 0)
    (harch : IntegrableOn (gammaCorrectionDensity 1 f) (Ioi 0)) :
    ((14 - 5 * Real.sqrt 2)/6) *
      (Real.log 2 / Real.sqrt 2) * energy f ≤
      (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 1 f r) +
        pairedPhaseDefect chi 2 (energy f)
          (correlation f (Real.log 2)) := by
  let p : ℝ := Real.log 2 / Real.sqrt 2
  have hp : 0 < p := by
    dsimp [p]
    exact div_pos (Real.log_pos (by norm_num))
      (Real.sqrt_pos.2 (by norm_num))
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hthree : 2 * (1 : ℝ) < 3 * Real.log 2 := by
    linarith [Real.log_two_gt_d9]
  have hc := norm_correlation_le_sqrt_two_half_of_three_slice
    hf (T := 1) (r := Real.log 2) (by norm_num) hlog hthree hsupport
  have hn :
      -(correlation f (Real.log 2)).re ≤
        ‖correlation f (Real.log 2)‖ :=
    (neg_le_abs _).trans (Complex.abs_re_le_norm _)
  have heq :=
    shiftEnergy_eq_two_energy_sub_two_re_correlation hf (Real.log 2)
  have hupper :
      energy (fun t => f (t+Real.log 2)-f t) ≤
        (2 + Real.sqrt 2) * energy f := by
    rw [heq]
    nlinarith [hc, hn]
  have hcoupled :=
    odd_three_gamma_plus_primeTwo_coupled chi hodd hf hcont harch
  change 4*p*energy f -
    (5*p/6)*energy (fun t => f(t+Real.log 2)-f t) ≤ _ at hcoupled
  have hscaled := mul_le_mul_of_nonneg_left hupper
    (show 0 ≤ 5*p/6 by positivity)
  change ((14 - 5*Real.sqrt 2)/6)*p*energy f ≤ _
  nlinarith [hcoupled, hscaled]

/-- Source-exact return to the ORIGINAL primitive q=3 arithmetic value
on its full real odd admissible test class. The original full finite
prime-power inventory is still in pairedPhaseSurplus; only the
remaining individually nonnegative defects are dropped for a
one-sided estimate. No PrimitiveStageLower sign is asserted. -/
theorem primitiveArithmeticValue_ge_oddThree_coupledPrimeTwo
    (chi : DirichletCharacter ℂ 3)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (hodd : gammaParity chi = 1)
    (f : ℝ → ℝ) (hf : Admissible chi 1 f) :
    (gammaConstant 3 1 - pairedPrimeMass chi 1 +
      ((14 - 5 * Real.sqrt 2)/6) *
        (Real.log 2 / Real.sqrt 2)) * energy (liftReal f) ≤
      primitiveArithmeticValue chi hprimitive hnonprincipal 1
        (liftReal f) := by
  rcases hf with ⟨hT, hdiff, hcompact, hoddTest, hLp, hsupport, harch⟩
  have hcont : Continuous (liftReal f) :=
    Complex.continuous_ofReal.comp hdiff.continuous
  have harch1 : IntegrableOn
      (gammaCorrectionDensity 1 (liftReal f)) (Ioi 0) := by
    simpa only [hodd] using harch
  have hcoupled :=
    odd_three_gamma_plus_primeTwo_energy_lower
      chi hodd hLp hcont hsupport harch1
  have hexp : (2 : ℝ) < Real.exp (2 : ℝ) := by
    linarith [Real.add_one_le_exp (2 : ℝ)]
  have hactive : 2 ∈ activePrimePowers (1 : ℝ) := by
    simp only [activePrimePowers, Finset.mem_filter,
      Finset.mem_range, Nat.lt_ceil]
    exact ⟨by simpa using hexp, by norm_num, by simpa using hexp⟩
  have hother (n : ℕ) (hn : n ∈ activePrimePowers (1 : ℝ)) :
      0 ≤ pairedPhaseDefect chi n (energy (liftReal f))
        (correlation (liftReal f) (Real.log (n : ℝ))) :=
    pairedPhaseDefect_nonneg chi n (energy (liftReal f))
      (correlation (liftReal f) (Real.log (n : ℝ)))
      (norm_correlation_le_energy hLp _)
  have hsum :
      pairedPhaseDefect chi 2 (energy (liftReal f))
        (correlation (liftReal f) (Real.log 2)) ≤
      pairedPhaseSurplus chi 1
        (fun n => correlation (liftReal f) (Real.log (n : ℝ)))
        (energy (liftReal f)) := by
    unfold pairedPhaseSurplus
    exact Finset.single_le_sum
      (fun n hn _ => hother n hn) hactive
  have hsource :=
    primitive_real_paired_phaseSurplus_identity
      chi hprimitive hnonprincipal 1 f hLp
  rw [hsource, hodd]
  nlinarith [hcoupled, hsum]

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaShiftCoupling
