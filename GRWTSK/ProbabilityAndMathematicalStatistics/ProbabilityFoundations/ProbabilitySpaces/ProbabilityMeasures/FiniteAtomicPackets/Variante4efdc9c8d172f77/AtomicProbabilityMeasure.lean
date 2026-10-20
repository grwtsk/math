/-
AtomicProbabilityMeasure — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: R.A. Jacob Martone.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6
Organized SHA-256: 5f1165c15f205b3a3f0db6dac454060e7533b682c3f688e006acd4ebeaa428f7
PMD: 510.8.010.010.020 probability measures (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Weighted finite Dirac construction, every-event ENNReal evaluation, exact real event-functional equality, total-mass-one proof and probability-measure instance stay whole. Actual normalized nonnegative weights construct this measure; no arbitrary named measure property or spectral-operator construction is substituted. Original declaration namespaces and historical providers remain exact; only explicit public same-source component imports are added. Whole-file documentation below may describe companion material. No kernel replay or runtime/platform implementation is claimed. -/

import BitMatrix.Spectral.FinitePacket
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
import Mathlib.MeasureTheory.Measure.Dirac
import Mathlib.Tactic

/-!
# Atomic probability measures for finite spectral packets

The outcome-tagged packet remains the source representation.  This module
pushes its finite mass to the real line as a weighted sum of Dirac measures.
Equal spectral values may therefore aggregate in the real measure without
being identified in the packet itself.
-/

namespace BitMatrix.Spectral.FinitePacket

noncomputable section

open scoped BigOperators ENNReal
open MeasureTheory

variable {I Outcome : Type*} [Fintype I] [Fintype Outcome]

/-- The atomic real spectral measure of a finite packet. -/
def atomicMeasure (packet : FinitePacket Outcome) : Measure ℝ :=
  ∑ outcome,
    ENNReal.ofReal (packet.probability outcome) •
      Measure.dirac (packet.spectralValue outcome)

/-- Evaluation of the atomic measure as a finite ENNReal sum. -/
theorem atomicMeasure_apply (packet : FinitePacket Outcome) (event : Set ℝ) :
    packet.atomicMeasure event =
      ∑ outcome,
        ENNReal.ofReal (packet.probability outcome) *
          event.indicator (1 : ℝ → ℝ≥0∞) (packet.spectralValue outcome) := by
  classical
  simp [atomicMeasure, Measure.finsetSum_apply, Measure.smul_apply,
    Measure.dirac_apply]

/-- The atomic measure evaluates every real event exactly as the packet's
finite real event functional. -/
theorem atomicMeasure_event (packet : FinitePacket Outcome) (event : Set ℝ) :
    packet.atomicMeasure event =
      ENNReal.ofReal (packet.spectralEventProbability event) := by
  classical
  rw [atomicMeasure_apply]
  unfold spectralEventProbability spectralExpectation expectation
  rw [ENNReal.ofReal_sum_of_nonneg]
  · apply Finset.sum_congr rfl
    intro outcome _
    by_cases member : packet.spectralValue outcome ∈ event
    · simp [Set.indicator, member]
    · simp [Set.indicator, member]
  · intro outcome _
    exact mul_nonneg (packet.probability.nonnegative outcome) (by
      by_cases member : packet.spectralValue outcome ∈ event <;>
        simp [Set.indicator, member])

/-- The real atomic spectral measure has total mass one. -/
@[simp]
theorem atomicMeasure_univ (packet : FinitePacket Outcome) :
    packet.atomicMeasure Set.univ = 1 := by
  rw [atomicMeasure_event, spectralEventProbability_univ]
  simp

/-- Every finite packet constructs an actual probability measure on `ℝ`. -/
instance atomicMeasure_isProbabilityMeasure (packet : FinitePacket Outcome) :
    IsProbabilityMeasure packet.atomicMeasure :=
  ⟨packet.atomicMeasure_univ⟩

end

end BitMatrix.Spectral.FinitePacket
