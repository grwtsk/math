/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform

/-!
# Exact arithmetic blocks on the critical completed vertical line

Between consecutive logarithmic arrival times, the closed Möbius inventory is
constant.  The pickup therefore has an exact two-prefix formula involving the
weighted Möbius prefix and the Mertens prefix.  Integrating its square with the
critical weight `exp (-u)` produces nonnegative arithmetic blocks whose partial
sums are exactly the completed mass at `σ = 1/2`.

This is a source-exact discretization, not a cancellation estimate.  In
particular, it preserves the coupling between the two signed prefixes.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.VerticalLineCriterion
open GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity

/-- On the open logarithmic cell from `n` to `n+1`, the pickup is the exact
coupled weighted-prefix/Mertens-prefix expression with cutoff `n`. -/
theorem wholePickup_eq_prefix_flux_on_log_cell {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hlo : Real.log (n : ℝ) < u)
    (hhi : u < Real.log ((n + 1 : ℕ) : ℝ)) :
    wholePickup u =
      2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hsuccpos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  have hu : 0 ≤ u := (Real.log_nonneg (by exact_mod_cast hn)).trans hlo.le
  have hfloor : ⌊Real.exp u⌋₊ = n := by
    apply (Nat.floor_eq_iff (Real.exp_pos u).le).2
    constructor
    · exact (Real.log_lt_iff_lt_exp hnpos).mp hlo |>.le
    · simpa only [Nat.cast_add, Nat.cast_one] using
        (Real.lt_log_iff_exp_lt hsuccpos).mp hhi
  have hflux := wholePickup_closed_prefix_flux hu
  unfold mertensPrefix at hflux
  rw [hfloor] at hflux
  change wholePickup u =
    2 * pickupWeightedPrefix n -
      2 * Real.exp (-u / 2) * pickupMertensPrefix n at hflux
  calc
    wholePickup u =
        2 * pickupWeightedPrefix n -
          2 * Real.exp (-u / 2) * pickupMertensPrefix n := hflux
    _ = 2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n) := by ring

/-- The explicit positive arithmetic contribution of the `n`th logarithmic
cell to the completed line `σ = 1/2`. -/
def criticalIntervalBlock (n : ℕ) : ℝ :=
  ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
    Real.exp (-u) *
      (2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2

/-- Each explicit block is the actual weighted pickup energy on its cell. -/
theorem criticalIntervalBlock_eq_pickup {n : ℕ} (hn : 1 ≤ n) :
    criticalIntervalBlock n =
      ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
        Real.exp (-u) * wholePickup u ^ 2 := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hlog : Real.log (n : ℝ) ≤ Real.log ((n + 1 : ℕ) : ℝ) :=
    Real.log_le_log hnpos (by exact_mod_cast Nat.le_add_right n 1)
  unfold criticalIntervalBlock
  symm
  apply intervalIntegral.integral_congr_Ioo_of_le hlog
  intro u hu
  change Real.exp (-u) * wholePickup u ^ 2 =
    Real.exp (-u) *
      (2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2
  rw [wholePickup_eq_prefix_flux_on_log_cell hn hu.1 hu.2]

theorem criticalIntervalBlock_nonneg {n : ℕ} (hn : 1 ≤ n) :
    0 ≤ criticalIntervalBlock n := by
  rw [criticalIntervalBlock_eq_pickup hn]
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  apply intervalIntegral.integral_nonneg_of_forall
    (Real.log_le_log hnpos (by exact_mod_cast Nat.le_add_right n 1))
  intro u
  exact mul_nonneg (Real.exp_pos _).le (sq_nonneg _)

/-- Partial sum of the exact critical arithmetic blocks. -/
def criticalIntervalBlockSum (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, criticalIntervalBlock n

/-- The first `N` blocks telescope to the critical weighted energy through the
arrival time `log (N+1)`. -/
theorem criticalIntervalBlockSum_eq_integral (N : ℕ) :
    criticalIntervalBlockSum N =
      ∫ u in (0 : ℝ)..Real.log ((N + 1 : ℕ) : ℝ),
        Real.exp (-u) * wholePickup u ^ 2 := by
  induction N with
  | zero => simp [criticalIntervalBlockSum]
  | succ N ih =>
      rw [criticalIntervalBlockSum, Finset.sum_Icc_succ_top (by omega),
        ← criticalIntervalBlockSum, ih,
        criticalIntervalBlock_eq_pickup (by omega : 1 ≤ N + 1)]
      have hc : Continuous (fun u : ℝ =>
          Real.exp (-u) * wholePickup u ^ 2) :=
        (Real.continuous_exp.comp continuous_id.neg).mul
          (wholePickup_continuous.pow 2)
      exact intervalIntegral.integral_add_adjacent_intervals (μ := volume)
        (hc.intervalIntegrable 0 (Real.log ((N + 1 : ℕ) : ℝ)))
        (hc.intervalIntegrable (Real.log ((N + 1 : ℕ) : ℝ))
          (Real.log ((N + 1 + 1 : ℕ) : ℝ)))

/-- At logarithmic arithmetic horizons, the completed `σ = 1/2` mass is
exactly the finite sum of positive source blocks. -/
theorem criticalIntervalBlockSum_eq_verticalLineMass (N : ℕ) :
    criticalIntervalBlockSum N =
      verticalLineMass (1 / 2) (Real.log ((N + 1 : ℕ) : ℝ)) := by
  have hlog : 0 ≤ Real.log ((N + 1 : ℕ) : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (Nat.succ_le_succ (Nat.zero_le N)))
  rw [criticalIntervalBlockSum_eq_integral]
  change (∫ u in (0 : ℝ)..Real.log ((N + 1 : ℕ) : ℝ),
      Real.exp (-u) * wholePickup u ^ 2) =
    verticalLineMass (1 / 2) (Real.log ((N + 1 : ℕ) : ℝ))
  rw [verticalLineMass_eq_weightedWindow (σ := 1 / 2) hlog,
    intervalIntegral.integral_of_le hlog, ← integral_Icc_eq_integral_Ioc]
  apply setIntegral_congr_fun measurableSet_Icc
  intro u _hu
  ring_nf

/-- Extending a finite recording horizon can only add nonnegative weighted
pickup energy. -/
theorem verticalLineMass_mono_horizon {σ S T : ℝ} (hS : 0 ≤ S) (hST : S ≤ T) :
    verticalLineMass σ S ≤ verticalLineMass σ T := by
  rw [verticalLineMass_eq_weightedWindow hS,
    verticalLineMass_eq_weightedWindow (hS.trans hST)]
  have hc : Continuous (fun u : ℝ =>
      Real.exp (-2 * σ * u) * wholePickup u ^ 2) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (wholePickup_continuous.pow 2)
  apply setIntegral_mono_set hc.integrableOn_Icc
    (ae_of_all _ (fun u => mul_nonneg (Real.exp_pos _).le (sq_nonneg _)))
  exact ae_of_all _ (fun _ hu => ⟨hu.1, hu.2.trans hST⟩)

/-- Uniform-in-horizon control of the single boundary line `σ = 1/2`.  This
is a necessary but not sufficient part of the all-positive-lines criterion. -/
def CriticalBoundaryVerticalLineUniform : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ T : ℝ, 0 ≤ T → verticalLineMass (1 / 2) T ≤ C

/-- Uniform boundedness of the exact positive arithmetic block partial sums. -/
def CriticalIntervalBlockUniform : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ, criticalIntervalBlockSum N ≤ C

theorem criticalIntervalBlockUniform_of_boundary
    (hB : CriticalBoundaryVerticalLineUniform) : CriticalIntervalBlockUniform := by
  obtain ⟨C, hC, hbound⟩ := hB
  refine ⟨C, hC, ?_⟩
  intro N
  rw [criticalIntervalBlockSum_eq_verticalLineMass]
  exact hbound _ (Real.log_nonneg
    (by exact_mod_cast (Nat.succ_le_succ (Nat.zero_le N))))

theorem criticalBoundary_of_intervalBlockUniform
    (hB : CriticalIntervalBlockUniform) : CriticalBoundaryVerticalLineUniform := by
  obtain ⟨C, hC, hbound⟩ := hB
  refine ⟨C, hC, ?_⟩
  intro T hT
  obtain ⟨N, hN⟩ := exists_nat_gt (Real.exp T)
  have hNpos : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  have hTlog : T ≤ Real.log ((N + 1 : ℕ) : ℝ) := by
    apply (Real.le_log_iff_exp_le hNpos).2
    exact hN.le.trans (by exact_mod_cast Nat.le_add_right N 1)
  calc
    verticalLineMass (1 / 2) T ≤
        verticalLineMass (1 / 2) (Real.log ((N + 1 : ℕ) : ℝ)) :=
      verticalLineMass_mono_horizon hT hTlog
    _ = criticalIntervalBlockSum N :=
      (criticalIntervalBlockSum_eq_verticalLineMass N).symm
    _ ≤ C := hbound N

/-- The continuous boundary-line estimate is exactly boundedness of the
source-exact positive arithmetic block partial sums. -/
theorem criticalBoundary_iff_intervalBlockUniform :
    CriticalBoundaryVerticalLineUniform ↔ CriticalIntervalBlockUniform :=
  ⟨criticalIntervalBlockUniform_of_boundary,
    criticalBoundary_of_intervalBlockUniform⟩

/-- Any solution of the countable RH-equivalent reciprocal-line problem must,
in particular, settle the explicit critical arithmetic block problem. -/
theorem criticalBoundary_of_criticalReciprocal
    (hR : CriticalReciprocalVerticalLineUniform) :
    CriticalBoundaryVerticalLineUniform := by
  obtain ⟨C, hC, hbound⟩ := hR 1 (by norm_num)
  refine ⟨C, hC, ?_⟩
  norm_num at hbound ⊢
  exact hbound

end GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.wholePickup_eq_prefix_flux_on_log_cell
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalBlock_eq_pickup
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalBlockSum_eq_verticalLineMass
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_iff_intervalBlockUniform
