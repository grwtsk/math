/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionDivisorPrimeEndpoint
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionHermitianSieveClosure

/-!
# Exploit the original prime recurrence: weighted energy and signed sieve credit

Baseline: math@9c524e353041facfedeff629bb5e2516fd89deaa, endpoint module
blob 49d3f62b4d5c2468a912ec8d9f99b891273fc8e2. The endpoint and coefficient
recurrences are CONSUMED, not reproved. This module supplies the previously
separate weighted interval-energy translation and its actual sieve consumer.

For the maintained response R_d(T,u), define only its weighted integral
E_(d,lambda)(T)=integral_0^T exp(-lambda*u)*|R_d(T,u)|^2 du. At lambda=0
this is exactly the existing familyDivisorRestrictedEnergy.
Let h=log p, theta=max(0,T-h), a=chi(p)/sqrt p, and
r=|a| exp(-lambda*h/2)=|chi(p)|p^(-(1+lambda)/2).
For p prime, p not dividing d, lambda>=0 and T>=0, prove

  (1-r)^2 E_(dp,lambda)(T) <= r^2 E_(d,lambda)(theta)
      <= (1+r)^2 E_(dp,lambda)(T).

The lower bound has its NECESSARY shortened horizon. It provides negative
sieve credit; it does not say E_dp(T) bounds E_d(T) below at the same horizon.

Primary proof: apply the existing same-inventory recurrence x=-a(y-z),
where y(u)=R_d(T,u-h), z(u)=R_dp(T,u-h). Literal change of variables and
source zero extension give the exact factor exp(-lambda*h), including the
negative-time part. The endpoint horizon theorem returns the shortened
integral to its own maintained inventory. The two elementary Young bounds

  r(1-r)|y-z|^2 <= r|y|^2+(1-r)|z|^2,
  r|y|^2 <= (1+r)|z|^2+r(1+r)|y-z|^2

are integrated with the positive weight. Use E_dp(theta)<=E_dp(T) and
cancel r only when r>0; handle r=0 separately. No assumed L2 membership,
uncertified infinite resolvent, RH-strength energy premise, or coefficient
majorant is inserted. Finite continuity supplies all interval integrability.

At zero damping the lower bound is substituted into the ACTUAL complete
familyHermitianDivisorSieve_proof. A selected prime p in D<p<=2D is erased
from the remaining signed divisor sum before its negative credit is used.
Thus no term is dropped and no negative packet is counted twice.
The upper same-horizon estimate is the formal source counterpart of (4) in
rh-prime-noise-weighted-tail-2026-11-03.md. Its positive covariance consumer
is already described there; the finite covariance expansion is not rebuilt.

Hostile return check (analytical/computer-assisted, NOT a Lean theorem):
for q=1, D=1, T=log 100, the complete higher-divisor remainder satisfies

  14/100 < sum_(d=3..100) mu(d) E_d(log 100) < 15/100.

Here c_1(d)=mu(d). A standalone exact-integer, outward-rational interval
calculation is archived in the linked #1656 handoff. It uses the exact Gram
  K=4[(log(X/M))/sqrt(m*n)
       -2(1/sqrt(m)+1/sqrt(n))*(1/sqrt(M)-1/sqrt(X)) +1/M-1/X],
M=max(m,n), X=100. Square roots use integer-square-root enclosures; logs
use range reduction and 96 terms of 2*sum z^(2j+1)/(2j+1), z<=1/3, with
explicit positive tail <=9/[4*(193)*3^193]. A second ordered-Gram reindex
retains both orders and diagonals. This refutes dropping that remainder as
nonpositive even for the original untwisted source. It does not refute a
bound at a specific large rate-dependent cutoff, or prove actual divergence.
The analytic upper/lower theorem is independent of this finite calculation.

External operative source: Mathlib@d13f23b723b8a846827a245b89c10fc7d3f11612,
MeasureTheory/Integral/IntervalIntegral/Basic.lean, blob
2504147e2230a26eb804b0898004d0186c4e36a1: integral_comp_sub_right,
integral_add_adjacent_intervals, integral_congr and integral_mono, with
proof bodies inspected. These are translation/finite integration tools,
not an arithmetic cancellation supplier. The Young argument is elementary;
worldwide novelty and independent human review are not claimed.

