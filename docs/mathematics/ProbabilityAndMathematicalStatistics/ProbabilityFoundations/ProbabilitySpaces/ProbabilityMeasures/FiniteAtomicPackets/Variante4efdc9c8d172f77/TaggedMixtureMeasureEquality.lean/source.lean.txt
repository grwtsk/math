/-
TaggedMixtureMeasureEquality — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
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

/- Whole measure mixture and exact tagged-direct-sum equality remain together and import only the public same-source atomic component. Preserve dependent Outcomes/Fintype, outer normalized weights, all nonnegative sum/ofReal side conditions and exact measure-extensionality proof. Original declaration namespaces and historical providers remain exact; only explicit public same-source component imports are added. Whole-file documentation below may describe companion material. No kernel replay or runtime/platform implementation is claimed. -/

import BitMatrix.Spectral.FinitePacket
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
import Mathlib.MeasureTheory.Measure.Dirac
import Mathlib.Tactic

import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ProbabilityMeasures.FiniteAtomicPackets.Variante4efdc9c8d172f77.AtomicProbabilityMeasure

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
