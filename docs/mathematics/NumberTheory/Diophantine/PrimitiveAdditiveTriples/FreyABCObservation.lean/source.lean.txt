/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's normalized projective heights and real logarithms
(Apache-2.0). Formalization assistance: OpenAI.

Exact reformulation of the canonical ABC target through the SAME marked Frey
observation. Neither side of an equivalence below is supplied as a proof.
Constants remain uniform over all primitive positive additive triples. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyRationalHeight
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- The actual projective height of the source triple agrees with the frozen
positive-integral normalization used by the canonical ABC target. -/
theorem PrimitiveAdditiveTriple.frey_triple_height_eq_source
    (t : PrimitiveAdditiveTriple) :
    Height.logHeight ![(t.a : ℚ), (t.b : ℚ), (t.c : ℚ)] = t.logHeight := by
  simpa only [PrimitiveAdditiveTriple.logHeight] using t.frey_triple_logHeight

/-- Exact source-height comparisons, with the decoding cost retained. -/
theorem PrimitiveAdditiveTriple.frey_observation_source_height_bounds
    (t : PrimitiveAdditiveTriple) :
    Height.logHeight (t.freyAffinePortEval freyXRationalSection) ≤ t.logHeight ∧
      t.logHeight ≤ Height.logHeight (t.freyAffinePortEval freyXRationalSection) +
        Real.log 2 := by
  simpa only [t.frey_triple_height_eq_source] using t.frey_decoding_logHeight_bounds

/-- Observation-height supplier at one epsilon. The same constant must work
for every source triple. This is a proposition, not an available supplier. -/
def FreyObservationLogBound (ε : ℝ) : Prop :=
  ∃ C : ℝ, ∀ t : PrimitiveAdditiveTriple,
    Height.logHeight (t.freyAffinePortEval freyXRationalSection) ≤
      C + (1 + ε) * t.logRadical

/-- The canonical logarithmic ABC bound implies the observation bound
without changing its additive constant. -/
theorem freyObservationLogBound_of_abcLogBound (ε : ℝ)
    (h : ABCLogBound ε) : FreyObservationLogBound ε := by
  obtain ⟨C, hC⟩ := h
  exact ⟨C, fun t => t.frey_observation_source_height_bounds.1.trans (hC t)⟩

/-- The reverse direction costs precisely the retained decoding allowance
log(2). No observation bound is fabricated from coefficient recovery. -/
theorem abcLogBound_of_freyObservationLogBound (ε : ℝ)
    (h : FreyObservationLogBound ε) : ABCLogBound ε := by
  obtain ⟨C, hC⟩ := h
  refine ⟨C + Real.log 2, fun t => ?_⟩
  have hdecode := t.frey_observation_source_height_bounds.2
  have hobs := hC t
  linarith

/-- Fixed-epsilon equivalence with the canonical logarithmic ABC bound. -/
theorem abcLogBound_iff_freyObservationLogBound (ε : ℝ) :
    ABCLogBound ε ↔ FreyObservationLogBound ε :=
  ⟨freyObservationLogBound_of_abcLogBound ε,
    abcLogBound_of_freyObservationLogBound ε⟩

/-- Same epsilon, same radical, same primitive triples: the multiplicative
canonical target is equivalent to the observation supplier. -/
theorem abcBound_iff_freyObservationLogBound (ε : ℝ) :
    ABCBound ε ↔ FreyObservationLogBound ε :=
  (abcBound_iff_logBound ε).trans (abcLogBound_iff_freyObservationLogBound ε)

/-- Full quantifier-preserving reformulation, not a proof of ABC. The order
is forall positive epsilon, exists a constant, forall source triples. -/
theorem abcConjecture_iff_freyObservationLogBound :
    ABCConjecture ↔ ∀ ε : ℝ, 0 < ε → FreyObservationLogBound ε := by
  simp only [ABCConjecture, abcBound_iff_freyObservationLogBound]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
