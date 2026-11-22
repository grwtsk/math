/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExponentialBumpGamma
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# Finite logarithm certificates and rational gamma omission bounds

MSC2020: 11M26, 11M41, 26D15, 65G20.
Consumer: WeilExponentialBumpScalarEvaluation, on the unchanged arithmetic source.
Reuse the existing binomial bounds, rather than trust floating-point logarithms.
Both gamma omissions remain paid. The dyadic bound tends to zero for each FIXED
support radius; it does not control middle-cell errors or arithmetic signs.

SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact types, builds, kernel replay,
transitive axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. See the adjacent individual analytical/provenance records.
-/

set_option autoImplicit false
noncomputable section
open Filter Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.BinomialScalars

open DirichletStageChain
open GRWTSK.MeasureAndIntegration.ExponentialBumpCells

/-- WBS-1. All certificate tests are finite algebraic inequalities when the
inputs are rational. Positivity of x is required before taking its logarithm. -/
theorem log_enclosure_of_binomial_checks
    {x l u : ℝ} (hx : 0 < x) (hl : 0 ≤ l) (hlu : l ≤ u)
    {n : ℕ} (hn : 0 < n) (hu : u ≤ (n : ℝ))
    (hleft : 1 ≤ x * expNegBinomialLower l n)
    (hright : x * expNegBinomialUpper u n ≤ 1) :
    l ≤ Real.log x ∧ Real.log x ≤ u := by
  have hL := (expNegBinomial_enclosure hl hn (hlu.trans hu)).1
  have hU := (expNegBinomial_enclosure (hl.trans hlu) hn hu).2
  have hxl : 1 ≤ x * Real.exp (-l) :=
    hleft.trans (mul_le_mul_of_nonneg_left hL hx.le)
  have hxu : x * Real.exp (-u) ≤ 1 :=
    (mul_le_mul_of_nonneg_left hU hx.le).trans hright
  have hlExp : Real.exp l ≤ x := by
    have h := mul_le_mul_of_nonneg_right hxl (Real.exp_nonneg l)
    have hc : Real.exp (-l) * Real.exp l = 1 := by
      rw [← Real.exp_add]
      simp
    simpa only [one_mul, mul_assoc, hc, mul_one] using h
  have huExp : x ≤ Real.exp u := by
    have h := mul_le_mul_of_nonneg_right hxu (Real.exp_nonneg u)
    have hc : Real.exp (-u) * Real.exp u = 1 := by
      rw [← Real.exp_add]
      simp
    simpa only [one_mul, mul_assoc, hc, mul_one] using h
  constructor
  · simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos l) hlExp
  · simpa only [Real.log_exp] using Real.log_le_log hx huExp

/-- WBS-2. Supply the actual lag-error premise consumed by the correlation cells. -/
theorem log_midpoint_error_of_binomial_checks
    {x l u : ℝ} (hx : 0 < x) (hl : 0 ≤ l) (hlu : l ≤ u)
    {n : ℕ} (hn : 0 < n) (hu : u ≤ (n : ℝ))
    (hleft : 1 ≤ x * expNegBinomialLower l n)
    (hright : x * expNegBinomialUpper u n ≤ 1) :
    0 ≤ (u - l) / 2 ∧ |Real.log x - (l + u) / 2| ≤ (u - l) / 2 := by
  have h := log_enclosure_of_binomial_checks hx hl hlu hn hu hleft hright
  refine ⟨by linarith, abs_le.mpr ⟨?_, ?_⟩⟩ <;> linarith [h.1, h.2]

/-- WBS-3. A rational denominator floor for the ORIGINAL complete gamma tail. -/
theorem exp_neg_two_le_quarter : Real.exp (-2) ≤ (1 / 4 : ℝ) := by
  have h := (expNegBinomial_enclosure (y := (2 : ℝ)) (by norm_num)
    (n := 2) (by norm_num) (by norm_num)).2
  norm_num [expNegBinomialUpper] at h
  simpa using h

