/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Written analytic proof and exact finite radius-two independent audit:
grwtsk/math@403254f825950fcdc743fd3cd1043580b7689979
Sources:
  WeilSourcePrimeCorrelation.lean (actual complex correlation),
  CharacterWeilWindowBounds.lean (actual chi phases),
  WeilRadiusTwoPrimeNorm.lean (47/5 real row mass),
  WeilRadiusTwoPrimePrices.lean (all 53 literal arithmetic labels),
  WeilConductorFrontier.lean (original primitive arithmetic value),
  WeilGammaData.lean (real gamma parity, conductor normalization).
Reference: Connes--Consani--Moscovici, Zeta Spectral Triples,
  arXiv:2511.22755v1, (3.19)--(3.20);
  NIST DLMF 5.4 (gamma constants), 25.15 (Dirichlet L-functions).
Analytic proof: WRITTEN / INDEPENDENT_REVIEW_NOT_RUN.
This file's Lean proofs: CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeNorm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import Mathlib

/-!
# Phase-preserving complex prime row bound and radius-two character frontier

## Exact consumer and mathematical result

The source is the ORIGINAL individual primitive nonprincipal Dirichlet
arithmetic value
  primitiveArithmeticValue chi hp hn 2 f
= gammaConstant q (gammaParity chi) * energy f
  + integral_(r>0) gammaCorrectionDensity (gammaParity chi) f r
  - twistedPrime 2 chi (fun n => correlation f (log n)).
The carrier is COMPLEX-valued physical L²(dt), with source support
[-2,2], gamma parity 0 or 1, actual primitive conductor q,
conjugate-linear-first correlation and ALL active prime powers.
There is NO zeta pole in this primitive nonprincipal sector.
The original completed-L-function explicit-formula/source-identity
bridge remains separate; this result does not assume GRH.

The already source-proved RadiusTwoPrimeNorm.abs_primeEnergy_two_le
gives, for every supported real square-integrable g,
    |primeEnergy 2 g| <= (47/5) integral_R g(t)^2 dt.
This was a stronger source estimate than the general triangle estimate
in ConductorFrontier. It can be transferred EXACTLY to each individual
character, not merely its real paired average.

For complex f, take g(t)=||f(t)||. The integrability of f implies
g is square-integrable. For every shift r, pointwise
  ||conj(f(t))*f(t+r)||=g(t)*g(t+r),
hence triangle inequality for the INTEGRAL gives
  ||correlation f r|| <= integral_R g(t)*g(t+r)dt.
Moreover |chi(n)|<=1, the von Mangoldt primeWeight is nonnegative,
and the active inventory at T=2 is precisely 2,...,54 (non-prime
powers have zero weight). Therefore
  |twistedPrime 2 chi (correlation f o log)|
    <= 2 sum_(n in active(2)) primeWeight(n) C_g(log n)
     = primeEnergy 2 g
    <= (47/5) energy f.                                      (A)
No independent prime phase is dropped: the inequality bounds the
ORIGINAL signed sum by the full positive source with the same n.

The source gammaConstant_lower theorem gives for a=0,1
  gammaConstant(q,a)>=log(q)-6,
and the full gammaCorrectionDensity is nonnegative for positive r.
Consequently, for every primitive nonprincipal chi,
  primitiveArithmeticValue chi hp hn 2 f
    >= (log(q)-6-47/5)*energy f
     = (log(q)-77/5)*energy f.                               (B)
For q>=2^23, the pinned mathlib lemma
  Real.log_two_gt_d9 : 0.6931471803 < log(2)
gives 23*log(2)>77/5, so (B) is nonnegative and strictly
positive whenever energy f>0.

This is a genuine unconditional fixed-window large-conductor
comparison for the INDIVIDUAL primitive nonprincipal arithmetic source:
  all primitive q >= 8,388,608, either gamma parity.
The prior general source's threshold at T=2 is conductorFrontier(2)
  = 3^(6+8*2*(3^2-1))=3^134.
No replacement character or norm is introduced.

## Source computation and independent hostile comparison

The original 48-cell integer table of WeilRadiusTwoPrimeNorm uses
all 53 labels n=2,...,54, each exact weightNumerator n from
WeilRadiusTwoPrimePrices, and the ORIGINAL rootUpper 32-step Newton
recurrence with n=14:
  guess0=2^(floor(log2(a))/16+1),
  guessNext=min(guess, (floor(a/guess^15)+15*guess)//16),
  ratioNumerator(num,den)=rootUpper(floor(num*10000^16/den)).
An independent Python INTEGER replay reproduced exactly 2880 such
16th-root upper endpoints with zero disagreements against the minimal
floor root+1. All 48 cell sums fit the source upper 940000000.
The largest was cell k=53: 934825922, leaving exact positive slack
5174078. This is a finite computation from source formulas, NOT a new
kernel replay or the missing 399936 signed Schur observations.

Hostile counterexample to erasing the character: chi(n) can be
nonreal, and the resulting correlation need not be real or positive.
The proof retains its complex conjugation before applying
|Re(z)|<=||z||. The original primitiveArithmeticValue is used in
the final inequality. A real-only proof without this absolute
correlation step would not cover all complex character sectors.

The result does NOT supply the radius-two zeta low signed
65-coordinate Schur positivity. Its conductor threshold is fixed
at T=2 and grows with T; for any fixed character it is insufficient
on a cofinal family T->infinity. No RH/Dirichlet GRH is claimed.

Heat and coding: this is an ACTUAL signed arithmetic form estimate,
not a Markov coverage or diffusion certificate. The previously
maintained exact rationalStageRecordCodec has a roundtrip for
representable source/sector/error payloads, and stageCoverageWeight
has total coverage mass one with tail 2^-J. Neither asserts
nonnegativity of an unknown finite Schur matrix or eliminates the
unobserved cofinal support stages.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoComplexConductor

open LowSchur OddRootProjection OddSineForm
open CharacterWindow SourcePrimeCorrelation RadiusTwoPrimeNorm

variable {q : ℕ} [NeZero q]

/-- The norm of a complex whole-line correlation is bounded by the SAME
real positive-lift correlation, not merely the global L2 energy. -/
theorem norm_correlation_le_norm_lift (f : ℝ → ℂ)
    (hf : MemLp f 2 volume) (r : ℝ) :
    ‖correlation f r‖ ≤
      ∫ t : ℝ, ‖f t‖ * ‖f (t + r)‖ := by
  have hIntegrable :
      Integrable (fun t : ℝ => ‖f t‖ * ‖f (t + r)‖) := by
    simpa only [norm_mul, Complex.norm_conj] using
      (integrable_correlation_integrand hf r).norm
  unfold correlation
  exact norm_integral_le_of_norm_le hIntegrable
    (Filter.Eventually.of_forall (fun t => by
      simp only [norm_mul, Complex.norm_conj]
      exact le_rfl))

/-- Complex chi phases are retained through the full source sum.
All characters, not just real/conjugate-paired characters, are covered. -/
theorem abs_twistedPrime_two_le_positive_real_energy
    (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ)
    (hf : MemLp f 2 volume) :
    |twistedPrime 2 χ
      (fun n => correlation f (Real.log (n : ℝ)))| ≤
      primeEnergy 2 (fun t => ‖f t‖) := by
  have hterm (n : ℕ) :
      |(conj (χ n) * correlation f (Real.log (n : ℝ))).re| ≤
        ∫ t : ℝ, ‖f t‖ * ‖f (t + Real.log (n : ℝ))‖ := by
    calc
      _ ≤ ‖conj (χ n) * correlation f (Real.log (n : ℝ))‖ :=
        Complex.abs_re_le_norm _
      _ = ‖χ n‖ * ‖correlation f (Real.log (n : ℝ))‖ := by
        simp only [norm_mul, Complex.norm_conj]
      _ ≤ 1 * ‖correlation f (Real.log (n : ℝ))‖ :=
        mul_le_mul_of_nonneg_right (χ.norm_le_one n) (norm_nonneg _)
      _ = ‖correlation f (Real.log (n : ℝ))‖ := one_mul _
      _ ≤ _ := norm_correlation_le_norm_lift f hf _
  unfold twistedPrime primeEnergy
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ∑ n ∈ activePrimePowers 2,
      |primeWeight n *
        (conj (χ n) * correlation f (Real.log (n : ℝ))).re| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ 2 * ∑ n ∈ activePrimePowers 2,
      primeWeight n *
        (∫ t : ℝ, ‖f t‖ * ‖f (t + Real.log (n : ℝ))‖) := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      apply Finset.sum_le_sum
      intro n hn
      rw [abs_mul, abs_of_nonneg (primeWeight_nonneg n)]
      exact mul_le_mul_of_nonneg_left (hterm n) (primeWeight_nonneg n)
    _ = _ := rfl

/-- Transport the proved radius-two real weighted row budget to the
individual complex Dirichlet twisted source in the ACTUAL physical norm. -/
theorem abs_twistedPrime_two_le_rowBudget
    (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ)
    (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → f t = 0) :
    |twistedPrime 2 χ
      (fun n => correlation f (Real.log (n : ℝ)))| ≤
      (47 / 5 : ℝ) * energy f := by
  let g : ℝ → ℝ := fun t => ‖f t‖
  have hg : MemLp g 2 volume := by
    simpa only [g] using hf.norm
  have hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → g t = 0 := by
    filter_upwards [hs] with t ht hout
    simp only [g, ht hout, norm_zero]
  have hrow := abs_primeEnergy_two_le hg hgs
  have hpositive := abs_twistedPrime_two_le_positive_real_energy χ f hf
  calc
    _ ≤ primeEnergy 2 g := by
      simpa only [g] using hpositive
    _ ≤ |primeEnergy 2 g| := le_abs_self _
    _ ≤ (47 / 5 : ℝ) * energy f := by
      simpa only [g, energy] using hrow

/-- Source gamma density is nonnegative on all positive shifts;
the test-class integrability is kept separately. -/
private theorem gamma_density_nonneg
    (a : ℕ) (f : ℝ → ℂ) {r : ℝ} (hr : 0 < r) :
    0 ≤ gammaCorrectionDensity a f r := by
  have hden : 0 ≤ 1 - Real.exp (-2 * r) := by
    have h := Real.exp_le_exp.mpr (by linarith : -2 * r ≤ (0 : ℝ))
    simpa only [Real.exp_zero] using sub_nonneg.mpr h
  unfold gammaCorrectionDensity parityKernel
  exact mul_nonneg
    (div_nonneg (Real.exp_nonneg _) hden)
    (integral_nonneg (fun _ => sq_nonneg _))

/-- The real gamma density has its source integrable positive-half integral. -/
private theorem gamma_integral_nonneg
    (a : ℕ) (f : ℝ → ℂ)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0)) :
    0 ≤ ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  have hz : Integrable (fun _ : ℝ => (0 : ℝ))
      (volume.restrict (Ioi 0)) := integrable_zero _ _ _
  simpa using integral_mono_ae hz harch
    ((ae_restrict_mem measurableSet_Ioi).mono
      (fun r hr => gamma_density_nonneg a f hr))