The complete signed arithmetic estimate remains unpaid. The asymptotic
rate is UNCHANGED. Source proof candidates are not native acceptance:
compilation, expected types, fresh kernel and transitive axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

namespace GRWTSK.NumberTheory.Moebius.LFunctionDivisorPrimeWeightedEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge
open GRWTSK.NumberTheory.Moebius.LFunctionDivisorPrimeEndpoint
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianSieveClosure
open GRWTSK.NumberTheory.Moebius.LowGcdSieveSquareEnergy
open GRWTSK.NumberTheory.Moebius.LowGcdSieveTargetClosures

private def density (lambda : ℝ) (f : ℝ → ℂ) (u : ℝ) : ℝ :=
  Real.exp (-lambda*u) * ‖f u‖^2

private def energy (f : ℝ → ℂ) (lambda T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, density lambda f u

private theorem density_continuous (f : ℝ → ℂ) (hf : Continuous f) (lambda : ℝ) :
    Continuous (density lambda f) := by
  exact (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul (hf.norm.pow 2)

private theorem energy_nonneg (f : ℝ → ℂ) (lambda T : ℝ) (hT : 0 ≤ T) :
    0 ≤ energy f lambda T :=
  intervalIntegral.integral_nonneg hT (fun u _ =>
    mul_nonneg (Real.exp_pos _).le (sq_nonneg _))

private theorem energy_congr (f g : ℝ → ℂ) (lambda T : ℝ) (hT : 0 ≤ T)
    (hfg : ∀ u ∈ Set.Icc 0 T, f u = g u) :
    energy f lambda T = energy g lambda T := by
  apply intervalIntegral.integral_congr
  intro u hu
  have hu' : u ∈ Set.Icc 0 T := by simpa only [Set.uIcc_of_le hT] using hu
  simp only [density, hfg u hu']

private theorem energy_zero_of_nonpos (f : ℝ → ℂ)
    (hz : ∀ u : ℝ, u ≤ 0 → f u = 0) (lambda T : ℝ) (hT : T ≤ 0) :
    energy f lambda T = 0 := by
  unfold energy
  calc
    _ = ∫ _u in (0 : ℝ)..T, (0 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro u hu
      have hu' : u ∈ Set.Icc T 0 := by simpa only [Set.uIcc_of_ge hT] using hu
      simp [density, hz u hu'.2]
    _ = 0 := by simp

private theorem energy_mono (f : ℝ → ℂ) (hf : Continuous f)
    (lambda A B : ℝ) (hAB : A ≤ B) :
    energy f lambda A ≤ energy f lambda B := by
  have hc := density_continuous f hf lambda
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable 0 A) (hc.intervalIntegrable A B)
  have hn : 0 ≤ ∫ u in A..B, density lambda f u :=
    intervalIntegral.integral_nonneg hAB
      (fun u _ => mul_nonneg (Real.exp_pos _).le (sq_nonneg _))
  unfold energy
  linarith

private theorem energy_mul (f : ℝ → ℂ) (a : ℂ) (lambda T : ℝ) :
    energy (fun u => a*f u) lambda T = ‖a‖^2 * energy f lambda T := by
  unfold energy density
  calc
    _ = ∫ u in (0 : ℝ)..T, ‖a‖^2 * (Real.exp (-lambda*u)*‖f u‖^2) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [norm_mul, mul_pow]
      ring
    _ = _ := by rw [intervalIntegral.integral_const_mul]

private theorem energy_delay (f : ℝ → ℂ) (hf : Continuous f)
    (hz : ∀ u : ℝ, u ≤ 0 → f u = 0)
    (lambda T h : ℝ) (hh : 0 ≤ h) :
    energy (fun u => f (u-h)) lambda T =
      Real.exp (-lambda*h) * energy f lambda (max 0 (T-h)) := by
  have hc := density_continuous f hf lambda
  have hleft : (∫ v in -h..(0 : ℝ), density lambda f v) = 0 := by
    calc
      _ = ∫ _v in -h..(0 : ℝ), (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro v hv
        have hv' : v ∈ Set.Icc (-h) 0 := by
          simpa only [Set.uIcc_of_le (neg_nonpos.mpr hh)] using hv
        simp [density, hz v hv'.2]
      _ = 0 := by simp
  have hsplit : (∫ v in -h..(T-h), density lambda f v) = energy f lambda (T-h) := by
    have hs := intervalIntegral.integral_add_adjacent_intervals
      (hc.intervalIntegrable (-h) 0) (hc.intervalIntegrable 0 (T-h))
    rw [hleft, zero_add] at hs
    exact hs.symm
  have hclamp : energy f lambda (T-h) = energy f lambda (max 0 (T-h)) := by
    by_cases ht : 0 ≤ T-h
    · rw [max_eq_right ht]
    · have ht' : T-h ≤ 0 := (lt_of_not_ge ht).le
      rw [max_eq_left ht', energy_zero_of_nonpos f hz lambda (T-h) ht',
        energy_zero_of_nonpos f hz lambda 0 le_rfl]
  calc
    _ = ∫ u in (0 : ℝ)..T, Real.exp (-lambda*h) * density lambda f (u-h) := by
      apply intervalIntegral.integral_congr
      intro u hu
      have hw : Real.exp (-lambda*u) =
          Real.exp (-lambda*h) * Real.exp (-lambda*(u-h)) := by
        rw [← Real.exp_add]
        congr 1
        ring
      dsimp [density]
      rw [hw]
      ring
    _ = Real.exp (-lambda*h) * (∫ v in -h..(T-h), density lambda f v) := by
      rw [intervalIntegral.integral_const_mul,
        intervalIntegral.integral_comp_sub_right]
      simp only [zero_sub]
    _ = _ := by rw [hsplit, hclamp]

private theorem young_sub (y z : ℂ) (r : ℝ) (hr : 0 ≤ r) (hr1 : r ≤ 1) :
    r*(1-r)*‖y-z‖^2 ≤ r*‖y‖^2+(1-r)*‖z‖^2 := by
  have hn : ‖y-z‖^2 ≤ (‖y‖+‖z‖)^2 := by
    nlinarith [mul_self_le_mul_self (norm_nonneg (y-z)) (norm_sub_le y z)]
  have hm := mul_le_mul_of_nonneg_left hn (mul_nonneg hr (sub_nonneg.mpr hr1))
  nlinarith [sq_nonneg (r*‖y‖-(1-r)*‖z‖)]

private theorem young_reverse (y z : ℂ) (r : ℝ) (hr : 0 ≤ r) :
    r*‖y‖^2 ≤ (1+r)*‖z‖^2+r*(1+r)*‖y-z‖^2 := by
  have ht : ‖y‖ ≤ ‖y-z‖+‖z‖ := by
    simpa only [sub_add_cancel] using norm_add_le (y-z) z
  have hn : ‖y‖^2 ≤ (‖y-z‖+‖z‖)^2 := by
    nlinarith [mul_self_le_mul_self (norm_nonneg y) ht]
  have hm := mul_le_mul_of_nonneg_left hn hr
  nlinarith [sq_nonneg (‖z‖-r*‖y-z‖)]

private theorem integrated_young (f g : ℝ → ℂ) (hf : Continuous f) (hg : Continuous g)
    (lambda T r : ℝ) (hT : 0 ≤ T) (hr : 0 ≤ r) (hr1 : r ≤ 1) :
    r*(1-r)*energy (fun u => f u-g u) lambda T ≤
      r*energy f lambda T+(1-r)*energy g lambda T ∧
    r*energy f lambda T ≤ (1+r)*energy g lambda T+
      r*(1+r)*energy (fun u => f u-g u) lambda T := by
  have hF := (density_continuous f hf lambda).intervalIntegrable 0 T
  have hG := (density_continuous g hg lambda).intervalIntegrable 0 T
  have hU := (density_continuous (fun u => f u-g u) (hf.sub hg) lambda).intervalIntegrable 0 T
  constructor
  · have H := intervalIntegral.integral_mono hT (hU.const_mul (r*(1-r)))
      ((hF.const_mul r).add (hG.const_mul (1-r))) (fun u => by
        have hp := mul_le_mul_of_nonneg_left (young_sub (f u) (g u) r hr hr1)
          (Real.exp_pos (-lambda*u)).le
        dsimp [density]
        nlinarith [hp])
    rw [intervalIntegral.integral_add (hF.const_mul r) (hG.const_mul (1-r)),
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
      intervalIntegral.integral_const_mul] at H
    exact H
  · have H := intervalIntegral.integral_mono hT (hF.const_mul r)
      ((hG.const_mul (1+r)).add (hU.const_mul (r*(1+r)))) (fun u => by
        have hp := mul_le_mul_of_nonneg_left (young_reverse (f u) (g u) r hr)
          (Real.exp_pos (-lambda*u)).le
        dsimp [density]
        nlinarith [hp])
    rw [intervalIntegral.integral_add (hG.const_mul (1+r)) (hU.const_mul (r*(1+r))),
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
      intervalIntegral.integral_const_mul] at H
    exact H

/-- The weighted integral of the EXISTING original divisor response. -/
def familyWeightedDivisorEnergy (F : NormalizedCoefficients) (d : ℕ)
    (lambda T : ℝ) : ℝ := energy (familyDivisorRestrictedResponse F d T) lambda T

@[simp] theorem familyWeightedDivisorEnergy_zero (F : NormalizedCoefficients)
    (d : ℕ) (T : ℝ) :
    familyWeightedDivisorEnergy F d 0 T = familyDivisorRestrictedEnergy F d T := by
  simp [familyWeightedDivisorEnergy, energy, density, familyDivisorRestrictedEnergy]

private theorem response_continuous (F : NormalizedCoefficients) (d : ℕ) (T : ℝ) :
    Continuous (familyDivisorRestrictedResponse F d T) := by
  classical
  apply continuous_finsetSum (endpointIndex T)
  intro n hn
  by_cases hd : d ∣ n
  · simp only [if_pos hd]
    exact continuous_const.mul (Complex.continuous_ofReal.comp
      (pickupResponse_continuous (Finset.mem_Icc.mp hn).1))
  · simp only [if_neg hd]
    exact continuous_const

private theorem energy_inventory (F : NormalizedCoefficients) (d : ℕ)
    (lambda A B : ℝ) (hA : 0 ≤ A) (hAB : A ≤ B) :
    energy (familyDivisorRestrictedResponse F d B) lambda A =
      familyWeightedDivisorEnergy F d lambda A := by
  apply energy_congr _ _ lambda A hA
  intro u hu
  exact familyDivisorRestrictedResponse_horizon_eq F d hAB hu.2

theorem familyWeightedDivisorEnergy_nonneg (F : NormalizedCoefficients) (d : ℕ)
    (lambda T : ℝ) (hT : 0 ≤ T) :
    0 ≤ familyWeightedDivisorEnergy F d lambda T := energy_nonneg _ lambda T hT

theorem familyWeightedDivisorEnergy_mono (F : NormalizedCoefficients) (d : ℕ)
    (lambda A B : ℝ) (hA : 0 ≤ A) (hAB : A ≤ B) :
    familyWeightedDivisorEnergy F d lambda A ≤ familyWeightedDivisorEnergy F d lambda B := by
  rw [← energy_inventory F d lambda A B hA hAB]
  exact energy_mono _ (response_continuous F d B) lambda A B hAB

/-- Source-exact weighted L2 translation; both the damping and native horizon
are returned explicitly. No positivity assumption on lambda is needed here. -/
theorem familyWeightedDivisorEnergy_delay (F : NormalizedCoefficients) (d : ℕ)
    (lambda T h : ℝ) (hT : 0 ≤ T) (hh : 0 ≤ h) :
    (∫ u in (0 : ℝ)..T, Real.exp (-lambda*u) *
      ‖familyDivisorRestrictedResponse F d T (u-h)‖^2) =
    Real.exp (-lambda*h)*familyWeightedDivisorEnergy F d lambda (max 0 (T-h)) := by
  change energy (fun u => familyDivisorRestrictedResponse F d T (u-h)) lambda T = _
  rw [energy_delay _ (response_continuous F d T)
    (fun u hu => familyDivisorRestrictedResponse_zero_of_nonpos F d T u hu) lambda T h hh]
  rw [energy_inventory F d lambda (max 0 (T-h)) T (le_max_left _ _)
    (max_le hT (sub_le_self T hh))]

/-- Actual damped prime-delay norm, with nonunit values retained. -/
def primeDelayNorm {q : ℕ} (chi : DirichletCharacter ℂ q) (p : ℕ) (lambda : ℝ) : ℝ :=
  ‖chi (p : ZMod q) * ((Real.sqrt (p : ℝ))⁻¹ : ℂ)‖ *
    Real.exp (-lambda*Real.log (p : ℝ)/2)

private theorem primeDelayNorm_bounds {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (p : ℕ) (hp : p.Prime)
    (lambda : ℝ) (hl : 0 ≤ lambda) :
    0 ≤ primeDelayNorm chi p lambda ∧ primeDelayNorm chi p lambda < 1 := by
  have hs : 0 < Real.sqrt (p : ℝ) := Real.sqrt_pos.2 (by exact_mod_cast hp.pos)
  have hs1 : 1 < Real.sqrt (p : ℝ) := by
    have hs2 := Real.sq_sqrt (by positivity : 0 ≤ (p : ℝ))
    have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
    nlinarith [Real.sqrt_nonneg (p : ℝ)]
  have hi : 0 < (Real.sqrt (p : ℝ))⁻¹ := inv_pos.mpr hs
  have hi1 : (Real.sqrt (p : ℝ))⁻¹ < 1 := by
    have hc := inv_mul_cancel₀ (ne_of_gt hs)
    have hm := mul_pos (sub_pos.mpr hs1) hi
    nlinarith
  have ha : ‖chi (p : ZMod q) * ((Real.sqrt (p : ℝ))⁻¹ : ℂ)‖ ≤
      (Real.sqrt (p : ℝ))⁻¹ := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hi]
    simpa only [one_mul] using mul_le_mul_of_nonneg_right (chi.norm_le_one _) hi.le
  have hh : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg (by exact_mod_cast hp.one_le)
  have he : Real.exp (-lambda*Real.log (p : ℝ)/2) ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    have := mul_nonneg hl hh
    linarith
  unfold primeDelayNorm
  constructor
  · exact mul_nonneg (norm_nonneg _) (Real.exp_pos _).le
  · calc
      _ ≤ ‖chi (p : ZMod q) * ((Real.sqrt (p : ℝ))⁻¹ : ℂ)‖ * 1 :=
        mul_le_mul_of_nonneg_left he (norm_nonneg _)
      _ ≤ (Real.sqrt (p : ℝ))⁻¹ := by simpa using ha
      _ < 1 := hi1

/-- Two-sided ORIGINAL energy theorem with its true shortened horizon.
No independent arithmetic energy bound occurs in its hypotheses. -/
theorem familyWeightedDivisorEnergy_prime_two_sided {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (d p : ℕ) (hp : p.Prime) (hpd : ¬ p ∣ d)
    (lambda T : ℝ) (hl : 0 ≤ lambda) (hT : 0 ≤ T) :
    let r := primeDelayNorm chi p lambda
    let theta := max 0 (T-Real.log (p : ℝ))
    (1-r)^2 * familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) (d*p) lambda T ≤
      r^2 * familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) d lambda theta ∧
    r^2 * familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) d lambda theta ≤
      (1+r)^2 * familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) (d*p) lambda T := by
  let F := dirichletCharacterCoefficients chi
  let h := Real.log (p : ℝ)
  let a : ℂ := chi (p : ZMod q) * ((Real.sqrt (p : ℝ))⁻¹ : ℂ)
  let r := primeDelayNorm chi p lambda
  let theta := max 0 (T-h)
  let x := familyDivisorRestrictedResponse F (d*p) T
  let y := fun u => familyDivisorRestrictedResponse F d T (u-h)
  let z := fun u => x (u-h)
  let X := familyWeightedDivisorEnergy F (d*p) lambda T
  let Y := familyWeightedDivisorEnergy F d lambda theta
  let Z := familyWeightedDivisorEnergy F (d*p) lambda theta
  let U := energy (fun u => y u-z u) lambda T
  change (1-r)^2*X ≤ r^2*Y ∧ r^2*Y ≤ (1+r)^2*X
  obtain ⟨hr, hr1⟩ := primeDelayNorm_bounds chi p hp lambda hl
  have hh : 0 ≤ h := Real.log_nonneg (by exact_mod_cast hp.one_le)
  have ht0 : 0 ≤ theta := le_max_left _ _
  have htT : theta ≤ T := max_le hT (sub_le_self T hh)
  have hZ : Z ≤ X := familyWeightedDivisorEnergy_mono F (d*p) lambda theta T ht0 htT
  have hrec : X = ‖a‖^2*U := by
    calc
      _ = energy (fun u => -a*(y u-z u)) lambda T := by
        apply energy_congr _ _ lambda T hT
        intro u hu
        exact familyDivisorRestrictedResponse_prime_same_horizon chi d p hp hpd T u hu.2
      _ = _ := by rw [energy_mul, norm_neg]
  have hy : energy y lambda T = Real.exp (-lambda*h)*Y :=
    familyWeightedDivisorEnergy_delay F d lambda T h hT hh
  have hz : energy z lambda T = Real.exp (-lambda*h)*Z :=
    familyWeightedDivisorEnergy_delay F (d*p) lambda T h hT hh
  have hr2 : r^2 = ‖a‖^2*Real.exp (-lambda*h) := by
    dsimp [r, primeDelayNorm, a, h]
    rw [mul_pow, pow_two (Real.exp _), ← Real.exp_add]
    congr 1
    congr 1
    ring
  have hcY : Continuous y := (response_continuous F d T).comp (continuous_id.sub continuous_const)
  have hcZ : Continuous z := (response_continuous F (d*p) T).comp (continuous_id.sub continuous_const)
  have H := integrated_young y z hcY hcZ lambda T r hT hr hr1.le
  have Hup := mul_le_mul_of_nonneg_left H.1 (sq_nonneg ‖a‖)
  have Hlo := mul_le_mul_of_nonneg_left H.2 (sq_nonneg ‖a‖)
  rw [hy, hz] at Hup Hlo
  have hup : r*(1-r)*X ≤ r^3*Y+r^2*(1-r)*Z := by
    calc
      _ = ‖a‖^2*(r*(1-r)*U) := by rw [hrec]; ring
      _ ≤ ‖a‖^2*(r*(Real.exp (-lambda*h)*Y)+(1-r)*(Real.exp (-lambda*h)*Z)) := Hup
      _ = _ := by rw [show r^3 = r*r^2 by ring, hr2]; ring
  have hlo : r^3*Y ≤ (1+r)*r^2*Z+r*(1+r)*X := by
    calc
      _ = ‖a‖^2*(r*(Real.exp (-lambda*h)*Y)) := by
        rw [show r^3 = r*r^2 by ring, hr2]; ring
      _ ≤ ‖a‖^2*((1+r)*(Real.exp (-lambda*h)*Z)+r*(1+r)*U) := Hlo
      _ = _ := by rw [hrec, hr2]; ring
  by_cases hr0 : r = 0
  · have ha0 : ‖a‖ = 0 := by
      have he : Real.exp (-lambda*h/2) ≠ 0 := ne_of_gt (Real.exp_pos _)
      exact (mul_eq_zero.mp hr0).resolve_right he
    have hX0 : X = 0 := by rw [hrec, ha0]; ring
    simp [hr0, hX0]
  · have hrp : 0 < r := lt_of_le_of_ne hr (Ne.symm hr0)
    have huZ := mul_le_mul_of_nonneg_left hZ
      (mul_nonneg (sq_nonneg r) (sub_nonneg.mpr hr1.le))
    have hlZ := mul_le_mul_of_nonneg_left hZ
      (mul_nonneg (by linarith : 0 ≤ 1+r) (sq_nonneg r))
    constructor
    · apply (mul_le_mul_left hrp).mp
      nlinarith [hup, huZ]
    · apply (mul_le_mul_left hrp).mp
      nlinarith [hlo, hlZ]

/-- Lower credit and upper cost, with explicit local denominator factors. -/
theorem familyWeightedDivisorEnergy_prime_bounds {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (d p : ℕ) (hp : p.Prime) (hpd : ¬ p ∣ d)
    (lambda T : ℝ) (hl : 0 ≤ lambda) (hT : 0 ≤ T) :
    let r := primeDelayNorm chi p lambda
    let theta := max 0 (T-Real.log (p : ℝ))
    (r/(1+r))^2 * familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) d lambda theta ≤
      familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) (d*p) lambda T ∧
    familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) (d*p) lambda T ≤
      (r/(1-r))^2 * familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) d lambda theta := by
  have H := familyWeightedDivisorEnergy_prime_two_sided chi d p hp hpd lambda T hl hT
  obtain ⟨hr, hr1⟩ := primeDelayNorm_bounds chi p hp lambda hl
  dsimp only at H ⊢
  constructor
  · rw [div_pow, div_mul_eq_mul_div]
    apply (div_le_iff₀ (sq_pos_of_pos (by linarith : 0 < 1+primeDelayNorm chi p lambda))).mpr
    nlinarith [H.2]
  · rw [div_pow, div_mul_eq_mul_div]
    apply (le_div_iff₀ (sq_pos_of_pos (by linarith : 0 < 1-primeDelayNorm chi p lambda))).mpr
    nlinarith [H.1]