/-- A finite rational expression for rational T, eta and R. This is an error
majorant, not a replacement definition of the gamma correction. -/
def binomialGammaCutoffBudget (T eta R : ℝ) (n : ℕ) : ℝ :=
  (3 / 4 : ℝ) * (2 * T + 1) * (bumpDerivativeBound T) ^ 2 * eta ^ 2 +
    (64 / 3 : ℝ) * T ^ 3 * expNegBinomialUpper (R / 2) n

/-- WBS-4. No exact exponential remains in this upper allowance. -/
theorem oddExpBumpGammaCutoffBudget_le_binomial
    {T eta R : ℝ} (hT : 0 ≤ T) (hR : 0 ≤ R) {n : ℕ}
    (hn : 0 < n) (horder : R / 2 ≤ (n : ℝ)) :
    oddExpBumpGammaCutoffBudget T eta R ≤ binomialGammaCutoffBudget T eta R n := by
  have hden : 0 < 1 - Real.exp (-2) := by linarith [exp_neg_two_le_quarter]
  have hfloor : (3 / 4 : ℝ) ≤ 1 - Real.exp (-2) := by
    linarith [exp_neg_two_le_quarter]
  have hcoef : 16 * T ^ 3 / (1 - Real.exp (-2)) ≤ (64 / 3 : ℝ) * T ^ 3 := by
    apply (div_le_iff₀ hden).mpr
    have h := mul_le_mul_of_nonneg_left hfloor (show 0 ≤ (64 / 3 : ℝ) * T ^ 3 by positivity)
    nlinarith
  have hexp : Real.exp (-(1 / 2 : ℝ) * R) ≤ expNegBinomialUpper (R / 2) n := by
    convert (expNegBinomial_enclosure (y := R / 2) (by positivity) hn horder).2 using 1 <;> ring
  have htail := mul_le_mul hcoef hexp (Real.exp_nonneg _) (by positivity)
  exact add_le_add_left htail _

/-- Coupled eta = 2^(-m), R = 2m, order m. The expression is rational for
rational T and m > 0; no coefficient is claimed uniform in unbounded T. -/
def dyadicGammaBudget (T : ℝ) (m : ℕ) : ℝ :=
  (3 / 4 : ℝ) * (2 * T + 1) * (bumpDerivativeBound T) ^ 2 * ((1 / 2 : ℝ) ^ m) ^ 2 +
    (64 / 3 : ℝ) * T ^ 3 * (1 / 2 : ℝ) ^ m

/-- WBS-5. The same dyadic stage pays both the near-zero and infinite omissions. -/
theorem oddExpBumpGammaCutoffBudget_le_dyadic
    {T : ℝ} (hT : 0 ≤ T) {m : ℕ} (hm : 0 < m) :
    oddExpBumpGammaCutoffBudget T ((1 / 2 : ℝ) ^ m) (2 * (m : ℝ)) ≤
      dyadicGammaBudget T m := by
  have hmR : (m : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hm)
  have h := oddExpBumpGammaCutoffBudget_le_binomial (eta := (1 / 2 : ℝ) ^ m)
    (R := 2 * (m : ℝ)) hT (by positivity) (n := m) hm (by linarith)
  have hup : expNegBinomialUpper ((2 * (m : ℝ)) / 2) m = (1 / 2 : ℝ) ^ m := by
    rw [show (2 * (m : ℝ)) / 2 = (m : ℝ) by ring]
    norm_num [expNegBinomialUpper, hmR]
  simpa only [binomialGammaCutoffBudget, dyadicGammaBudget, hup] using h

/-- WBS-6. Vanishing of the omission MAJORANT at each fixed T, not existence
of middle-cell/prime/coefficient certificates or nonnegative Weil values. -/
theorem dyadicGammaBudget_tendsto_zero (T : ℝ) :
    Tendsto (dyadicGammaBudget T) atTop (𝓝 0) := by
  have ht : Tendsto (fun m : ℕ => (1 / 2 : ℝ) ^ m) atTop (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_abs_lt_one (by norm_num)
  simpa [dyadicGammaBudget] using
    ((ht.pow 2).const_mul ((3 / 4 : ℝ) * (2 * T + 1) * (bumpDerivativeBound T) ^ 2)).add
      (ht.const_mul ((64 / 3 : ℝ) * T ^ 3))

end GRWTSK.NumberTheory.WeilQuadraticForm.BinomialScalars
