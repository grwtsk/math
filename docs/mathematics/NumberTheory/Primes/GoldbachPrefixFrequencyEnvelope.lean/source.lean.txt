/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Frequency-dependent Goldbach prefix error envelopes

The prefix supplier stays unchanged. Its chord loss is evaluated at each
frequency, and the quadratic residual retains the actual model amplitude.
The squared discrepancy is charged, including at a vanishing model.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachPrefixFrequencyEnvelope

open scoped BigOperators Real
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy
open GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer

noncomputable section

/-- Exact frequency loss of finite Abel transfer; it is periodic in `beta`. -/
def goldbachPrefixChordLoss (N : ℕ) (β : ℝ) : ℝ :=
  1 + (N : ℝ) * ‖1 - unitCharacter 1 β‖

/-- A reduced prefix bound receives its actual chord loss. Non-reduced
residues keep the exact finite prime mass, with no Abel amplification. -/
def goldbachPrefixFrequencyResidueBudget
    (N q r : ℕ) (B : ℕ → ℕ → ℝ) (β : ℝ) : ℝ :=
  if q.Coprime r then B q r * goldbachPrefixChordLoss N β
  else goldbachResiduePrimeLogTotal N q r

/-- Total pointwise discrepancy bound, before rational phase cancellation. -/
def goldbachPrefixFrequencyError
    (N q : ℕ) (B : ℕ → ℕ → ℝ) (β : ℝ) : ℝ :=
  ∑ r ∈ Finset.range q, goldbachPrefixFrequencyResidueBudget N q r B β

/-- Choose the better of two proved residual bounds at each frequency. -/
def goldbachPrefixFrequencyEnvelope
    (N a q : ℕ) (B : ℕ → ℕ → ℝ) (β : ℝ) : ℝ :=
  let E := goldbachPrefixFrequencyError N q B β
  min (E * (goldbachPrimeLogTotal N + (N + 1 : ℝ)))
    (E * (2 * ‖goldbachProgressionExponentialModel N a q β‖ + E))

/-- Retaining the normalized coefficient is an exact norm factorization. -/
theorem norm_goldbachProgressionExponentialModel_eq_amplitude
    (N a q : ℕ) (β : ℝ) :
    ‖goldbachProgressionExponentialModel N a q β‖ =
      ‖goldbachNormalizedRamanujanCoefficient a q‖ *
        ‖goldbachIntegerExponentialKernel N β‖ := by
  exact norm_mul _ _

/-- Residual bound in terms of the actual model amplitude and discrepancy.
The quadratic term cannot be dropped when the model vanishes. -/
theorem norm_goldbachCenteredProgressionCircleResidual_le_model
    (N a q : ℕ) (β : ℝ) :
    ‖goldbachCenteredProgressionCircleResidual N a q β‖ ≤
      ‖goldbachProgressionExponentialDiscrepancy N a q β‖ *
        (2 * ‖goldbachProgressionExponentialModel N a q β‖ +
          ‖goldbachProgressionExponentialDiscrepancy N a q β‖) := by
  have hsum :
      ‖goldbachResidueClassExponentialKernel N a q β‖ +
          ‖goldbachProgressionExponentialModel N a q β‖ ≤
        2 * ‖goldbachProgressionExponentialModel N a q β‖ +
          ‖goldbachProgressionExponentialDiscrepancy N a q β‖ := by
    rw [goldbachResidueClassExponentialKernel_eq_progression_add_discrepancy]
    linarith [norm_add_le (goldbachProgressionExponentialModel N a q β)
      (goldbachProgressionExponentialDiscrepancy N a q β)]
  exact (norm_goldbachCenteredProgressionCircleResidual_le N a q β).trans
    (mul_le_mul_of_nonneg_left hsum (norm_nonneg _))

/-- A supplied discrepancy bound can replace both occurrences of its norm. -/
theorem norm_goldbachCenteredProgressionCircleResidual_le_model_of_bound
    {N a q : ℕ} {β E : ℝ}
    (hE : ‖goldbachProgressionExponentialDiscrepancy N a q β‖ ≤ E) :
    ‖goldbachCenteredProgressionCircleResidual N a q β‖ ≤
      E * (2 * ‖goldbachProgressionExponentialModel N a q β‖ + E) := by
  have hnonneg : 0 ≤ E := (norm_nonneg _).trans hE
  exact (norm_goldbachCenteredProgressionCircleResidual_le_model N a q β).trans
    (mul_le_mul hE (add_le_add_right hE _)
      (by positivity) hnonneg)

