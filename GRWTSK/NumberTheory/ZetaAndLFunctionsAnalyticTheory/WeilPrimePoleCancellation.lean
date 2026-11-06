/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import Mathlib.NumberTheory.LSeries.Nonvanishing
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic

/-!
# Actual von Mangoldt discrepancies and finite Abel cancellation

Primary source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.7), (3.10)--(3.20), CC BY 4.0; Connes,
arXiv:2602.04022v1, section 6.6. Upstream authorship is retained.

The authored note proves a continuous prime--pole cancellation for the FULL
arithmetic form and explicit low-Fourier and zero-endpoint lower estimates.
This module formalizes the finite Abel mechanism with the ACTUAL Mathlib von
Mangoldt coefficients, its complete discrepancy boundary, and its absolute
budget. The continuum Stieltjes identity, correlation derivative, positive
exponential kernel, and full operator lower estimates remain ANALYTICAL, not
formalized by the scalar return lemma below. Definitions of the real source
and its integral budget do not assert those missing bridges.

Primary proof: finite telescoping, keeping every arithmetic coefficient and
both endpoint values. Independent diagnostic: continuous cell integration
compared with literal finite prime sums, described in the note. No numerical
ordering, cofinal lower separation, prolate comparison, RH or GRH is claimed.
AI-assisted source candidate. Elaboration, fresh kernel replay, transitive axiom
audit and independent analytical review: NOT_RUN. Novelty UNASSESSED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimePole

