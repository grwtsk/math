/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePrimitiveFloorIdentity

/-!
# The source-formula Mellin identity on its absolute-convergence domain

Compose the literal floor-primitive identity, common-measure absolute exchange,
and centered Dirichlet-series formula. Every source coefficient and the missing
n=1 atom remain explicit. No analytic continuation, Landau theorem, eventual
prime-sign estimate or RH theorem is proved here. Provider import identification
and compilation/replay/axiom audit remain separate obligations.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
open MeasureTheory Set
namespace GRWTSK.NumberTheory.PrimePrimitiveMellin
open GRWTSK.NumberTheory.PrimePowerCorrection

/-- The omitted zero and one coefficients vanish, before reindexing the total sum. -/
theorem centeredPrime_LSeries_eq_subtype (w : ℂ) :
    LSeries centeredPrimeCoefficient w =
      ∑' n : {n : ℕ // 2 ≤ n}, centeredPrimeCoefficient n.val * (n.val : ℂ) ^ (-w) := by
  have hb0 : centeredPrimeCoefficient 0 = 0 := by
    norm_num [centeredPrimeCoefficient, primeCoefficient, tailOneCoefficient]
  have hb1 : centeredPrimeCoefficient 1 = 0 := by
    norm_num [centeredPrimeCoefficient, primeCoefficient, tailOneCoefficient]
  have hsupp : Function.support (fun n : ℕ => centeredPrimeCoefficient n * (n : ℂ) ^ (-w)) ⊆
      {n : ℕ | 2 ≤ n} := by
    intro n hn
    by_contra h
    have hn01 : n = 0 ∨ n = 1 := by omega
    rcases hn01 with rfl | rfl <;> simp [hb0, hb1] at hn
  unfold LSeries
  simp_rw [LSeries.term_def₀ hb0]
  exact (tsum_subtype_eq_of_support_subset hsupp).symm

/-- The cutoff series vanishes on the entire complement of Ioi(1). -/
theorem cutoffAtom_tsum_zero_below_one {x : ℝ} (hx : x ≤ 1) (s : ℂ) :
    (∑' n : {n : ℕ // 2 ≤ n}, cutoffAtom n.val s x) = 0 := by
  apply tsum_eq_zero
  intro n
  have hn2 : (2 : ℝ) ≤ n.val := by exact_mod_cast n.property
  exact Set.indicator_of_notMem (by change ¬ (n.val : ℝ) < x; linarith) _

/-- The Mellin identity for the explicit unchanged inverse-root coefficient formula. -/
theorem mellin_realPrimePrimitiveFormula {s : ℂ} (hs : 1 / 2 < s.re) :
    (∫ x : ℝ in Ioi (1 : ℝ),
      (realPrimePrimitiveFormula x : ℂ) * (x : ℂ) ^ (-s - 1)) =
      LSeries centeredPrimeCoefficient (s + 1 / 2) / (s * (s + 1 / 2)) := by
  have he : -(s + 1 / 2) = -s - 1 / 2 := by ring
  calc
    _ = ∫ x : ℝ in Ioi (1 : ℝ),
        ∑' n : {n : ℕ // 2 ≤ n}, cutoffAtom n.val s x := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      simpa only [finitePrimePrimitive_eq_real_formula] using
        (cutoffAtom_tsum_eq_floor (lt_trans zero_lt_one hx) s).symm
    _ = ∫ x : ℝ, ∑' n : {n : ℕ // 2 ≤ n}, cutoffAtom n.val s x :=
      setIntegral_eq_integral_of_forall_compl_eq_zero
        (fun x hx => cutoffAtom_tsum_zero_below_one (le_of_not_gt hx) s)
    _ = ∑' n : {n : ℕ // 2 ≤ n}, centeredPrimeCoefficient n.val *
        ((n.val : ℂ) ^ (-s - 1 / 2) / (s * (s + 1 / 2))) :=
      integral_cutoffAtom_tsum_eq_series hs
    _ = (∑' n : {n : ℕ // 2 ≤ n}, centeredPrimeCoefficient n.val *
        (n.val : ℂ) ^ (-s - 1 / 2)) / (s * (s + 1 / 2)) := by
      simp only [← mul_div_assoc, tsum_div_const]
    _ = _ := by rw [centeredPrime_LSeries_eq_subtype, he]

/-- Return to the actual zeta expression only on the same convergence half-plane. -/
theorem mellin_realPrimePrimitiveFormula_zeta {s : ℂ} (hs : 1 / 2 < s.re) :
    (∫ x : ℝ in Ioi (1 : ℝ),
      (realPrimePrimitiveFormula x : ℂ) * (x : ℂ) ^ (-s - 1)) =
      (-deriv riemannZeta (s + 1 / 2) / riemannZeta (s + 1 / 2) -
        primeCorrection (s + 1 / 2) - riemannZeta (s + 1 / 2) + 1) /
          (s * (s + 1 / 2)) := by
  have hw : 1 < (s + 1 / 2).re := by simp; linarith
  rw [mellin_realPrimePrimitiveFormula hs, centeredPrime_series_eq_zeta_expression hw]

end GRWTSK.NumberTheory.PrimePrimitiveMellin
