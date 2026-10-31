/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePowerCorrectionDirichletBridge

/-!
# The centered ordinary-prime Dirichlet series

Retain the exact coefficient formula from the inspected ordinaryPrimeCoefficient
source: prime logarithm minus the indicator of n at least two. In particular,
subtracting the constant-one L-series without restoring its n=1 atom is wrong.
The original provider import closure is not established by the formula identity.
This source candidate proves no Mellin transform, eventual sign estimate, or RH.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
namespace GRWTSK.NumberTheory.PrimePowerCorrection

noncomputable def primeCoefficient (n : ℕ) : ℂ :=
  if n.Prime then (Real.log (n : ℝ) : ℂ) else 0

noncomputable def tailOneCoefficient (n : ℕ) : ℂ := if 2 ≤ n then 1 else 0

noncomputable def centeredPrimeCoefficient : ℕ → ℂ := primeCoefficient - tailOneCoefficient

/-- Exact agreement with the inspected real coefficient formula after complex coercion. -/
theorem centeredPrimeCoefficient_eq_formula (n : ℕ) :
    centeredPrimeCoefficient n =
      (((if n.Prime then Real.log (n : ℝ) else 0) -
        (if 2 ≤ n then 1 else 0) : ℝ) : ℂ) := by
  simp only [centeredPrimeCoefficient, Pi.sub_apply, primeCoefficient, tailOneCoefficient]
  split_ifs <;> simp

theorem primeCoefficient_series_summable {w : ℂ} (hw : 1 < w.re) :
    LSeriesSummable primeCoefficient w := by
  have hi := (ArithmeticFunction.LSeriesSummable_vonMangoldt hw).indicator {n : ℕ | n.Prime}
  apply hi.congr
  intro n
  by_cases hn : n.Prime
  · simp [Set.indicator_apply, hn, LSeries.term, primeCoefficient,
      ArithmeticFunction.vonMangoldt_apply_prime hn]
  · simp [Set.indicator_apply, hn, LSeries.term, primeCoefficient]

theorem primeCoefficient_series_eq (w : ℂ) :
    LSeries primeCoefficient w = primeLogSeries w := by
  have hsupp : Function.support (LSeries.term primeCoefficient w) ⊆ {n : ℕ | n.Prime} := by
    intro n hn
    by_contra hp
    apply hn
    simp [LSeries.term, primeCoefficient, hp]
  have he := tsum_subtype_eq_of_support_subset hsupp
  unfold LSeries primeLogSeries
  rw [← he]
  apply tsum_congr
  intro p
  simp [LSeries.term, primeCoefficient, p.property, p.property.ne_zero,
    complexCorrectionTerm, Complex.cpow_neg, div_eq_mul_inv]

/-- The n=0 value is irrelevant to LSeries, while the n=1 value is essential. -/
theorem tailOneCoefficient_series_eq {w : ℂ} (hw : 1 < w.re) :
    LSeries tailOneCoefficient w = riemannZeta w - 1 := by
  have h1 : LSeriesSummable (1 : ℕ → ℂ) w := LSeriesSummable_one_iff.mpr hw
  have hd : LSeriesSummable LSeries.delta w := by
    simp [LSeriesSummable, LSeries.term_delta]
  have he : LSeries tailOneCoefficient w = LSeries ((1 : ℕ → ℂ) - LSeries.delta) w := by
    apply LSeries_congr
    intro n hn
    by_cases hn1 : n = 1
    · subst n
      norm_num [tailOneCoefficient, LSeries.delta]
    · have hn2 : 2 ≤ n := by omega
      simp [tailOneCoefficient, hn2, LSeries.delta, hn1]
  rw [he, LSeries_sub h1 hd, LSeries_one_eq_riemannZeta hw, LSeries_delta]

theorem tailOneCoefficient_series_summable {w : ℂ} (hw : 1 < w.re) :
    LSeriesSummable tailOneCoefficient w := by
  apply LSeriesSummable_of_bounded_of_one_lt_re (m := 1) _ hw
  intro n _
  by_cases hn : 2 ≤ n <;> simp [tailOneCoefficient, hn]

/-- The missing atom appears explicitly as +1 on the actual convergence domain. -/
theorem centeredPrime_series_eq {w : ℂ} (hw : 1 < w.re) :
    LSeries centeredPrimeCoefficient w = primeLogSeries w - riemannZeta w + 1 := by
  rw [centeredPrimeCoefficient, LSeries_sub (primeCoefficient_series_summable hw)
    (tailOneCoefficient_series_summable hw), primeCoefficient_series_eq,
    tailOneCoefficient_series_eq hw]
  ring

/-- Compose only identities proved on the common half-plane Re(w)>1. -/
theorem centeredPrime_series_eq_zeta_expression {w : ℂ} (hw : 1 < w.re) :
    LSeries centeredPrimeCoefficient w = -deriv riemannZeta w / riemannZeta w -
      primeCorrection w - riemannZeta w + 1 := by
  rw [centeredPrime_series_eq hw]
  have h := primeLog_add_correction_eq_neg_zeta_logDeriv hw
  linear_combination h

/-- A pointwise bound on the actual signed coefficient; no cancellation is assumed. -/
theorem centeredPrimeCoefficient_norm_le (n : ℕ) :
    ‖centeredPrimeCoefficient n‖ ≤ Real.log (n : ℝ) + 1 := by
  have hp : ‖primeCoefficient n‖ ≤ Real.log (n : ℝ) := by
    by_cases hn : n.Prime
    · simp [primeCoefficient, hn, Complex.norm_of_nonneg (Real.log_natCast_nonneg n)]
    · simp [primeCoefficient, hn, Real.log_natCast_nonneg n]
  have ht : ‖tailOneCoefficient n‖ ≤ (1 : ℝ) := by
    by_cases hn : 2 ≤ n <;> simp [tailOneCoefficient, hn]
  exact (norm_sub_le (primeCoefficient n) (tailOneCoefficient n)).trans (add_le_add hp ht)

/-- The logarithmic coefficient envelope is summable after the Mellin weight,
strictly inside the absolute-convergence half-plane. -/
theorem log_envelope_mellin_summable {σ : ℝ} (hσ : 1 / 2 < σ) :
    Summable (fun n : ℕ => (Real.log (n : ℝ) + 1) * (n : ℝ) ^ (-σ - 1 / 2)) := by
  have hδ : 0 < (σ - 1 / 2) / 2 := by linarith
  have he : -1 - 2 * ((σ - 1 / 2) / 2) = -σ - 1 / 2 := by ring
  have hl : Summable (fun n : ℕ => Real.log (n : ℝ) * (n : ℝ) ^ (-σ - 1 / 2)) := by
    simpa only [logPowerMajorant, he] using logPowerMajorant_summable hδ
  have hp : Summable (fun n : ℕ => (n : ℝ) ^ (-σ - 1 / 2)) :=
    Real.summable_nat_rpow.mpr (by linarith)
  convert hl.add hp using 1
  ext n
  ring

/-- Absolute weighted coefficient summability is separate from exchanging an integral. -/
theorem centeredPrimeCoefficient_mellin_summable {σ : ℝ} (hσ : 1 / 2 < σ) :
    Summable (fun n : ℕ => ‖centeredPrimeCoefficient n‖ * (n : ℝ) ^ (-σ - 1 / 2)) := by
  apply Summable.of_nonneg_of_le
    (fun n => mul_nonneg (norm_nonneg _) (Real.rpow_nonneg (Nat.cast_nonneg n) _))
    (fun n => mul_le_mul_of_nonneg_right (centeredPrimeCoefficient_norm_le n)
      (Real.rpow_nonneg (Nat.cast_nonneg n) _))
    (log_envelope_mellin_summable hσ)

/-- A summable candidate bound for the absolute integrals of the cutoff atoms.
The integral comparison itself is a separate obligation. -/
noncomputable def absoluteAtomBudget (σ : ℝ) (n : ℕ) : ℝ :=
  (2 / σ) * ((Real.log (n : ℝ) + 1) * (n : ℝ) ^ (-σ - 1 / 2))

theorem absoluteAtomBudget_summable {σ : ℝ} (hσ : 1 / 2 < σ) :
    Summable (absoluteAtomBudget σ) :=
  (log_envelope_mellin_summable hσ).mul_left (2 / σ)

end GRWTSK.NumberTheory.PrimePowerCorrection