/-- The actual residue discrepancy is controlled at every frequency, using
all supplied reduced prefixes and exact non-reduced prime corrections. -/
theorem norm_goldbachResidueDiscrepancy_le_frequency_budget
    {N q r : ℕ} (B : ℕ → ℕ → ℝ)
    (hp : q.Coprime r → 0 ≤ B q r ∧
      ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (β : ℝ) :
    ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
      goldbachPrefixFrequencyResidueBudget N q r B β := by
  by_cases hc : q.Coprime r
  · obtain ⟨hB, hprefix⟩ := hp hc
    rw [goldbachPrefixFrequencyResidueBudget, if_pos hc]
    exact norm_goldbachResidueProgressionDiscrepancy_le_of_prefix hB hprefix β
  · rw [goldbachPrefixFrequencyResidueBudget, if_neg hc]
    exact norm_goldbachResidueProgressionDiscrepancy_le_of_not_coprime N q r hc β

/-- Frequency-dependent residue bounds supply the exact exponential error. -/
theorem norm_goldbachProgressionDiscrepancy_le_frequency_error
    {N a q : ℕ} (B : ℕ → ℕ → ℝ)
    (hp : ∀ r ∈ Finset.range q, q.Coprime r → 0 ≤ B q r ∧
      ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (β : ℝ) :
    ‖goldbachProgressionExponentialDiscrepancy N a q β‖ ≤
      goldbachPrefixFrequencyError N q B β := by
  apply norm_goldbachProgressionExponentialDiscrepancy_le
    (residueError := fun r => goldbachPrefixFrequencyResidueBudget N q r B β)
  intro r hr
  exact norm_goldbachResidueDiscrepancy_le_frequency_budget B (hp r hr) β

/-- The envelope bounds the actual quadratic residual. No cancellation
between residues or arcs is assumed in this transfer. -/
theorem norm_goldbachCenteredResidual_le_frequency_envelope
    {N a q : ℕ} (hq : 0 < q) (B : ℕ → ℕ → ℝ)
    (hp : ∀ r ∈ Finset.range q, q.Coprime r → 0 ≤ B q r ∧
      ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (β : ℝ) :
    ‖goldbachCenteredProgressionCircleResidual N a q β‖ ≤
      goldbachPrefixFrequencyEnvelope N a q B β := by
  unfold goldbachPrefixFrequencyEnvelope
  apply le_min
  · exact norm_goldbachCenteredProgressionCircleResidual_le_of_residue hq
      (fun r hr => norm_goldbachResidueDiscrepancy_le_frequency_budget B (hp r hr) β)
  · exact norm_goldbachCenteredProgressionCircleResidual_le_model_of_bound
      (norm_goldbachProgressionDiscrepancy_le_frequency_error B hp β)

/-- The chord loss respects integral period shifts without choosing a lift. -/
theorem goldbachPrefixChordLoss_add_int (N : ℕ) (β : ℝ) (j : ℤ) :
    goldbachPrefixChordLoss N (β + (j : ℝ)) = goldbachPrefixChordLoss N β := by
  simp only [goldbachPrefixChordLoss, unitCharacter_add_int]

/-- Both residual envelopes retain exact integral-period invariance. -/
theorem goldbachPrefixFrequencyEnvelope_add_int
    (N a q : ℕ) (B : ℕ → ℕ → ℝ) (β : ℝ) (j : ℤ) :
    goldbachPrefixFrequencyEnvelope N a q B (β + (j : ℝ)) =
      goldbachPrefixFrequencyEnvelope N a q B β := by
  simp only [goldbachPrefixFrequencyEnvelope, goldbachPrefixFrequencyError,
    goldbachPrefixFrequencyResidueBudget, goldbachPrefixChordLoss_add_int,
    goldbachProgressionExponentialModel, goldbachIntegerExponentialKernel,
    unitCharacter_add_int]

@[continuity, fun_prop]
theorem continuous_goldbachPrefixChordLoss (N : ℕ) :
    Continuous (goldbachPrefixChordLoss N) := by
  unfold goldbachPrefixChordLoss
  fun_prop

@[continuity, fun_prop]
theorem continuous_goldbachPrefixFrequencyResidueBudget
    (N q r : ℕ) (B : ℕ → ℕ → ℝ) :
    Continuous (goldbachPrefixFrequencyResidueBudget N q r B) := by
  unfold goldbachPrefixFrequencyResidueBudget
  split_ifs <;> fun_prop

@[continuity, fun_prop]
theorem continuous_goldbachPrefixFrequencyError
    (N q : ℕ) (B : ℕ → ℕ → ℝ) :
    Continuous (goldbachPrefixFrequencyError N q B) := by
  unfold goldbachPrefixFrequencyError
  fun_prop

@[continuity, fun_prop]
theorem continuous_goldbachPrefixFrequencyEnvelope
    (N a q : ℕ) (B : ℕ → ℕ → ℝ) :
    Continuous (goldbachPrefixFrequencyEnvelope N a q B) := by
  unfold goldbachPrefixFrequencyEnvelope goldbachProgressionExponentialModel
    goldbachIntegerExponentialKernel
  fun_prop

end
end GRWTSK.NumberTheory.Primes.GoldbachPrefixFrequencyEnvelope
