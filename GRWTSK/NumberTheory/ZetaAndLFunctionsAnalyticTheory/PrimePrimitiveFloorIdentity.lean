/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePrimitiveMellinExchange

/-!
# The cutoff series is the literal finite floor primitive

The strict cutoff x>n and the closed inventory n<=floor(x) differ only at a
zero-weight touching atom. Coefficients at zero and one vanish exactly.
The displayed real formula matches the inspected source body; this does not
establish its original provider import closure or inherit historical receipts.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
open MeasureTheory Set
namespace GRWTSK.NumberTheory.PrimePrimitiveMellin
open GRWTSK.NumberTheory.PrimePowerCorrection
open scoped BigOperators

noncomputable def finitePrimePrimitive (x : ℝ) : ℂ :=
  2 * ∑ n ∈ Finset.Icc 2 ⌊x⌋₊, centeredPrimeCoefficient n *
    (((1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt x : ℝ)) : ℂ)

noncomputable def realPrimePrimitiveFormula (x : ℝ) : ℝ :=
  2 * ∑ n ∈ Finset.Icc 2 ⌊x⌋₊,
    ((if n.Prime then Real.log (n : ℝ) else 0) - (if 2 ≤ n then 1 else 0)) *
      (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt x)

theorem finitePrimePrimitive_eq_real_formula (x : ℝ) :
    finitePrimePrimitive x = (realPrimePrimitiveFormula x : ℂ) := by
  simp [finitePrimePrimitive, realPrimePrimitiveFormula, Complex.ofReal_sum,
    centeredPrimeCoefficient_eq_formula]

theorem cutoffAtom_zero_low (n : ℕ) (hn : n < 2) (s : ℂ) (x : ℝ) :
    cutoffAtom n s x = 0 := by
  have hb : centeredPrimeCoefficient n = 0 := by
    have hn01 : n = 0 ∨ n = 1 := by omega
    rcases hn01 with rfl | rfl <;>
      norm_num [centeredPrimeCoefficient, primeCoefficient, tailOneCoefficient]
  simp [cutoffAtom, weightedAtom, hb]

/-- Include the closed endpoint only because its exact inverse-root difference is zero. -/
theorem cutoffAtom_eq_closed_prefix (n : ℕ) (hn : 2 ≤ n) {x : ℝ} (hx : 0 < x)
    (hnx : (n : ℝ) ≤ x) (s : ℂ) :
    cutoffAtom n s x = (2 * centeredPrimeCoefficient n *
      (((1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt x : ℝ)) : ℂ)) * (x : ℂ) ^ (-s - 1) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  by_cases hlt : (n : ℝ) < x
  · rw [cutoffAtom, Set.indicator_of_mem hlt, weightedAtom,
      atomKernel_eq_original hn0 hx s, Complex.ofReal_sub]
    ring
  · have heq : (n : ℝ) = x := le_antisymm hnx (le_of_not_gt hlt)
    rw [show (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt x : ℝ) = 0 by rw [heq]; ring]
    simp [cutoffAtom, hlt]

/-- The infinite occurrence sum has finite support at each positive real input. -/
theorem cutoffAtom_tsum_eq_floor {x : ℝ} (hx : 0 < x) (s : ℂ) :
    (∑' n : {n : ℕ // 2 ≤ n}, cutoffAtom n.val s x) =
      finitePrimePrimitive x * (x : ℂ) ^ (-s - 1) := by
  classical
  have hsub : (∑' n : {n : ℕ // 2 ≤ n}, cutoffAtom n.val s x) =
      ∑' n : ℕ, cutoffAtom n s x := by
    apply tsum_subtype_eq_of_support_subset
    intro n hn
    by_contra h
    exact hn (cutoffAtom_zero_low n (by omega) s x)
  have hzero : ∀ n : ℕ, n ∉ Finset.Icc 2 ⌊x⌋₊ → cutoffAtom n s x = 0 := by
    intro n hn
    by_cases hn2 : 2 ≤ n
    · have hfloor : ⌊x⌋₊ < n := by
        by_contra h
        exact hn (Finset.mem_Icc.mpr ⟨hn2, by omega⟩)
      have hxn : x < n := (Nat.floor_lt hx.le).mp hfloor
      exact Set.indicator_of_notMem (not_lt.mpr hxn.le) _
    · exact cutoffAtom_zero_low n (by omega) s x
  rw [hsub, tsum_eq_sum hzero]
  calc
    _ = ∑ n ∈ Finset.Icc 2 ⌊x⌋₊, (2 * centeredPrimeCoefficient n *
        (((1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt x : ℝ)) : ℂ)) *
          (x : ℂ) ^ (-s - 1) := by
      apply Finset.sum_congr rfl
      intro n hn
      exact cutoffAtom_eq_closed_prefix n (Finset.mem_Icc.mp hn).1 hx
        ((Nat.le_floor_iff hx.le).mp (Finset.mem_Icc.mp hn).2) s
    _ = _ := by
      simp only [finitePrimePrimitive, Finset.mul_sum, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro n _
      ring

end GRWTSK.NumberTheory.PrimePrimitiveMellin
