import FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
# A negative block in the actual prime tail quadrature

This block uses the literal source and actual closed-prime prefixes. Its negative
contribution must be repaid by the complementary signed blocks if the remaining
lower target holds. No assertion about the sign of the complete quadrature or
an RH counterexample is made. The global tail is used only on finite intervals.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock

open SourcePairedTailTest SourcePairedTailQuadrature SourcePairedPrimeWork
open SourcePairedPrimeAverages SourceFirstPrimeAbel SourceMangoldtNorm
open SourceDiagonalMainTerm WeightedPrimeAbel SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- A literal half-open early prime window, with its original signed source test. -/
def earlyPrimeBlock (A : ℝ) : ℝ :=
  primeLogWindow (A/80) (A/40) (pairedTailTest A)

/-- The complementary disjoint windows preserve both boundary atoms exactly once. -/
def complementaryPrimeBlocks (A : ℝ) : ℝ :=
  primeLogWindow 0 (A/80) (pairedTailTest A) +
    primeLogWindow (A/40) (2 * A) (pairedTailTest A)

/-- The unchanged actual source correlation is at least seven eighths in this early window. -/
theorem earlyCorrelation_ge {A u : ℝ} (hA : 1 ≤ A) (hu0 : 0 ≤ u) (hu : u ≤ A/40) :
    (7/8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A u := by
  have hp : 0 < A := by linarith
  have hb := sourceCorrelation_sub_one_abs_le hA u
  rw [abs_of_nonneg hu0] at hb
  have hf : 5*u/A ≤ (1/8 : ℝ) := (div_le_iff₀ hp).2 (by linarith)
  have hl := (abs_le.mp hb).1
  linarith

/-- This sign belongs to the actual tail test on an interval, not to the whole prime interaction. -/
theorem earlyTailTest_le {A u : ℝ} (hA : 160 ≤ A)
    (hlo : A/80 ≤ u) (hhi : u ≤ A/40) :
    pairedTailTest A u ≤ -(7/16 : ℝ)*Real.exp (A/160) := by
  have hA1 : 1 ≤ A := by linarith
  have hu0 : 0 ≤ u := by linarith
  have huL : u ≤ 2 * A := by linarith
  have hC := earlyCorrelation_ge hA1 hu0 hhi
  have he := Real.exp_le_exp.mpr (show A/160 ≤ u/2 by linarith)
  have hs := negativeSurvival_le_one hA1 ⟨hu0, huL⟩
  have hbase : (5/2 : ℝ) ≤ Real.exp (A/160) := by
    have hq := Real.quadratic_le_exp_of_nonneg (show (0 : ℝ) ≤ 1 by norm_num)
    have hm := Real.exp_le_exp.mpr (show (1 : ℝ) ≤ A/160 by linarith)
    norm_num at hq
    linarith
  have hg : (7/8 : ℝ)*Real.exp (A/160) ≤ criticalPrimeTest A u := by
    unfold criticalPrimeTest
    calc
      _ = Real.exp (A/160)*(7/8 : ℝ) := by ring
      _ ≤ Real.exp (u/2)*(7/8 : ℝ) :=
        mul_le_mul_of_nonneg_right he (by norm_num)
      _ ≤ _ := mul_le_mul_of_nonneg_left hC (Real.exp_pos _).le
  unfold pairedTailTest
  linarith

/-- The upper bound retains the actual prime mass before applying weighted-prime Mertens. -/
theorem earlyPrimeBlock_le_mass {A : ℝ} (hA : 160 ≤ A) :
    earlyPrimeBlock A ≤ -(7/16 : ℝ)*Real.exp (A/160)*
      primeLogWindow (A/80) (A/40) (fun _ => 1) := by
  classical
  unfold earlyPrimeBlock
  rw [primeLogWindow_eq_filter _ _ (by linarith),
    primeLogWindow_eq_filter _ _ (by linarith), Finset.mul_sum]
  apply Finset.sum_le_sum
  intro p hp
  obtain ⟨hI, hlo⟩ := Finset.mem_filter.mp hp
  have hbounds := primeLogInventory_log_bounds (A/40) p hI
  have hn : 0 ≤ Real.log (p : ℝ)/(p : ℝ) := by
    have hprime := (Finset.mem_filter.mp hI).2
    exact div_nonneg hbounds.1 (by exact_mod_cast hprime.pos.le)
  have h := mul_le_mul_of_nonneg_left
    (earlyTailTest_le hA hlo.le hbounds.2) hn
  simpa only [mul_one, one_mul, mul_comm, mul_left_comm, mul_assoc] using h

/-- The actual prime window has linear mass for a genuine bounded prefix-error witness. -/
theorem earlyPrimeMass_ge {A C : ℝ} (hA : 0 ≤ A) (hAC : 320 * C ≤ A)
    (hC : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C) :
    A/160 ≤ primeLogWindow (A/80) (A/40) (fun _ => 1) := by
  have hl := (abs_le.mp (hC (A/80) (by linarith))).2
  have hu := (abs_le.mp (hC (A/40) (by linarith))).1
  have hw := primeError_difference_window (A/40) (A/80)
  linarith

/-- An actual initial block is exponentially negative; the complete signed readout is not bounded here. -/
theorem earlyPrimeBlock_le {A C : ℝ} (hA : 160 ≤ A) (hAC : 320 * C ≤ A)
    (hC : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C) :
    earlyPrimeBlock A ≤ -(7/2560 : ℝ)*A*Real.exp (A/160) := by
  have hm := earlyPrimeMass_ge (show 0 ≤ A by linarith) hAC hC
  have hb := earlyPrimeBlock_le_mass hA
  have h := mul_le_mul_of_nonpos_left hm
    (mul_nonpos_of_nonpos_of_nonneg (by norm_num) (Real.exp_pos _).le)
  calc
    _ ≤ -(7/16 : ℝ)*Real.exp (A/160)*(A/160) := hb.trans h
    _ = _ := by ring

/-- This eventual witness concerns only the disclosed actual negative block. -/
theorem earlyPrimeBlock_eventual_bound :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      earlyPrimeBlock A ≤ -(7/2560 : ℝ)*A*Real.exp (A/160) := by
  obtain ⟨C, _, hC⟩ := primeLogError_uniformly_bounded
  refine ⟨max 160 (320 * C), ?_, ?_⟩
  · exact (by norm_num : (1 : ℝ) ≤ 160).trans (le_max_left _ _)
  · intro A hA
    exact earlyPrimeBlock_le ((le_max_left _ _).trans hA) ((le_max_right _ _).trans hA) hC

/-- Closed-prefix subtraction partitions the whole actual prime inventory, including equalities. -/
theorem primeSum_eq_early_add_complement {A : ℝ} (hA : 1 ≤ A) :
    primeLogSum (2 * A) (pairedTailTest A) = earlyPrimeBlock A + complementaryPrimeBlocks A := by
  have hz := primeLogSum_abel 0 (le_refl 0) (pairedTailTest A) (pairedTailTest_contDiff hA)
  simp only [primeLogPrefix_zero, mul_zero, intervalIntegral.integral_same, sub_zero] at hz
  unfold earlyPrimeBlock complementaryPrimeBlocks primeLogWindow
  rw [hz]
  ring

/-- Any complete tail witness must repay the negative block and the full independent drift. -/
theorem complementary_repayment_of_tail (h : PairedPrimeQuadratureTailLowerBound) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A - C +
        (7/2560 : ℝ)*A*Real.exp (A/160) ≤ complementaryPrimeBlocks A := by
  obtain ⟨C, hC0, R, hR, htail⟩ := h
  obtain ⟨S, hS, hblock⟩ := earlyPrimeBlock_eventual_bound
  refine ⟨C, hC0, max R S, hR.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hRA := (le_max_left _ _).trans hA
  have hSA := (le_max_right _ _).trans hA
  have ht := htail A hRA
  rw [primeSum_eq_early_add_complement (hR.trans hRA)] at ht
  linarith [hblock A hSA]

end FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock
