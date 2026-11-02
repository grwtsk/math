/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical research and source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MeasureAndIntegration.CERNOpenDataWaveform
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Complete signed finite Gram residual for arbitrary waveform sources

The existing universal source admits arbitrary Time → Amplitude functions.
A finite REAL amplitude observation can be compared to its ORIGINAL input
without losing a mixed term, including across an event-indexed CERN dataset.

This does not construct a detector timestamp, spatial tube, physical
operator, Möbius coefficient, Kakeya estimate, or RH growth bound.
The numerical source measurements are kept in CERNOpenDataWaveform.
-/

namespace GRWTSK.MeasureAndIntegration.CERNWaveformSignedGram

open GRWTSK.MeasureAndIntegration.UniversalWaveformInput
open GRWTSK.MeasureAndIntegration.CERNOpenDataWaveform

universe u
variable {Index : Type u} [DecidableEq Index]

/-- Actual finite ordered off-diagonal Gram of a user-supplied
event-indexed real waveform and arbitrary source-specified kernel.
Both (i,j) and (j,i) occur, without symmetry assumptions. -/
def orderedCross
    (S : Finset Index) (source : UniversalInput Index ℝ)
    (K : Index → Index → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S,
    if i ≠ j then source.source i * source.source j * K i j else 0

/-- The COMPLETE signed source-minus-observation packet.
No quantified source-error or kernel bound is invented. -/
def signedResidual
    (S : Finset Index)
    (original observed : UniversalInput Index ℝ)
    (K : Index → Index → ℝ) : ℝ :=
  orderedCross S original K - orderedCross S observed K

/-- Original source = observed ordered packet + complete residual. -/
theorem orderedCross_source_return
    (S : Finset Index)
    (original observed : UniversalInput Index ℝ)
    (K : Index → Index → ℝ) :
    orderedCross S original K =
      orderedCross S observed K + signedResidual S original observed K := by
  unfold signedResidual
  ring

/-- Both ordered mixed orientations, plus the error-error packet,
are exactly retained for EVERY original event and kernel coefficient. -/
theorem signedResidual_complete_mixed_expansion
    (S : Finset Index)
    (original observed : UniversalInput Index ℝ)
    (K : Index → Index → ℝ) :
    signedResidual S original observed K =
      ∑ i ∈ S, ∑ j ∈ S,
        if i ≠ j then
          ((original.source i - observed.source i) * observed.source j
             + observed.source i * (original.source j - observed.source j)
             + (original.source i - observed.source i) *
                 (original.source j - observed.source j)) * K i j
        else 0 := by
  classical
  unfold signedResidual orderedCross
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  by_cases hij : i ≠ j
  · simp only [if_pos hij]
    ring
  · simp [hij]

/-- CERN source specialization: no fake clock, no invented geometry.
Every event mass remains attached to the ORIGINAL complete event record
in CERNOpenDataWaveform.eventInput, independently of this scalar port. -/
def cernMassOrderedCross
    (K : EventIndex → EventIndex → ℝ) : ℝ :=
  orderedCross Finset.univ massInput K

/-- A lossy CERN mass-channel observation must pay its complete
finite signed residual; it cannot claim a zero source defect. -/
theorem cernMassOrderedCross_source_return
    (observed : UniversalInput EventIndex ℝ)
    (K : EventIndex → EventIndex → ℝ) :
    cernMassOrderedCross K =
      orderedCross Finset.univ observed K +
        signedResidual Finset.univ massInput observed K :=
  orderedCross_source_return Finset.univ massInput observed K

end GRWTSK.MeasureAndIntegration.CERNWaveformSignedGram
