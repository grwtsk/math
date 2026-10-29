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

variable {Outcomes : I → Type*} [∀ i, Fintype (Outcomes i)]

/-- The measure-level mixture of packet atomic measures. -/
def mixedAtomicMeasure (outer : BitMatrix.Probability.SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i)) : Measure ℝ :=
  ∑ i, ENNReal.ofReal (outer i) • (packets i).atomicMeasure

/-- The atomic measure of the tagged direct-sum packet equals the weighted
sum of the component atomic measures. -/
theorem atomicMeasure_mix
    (outer : BitMatrix.Probability.SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i)) :
    (mix outer packets).atomicMeasure = mixedAtomicMeasure outer packets := by
  ext event measurable
  rw [atomicMeasure_event, spectralEventProbability_mix]
  unfold mixedAtomicMeasure
  rw [Measure.finsetSum_apply]
  rw [ENNReal.ofReal_sum_of_nonneg]
  · apply Finset.sum_congr rfl
    intro i _
    rw [Measure.smul_apply, atomicMeasure_event]
    change ENNReal.ofReal
        (outer i * (packets i).spectralEventProbability event) =
      ENNReal.ofReal (outer i) *
        ENNReal.ofReal ((packets i).spectralEventProbability event)
    exact ENNReal.ofReal_mul (outer.nonnegative i)
  · intro i _
    exact mul_nonneg (outer.nonnegative i)
      ((packets i).spectralEventProbability_nonnegative event)

end

end BitMatrix.Spectral.FinitePacket
