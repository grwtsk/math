/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveDisjointBirth
import Mathlib.Tactic

/-!
# Finite reciprocal-telescope payment for source-adaptive birth smoothing

The local interval calculus and global disjoint-cell integration are named
explicit supplier propositions, NOT asserted facts. Their elementary arithmetic
consequence is the same uniform 1/12 budget at every finite dyadic inventory.
The source is still the exact signed Mobius pickup, with no replacement by an
unrelated positive residue variance. No RH or arithmetic moment claim is made.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveBirthEnvelope

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMWindowedBirthResidueRegularization
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth

/-- The exact local calculus envelope for birth n=k+1, with h_n=1/(n+1). -/
def birthEnvelopeTerm (k : ℕ) : ℝ :=
  1 / (3 * ((k : ℝ) + 1) * (((k : ℝ) + 2) ^ 3))

/-- Elementary reciprocal difference, with its zero-free real denominators. -/
private theorem reciprocal_difference (k : ℕ) :
    (1 / ((k : ℝ) + 1) - 1 / ((k : ℝ) + 2)) =
      1 / (((k : ℝ) + 1) * ((k : ℝ) + 2)) := by
  have h1 : (k : ℝ) + 1 ≠ 0 := by positivity
  have h2 : (k : ℝ) + 2 ≠ 0 := by positivity
  field_simp [h1, h2]
  ring

/-- Each calculus cell budget is dominated by one telescoping reciprocal. -/
theorem birthEnvelopeTerm_le_reciprocal (k : ℕ) :
    birthEnvelopeTerm k ≤
      (1 / 12 : ℝ) * (1 / ((k : ℝ) + 1) - 1 / ((k : ℝ) + 2)) := by
  let a : ℝ := (k : ℝ) + 1
  let b : ℝ := (k : ℝ) + 2
  have ha : 0 < a := by dsimp [a]; positivity
  have hb : 0 < b := by dsimp [b]; positivity
  have hb2 : (4 : ℝ) ≤ b ^ 2 := by
    dsimp [b]
    nlinarith [Nat.cast_nonneg k]
  have hprod : 0 ≤ (3 * a * b) * (b ^ 2 - 4) :=
    mul_nonneg (by positivity) (by linarith)
  have hden : 12 * a * b ≤ 3 * a * b ^ 3 := by
    nlinarith [hprod]
  have hdiv : 1 / (3 * a * b ^ 3) ≤ 1 / (12 * a * b) := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
    nlinarith [hden]
  calc
    birthEnvelopeTerm k = 1 / (3 * a * b ^ 3) := rfl
    _ ≤ 1 / (12 * a * b) := hdiv
    _ = (1 / 12 : ℝ) * (1 / ((k : ℝ) + 1) - 1 / ((k : ℝ) + 2)) := by
      rw [reciprocal_difference]
      dsimp [a, b]
      field_simp [show (k : ℝ) + 1 ≠ 0 by positivity,
        show (k : ℝ) + 2 ≠ 0 by positivity]
      ring

private theorem reciprocal_sum (N : ℕ) :
    (∑ k ∈ Finset.range N,
      (1 / ((k : ℝ) + 1) - 1 / ((k : ℝ) + 2))) =
      1 - 1 / ((N : ℝ) + 1) := by
  induction N with
  | zero => norm_num
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      push_cast
      ring

/-- Unconditional finite algebraic part of the universal 1/12 payment.
This does NOT by itself prove the analytic cell-energy majorization. -/
theorem finite_birthEnvelope_le_twelfth (N : ℕ) :
    (∑ k ∈ Finset.range N, birthEnvelopeTerm k) ≤ (1 : ℝ) / 12 := by
  calc
    (∑ k ∈ Finset.range N, birthEnvelopeTerm k) ≤
        ∑ k ∈ Finset.range N,
          (1 / 12 : ℝ) * (1 / ((k : ℝ) + 1) - 1 / ((k : ℝ) + 2)) := by
      apply Finset.sum_le_sum
      intro k hk
      exact birthEnvelopeTerm_le_reciprocal k
    _ = (1 / 12 : ℝ) * (1 - 1 / ((N : ℝ) + 1)) := by
      rw [← Finset.mul_sum, reciprocal_sum]
    _ ≤ (1 : ℝ) / 12 := by
      have h : 0 ≤ 1 / ((N : ℝ) + 1) := by positivity
      nlinarith

/-- Original signed atom error, at its original integer and causal birth. -/
def sourceBirthDefect (n : ℕ) (t : ℝ) : ℝ :=
  moebiusReal n * (pickupResponse n t - adaptiveResponse n t)

def sourceBirthDefectCellEnergy (n : ℕ) : ℝ :=
  ∫ t in sourceBirthTime n..sourceBirthTime (n + 1),
    (sourceBirthDefect n t) ^ 2

/-- Actual pointwise-response/integral estimate still requiring Lean calculus:
the cell n=k+1 is paid by h_n^3/(3n). -/
def AtomicBirthCellEnvelope : Prop :=
  ∀ k : ℕ, sourceBirthDefectCellEnergy (k + 1) ≤ birthEnvelopeTerm k

/-- Source-exact disjoint support and birth-cell integration remain a distinct
obligation; it is NOT inferred from the positive Fourier spatial average. -/
def OriginalErrorCellReturn : Prop :=
  ∀ j : ℕ, adaptiveErrorEnergy j ≤
    ∑ k ∈ Finset.range (2 ^ j), sourceBirthDefectCellEnergy (k + 1)

/-- Finite payment is proved from explicitly supplied local analytic bounds. -/
theorem finite_cell_energy_le_twelfth
    (hcell : AtomicBirthCellEnvelope) (N : ℕ) :
    (∑ k ∈ Finset.range N,
      sourceBirthDefectCellEnergy (k + 1)) ≤ (1 : ℝ) / 12 := by
  calc
    _ ≤ ∑ k ∈ Finset.range N, birthEnvelopeTerm k := by
      apply Finset.sum_le_sum
      intro k hk
      exact hcell k
    _ ≤ (1 : ℝ) / 12 := finite_birthEnvelope_le_twelfth N

/-- The exact missing global budget is reduced to two source-bound analytic
lemmas, with the reciprocal envelope fully paid arithmetically. -/
theorem adaptiveErrorBudget_of_cells
    (hcell : AtomicBirthCellEnvelope) (hreturn : OriginalErrorCellReturn) :
    AdaptiveErrorBudget := by
  intro j
  exact (hreturn j).trans
    (finite_cell_energy_le_twelfth hcell (2 ^ j))

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveBirthEnvelope
