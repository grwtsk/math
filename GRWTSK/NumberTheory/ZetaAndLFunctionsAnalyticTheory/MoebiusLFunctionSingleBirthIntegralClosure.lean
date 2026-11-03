/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionComplexPrefixTransfer
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Exact original single-birth complex interval integral

The maintained original physical response at every n>=1 is
  r_n(u) = if log n <= u then
    2*((sqrt n)^(-1) - exp(-u/2)) else 0.
This source proves, as an explicit pinned Lean CANDIDATE, that
  ∫_0^u ((if log n <= v then exp(-v/2) else 0) : ℂ) dv
      = (r_n(u) : ℂ),  u>=0,
including the complex-cast interval-integrability.

Mathematical proof: the real step is globally measurable and
bounded by one for n>=1 (since log n>=0); it is integrable on
every finite interval. For u<log n its integral is zero.
For u>=log n, split at a=log n; the pre-birth integral is zero
(except the measure-zero single birth endpoint) and the post-birth
integral is 2*(exp(-a/2)-exp(-u/2)).
The exact identity exp(-log n/2)=1/sqrt n follows from
Real.exp_half and Real.exp_log for n>0.
Pinned Mathlib intervalIntegral.integral_comp_mul_right,
integral_exp, integral_add_adjacent_intervals, integral_ofReal,
integral_congr_Ioo_of_le are the only calculus ingredients.

The existing FamilyPrefixResponseReconstructionTarget is THEN
inhabited by its previously authored finite Fubini consumer
with this scalar proof body; the same original Hermitian Gram
and family cumulative energy are preserved. No signed arithmetic
or zero-free/GRH hypothesis has been inserted.

Compilation, expected declaration types, full import closure,
fresh kernel and transitive axiom audit are NOT_RUN. This is
source-level proof candidate code, not an acceptance receipt.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionSingleBirthIntegralClosure

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionComplexPrefixTransfer

classical

/-- The genuine original birth step is measurable in complex
coefficients; its discontinuity is only at the source birth. -/
private theorem birthStep_measurable (n : ℕ) :
    Measurable (fun v : ℝ => (originalBirthStep n v : ℂ)) := by
  unfold originalBirthStep
  exact Measurable.ite measurableSet_Ici (by fun_prop) (by fun_prop)

/-- Since n>=1 has log n>=0, the original step never takes
a positive value at negative time; its norm is globally <=1. -/
private theorem birthStep_norm_le_one
    (n : ℕ) (hn : 1 ≤ n) (v : ℝ) :
    ‖(originalBirthStep n v : ℂ)‖ ≤ 1 := by
  have hlog : 0 ≤ Real.log (n : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hn)
  by_cases hb : Real.log (n : ℝ) ≤ v
  · have hv : 0 ≤ v := hlog.trans hb
    have hexp : Real.exp (-v/2) ≤ 1 := by
      have harg : -v/2 ≤ (0 : ℝ) := by linarith
      simpa only [Real.exp_zero] using (Real.exp_le_exp.mpr harg)
    simpa [originalBirthStep, hb, Complex.norm_real,
      Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)] using hexp
  · simp [originalBirthStep, hb]

/-- Genuine finite-interval integrability, including the
complex cast, without assuming the value of the integral. -/
private theorem birthStep_intervalIntegrable
    (n : ℕ) (hn : 1 ≤ n) (a b : ℝ) (hab : a ≤ b) :
    IntervalIntegrable
      (fun v : ℝ => (originalBirthStep n v : ℂ))
      volume a b := by
  rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hab]
  exact Measure.integrableOn_of_bounded
    (M := (1 : ℝ)) measure_Ioc_lt_top.ne
    (birthStep_measurable n).aestronglyMeasurable
    (ae_of_all _ (fun v => birthStep_norm_le_one n hn v))

/-- Exact two-sided real scalar primitive. In particular it is
valid regardless of whether a<=b, because interval integrals
are oriented. -/
private theorem integral_exp_neg_half (a b : ℝ) :
    (∫ v in a..b, Real.exp (-v/2)) =
      2*(Real.exp (-a/2)-Real.exp (-b/2)) := by
  let c : ℝ := -(1/2)
  have hc : c ≠ 0 := by norm_num [c]
  have h := intervalIntegral.integral_comp_mul_right
    (a := a) (b := b) (c := c) Real.exp hc
  have he :
      (∫ v in a..b, Real.exp (v*c)) =
        c⁻¹ * (Real.exp (b*c)-Real.exp (a*c)) := by
    simpa only [smul_eq_mul, intervalIntegral.integral_exp] using h
  calc
    (∫ v in a..b, Real.exp (-v/2)) =
        ∫ v in a..b, Real.exp (v*c) := by
      apply intervalIntegral.integral_congr
      intro v hv
      congr 1
      dsimp [c]
      ring
    _ = c⁻¹ * (Real.exp (b*c)-Real.exp (a*c)) := he
    _ = 2*(Real.exp (-a/2)-Real.exp (-b/2)) := by
      have ha : a*c = -a/2 := by dsimp [c]; ring
      have hb : b*c = -b/2 := by dsimp [c]; ring
      rw [ha, hb]
      dsimp [c]
      norm_num
      ring

