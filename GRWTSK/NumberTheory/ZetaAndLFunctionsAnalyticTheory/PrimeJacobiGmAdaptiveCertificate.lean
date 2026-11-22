/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean 4.34.1; Mathlib d13f23b7.
Elaboration, axiom audit and fresh kernel replay: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeJacobiGmArithmeticReturn
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Tactic

/-!
# Exact source error budget for intermediate Gm

Only the real original von Mangoldt coefficients are observed with
error. Character phases, conductor, actual L'/L(1,chi) corrections and
the centered zeta term remain unchanged. The combined error is an
EXACT finite signed sum, followed by a certified absolute bound.

This does not import or infer Alpoge Main, FinalTheorems, RH, or
Weil positivity. The native EAtH and CoreAtH types are handled
separately in the isolated v4.33.1 adapter; they are NOT axioms here.

The original Weil physical prime weight is Lambda(n)/sqrt(n);
sourceLambda is the exact restored Lambda(n), not that weight.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlpogeGmAdaptiveCertificate

open GRWTSK.NumberTheory.AlpogeGmArithmeticReturn

/-- The original full COMPLEX characters appear only through their
real parts, after their genuine corrections have been preserved. -/
def sourcePhase {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (n : ℕ) : ℝ :=
  1 + ∑ i, weight i * (chi i n).re

/-- The entire signed finite arithmetic discrepancy; gamma and poles
do not occur here and no character values are synthesized. -/
def signedPrimeObservationDelta {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (lambda : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑ n ∈ sourceWindow x,
    (lambda n - sourceLambda n) * (x / (n : ℝ) - 1) *
      sourcePhase N chi weight n

/-- Restoring the actual L'/L corrections makes them cancel
EXACTLY when one compares original and observed character heads. -/
theorem character_log_derivative_cancels {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N) (lambda : ℕ → ℝ) (x : ℝ) :
    observedGchiC lambda chi x - sourceGchiC chi x =
      observedSchiC lambda chi x -
        observedSchiC sourceLambda chi x := by
  unfold observedGchiC sourceGchiC
  ring

/-- Exact local real-character discrepancy, retaining ALL complex
character phases until the explicit real projection. -/
theorem character_head_delta_real {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N) (lambda : ℕ → ℝ) (x : ℝ) :
    (observedGchiC lambda chi x - sourceGchiC chi x).re =
      ∑ n ∈ sourceWindow x,
        (lambda n - sourceLambda n) * (x / (n : ℝ) - 1) *
          (chi n).re := by
  rw [character_log_derivative_cancels]
  unfold observedSchiC
  rw [← Finset.sum_sub_distrib, Complex.re_sum]
  apply Finset.sum_congr rfl
  intro n _
  push_cast
  simp only [Complex.sub_re, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, mul_zero, zero_mul, sub_zero]
  ring

/-- Zeta source discrepancy is only the finite coefficient readout:
the X log X and Euler-constant terms cancel identically. -/
theorem zeta_head_delta (lambda : ℕ → ℝ) (x : ℝ) :
    observedGz lambda x - sourceGz x =
      ∑ n ∈ sourceWindow x,
        (lambda n - sourceLambda n) * (x / (n : ℝ) - 1) := by
  have h : observedSz lambda x - observedSz sourceLambda x =
      ∑ n ∈ sourceWindow x,
        (lambda n - sourceLambda n) * (x / (n : ℝ) - 1) := by
    unfold observedSz
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro n _
    ring
  unfold observedGz sourceGz
  linear_combination h

/-- Exact algebraic source-identity: observed Gm - actual Gm is the
single weighted prime-power coefficient error. ALL analytic corrections
are canceled because they are literally the same on both sides. -/
theorem observedGm_delta_eq_signedPrimeObservationDelta
    {ι : Type*} [Fintype ι] (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (lambda : ℕ → ℝ) (x : ℝ) :
    observedGm N chi weight lambda x - sourceGm N chi weight x =
      signedPrimeObservationDelta N chi weight lambda x := by
  classical
  have hcomp (i : ι) := character_head_delta_real (chi i) lambda x
  have hz := zeta_head_delta lambda x
  unfold observedGm sourceGm signedPrimeObservationDelta sourcePhase
  have htotal :
      (observedGz lambda x + ∑ i, weight i *
        (observedGchiC lambda (chi i) x).re) -
      (sourceGz x + ∑ i, weight i *
        (sourceGchiC (chi i) x).re) =
      (observedGz lambda x - sourceGz x) +
      ∑ i, weight i *
        (observedGchiC lambda (chi i) x -
          sourceGchiC (chi i) x).re := by
    rw [← Finset.sum_sub_distrib]
    simp only [Complex.sub_re]
    ring
  rw [htotal, hz]
  simp_rw [hcomp]
  rw [Finset.sum_mul]
  rw [Finset.sum_comm]
  -- Rearrangement is finite: one zeta term and all weighted characters.
  apply Finset.sum_congr rfl
  intro n _
  rw [Finset.mul_sum]
  ring

/-- Genuine complex Dirichlet character values, including zero at
ramified primes, have real part bounded by one in absolute value. -/
theorem dirichlet_real_abs_le_one {N : ℕ}
    (chi : DirichletCharacter ℂ N) (n : ℕ) :
    |(chi n).re| ≤ 1 :=
  (Complex.abs_re_le_norm _).trans
    (DirichletCharacter.norm_le_one chi (n : ZMod N))

/-- Exact source-specific absolute bound for the complete character
multiplier; no positivity or phase deletion is assumed. -/
theorem sourcePhase_abs_le {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (n : ℕ) :
    |sourcePhase N chi weight n| ≤ 1 + ∑ i, |weight i| := by
  classical
  unfold sourcePhase
  calc
    |1 + ∑ i, weight i * (chi i n).re|
      ≤ |(1 : ℝ)| + |∑ i, weight i * (chi i n).re| := abs_add_le _ _
    _ ≤ 1 + ∑ i, |weight i * (chi i n).re| := by
      simp only [abs_one]
      exact add_le_add_left (Finset.abs_sum_le_sum_abs _ _) _
    _ = 1 + ∑ i, |weight i| * |(chi i n).re| := by
      simp only [abs_mul]
    _ ≤ 1 + ∑ i, |weight i| := by
      apply add_le_add_left
      apply Finset.sum_le_sum
      intro i _
      calc
        |weight i| * |(chi i n).re| ≤ |weight i| * 1 :=
          mul_le_mul_of_nonneg_left (dirichlet_real_abs_le_one (chi i) n)
            (abs_nonneg _)
        _ = |weight i| := mul_one _

/-- A full signed arithmetic readout with a certified original Lambda
error inherits a single additive budget. -/
theorem observedGm_error_le_coefficient_budget
    {ι : Type*} [Fintype ι] (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (lambda err : ℕ → ℝ) (x : ℝ)
    (hErr : ∀ n ∈ sourceWindow x,
       |lambda n - sourceLambda n| ≤ err n) :
    |observedGm N chi weight lambda x - sourceGm N chi weight x| ≤
      ∑ n ∈ sourceWindow x, err n * |x / (n : ℝ) - 1| *
        |sourcePhase N chi weight n| := by
  rw [observedGm_delta_eq_signedPrimeObservationDelta]
  unfold signedPrimeObservationDelta
  calc
    |∑ n ∈ sourceWindow x, (lambda n - sourceLambda n) *
        (x / (n : ℝ) - 1) * sourcePhase N chi weight n|
      ≤ ∑ n ∈ sourceWindow x, |
          (lambda n - sourceLambda n) * (x / (n : ℝ) - 1) *
             sourcePhase N chi weight n| := Finset.abs_sum_le_sum_abs _ _
    _ = ∑ n ∈ sourceWindow x,
         |lambda n - sourceLambda n| * |x / (n : ℝ) - 1| *
           |sourcePhase N chi weight n| := by simp only [abs_mul]
    _ ≤ ∑ n ∈ sourceWindow x,
         err n * |x / (n : ℝ) - 1| *
           |sourcePhase N chi weight n| := by
      apply Finset.sum_le_sum
      intro n hn
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_right (hErr n hn) (abs_nonneg _))
        (abs_nonneg _)

/-- Uniform coefficient error through a cutoff: a single exact
arithmetic observation budget with the original source-phase envelope. -/
theorem observedGm_error_le_uniform
    {ι : Type*} [Fintype ι] (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (lambda : ℕ → ℝ) (x eps : ℝ)
    (hErr : ∀ n ∈ sourceWindow x,
       |lambda n - sourceLambda n| ≤ eps) :
    |observedGm N chi weight lambda x - sourceGm N chi weight x| ≤
      (1 + ∑ i, |weight i|) * eps *
        (∑ n ∈ sourceWindow x, |x / (n : ℝ) - 1|) := by
  have h := observedGm_error_le_coefficient_budget
    N chi weight lambda (fun _ => eps) x hErr
  apply h.trans
  rw [← Finset.mul_sum]
  -- Each finite source-phase modulus is bounded independently.
  calc
    (∑ n ∈ sourceWindow x, eps * |x / (n : ℝ) - 1| *
       |sourcePhase N chi weight n|)
      ≤ ∑ n ∈ sourceWindow x,
         eps * |x / (n : ℝ) - 1| *
           (1 + ∑ i, |weight i|) := by
          apply Finset.sum_le_sum
          intro n hn
          have he : 0 ≤ eps := (abs_nonneg _).trans (hErr n hn)
          exact mul_le_mul_of_nonneg_left
            (sourcePhase_abs_le N chi weight n)
            (mul_nonneg he (abs_nonneg _))
    _ = (1 + ∑ i, |weight i|) * eps *
         ∑ n ∈ sourceWindow x, |x / (n : ℝ) - 1| := by
          rw [← Finset.sum_mul]
          ring

/-- A source bound plus a *certified, nonnegative* arithmetic error
margin gives the observed one-sided estimate. The source bound remains
an original analytic premise, not a theorem supplied by this module. -/
theorem observedGm_upper_of_source_and_budget
    {ι : Type*} [Fintype ι] (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (lambda : ℕ → ℝ)
    (x theta thetaPrime eps : ℝ)
    (hSource : sourceGm N chi weight x ≤ x ^ theta)
    (hErr : ∀ n ∈ sourceWindow x,
        |lambda n - sourceLambda n| ≤ eps)
    (hMargin : (1 + ∑ i, |weight i|) * eps *
      (∑ n ∈ sourceWindow x, |x / (n : ℝ) - 1|) ≤
        x ^ thetaPrime - x ^ theta) :
    observedGm N chi weight lambda x ≤ x ^ thetaPrime := by
  have h := observedGm_error_le_uniform N chi weight lambda x eps hErr
  have hu := (abs_le.mp h).2
  linarith

end GRWTSK.NumberTheory.AlpogeGmAdaptiveCertificate
