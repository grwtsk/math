/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusElementarySquarefreeSieveSource
import Mathlib.Tactic

/-!
# Finish the elementary ORIGINAL source shell counting adapter

The upstream source proves by a finite square-divisor cover and exact
pinned Mathlib positive-multiple counts that at least N/4 original
integers in 1..N are squarefree, with no PNT or external density input.

This module maps a TRUE natural-number interval into the exact
squarefreeHeatShell(T) defined in GaussianStrongHeatSquarefreeShell.
With A=floor(exp(T-6)), B=floor(exp(T-4)), every squarefree
integer n with A<n<=B satisfies T-6<log n<=T-4 and belongs to
the original endpointIndex(T). Its natural integer is unchanged.

The actual shell cardinality obeys:
  card(shell T) >= B/4-A
                 >= exp(T)*(exp(-4)/4-exp(-6))-1/4.

The coefficient beta=exp(-4)/4-exp(-6) is strictly positive because
exp(2)>4. Thus for sufficiently large T, card(shell T)>=c*exp(T)
for a concrete positive c=beta/2.

Combined with the ORIGINAL finite positive source radius shell
inequality, fixed Gaussian heat s>=1 has a fully source-specific
radiusEnergy >=8c² exp(T) at all sufficiently large T.
Therefore its positive radius CANNOT be SubexponentialOn on any
AffineFrequent G. The corresponding signed heat-energy O(T)
bound remains true: this is a source reconstruction no-go.

All proofs are SOURCE CANDIDATES until native Lean elaboration/kernel
checking; no arithmetic theorem is silently assumed or axiomatized.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianStrongHeatUnconditionalNoGo

open MeasureTheory Set
open GRWTSK.NumberTheory.Moebius.ElementarySquarefreeSieveSource
open GRWTSK.NumberTheory.Moebius.GaussianStrongHeatSquarefreeShell
open GRWTSK.NumberTheory.Moebius.GaussianStrongHeatSquarefreeNoGo
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- An actual lower and upper integer cutoff for the ORIGINAL
source logarithmic shell; neither changes the final endpointIndex T. -/
def shellLow (T : ℝ) : ℕ := ⌊Real.exp (T - 6)⌋₊
def shellHigh (T : ℝ) : ℕ := ⌊Real.exp (T - 4)⌋₊

theorem shellLow_le_shellHigh (T : ℝ) :
    shellLow T ≤ shellHigh T := by
  unfold shellLow shellHigh
  exact Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))

theorem squarefreeSource_mono {A B : ℕ} (hAB : A ≤ B) :
    squarefreeSource A ⊆ squarefreeSource B := by
  classical
  intro n hn
  obtain ⟨hnA, hsquarefree⟩ := Finset.mem_filter.mp hn
  have hA := Finset.mem_Icc.mp hnA
  exact Finset.mem_filter.mpr
    ⟨Finset.mem_Icc.mpr ⟨hA.1, hA.2.trans hAB⟩,
      hsquarefree⟩

/-- Every squarefree source integer in the genuine finite interval
(A,B] is literally an original heat-shell integer, with no new
source labels and no squarefree zero dropped. -/
theorem integer_squarefree_shell_subset (T : ℝ) :
    squarefreeSource (shellHigh T) \
        squarefreeSource (shellLow T) ⊆
          squarefreeHeatShell T := by
  classical
  intro n hn
  obtain ⟨hnB, hnNotA⟩ := Finset.mem_sdiff.mp hn
  obtain ⟨hnBIcc, hnSq⟩ := Finset.mem_filter.mp hnB
  have hnBounds := Finset.mem_Icc.mp hnBIcc
  have hn1 : 1 ≤ n := hnBounds.1
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn1
  have hA_lt : shellLow T < n := by
    by_contra hnot
    have hN_le : n ≤ shellLow T := by omega
    have hnA : n ∈ squarefreeSource (shellLow T) :=
      Finset.mem_filter.mpr
        ⟨Finset.mem_Icc.mpr ⟨hn1, hN_le⟩, hnSq⟩
    exact hnNotA hnA
  have hnA_cast : ((shellLow T : ℕ) : ℝ) + 1 ≤ n := by
    exact_mod_cast (Nat.succ_le_iff.mpr hA_lt)
  have hfloorLow :
      Real.exp (T - 6) <
        ((shellLow T : ℕ) : ℝ) + 1 := by
    unfold shellLow
    exact Nat.lt_floor_add_one _
  have hsourceLow : T - 6 ≤ Real.log (n : ℝ) := by
    exact (Real.le_log_iff_exp_le hnpos).mpr
      ((hfloorLow.trans_le hnA_cast).le)
  have hfloorHigh :
      (n : ℝ) ≤ Real.exp (T - 4) := by
    have hcast : (n : ℝ) ≤ (shellHigh T : ℝ) := by
      exact_mod_cast hnBounds.2
    exact hcast.trans
      (Nat.floor_le (Real.exp_pos _).le)
  have hsourceHigh : Real.log (n : ℝ) ≤ T - 4 :=
    (Real.log_le_iff_le_exp hnpos).mpr hfloorHigh
  have hend : shellHigh T ≤
      ⌊Real.exp T⌋₊ := by
    unfold shellHigh
    exact Nat.floor_mono
      (Real.exp_le_exp.mpr (by linarith))
  have hOriginal : n ∈
      GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn.endpointIndex T := by
    exact Finset.mem_Icc.mpr ⟨hn1, hnBounds.2.trans hend⟩
  apply (mem_squarefreeHeatShell T n).mpr
  exact ⟨hOriginal, hnSq,
    by simpa only [GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource.logFrequency] using
      hsourceLow,
    by simpa only [GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource.logFrequency] using
      hsourceHigh⟩

/-- Finite elementary lower bound: the original logarithmic shell
already contains at least the quarter-density upper prefix minus
the entire lower prefix. This uses the REAL source squarefree set. -/
theorem squarefreeHeatShell_card_ge_floor_difference (T : ℝ) :
    (shellHigh T : ℝ) / 4 - (shellLow T : ℝ) ≤
      ((squarefreeHeatShell T).card : ℝ) := by
  have hAB := shellLow_le_shellHigh T
  have hsub := squarefreeSource_mono hAB
  have hcount :
      (squarefreeSource (shellHigh T) \
        squarefreeSource (shellLow T)).card +
        (squarefreeSource (shellLow T)).card =
          (squarefreeSource (shellHigh T)).card :=
    Finset.card_sdiff_add_card_eq_card hsub
  have hcountReal :
      ((squarefreeSource (shellHigh T) \
        squarefreeSource (shellLow T)).card : ℝ) +
        ((squarefreeSource (shellLow T)).card : ℝ) =
        ((squarefreeSource (shellHigh T)).card : ℝ) := by
    exact_mod_cast hcount
  have hlarge :
      (shellHigh T : ℝ) / 4 ≤
        ((squarefreeSource (shellHigh T)).card : ℝ) :=
    squarefree_source_count_ge_quarter (shellHigh T)
  have hsmall :
      ((squarefreeSource (shellLow T)).card : ℝ) ≤
        (shellLow T : ℝ) := by
    have hcard :
        (squarefreeSource (shellLow T)).card ≤
          (Finset.Icc 1 (shellLow T)).card :=
      Finset.card_le_card (Finset.filter_subset _ _)
    have hicc :
        (Finset.Icc 1 (shellLow T)).card =
          shellLow T := by
      simp [Finset.card_Icc]
    rw [hicc] at hcard
    exact_mod_cast hcard
  have hsubset :
      ((squarefreeSource (shellHigh T) \
          squarefreeSource (shellLow T)).card : ℝ) ≤
        ((squarefreeHeatShell T).card : ℝ) := by
    exact_mod_cast Finset.card_le_card
      (integer_squarefree_shell_subset T)
  linarith

/-- Elementary positive density coefficient for the source
logarithmic shell. This avoids any use of 6/pi², PNT or RH. -/
def elementaryShellCoefficient : ℝ :=
  Real.exp (-4) / 4 - Real.exp (-6)

theorem elementaryShellCoefficient_pos :
    0 < elementaryShellCoefficient := by
  have he1 : (2 : ℝ) < Real.exp 1 := by
    nlinarith [Real.add_one_lt_exp (by norm_num : (1 : ℝ) ≠ 0)]
  have he2 : Real.exp 2 = (Real.exp 1) ^ 2 := by
    calc
      Real.exp (2 : ℝ) = Real.exp (1 + 1) := by norm_num
      _ = Real.exp 1 * Real.exp 1 := Real.exp_add 1 1
      _ = (Real.exp 1) ^ 2 := by ring
  have htwo : (4 : ℝ) < Real.exp 2 := by
    rw [he2]
    nlinarith [sq_nonneg (Real.exp 1 - 2)]
  have hfactor :
      Real.exp (-4) = Real.exp (-6) * Real.exp 2 := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold elementaryShellCoefficient
  rw [hfactor]
  have hmul := mul_pos (Real.exp_pos (-6))
    (by linarith : 0 < Real.exp 2 - 4)
  nlinarith