/-- The original real exponential at the log birth has the
correct reciprocal-square-root normalization; no factor is
discarded by a change of analytic coordinates. -/
private theorem exp_neg_log_half_eq_inv_sqrt
    (n : ℕ) (hn : 1 ≤ n) :
    Real.exp (-Real.log (n : ℝ)/2) =
      (Real.sqrt (n : ℝ))⁻¹ := by
  have hnpos : 0 < (n : ℝ) := by
    exact_mod_cast (show 0 < n by omega)
  have hhalf :
      Real.exp (Real.log (n : ℝ)/2) =
        Real.sqrt (n : ℝ) := by
    rw [Real.exp_half, Real.exp_log hnpos]
  calc
    Real.exp (-Real.log (n : ℝ)/2) =
        Real.exp (-(Real.log (n : ℝ)/2)) := by
      congr 1
      ring
    _ = (Real.exp (Real.log (n : ℝ)/2))⁻¹ := Real.exp_neg _
    _ = (Real.sqrt (n : ℝ))⁻¹ := by rw [hhalf]

/-- The exact original single-birth source gate with all
complex interval-integrability and birth-endpoint cases.
This is an authored Lean proof body for the PREVIOUSLY
unproved target, not a new or weakened proposition. -/
theorem originalSingleBirthComplexIntegral_proof :
    OriginalSingleBirthComplexIntegralTarget := by
  intro n u hn hu
  have hInt := birthStep_intervalIntegrable n hn 0 u hu
  refine ⟨hInt, ?_⟩
  have hlog : 0 ≤ Real.log (n : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hn)
  by_cases hborn : Real.log (n : ℝ) ≤ u
  · let a : ℝ := Real.log (n : ℝ)
    have h0a : 0 ≤ a := hlog
    have hau : a ≤ u := hborn
    have hl := birthStep_intervalIntegrable n hn 0 a h0a
    have hr := birthStep_intervalIntegrable n hn a u hau
    have hsplit := intervalIntegral.integral_add_adjacent_intervals hl hr
    have hzero :
        (∫ v in (0 : ℝ)..a,
          (originalBirthStep n v : ℂ)) = 0 := by
      rw [← intervalIntegral.integral_zero]
      apply intervalIntegral.integral_congr_Ioo_of_le h0a
      intro v hv
      have hnot : ¬Real.log (n : ℝ) ≤ v := by
        have hvlt : v < a := hv.2
        exact not_le.mpr hvlt
      simp [originalBirthStep,hnot]
    have hpost :
        (∫ v in a..u, (originalBirthStep n v : ℂ)) =
        ∫ v in a..u, ((Real.exp (-v/2) : ℝ) : ℂ) := by
      apply intervalIntegral.integral_congr
      intro v hv
      have hva : a ≤ v := (uIcc_of_le hau ▸ hv).1
      simp [originalBirthStep, show Real.log (n : ℝ) ≤ v by
        simpa only [a] using hva]
    have heval :
        (∫ v in a..u, ((Real.exp (-v/2) : ℝ) : ℂ)) =
        ((2*(Real.exp (-a/2)-Real.exp (-u/2)) : ℝ) : ℂ) := by
      rw [intervalIntegral.integral_ofReal]
      exact congrArg (fun x : ℝ => (x : ℂ))
        (integral_exp_neg_half a u)
    have hresp :
        pickupResponse n u =
          2*((Real.sqrt (n : ℝ))⁻¹-Real.exp (-u/2)) := by
      simp [pickupResponse,hborn]
    calc
      (∫ v in (0 : ℝ)..u,
        (originalBirthStep n v : ℂ)) =
          (∫ v in (0 : ℝ)..a,
            (originalBirthStep n v : ℂ)) +
          (∫ v in a..u,
            (originalBirthStep n v : ℂ)) := hsplit.symm
      _ = ((2*(Real.exp (-a/2)-Real.exp (-u/2)) : ℝ) : ℂ) := by
          rw [hzero,zero_add,hpost,heval]
      _ = (pickupResponse n u : ℂ) := by
          have hloghalf := exp_neg_log_half_eq_inv_sqrt n hn
          dsimp [a]
          rw [hloghalf, hresp]
  · have hnot : ¬Real.log (n : ℝ) ≤ u := hborn
    have hzero :
        (∫ v in (0 : ℝ)..u,
          (originalBirthStep n v : ℂ)) = 0 := by
      rw [← intervalIntegral.integral_zero]
      apply intervalIntegral.integral_congr
      intro v hv
      have hvle : v ≤ u := (uIcc_of_le hu ▸ hv).2
      have hnle : ¬Real.log (n : ℝ) ≤ v :=
        not_le.mpr (lt_of_le_of_lt hvle (lt_of_not_ge hnot))
      simp [originalBirthStep,hnle]
    simpa [pickupResponse,hnot] using hzero

/-- Complete the formerly conditional finite complex family
prefix-to-physical-response reconstruction using the same
original birth-gated source (no extra mathematical premise). -/
theorem familyPrefixResponseReconstruction_proof :
    FamilyPrefixResponseReconstructionTarget :=
  familyPrefixResponseReconstruction_of_singleBirth
    originalSingleBirthComplexIntegral_proof

/-- Actual integrated complex prefix squared-norm energy equals
the original full ordered Hermitian Gram at nonnegative T.
This conclusion remains tied to the exact original source. -/
theorem familyCumulativeEnergy_eq_fullGram_proof
    (F : NormalizedCoefficients) {T : ℝ} (hT : 0 ≤ T) :
    familyCumulativeEnergy F T = (familyFullGram F T).re :=
  familyCumulativeEnergy_eq_fullGram_of_singleBirth
    originalSingleBirthComplexIntegral_proof F hT

end GRWTSK.NumberTheory.Moebius.LFunctionSingleBirthIntegralClosure
