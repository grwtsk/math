/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
The L-series/logarithmic-derivative theorem is Michael Stoll's Mathlib result;
Lean, Mathlib, and their authors retain their original licenses and attribution.
Status: candidate proof source; not elaborated in the pinned environment.
-/
import Mathlib.NumberTheory.LSeries.Dirichlet
import GRWTSK.Analysis.Series.DyadicPartition
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.DyadicIntegralSeries
import GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications

/-! # Unconditional Euler identification of the original dyadic source

This module is on Re(s)>1. It does not assume AllDyadicEnergyBound, normal
convergence on a larger half-plane, a zero-free region beyond 1, or RH.
The complete continuum mass is subtracted with its original minus sign.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicEulerIdentification
open GRWTSK.Analysis.Series.DyadicPartition
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.PositiveCoordinates
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.DyadicIntegralSeries
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
open GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications

/-- Literal source coefficient in the Euler coordinate. -/
def arithmeticTerm (s : ℂ) (n : ℕ) : ℂ :=
  (mangoldt n : ℂ)*power (n:ℝ) (-s)

theorem arithmeticTerm_zero (s : ℂ) : arithmeticTerm s 0 = 0 := by
  simp [arithmeticTerm, mangoldt]

theorem arithmeticTerm_one (s : ℂ) : arithmeticTerm s 1 = 0 := by
  simp [arithmeticTerm, mangoldt]

/-- The positive-real log convention agrees with Mathlib's principal complex
power on precisely the positive coordinates used by the arithmetic source. -/
theorem power_eq_cpow {x : ℝ} (hx : 0 < x) (s : ℂ) :
    power x s = (x : ℂ)^s := by
  have hx0 : (x : ℂ) ≠ 0 := by exact_mod_cast hx.ne'
  rw [Complex.cpow_def_of_ne_zero hx0, ← Complex.ofReal_log hx.le]
  simp only [power, mul_comm]

theorem arithmeticTerm_eq_LSeries_term (s : ℂ) (n : ℕ) :
    arithmeticTerm s n = LSeries.term (fun m => (mangoldt m : ℂ)) s n := by
  by_cases hn : n = 0
  · subst n
    simp [arithmeticTerm_zero]
  · have hnp : (0:ℝ) < n := by exact_mod_cast Nat.pos_of_ne_zero hn
    rw [LSeries.term_of_ne_zero hn]
    unfold arithmeticTerm
    have hcast : ((n:ℝ):ℂ) = (n:ℂ) := by norm_cast
    rw [power_eq_cpow hnp, hcast, Complex.cpow_neg, div_eq_mul_inv]

/-- This is a wrapper around the pinned upstream absolutely convergent
von-Mangoldt L-series theorem, with an explicit source-term adapter. -/
theorem arithmeticTerm_hasSum {s : ℂ} (hs : 1 < s.re) :
    HasSum (arithmeticTerm s) (-(deriv riemannZeta s)/riemannZeta s) := by
  have hh : Summable (LSeries.term (fun m => (mangoldt m : ℂ)) s) := by
    simpa only [mangoldt, LSeriesSummable] using
      ArithmeticFunction.LSeriesSummable_vonMangoldt hs
  have hv : LSeries (fun m => (mangoldt m : ℂ)) s =
      -(deriv riemannZeta s)/riemannZeta s := by
    simpa only [mangoldt] using
      ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs
  have h := hh.hasSum
  change HasSum (LSeries.term (fun m => (mangoldt m : ℂ)) s)
    (LSeries (fun m => (mangoldt m : ℂ)) s) at h
  rw [hv] at h
  exact h.congr_fun (fun n => arithmeticTerm_eq_LSeries_term s n)

theorem cell_eq_window (j : ℕ) : cell j = window (edge j) := by
  simp only [cell, window, edge_succ]

theorem source_block_split (j : ℕ) (s : ℂ) :
    dirichletBlock (edge j) s =
      (∑ n ∈ cell j, arithmeticTerm s n)-background j s := by
  simp only [dirichletBlock, cell_eq_window, arithmeticTerm, power,
    background, edge_succ, Nat.cast_mul, Nat.cast_ofNat]

/-- No prime power, lower endpoint convention, or first cell is omitted. -/
theorem arithmetic_cells_hasSum {s : ℂ} (hs : 1 < s.re) :
    HasSum (fun j => ∑ n ∈ cell j, arithmeticTerm s n)
      (-(deriv riemannZeta s)/riemannZeta s) :=
  hasSum_cells (arithmeticTerm_hasSum hs)
    (arithmeticTerm_zero s) (arithmeticTerm_one s)

/-- An unconditional HasSum on the Euler half-plane for the actual signed blocks. -/
theorem source_blocks_hasSum {s : ℂ} (hs : 1 < s.re) :
    HasSum (fun j => dirichletBlock (edge j) s)
      (-(deriv riemannZeta s)/riemannZeta s-1/(s-1)) := by
  have h := (arithmetic_cells_hasSum hs).sub (background_hasSum hs)
  exact h.congr_fun (fun j => source_block_split j s)

theorem source_blocks_summable {s : ℂ} (hs : 1 < s.re) :
    Summable (fun j => dirichletBlock (edge j) s) :=
  (source_blocks_hasSum hs).summable

/-- The finite block sum is exactly the finite arithmetic prefix less the
finite continuum prefix. This identity has no summability premise. -/
theorem finite_source_prefix {s : ℂ} (hs : s ≠ 1) (J : ℕ) :
    (∑ j ∈ Finset.range J, dirichletBlock (edge j) s) =
      (∑ n ∈ Finset.Ioc 1 (edge J), arithmeticTerm s n) -
        (1-ratio s^J)/(s-1) := by
  simp_rw [source_block_split]
  rw [Finset.sum_sub_distrib, finite_partition, finite_background_sum hs]

/-- The existing series definition explicitly contains the (1,2] block.
The shift in the tail is checked against dyadicScale, not a title or hash. -/
theorem blockSeries_eq_all_blocks {s : ℂ} (hs : 1 < s.re) :
    blockSeries s = ∑' j, dirichletBlock (edge j) s := by
  have hh := (source_blocks_summable hs).tsum_eq_zero_add
  simpa only [blockSeries, edge, pow_zero, dyadicScale] using hh.symm

/-- Supplies exactly the previously stated goal, without an arithmetic energy
premise. Compiler acceptance remains a separate verification step. -/
theorem eulerIdentification : EulerIdentificationGoal := by
  intro s hs
  rw [blockSeries_eq_all_blocks hs]
  exact (source_blocks_hasSum hs).tsum_eq

/-- Removing the first interval changes the analytic reading by precisely that
interval. This is a reconstruction statement, not a vanishing claim. -/
theorem tailSeries_eq {s : ℂ} (hs : 1 < s.re) :
    (∑' j, dirichletBlock (dyadicScale j) s) =
      -(deriv riemannZeta s)/riemannZeta s-1/(s-1)-dirichletBlock 1 s := by
  have h := eulerIdentification s hs
  unfold blockSeries at h
  linear_combination h

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicEulerIdentification
