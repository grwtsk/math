/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Analysis.Normed.Group.FunctionSeries
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Analysis.Normed.Ring.InfiniteSum
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.PSeries
import Mathlib.Algebra.Order.Field.GeomSum
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

/-!
# Finite majorants for the prime-power correction

The correction to the ordinary-prime logarithmic Dirichlet series includes
all exponents at least two. On a half-plane separated from real part one half,
its exponent sum has a uniform geometric denominator. These finite inequalities
retain exponent two, the factor `log p`, and an arbitrary real exponent sigma.
They are intended for the analytic return from the exact ordinary-prime primitive.

This is an elementary local comparison, not a formalization of the Landau
oscillation theorem. It supplies integer-majorant summability and a finite
rectangular bound, the complex-power norm comparison, and a summable product
majorant for the full base/exponent inventory and its prime restriction, with
uniform convergence on every closed half-plane of positive margin. The resulting
prime correction is complex differentiable on real part greater than one half.
It does not supply the eventual prime-sign estimate or RH.
Compilation, fresh kernel replay and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.PrimePowerCorrection

open scoped BigOperators

/-- Keep the first two powers outside the uniform geometric denominator. -/
theorem finite_weighted_geometric_majorant {q r a : ℝ}
    (hq : 0 ≤ q) (hqr : q ≤ r) (hr : r < 1) (ha : 0 ≤ a) (K : ℕ) :
    (∑ j ∈ Finset.range K, a * q ^ (j + 2)) ≤ a * q ^ 2 / (1 - r) := by
  have hq1 : q < 1 := hqr.trans_lt hr
  have hs : (∑ j ∈ Finset.range K, q ^ j) ≤ 1 / (1 - r) := by
    calc
      _ ≤ 1 / (1 - q) := by
        simpa using (geom_sum_Ico_le_of_lt_one (m := 0) (n := K) hq hq1)
      _ ≤ 1 / (1 - r) :=
        one_div_le_one_div_of_le (sub_pos.mpr hr) (sub_le_sub_left hqr 1)
  calc
    _ = (a * q ^ 2) * ∑ j ∈ Finset.range K, q ^ j := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      rw [pow_add]
      ring
    _ ≤ (a * q ^ 2) * (1 / (1 - r)) :=
      mul_le_mul_of_nonneg_left hs (mul_nonneg ha (sq_nonneg q))
    _ = _ := by ring

/-- Uniformity in the base uses only `p ≥ 2`, hence applies to every prime. -/
theorem finite_base_correction_majorant (p K : ℕ) (hp : 2 ≤ p)
    {σ : ℝ} (hσ : 0 < σ) :
    (∑ j ∈ Finset.range K,
      Real.log (p : ℝ) * ((p : ℝ) ^ (-σ)) ^ (j + 2)) ≤
      Real.log (p : ℝ) * ((p : ℝ) ^ (-σ)) ^ 2 /
        (1 - (2 : ℝ) ^ (-σ)) := by
  have hp0 : 0 ≤ (p : ℝ) := Nat.cast_nonneg p
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp
  apply finite_weighted_geometric_majorant
  · exact Real.rpow_nonneg hp0 _
  · exact Real.rpow_le_rpow_of_nonpos (by norm_num) hp2 (by linarith)
  · exact Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (by linarith)
  · exact Real.log_nonneg (by linarith)

/-- The finite base inventory and the exponent cutoff remain independently arbitrary. -/
theorem finite_correction_majorant (S : Finset ℕ) (K : ℕ)
    (hS : ∀ p ∈ S, 2 ≤ p) {σ : ℝ} (hσ : 0 < σ) :
    (∑ p ∈ S, ∑ j ∈ Finset.range K,
      Real.log (p : ℝ) * ((p : ℝ) ^ (-σ)) ^ (j + 2)) ≤
      ∑ p ∈ S, Real.log (p : ℝ) * ((p : ℝ) ^ (-σ)) ^ 2 /
        (1 - (2 : ℝ) ^ (-σ)) := by
  exact Finset.sum_le_sum (fun p hp =>
    finite_base_correction_majorant p K (hS p hp) hσ)

/-- The base majorant keeps the logarithm and a strictly positive half-plane margin. -/
noncomputable def logPowerMajorant (δ : ℝ) (n : ℕ) : ℝ :=
  Real.log (n : ℝ) * (n : ℝ) ^ (-1 - 2 * δ)