/-- Unconditional source-exact fixed radius-two prime/Gamma lower bound
for EVERY primitive nonprincipal parity, on its genuine finite-energy
complex test domain. -/
theorem primitive_source_two_lower
    (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (f : ℝ → ℂ) (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → f t = 0)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity χ) f) (Ioi 0)) :
    (Real.log (q : ℝ) - 77 / 5) * energy f ≤
      primitiveArithmeticValue χ hp hn 2 f := by
  have hq : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hgamma := gammaConstant_lower q hq (gammaParity χ)
    (gammaParity_le_one χ)
  have hmass : 0 ≤ energy f := integral_nonneg (fun _ => sq_nonneg _)
  have hg := mul_le_mul_of_nonneg_right hgamma hmass
  have hpbound := abs_twistedPrime_two_le_rowBudget χ f hf hs
  have hprimeterm := (le_abs_self
    (twistedPrime 2 χ (fun n => correlation f (Real.log (n : ℝ))))).trans
      hpbound
  have hjump := gamma_integral_nonneg (gammaParity χ) f harch
  unfold primitiveArithmeticValue
  nlinarith

/-- Strongly smaller than the older 3^134 fixed-window frontier:
2^23 = 8,388,608 already suffices at radius two. -/
theorem conductor_threshold_two_of_power_two
    (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (hq : 2 ^ (23 : ℕ) ≤ q)
    (f : ℝ → ℂ) (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → f t = 0)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity χ) f) (Ioi 0)) :
    0 ≤ primitiveArithmeticValue χ hp hn 2 f := by
  have hqReal : (2 : ℝ) ^ (23 : ℕ) ≤ (q : ℝ) := by
    exact_mod_cast hq
  have hlog : (23 : ℝ) * Real.log 2 ≤ Real.log (q : ℝ) := by
    have h := Real.log_le_log
      (by positivity : (0 : ℝ) < (2 : ℝ) ^ (23 : ℕ)) hqReal
    simpa only [Real.log_pow] using h
  have hlow : (77 / 5 : ℝ) ≤ Real.log (q : ℝ) := by
    linarith [Real.log_two_gt_d9]
  have hmass : 0 ≤ energy f := integral_nonneg (fun _ => sq_nonneg _)
  have hnonneg : 0 ≤ (Real.log (q : ℝ) - 77 / 5) * energy f :=
    mul_nonneg (sub_nonneg.mpr hlow) hmass
  exact hnonneg.trans (primitive_source_two_lower χ hp hn f hf hs harch)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoComplexConductor
