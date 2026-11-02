/- Copyright (c) 2026 grwtsk contributors. MIT.
   Source-level formalization assistance: OpenAI ChatGPT.
   SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
   EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
   TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MeasureAndIntegration.GraphHeatVariationBudget
import GRWTSK.MeasureAndIntegration.CERNWaveformSignedGram
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Sparse, source-bound signed Gram transport error budget

The ORIGINAL ordered off-diagonal source packet comes from the existing
CERNWaveformSignedGram.orderedCross, not a substituted positive Gram.
For every original source x, transported observation y, local residual
e=x-y and arbitrary SIGNED real two-index kernel B, the original cross
is the observed cross plus BOTH mixed orientations and the error-error
term. A weighted edgewise bound retains exact support, kernel signs,
cutoffs, multiplicities and both ordered orientations until the
triangle-inequality step. Symmetry and positivity of B are NOT needed.

The exact remainder and its upper budget are useful for LIGO, CERN and
ATLAS demonstrations and for any future actual Möbius response kernel.
No bound on the original arithmetic kernel or on all observation scales
is asserted by the finite triangle inequality alone.
-/

namespace GRWTSK.MeasureAndIntegration.GraphSignedGramEdgeBudget

open GRWTSK.MeasureAndIntegration.UniversalWaveformInput
open GRWTSK.MeasureAndIntegration.CERNWaveformSignedGram
open GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReconstruction
open GRWTSK.MeasureAndIntegration.GraphHeatVariationBudget
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState

universe u
variable {Index : Type u} [DecidableEq Index]

/-- The ACTUAL original source-minus-observation signed error. -/
def localError (source observed : UniversalInput Index ℝ) (i : Index) : ℝ :=
  source.source i - observed.source i

/-- Finite original-index and signed-kernel aware error allowance. -/
def edgewiseGramBudget
    (S : Finset Index) (source observed : UniversalInput Index ℝ)
    (kernel : Index → Index → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S,
    if i ≠ j then
      |kernel i j| *
        (|localError source observed i| * |observed.source j| +
         |observed.source i| * |localError source observed j| +
         |localError source observed i| * |localError source observed j|)
    else 0

private theorem abs_three_terms_mul_bound (a b c k : ℝ) :
    |(a + b + c) * k| ≤ |k| * (|a| + |b| + |c|) := by
  have h : |a + b + c| ≤ |a| + |b| + |c| := by
    calc
      |a + b + c| ≤ |a + b| + |c| := abs_add_le _ _
      _ ≤ |a| + |b| + |c| := by
        have hab := abs_add_le a b
        linarith
  calc
    |(a + b + c) * k| = |a + b + c| * |k| := abs_mul _ _
    _ ≤ (|a| + |b| + |c|) * |k| :=
      mul_le_mul_of_nonneg_right h (abs_nonneg _)
    _ = |k| * (|a| + |b| + |c|) := by ring

/-- Main reusable quantitative advancement: exact original signed
cross packet residual bounded by its ORIGINAL ordered-edge support
without inventing an operator norm or replacing the source kernel. -/
theorem signedResidual_abs_le_edgewiseGramBudget
    (S : Finset Index) (source observed : UniversalInput Index ℝ)
    (kernel : Index → Index → ℝ) :
    |signedResidual S source observed kernel| ≤
      edgewiseGramBudget S source observed kernel := by
  classical
  rw [signedResidual_complete_mixed_expansion]
  unfold edgewiseGramBudget
  calc
    |∑ i ∈ S, ∑ j ∈ S,
      if i ≠ j then
        ((source.source i - observed.source i) * observed.source j +
         observed.source i * (source.source j - observed.source j) +
         (source.source i - observed.source i) *
             (source.source j - observed.source j)) * kernel i j
      else 0| ≤
      ∑ i ∈ S, |∑ j ∈ S,
        if i ≠ j then
          ((source.source i - observed.source i) * observed.source j +
           observed.source i * (source.source j - observed.source j) +
           (source.source i - observed.source i) *
               (source.source j - observed.source j)) * kernel i j
        else 0| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ S, ∑ j ∈ S,
        |if i ≠ j then
          ((source.source i - observed.source i) * observed.source j +
           observed.source i * (source.source j - observed.source j) +
           (source.source i - observed.source i) *
               (source.source j - observed.source j)) * kernel i j
        else 0| := by
          exact Finset.sum_le_sum (fun i _ => Finset.abs_sum_le_sum_abs _ _)
    _ ≤ ∑ i ∈ S, ∑ j ∈ S,
        if i ≠ j then
          |kernel i j| *
            (|localError source observed i| * |observed.source j| +
             |observed.source i| * |localError source observed j| +
             |localError source observed i| * |localError source observed j|)
        else 0 := by
          apply Finset.sum_le_sum
          intro i _
          apply Finset.sum_le_sum
          intro j _
          by_cases hij : i ≠ j
          · simp only [if_pos hij]
            have h := abs_three_terms_mul_bound
              ((source.source i - observed.source i) * observed.source j)
              (observed.source i * (source.source j - observed.source j))
              ((source.source i - observed.source i) *
               (source.source j - observed.source j))
              (kernel i j)
            simpa only [localError, abs_mul] using h
          · simp [hij]

/-- Any colored/diffused observation is still the SAME original signed
source packet plus its complete local signed error allowance. The
bound is conditional only on a caller-supplied number B >= the
computed source-derived edgewise budget, never on a new research axiom. -/
theorem signedCross_le_observed_add_budget
    (S : Finset Index) (source observed : UniversalInput Index ℝ)
    (kernel : Index → Index → ℝ) :
    orderedCross S source kernel ≤
      orderedCross S observed kernel +
        edgewiseGramBudget S source observed kernel := by
  have hs := signedResidual_abs_le_edgewiseGramBudget S source observed kernel
  have hle := le_trans (le_abs_self (signedResidual S source observed kernel)) hs
  rw [orderedCross_source_return S source observed kernel]
  linarith

section ColorHeat

variable [Fintype Index]

/-- The original source and the SAME diffused signed error from the
existing reconstruction module. This is a change of observation, not
a change of original arithmetic or detector source. -/
def coloredObservedInput
    (K : HeatKernel Index) (source observed : UniversalInput Index ℝ) :
    UniversalInput Index ℝ :=
  UniversalInput.ofFunction (colorObservation K source.source observed.source)

/-- A direct reusable source inequality for every colored real-waveform
experiment: the original full ordered Gram is bounded by the COLOR
observation PLUS the full source-aware weighted error budget. -/
theorem colored_signedCross_le_observed_add_budget
    (K : HeatKernel Index)
    (source observed : UniversalInput Index ℝ)
    (kernel : Index → Index → ℝ) :
    orderedCross Finset.univ source kernel ≤
      orderedCross Finset.univ (coloredObservedInput K source observed) kernel +
        edgewiseGramBudget Finset.univ source
          (coloredObservedInput K source observed) kernel :=
  signedCross_le_observed_add_budget
    Finset.univ source (coloredObservedInput K source observed) kernel

end ColorHeat

end GRWTSK.MeasureAndIntegration.GraphSignedGramEdgeBudget