theorem logPowerMajorant_nonneg (δ : ℝ) (n : ℕ) :
    0 ≤ logPowerMajorant δ n :=
  mul_nonneg (Real.log_natCast_nonneg n) (Real.rpow_nonneg (Nat.cast_nonneg n) _)

/-- Spend only half the exponent margin to dominate the logarithm. -/
theorem logPowerMajorant_le {δ : ℝ} (hδ : 0 < δ) (n : ℕ) :
    logPowerMajorant δ n ≤ (1 / δ) * (n : ℝ) ^ (-1 - δ) := by
  by_cases hn : n = 0
  · subst n
    simp only [logPowerMajorant, Nat.cast_zero, Real.log_zero, zero_mul]
    positivity
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  have hm : (n : ℝ) ^ δ * (n : ℝ) ^ (-1 - 2 * δ) =
      (n : ℝ) ^ (-1 - δ) := by
    rw [← Real.rpow_add hn0]
    congr 1
    ring
  calc
    _ ≤ ((n : ℝ) ^ δ / δ) * (n : ℝ) ^ (-1 - 2 * δ) :=
      mul_le_mul_of_nonneg_right (Real.log_natCast_le_rpow_div n hδ)
        (Real.rpow_nonneg hn0.le _)
    _ = (1 / δ) * ((n : ℝ) ^ δ * (n : ℝ) ^ (-1 - 2 * δ)) := by ring
    _ = _ := by rw [hm]

/-- This genuine infinite base summability needs a strictly positive margin. -/
theorem logPowerMajorant_summable {δ : ℝ} (hδ : 0 < δ) :
    Summable (logPowerMajorant δ) := by
  apply Summable.of_nonneg_of_le (logPowerMajorant_nonneg δ) (logPowerMajorant_le hδ)
  exact (Real.summable_nat_rpow.mpr (by linarith : -1 - δ < -1)).mul_left (1 / δ)

/-- The square extracted from the exponent sum has exactly the required base exponent. -/
theorem inverse_power_square (n : ℕ) (δ : ℝ) :
    ((n : ℝ) ^ (-(1 / 2 + δ))) ^ 2 = (n : ℝ) ^ (-1 - 2 * δ) := by
  rw [← Real.rpow_natCast, ← Real.rpow_mul (Nat.cast_nonneg n)]
  congr 1
  ring

/-- One constant bounds every finite base inventory and exponent cutoff.
This is not yet a complex normal-convergence theorem. -/
theorem finite_correction_le_total_majorant (S : Finset ℕ) (K : ℕ)
    (hS : ∀ p ∈ S, 2 ≤ p) {δ : ℝ} (hδ : 0 < δ) :
    (∑ p ∈ S, ∑ j ∈ Finset.range K,
      Real.log (p : ℝ) * ((p : ℝ) ^ (-(1 / 2 + δ))) ^ (j + 2)) ≤
      (∑' n : ℕ, logPowerMajorant δ n) / (1 - (2 : ℝ) ^ (-(1 / 2 + δ))) := by
  have hσ : (0 : ℝ) < 1 / 2 + δ := by linarith
  have hr : (2 : ℝ) ^ (-(1 / 2 + δ)) < 1 :=
    Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (by linarith)
  calc
    _ ≤ ∑ p ∈ S, Real.log (p : ℝ) * ((p : ℝ) ^ (-(1 / 2 + δ))) ^ 2 /
        (1 - (2 : ℝ) ^ (-(1 / 2 + δ))) :=
      finite_correction_majorant S K hS hσ
    _ = (∑ p ∈ S, logPowerMajorant δ p) /
        (1 - (2 : ℝ) ^ (-(1 / 2 + δ))) := by
      simp only [Finset.sum_div, logPowerMajorant, inverse_power_square]
    _ ≤ _ := div_le_div_of_nonneg_right
      ((logPowerMajorant_summable hδ).sum_le_tsum S
        (fun n _ => logPowerMajorant_nonneg δ n)) (sub_nonneg.mpr hr.le)

/-- The original complex Dirichlet correction term, before any norm transport. -/
noncomputable def complexCorrectionTerm (p k : ℕ) (w : ℂ) : ℂ :=
  (Real.log (p : ℝ) : ℂ) * (p : ℂ) ^ (-(k : ℂ) * w)

/-- Positive real bases have no argument-dependent loss in the norm formula. -/
theorem complexCorrectionTerm_norm (p k : ℕ) (hp : 2 ≤ p) (w : ℂ) :
    ‖complexCorrectionTerm p k w‖ =
      Real.log (p : ℝ) * ((p : ℝ) ^ (-w.re)) ^ k := by
  have hp0 : 0 < p := by omega
  have he : (-(k : ℂ) * w).re = -w.re * (k : ℝ) := by
    simp only [Complex.mul_re, Complex.neg_re, Complex.natCast_re,
      Complex.natCast_im, neg_zero, zero_mul, sub_zero]
    ring
  rw [complexCorrectionTerm, norm_mul,
    Complex.norm_of_nonneg (Real.log_natCast_nonneg p),
    Complex.norm_natCast_cpow_of_pos hp0, he,
    Real.rpow_mul (Nat.cast_nonneg p), Real.rpow_natCast]

/-- The same real majorant works throughout a closed half-plane with positive margin. -/
theorem complexCorrectionTerm_norm_le (p k : ℕ) (hp : 2 ≤ p)
    {δ : ℝ} {w : ℂ} (hw : 1 / 2 + δ ≤ w.re) :
    ‖complexCorrectionTerm p k w‖ ≤
      Real.log (p : ℝ) * ((p : ℝ) ^ (-(1 / 2 + δ))) ^ k := by
  rw [complexCorrectionTerm_norm p k hp w]
  have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast (show 1 ≤ p by omega)
  have hratio : (p : ℝ) ^ (-w.re) ≤ (p : ℝ) ^ (-(1 / 2 + δ)) :=
    Real.rpow_le_rpow_of_exponent_le hp1 (by linarith)
  exact mul_le_mul_of_nonneg_left
    (pow_le_pow_left₀ (Real.rpow_nonneg (Nat.cast_nonneg p) _) hratio k)
    (Real.log_natCast_nonneg p)

/-- All finite rectangular sums of complex norms have one summable-base bound.
The countable-series and holomorphy theorems are still separate consumers. -/
theorem finite_complex_correction_le_total_majorant (S : Finset ℕ) (K : ℕ)
    (hS : ∀ p ∈ S, 2 ≤ p) {δ : ℝ} (hδ : 0 < δ)
    {w : ℂ} (hw : 1 / 2 + δ ≤ w.re) :
    (∑ p ∈ S, ∑ j ∈ Finset.range K, ‖complexCorrectionTerm p (j + 2) w‖) ≤
      (∑' n : ℕ, logPowerMajorant δ n) / (1 - (2 : ℝ) ^ (-(1 / 2 + δ))) := by
  calc
    _ ≤ ∑ p ∈ S, ∑ j ∈ Finset.range K,
        Real.log (p : ℝ) * ((p : ℝ) ^ (-(1 / 2 + δ))) ^ (j + 2) := by
      apply Finset.sum_le_sum
      intro p hp
      apply Finset.sum_le_sum
      intro j _
      exact complexCorrectionTerm_norm_le p (j + 2) (hS p hp) hw
    _ ≤ _ := finite_correction_le_total_majorant S K hS hδ

/-- The majorant does not depend on the complex point within the chosen half-plane. -/
noncomputable def correctionProductMajorant (δ : ℝ)
    (q : {p : ℕ // 2 ≤ p} × ℕ) : ℝ :=
  logPowerMajorant δ q.1.val * ((2 : ℝ) ^ (-(1 / 2 + δ))) ^ q.2

theorem correctionProductMajorant_nonneg (δ : ℝ) (q : {p : ℕ // 2 ≤ p} × ℕ) :
    0 ≤ correctionProductMajorant δ q :=
  mul_nonneg (logPowerMajorant_nonneg δ q.1.val)
    (pow_nonneg (Real.rpow_nonneg (by norm_num : (0 : ℝ) ≤ 2) _) _)

/-- Both base and exponent summations are genuine countable summations. -/
theorem correctionProductMajorant_summable {δ : ℝ} (hδ : 0 < δ) :
    Summable (correctionProductMajorant δ) := by
  have hp := (logPowerMajorant_summable hδ).subtype (fun p : ℕ => 2 ≤ p)
  have hr0 : 0 ≤ (2 : ℝ) ^ (-(1 / 2 + δ)) := Real.rpow_nonneg (by norm_num) _
  have hr1 : (2 : ℝ) ^ (-(1 / 2 + δ)) < 1 :=
    Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (by linarith)
  have hj := summable_geometric_of_lt_one hr0 hr1
  exact hp.mul_of_nonneg hj (fun p => logPowerMajorant_nonneg δ p.val)
    (fun j => pow_nonneg hr0 j)

/-- Extracting two powers leaves a uniformly geometric exponent tail. -/
theorem complexCorrectionTerm_norm_le_product {δ : ℝ} (hδ : 0 < δ)
    {w : ℂ} (hw : 1 / 2 + δ ≤ w.re) (q : {p : ℕ // 2 ≤ p} × ℕ) :
    ‖complexCorrectionTerm q.1.val (q.2 + 2) w‖ ≤ correctionProductMajorant δ q := by
  have hp2 : (2 : ℝ) ≤ q.1.val := by exact_mod_cast q.1.property
  have hratio : (q.1.val : ℝ) ^ (-(1 / 2 + δ)) ≤
      (2 : ℝ) ^ (-(1 / 2 + δ)) :=
    Real.rpow_le_rpow_of_nonpos (by norm_num) hp2 (by linarith)
  have hq0 : 0 ≤ (q.1.val : ℝ) ^ (-(1 / 2 + δ)) :=
    Real.rpow_nonneg (Nat.cast_nonneg _) _
  calc
    _ ≤ Real.log (q.1.val : ℝ) *
        ((q.1.val : ℝ) ^ (-(1 / 2 + δ))) ^ (q.2 + 2) :=
      complexCorrectionTerm_norm_le q.1.val (q.2 + 2) q.1.property hw
    _ = (Real.log (q.1.val : ℝ) * ((q.1.val : ℝ) ^ (-(1 / 2 + δ))) ^ 2) *
        ((q.1.val : ℝ) ^ (-(1 / 2 + δ))) ^ q.2 := by
      rw [pow_add]
      ring
    _ ≤ (Real.log (q.1.val : ℝ) * ((q.1.val : ℝ) ^ (-(1 / 2 + δ))) ^ 2) *
        ((2 : ℝ) ^ (-(1 / 2 + δ))) ^ q.2 :=
      mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hq0 hratio q.2)
        (mul_nonneg (Real.log_natCast_nonneg _) (sq_nonneg _))
    _ = _ := by rw [inverse_power_square]; rfl

/-- Absolute summability holds on the full integer-base inventory, before prime restriction. -/
theorem complexCorrection_norm_summable {δ : ℝ} (hδ : 0 < δ)
    {w : ℂ} (hw : 1 / 2 + δ ≤ w.re) :
    Summable (fun q : {p : ℕ // 2 ≤ p} × ℕ =>
      ‖complexCorrectionTerm q.1.val (q.2 + 2) w‖) :=
  Summable.of_nonneg_of_le (fun _ => norm_nonneg _)
    (complexCorrectionTerm_norm_le_product hδ hw) (correctionProductMajorant_summable hδ)

/-- The actual complex terms, rather than only a formal sum of their bounds, are summable. -/
theorem complexCorrection_summable {δ : ℝ} (hδ : 0 < δ)
    {w : ℂ} (hw : 1 / 2 + δ ≤ w.re) :
    Summable (fun q : {p : ℕ // 2 ≤ p} × ℕ =>
      complexCorrectionTerm q.1.val (q.2 + 2) w) :=
  (complexCorrection_norm_summable hδ hw).of_norm

/-- Forget primality without merging the prime/exponent occurrences. -/
def primeCorrectionIndex (q : {p : ℕ // p.Prime} × ℕ) : {p : ℕ // 2 ≤ p} × ℕ :=
  (⟨q.1.val, q.1.property.two_le⟩, q.2)

theorem primeCorrectionIndex_injective : Function.Injective primeCorrectionIndex := by
  intro a b h
  apply Prod.ext
  · apply Subtype.ext
    exact congrArg (fun q : {p : ℕ // 2 ≤ p} × ℕ => q.1.val) h
  · exact congrArg (fun q : {p : ℕ // 2 ≤ p} × ℕ => q.2) h

/-- The same majorant restricted by the explicit injection. -/
noncomputable def primeCorrectionProductMajorant (δ : ℝ)
    (q : {p : ℕ // p.Prime} × ℕ) : ℝ :=
  correctionProductMajorant δ (primeCorrectionIndex q)

theorem primeCorrectionProductMajorant_summable {δ : ℝ} (hδ : 0 < δ) :
    Summable (primeCorrectionProductMajorant δ) :=
  (correctionProductMajorant_summable hδ).comp_injective primeCorrectionIndex_injective

/-- Actual prime occurrences are absolutely summable with every exponent at least two. -/
theorem primeCorrection_norm_summable {δ : ℝ} (hδ : 0 < δ)
    {w : ℂ} (hw : 1 / 2 + δ ≤ w.re) :
    Summable (fun q : {p : ℕ // p.Prime} × ℕ =>
      ‖complexCorrectionTerm q.1.val (q.2 + 2) w‖) :=
  (complexCorrection_norm_summable hδ hw).comp_injective primeCorrectionIndex_injective

/-- Uniform convergence is along all finite occurrence inventories, not a sampled grid. -/
theorem primeCorrection_tendstoUniformlyOn {δ : ℝ} (hδ : 0 < δ) :
    TendstoUniformlyOn
      (fun t : Finset ({p : ℕ // p.Prime} × ℕ) => fun w : ℂ =>
        ∑ q ∈ t, complexCorrectionTerm q.1.val (q.2 + 2) w)
      (fun w : ℂ => ∑' q : {p : ℕ // p.Prime} × ℕ,
        complexCorrectionTerm q.1.val (q.2 + 2) w)
      Filter.atTop {w : ℂ | 1 / 2 + δ ≤ w.re} := by
  apply tendstoUniformlyOn_tsum (primeCorrectionProductMajorant_summable hδ)
  intro q w hw
  exact complexCorrectionTerm_norm_le_product hδ hw (primeCorrectionIndex q)

/-- Each positive-base correction term is entire in its complex argument. -/
theorem complexCorrectionTerm_differentiable (p k : ℕ) (hp : 2 ≤ p) :
    Differentiable ℂ (complexCorrectionTerm p k) := by
  have hp0 : (p : ℂ) ≠ 0 := by
    exact_mod_cast (show p ≠ 0 by omega)
  have he : Differentiable ℂ (fun w : ℂ => -(k : ℂ) * w) :=
    differentiable_const.mul differentiable_id
  unfold complexCorrectionTerm
  exact differentiable_const.mul (he.const_cpow (Or.inl hp0))

/-- The exact prime-power correction, with the exponent-two contribution retained. -/
noncomputable def primeCorrection (w : ℂ) : ℂ :=
  ∑' q : {p : ℕ // p.Prime} × ℕ, complexCorrectionTerm q.1.val (q.2 + 2) w

/-- A fixed positive margin gives an open domain for the holomorphic limit theorem. -/
theorem primeCorrection_differentiableOn_margin {δ : ℝ} (hδ : 0 < δ) :
    DifferentiableOn ℂ primeCorrection {w : ℂ | 1 / 2 + δ < w.re} := by
  unfold primeCorrection
  apply Complex.differentiableOn_tsum_of_summable_norm
    (primeCorrectionProductMajorant_summable hδ)
    (fun q => (complexCorrectionTerm_differentiable q.1.val (q.2 + 2)
      q.1.property.two_le).differentiableOn)
    (isOpen_lt continuous_const Complex.continuous_re)
  intro q w hw
  exact complexCorrectionTerm_norm_le_product hδ hw.le (primeCorrectionIndex q)

/-- Every point strictly to the right of one half admits its own positive margin.
No assertion is made on the boundary line. -/
theorem primeCorrection_differentiableOn :
    DifferentiableOn ℂ primeCorrection {w : ℂ | 1 / 2 < w.re} := by
  intro w hw
  have hδ : 0 < (w.re - 1 / 2) / 2 := by
    change (1 / 2 : ℝ) < w.re at hw
    linarith
  have hwδ : w ∈ {z : ℂ | 1 / 2 + (w.re - 1 / 2) / 2 < z.re} := by
    change (1 / 2 : ℝ) < w.re at hw
    change 1 / 2 + (w.re - 1 / 2) / 2 < w.re
    linarith
  have hopen : IsOpen {z : ℂ | 1 / 2 + (w.re - 1 / 2) / 2 < z.re} :=
    isOpen_lt continuous_const Complex.continuous_re
  exact ((primeCorrection_differentiableOn_margin hδ).differentiableAt
    (hopen.mem_nhds hwδ)).differentiableWithinAt

end GRWTSK.NumberTheory.PrimePowerCorrection