/-- The source estimate consumed by the positive divisor covariance expansion. -/
theorem familyWeightedDivisorEnergy_prime_upper_same_horizon {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (d p : ℕ) (hp : p.Prime) (hpd : ¬ p ∣ d)
    (lambda T : ℝ) (hl : 0 ≤ lambda) (hT : 0 ≤ T) :
    familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) (d*p) lambda T ≤
      (primeDelayNorm chi p lambda/(1-primeDelayNorm chi p lambda))^2 *
        familyWeightedDivisorEnergy (dirichletCharacterCoefficients chi) d lambda T := by
  have H := (familyWeightedDivisorEnergy_prime_bounds chi d p hp hpd lambda T hl hT).2
  apply H.trans
  apply mul_le_mul_of_nonneg_left _ (sq_nonneg _)
  exact familyWeightedDivisorEnergy_mono _ d lambda _ T (le_max_left _ _)
    (max_le hT (sub_le_self T (Real.log_nonneg (by exact_mod_cast hp.one_le))))

/-- Actual signed-sieve consumer. The selected prime is ERASED from the
remaining divisor sum, so its lower-energy credit is never counted twice.
The entire rest of the signed source and the exact diagonal remain. -/
theorem familyLowGcdCross_le_prime_credit {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (D p : ℕ) (hD : 1 ≤ D) (hp : p.Prime)
    (hDp : D < p) (hp2D : p ≤ 2*D) (T : ℝ) (hT : 0 ≤ T)
    (hpT : p ∈ Finset.Icc 1 ⌊Real.exp T⌋₊) :
    let F := dirichletCharacterCoefficients chi
    let r := primeDelayNorm chi p 0
    familyLowGcdCross F D T ≤
      (∑ n ∈ (Finset.Icc 1 ⌊Real.exp T⌋₊).erase p,
        lowGcdSieveWeight D n * familyDivisorRestrictedEnergy F n T) -
      familyLowGcdSourceDiagonal F D T -
      (r/(1+r))^2 * familyDivisorRestrictedEnergy F 1 (max 0 (T-Real.log (p : ℝ))) := by
  classical
  have hp1 : ¬ p ∣ 1 := fun h => hp.ne_one (Nat.dvd_one.mp h)
  have hcredit := (familyWeightedDivisorEnergy_prime_bounds chi 1 p hp hp1 0 T le_rfl hT).1
  simp only [one_mul, familyWeightedDivisorEnergy_zero] at hcredit
  have hs := familyHermitianDivisorSieve_proof (dirichletCharacterCoefficients chi) D T hT
  rw [← Finset.sum_erase_add _ _ hpT,
    firstDivisorCollarCoefficient_proof D p hD hDp hp2D] at hs
  dsimp only
  linarith

end GRWTSK.NumberTheory.Moebius.LFunctionDivisorPrimeWeightedEnergy