/-- Genuine floor estimates and exact exponential shift algebra
translate the finite squarefree-count inequality into a positive
linear lower count with a fixed finite floor correction. -/
theorem shell_card_ge_exponential_minus_quarter (T : ℝ) :
    elementaryShellCoefficient * Real.exp T - (1 / 4 : ℝ) ≤
      ((squarefreeHeatShell T).card : ℝ) := by
  have hlow :
      (shellLow T : ℝ) ≤ Real.exp (T - 6) := by
    unfold shellLow
    exact Nat.floor_le (Real.exp_pos _).le
  have hhigh :
      Real.exp (T - 4) - 1 ≤ (shellHigh T : ℝ) := by
    have h := Nat.lt_floor_add_one (Real.exp (T - 4))
    dsimp [shellHigh]
    linarith
  have hshift4 :
      Real.exp (T - 4) = Real.exp T * Real.exp (-4) := by
    rw [show T - 4 = T + (-4 : ℝ) by ring, Real.exp_add]
  have hshift6 :
      Real.exp (T - 6) = Real.exp T * Real.exp (-6) := by
    rw [show T - 6 = T + (-6 : ℝ) by ring, Real.exp_add]
  have hfloor := squarefreeHeatShell_card_ge_floor_difference T
  calc
    elementaryShellCoefficient * Real.exp T - (1 / 4 : ℝ) =
        (Real.exp (T - 4) - 1) / 4 - Real.exp (T - 6) := by
      unfold elementaryShellCoefficient
      rw [hshift4, hshift6]
      ring
    _ ≤ (shellHigh T : ℝ) / 4 - (shellLow T : ℝ) := by
      linarith [hlow, hhigh]
    _ ≤ ((squarefreeHeatShell T).card : ℝ) := hfloor

/-- All ORIGINAL real observation horizons sufficiently large
contain linearly many squarefree source integers in the selected
logarithmic shell. The proof uses only the elementary finite sieve
and true floor arithmetic from PINNED Mathlib, not an external
squarefree density theorem or a new axiom. -/
theorem squarefreeHeatShellDensityOn_univ :
    SquarefreeHeatShellDensityOn Set.univ := by
  let c : ℝ := elementaryShellCoefficient / 2
  have hc : 0 < c := by
    dsimp [c]
    linarith [elementaryShellCoefficient_pos]
  let Y : ℝ := 1 + 1 / (4 * c)
  have hY : 0 < Y := by dsimp [Y]; positivity
  let T₀ : ℝ := max 7 (Real.log Y)
  refine ⟨c, T₀, hc, le_max_left _ _, ?_⟩
  intro T hTG hT₀
  have hlog : Real.log Y ≤ T :=
    (le_max_right _ _).trans hT₀
  have hexp : Y ≤ Real.exp T := by
    calc
      Y = Real.exp (Real.log Y) := (Real.exp_log hY).symm
      _ ≤ Real.exp T := Real.exp_le_exp.mpr hlog
  have hcy : c * Y = c + (1 / 4 : ℝ) := by
    dsimp [Y]
    field_simp [ne_of_gt hc]
    ring
  have hquarter : (1 / 4 : ℝ) ≤ c * Real.exp T := by
    have h := mul_le_mul_of_nonneg_left hexp hc.le
    linarith [hcy]
  have hbound := shell_card_ge_exponential_minus_quarter T
  have hcoef : elementaryShellCoefficient = 2 * c := by
    dsimp [c]
    ring
  rw [hcoef] at hbound
  nlinarith

/-- This result has NO new arithmetic hypothesis. In ordinary math
it is an unconditional strong-heat POSITIVE radius no-go; within
Lean it remains a source proof candidate until native checking.
It does not assert a lower bound on the SIGNED original error wave. -/
theorem no_subexponential_positive_radius_of_strong_heat
    {s : ℝ} (hs : 1 ≤ s)
    {G : Set ℝ} (hcover : AffineFrequent G) :
    ¬ SubexponentialOn
        (fun T => GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource.sourceHeatRadiusEnergy
          s T) G := by
  apply not_radiusEnergy_subexponential_of_shellDensity
    hs hcover
  obtain ⟨c, T₀, hc, hT₀, hbound⟩ :=
    squarefreeHeatShellDensityOn_univ
  exact ⟨c, T₀, hc, hT₀,
    fun T hG hT => hbound T (Set.mem_univ T) hT⟩

end GRWTSK.NumberTheory.Moebius.GaussianStrongHeatUnconditionalNoGo
