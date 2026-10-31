/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePowerCorrectionMajorant
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.EulerProduct.Basic

/-!
# The exact prime-power partition of the von Mangoldt series

Separate exponent one from every exponent at least two using Mathlib's
prime-power occurrence equivalence and absolute convergence. The complex power
transport explicitly uses the zero argument of a positive integer base.
This candidate identifies the holomorphic correction with the same arithmetic
source as the actual zeta logarithmic derivative, only on real part greater
than one. It proves no eventual signed prime estimate or RH.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.PrimePowerCorrection

/-- The unchanged exponent-one prime series. -/
noncomputable def primeLogSeries (w : ℂ) : ℂ :=
  ∑' p : Nat.Primes, complexCorrectionTerm p.val 1 w

/-- Every prime-power occurrence retains its logarithmic coefficient and exponent. -/
theorem vonMangoldt_term_prime_pow (p k : ℕ) (hp : p.Prime) (hk : k ≠ 0) (w : ℂ) :
    LSeries.term (fun n => (ArithmeticFunction.vonMangoldt n : ℂ)) w (p ^ k) =
      complexCorrectionTerm p k w := by
  rw [LSeries.term_of_ne_zero (pow_ne_zero _ hp.ne_zero),
    ArithmeticFunction.vonMangoldt_apply_pow hk,
    ArithmeticFunction.vonMangoldt_apply_prime hp, Nat.cast_pow,
    div_eq_mul_inv, ← Complex.cpow_neg]
  unfold complexCorrectionTerm
  congr 1
  have hc : (p : ℂ) ^ ((k : ℂ) * (-w)) = ((p : ℂ) ^ k) ^ (-w) :=
    Complex.cpow_nat_mul' (by simp [Real.pi_pos]) (by simp [Real.pi_pos]) (-w)
  rw [← hc]
  congr 1
  ring

/-- The von Mangoldt term vanishes outside the exact prime-power support. -/
theorem vonMangoldt_term_support (w : ℂ) :
    Function.support (LSeries.term (fun n => (ArithmeticFunction.vonMangoldt n : ℂ)) w) ⊆
      {n : ℕ | IsPrimePow n} := by
  intro n hn
  by_contra h
  have hz : ArithmeticFunction.vonMangoldt n = 0 :=
    ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr h
  apply hn
  simp [LSeries.term, hz]

/-- This partition uses absolute convergence and includes the exponent-two sector. -/
theorem vonMangoldt_series_eq_primeLog_add_correction {w : ℂ} (hw : 1 < w.re) :
    LSeries (fun n => (ArithmeticFunction.vonMangoldt n : ℂ)) w =
      primeLogSeries w + primeCorrection w := by
  have hs : Summable (LSeries.term
      (fun n => (ArithmeticFunction.vonMangoldt n : ℂ)) w) :=
    ArithmeticFunction.LSeriesSummable_vonMangoldt hw
  have hpart := tsum_eq_tsum_primes_add_tsum_primes_of_support_subset_prime_powers
    hs (vonMangoldt_term_support w)
  have hδ : 0 < w.re - 1 / 2 := by linarith
  have htail := (primeCorrection_norm_summable hδ
    (by linarith : 1 / 2 + (w.re - 1 / 2) ≤ w.re)).of_norm
  change (∑' n, LSeries.term (fun n => (ArithmeticFunction.vonMangoldt n : ℂ)) w n) = _
  rw [hpart]
  unfold primeLogSeries primeCorrection
  rw [htail.tsum_prod]
  congr 1
  · apply tsum_congr
    intro p
    simpa using vonMangoldt_term_prime_pow p.val 1 p.property (by norm_num) w
  · apply tsum_congr
    intro p
    apply tsum_congr
    intro j
    exact vonMangoldt_term_prime_pow p.val (j + 2) p.property (by omega) w

/-- The actual zeta logarithmic derivative consumes this exact arithmetic partition. -/
theorem primeLog_add_correction_eq_neg_zeta_logDeriv {w : ℂ} (hw : 1 < w.re) :
    primeLogSeries w + primeCorrection w = -deriv riemannZeta w / riemannZeta w := by
  rw [← vonMangoldt_series_eq_primeLog_add_correction hw]
  exact ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hw

end GRWTSK.NumberTheory.PrimePowerCorrection
