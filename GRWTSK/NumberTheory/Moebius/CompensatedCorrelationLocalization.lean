/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CompensatedCorrelationCriterion

/-!
# Localization of the actual compensated correlation

The corrected correlation C + D is monotone: its increments are the actual
nonnegative logarithmic cell masses. Hence a later checkpoint controls every
earlier horizon with only the already finite diagonal allowance. No separate
within-block arithmetic bound is required.

Summable one-sided bounds on signed checkpoint increments suffice. Those
bounds are explicit unresolved hypotheses; neither absolute correlation
summability nor a vanishing terminal square is assumed or proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

/-- Reconstruct the corrected correlation from actual nonnegative cell masses. -/
theorem sampleCorrectedCorrelation_eq_cellSum {σ : ℝ} (hσ : 0 < σ) (N : ℕ) :
    sampleCompensatedCorrelation σ N + sampleWeightedDiagonal σ N =
      (σ / 4) * ∑ k ∈ Finset.range N, sampleCellMass σ k := by
  rw [sampleCellMass_partial_sum_eq_compensated_add_diagonal hσ.ne']
  field_simp [hσ.ne'] <;> ring

/-- An unconditional order constraint on the signed arithmetic source. -/
theorem sampleCorrectedCorrelation_monotone {σ : ℝ} (hσ : 0 < σ) :
    Monotone (fun N =>
      sampleCompensatedCorrelation σ N + sampleWeightedDiagonal σ N) := by
  intro a b hab
  rw [sampleCorrectedCorrelation_eq_cellSum hσ a,
    sampleCorrectedCorrelation_eq_cellSum hσ b]
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono hab)
  intro k _ _
  exact sampleCellMass_nonneg hσ.ne' k

/-- Keep the exact diagonal difference before replacing it by a global budget. -/
theorem sampleCompensatedCorrelation_backward_bound {σ : ℝ} (hσ : 0 < σ)
    {a b : ℕ} (hab : a ≤ b) :
    sampleCompensatedCorrelation σ a ≤ sampleCompensatedCorrelation σ b +
      (sampleWeightedDiagonal σ b - sampleWeightedDiagonal σ a) := by
  have h := sampleCorrectedCorrelation_monotone hσ hab
  linarith

/-- Later checkpoint control pays every earlier horizon with a finite allowance. -/
theorem sampleCompensatedCorrelation_le_later_add_budget {σ : ℝ} (hσ : 0 < σ)
    {a b : ℕ} (hab : a ≤ b) :
    sampleCompensatedCorrelation σ a ≤
      sampleCompensatedCorrelation σ b + sampleDiagonalBudget σ := by
  have h := sampleCompensatedCorrelation_backward_bound hσ hab
  have hd := sampleWeightedDiagonal_le_budget hσ b
  have ha := sampleWeightedDiagonal_nonneg σ a
  linarith

/-- Cofinality, not a finite list of computed checkpoints, is required. -/
theorem compensatedCorrelationBound_of_cofinal_checkpoints {σ K : ℝ}
    (hσ : 0 < σ) (hK : 0 ≤ K) (t : ℕ → ℕ)
    (hcofinal : ∀ N : ℕ, ∃ j : ℕ, N ≤ t j)
    (hcheck : ∀ j : ℕ, sampleCompensatedCorrelation σ (t j) ≤ K) :
    CompensatedCorrelationBound σ := by
  refine ⟨K + sampleDiagonalBudget σ,
    add_nonneg hK (sampleDiagonalBudget_nonneg σ), ?_⟩
  intro N
  obtain ⟨j, hj⟩ := hcofinal N
  exact (sampleCompensatedCorrelation_le_later_add_budget hσ hj).trans
    (add_le_add_right (hcheck j) _)

/-- A signed checkpoint block retains both boundary squares. This difference
is not an absolute-value correlation budget. -/
def sampleCheckpointIncrement (σ : ℝ) (t : ℕ → ℕ) (j : ℕ) : ℝ :=
  sampleCompensatedCorrelation σ (t (j + 1)) -
    sampleCompensatedCorrelation σ (t j)

/-- The two signed mixed prefixes and both terminal squares are retained.
For increasing checkpoints the prefix difference is the intervening block. -/
theorem sampleCheckpointIncrement_expansion (σ : ℝ) (t : ℕ → ℕ) (j : ℕ) :
    sampleCheckpointIncrement σ t j =
      2 * ((∑ k ∈ Finset.range (t (j + 1)),
        sampleResidue (k + 1) * (sampleResidue (k + 2) - sampleResidue (k + 1)) *
          Real.exp (-σ * Real.log (k + 2 : ℕ))) -
        (∑ k ∈ Finset.range (t j),
        sampleResidue (k + 1) * (sampleResidue (k + 2) - sampleResidue (k + 1)) *
          Real.exp (-σ * Real.log (k + 2 : ℕ)))) +
      sampleResidue (t j + 1) ^ 2 * Real.exp (-σ * Real.log (t j + 1 : ℕ)) -
      sampleResidue (t (j + 1) + 1) ^ 2 *
        Real.exp (-σ * Real.log (t (j + 1) + 1 : ℕ)) := by
  unfold sampleCheckpointIncrement sampleCompensatedCorrelation
  ring

/-- Finite signed increments telescope without any arithmetic hypothesis. -/
theorem sampleCheckpoint_telescope (σ : ℝ) (t : ℕ → ℕ) (J : ℕ) :
    sampleCompensatedCorrelation σ (t J) =
      sampleCompensatedCorrelation σ (t 0) +
        ∑ j ∈ Finset.range J, sampleCheckpointIncrement σ t j := by
  induction J with
  | zero => simp
  | succ J ih =>
      rw [Finset.sum_range_succ]
      simp only [sampleCheckpointIncrement] at ih ⊢
      linarith

/-- The only new arithmetic input is a summable nonnegative upper budget for
the complete signed block increments, uniformly over every checkpoint. -/
theorem compensatedCorrelationBound_of_summable_checkpoint_budget
    {σ : ℝ} (hσ : 0 < σ) (t : ℕ → ℕ)
    (hcofinal : ∀ N : ℕ, ∃ j : ℕ, N ≤ t j)
    (g : ℕ → ℝ) (hg : ∀ j : ℕ, 0 ≤ g j) (hgs : Summable g)
    (hblock : ∀ j : ℕ, sampleCheckpointIncrement σ t j ≤ g j) :
    CompensatedCorrelationBound σ := by
  let K : ℝ := max (sampleCompensatedCorrelation σ (t 0)) 0 + ∑' j : ℕ, g j
  have hsum : 0 ≤ ∑' j : ℕ, g j := tsum_nonneg hg
  have hK : 0 ≤ K := add_nonneg (le_max_right _ _) hsum
  apply compensatedCorrelationBound_of_cofinal_checkpoints hσ hK t hcofinal
  intro J
  rw [sampleCheckpoint_telescope]
  have hfinite : (∑ j ∈ Finset.range J, sampleCheckpointIncrement σ t j) ≤
      ∑ j ∈ Finset.range J, g j :=
    Finset.sum_le_sum (fun j _ => hblock j)
  have htotal : (∑ j ∈ Finset.range J, g j) ≤ ∑' j : ℕ, g j :=
    hgs.sum_le_tsum (Finset.range J) (fun j _ => hg j)
  exact add_le_add (le_max_left _ _) (hfinite.trans htotal)

/-- All checkpoint and budget data may depend on the positive damping. The
source-specific signed block inequalities remain assumptions at EVERY scale. -/
theorem riemannHypothesis_of_reciprocal_checkpoint_budgets
    (t : ℕ → ℕ → ℕ)
    (hcofinal : ∀ d N : ℕ, ∃ j : ℕ, N ≤ t d j)
    (g : ℕ → ℕ → ℝ)
    (hg : ∀ d j : ℕ, 0 ≤ g d j)
    (hgs : ∀ d : ℕ, Summable (g d))
    (hblock : ∀ d j : ℕ,
      sampleCheckpointIncrement (CofinalDamping.reciprocalDamping d) (t d) j ≤ g d j) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_reciprocal_compensatedCorrelation
  intro d
  exact compensatedCorrelationBound_of_summable_checkpoint_budget
    (CofinalDamping.reciprocalDamping_pos d) (t d) (hcofinal d)
    (g d) (hg d) (hgs d) (hblock d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