def prefixWeight (weight : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N, weight k

@[simp] theorem prefixWeight_zero (weight : ℕ → ℝ) : prefixWeight weight 0 = 0 := by
  simp [prefixWeight]

theorem prefixWeight_succ (weight : ℕ → ℝ) (N : ℕ) :
    prefixWeight weight (N + 1) = prefixWeight weight N + weight N := by
  simp [prefixWeight, Finset.sum_range_succ]

/-- The terminal value is retained even when later applications make it vanish. -/
theorem finite_abel (weight value : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, weight k * value k) =
      prefixWeight weight N * value N +
        ∑ k ∈ Finset.range N,
          prefixWeight weight (k + 1) * (value k - value (k + 1)) := by
  induction N with
  | zero => simp
  | succ N ih =>
      simp only [Finset.sum_range_succ]
      rw [ih, prefixWeight_succ weight N]
      ring

/-- The initial center is not silently dropped. -/
theorem discrepancy_prefix (weight center : ℕ → ℝ) (N : ℕ) :
    prefixWeight (fun k => weight k - (center (k + 1) - center k)) N =
      prefixWeight weight N - center N + center 0 := by
  induction N with
  | zero => simp
  | succ N ih =>
      simp only [prefixWeight_succ, ih]
      ring

theorem finite_discrepancy_abel (weight center value : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N,
      (weight k - (center (k + 1) - center k)) * value k) =
      (prefixWeight weight N - center N + center 0) * value N +
        ∑ k ∈ Finset.range N,
          (prefixWeight weight (k + 1) - center (k + 1) + center 0) *
            (value k - value (k + 1)) := by
  simpa only [discrepancy_prefix] using
    finite_abel (fun k => weight k - (center (k + 1) - center k)) value N

/-- Index zero is the arithmetic integer two, not an unspecified coefficient. -/
def arithmeticWeight (k : ℕ) : ℝ := ArithmeticFunction.vonMangoldt (k + 2)

theorem arithmeticWeight_nonneg (k : ℕ) : 0 ≤ arithmeticWeight k :=
  ArithmeticFunction.vonMangoldt_nonneg

/-- At n, this is psi(n+1)-(n+1)+1, with every prime power included. -/
def arithmeticDiscrepancy (n : ℕ) : ℝ := prefixWeight arithmeticWeight n - n

/-- Actual arithmetic coefficients, not a supplied approximation source. -/
theorem arithmetic_abel (value : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, (arithmeticWeight k - 1) * value k) =
      arithmeticDiscrepancy N * value N +
        ∑ k ∈ Finset.range N,
          arithmeticDiscrepancy (k + 1) * (value k - value (k + 1)) := by
  simpa [arithmeticDiscrepancy] using
    finite_discrepancy_abel arithmeticWeight (fun n => (n : ℝ)) value N

/-- All local variations and the terminal discrepancy remain in the budget. -/
theorem arithmetic_abel_bound (value : ℕ → ℝ) (N : ℕ) :
    |∑ k ∈ Finset.range N, (arithmeticWeight k - 1) * value k| ≤
      |arithmeticDiscrepancy N| * |value N| +
        ∑ k ∈ Finset.range N,
          |arithmeticDiscrepancy (k + 1)| * |value k - value (k + 1)| := by
  rw [arithmetic_abel]
  have sum_bound :
      |∑ k ∈ Finset.range N,
        arithmeticDiscrepancy (k + 1) * (value k - value (k + 1))| ≤
      ∑ k ∈ Finset.range N,
        |arithmeticDiscrepancy (k + 1) * (value k - value (k + 1))| := by
    simpa only [Real.norm_eq_abs] using
      (norm_sum_le (Finset.range N)
        (fun k => arithmeticDiscrepancy (k + 1) * (value k - value (k + 1))))
  exact (abs_add_le _ _).trans (by simpa only [abs_mul] using
    add_le_add_left sum_bound |arithmeticDiscrepancy N * value N|)

/-- The ordinary Chebyshev source: sum over 2 <= n <= floor(x).
For x < 2 the natural subtraction gives the empty sum. -/
def chebyshev (x : ℝ) : ℝ :=
  prefixWeight arithmeticWeight (Nat.floor x - 1)

def discrepancy (x : ℝ) : ℝ := chebyshev x - x + 1

/-- Exact source budget used in the analytical low-mode theorem. Integrability
and the operator comparison are proved in the note, not by this definition. -/
def discrepancyIntegral (T : ℝ) : ℝ :=
  ∫ x in (1 : ℝ)..Real.exp (2 * T), |discrepancy x| / (x * Real.sqrt x)

def lowModePrice (T : ℝ) (M : ℕ) : ℝ :=
  1 + (2 * (M : ℝ) + 1) / T + 2 * Real.pi * M / T

def zeroEndpointPrice (T : ℝ) (M : ℕ) : ℝ :=
  1 + 2 * Real.pi * M / T

/-- The dropped endpoint penalty is explicit, not a claim about every even trial. -/
theorem lowModePrice_eq (T : ℝ) (M : ℕ) :
    lowModePrice T M = zeroEndpointPrice T M + (2 * (M : ℝ) + 1) / T := by
  unfold lowModePrice zeroEndpointPrice
  ring

theorem zeroEndpointPrice_le {T : ℝ} (positive : 0 < T) (M : ℕ) :
    zeroEndpointPrice T M ≤ lowModePrice T M := by
  rw [lowModePrice_eq]
  have hn : 0 ≤ (2 * (M : ℝ) + 1) / T := by positivity
  linarith

/-- One pole density cancels the continuous prime main term; the other remains. -/
theorem leading_density_cancellation (r : ℝ) :
    (Real.exp (r / 2) + Real.exp (-r / 2)) - Real.exp (r / 2) =
      Real.exp (-r / 2) := by ring

/-- An endpoint prime atom vanishes only when its actual test value vanishes. -/
theorem endpoint_atom_zero (n : ℕ) (test : ℝ → ℝ)
    (endpoint : test (Real.log n) = 0) :
    ArithmeticFunction.vonMangoldt n / Real.sqrt n * test (Real.log n) = 0 := by
  rw [endpoint, mul_zero]

/-- Scalar return after the analytical identity and its COMPLETE error bound.
This lemma does not establish those hypotheses for a Weil operator. -/
theorem lower_bound_from_exact_decomposition {q arch positivePart error budget : ℝ}
    (identity : q = arch + positivePart + error)
    (positive : 0 ≤ positivePart) (charged : |error| ≤ budget) :
    arch - budget ≤ q := by
  have lower := (abs_le.mp charged).1
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimePole
