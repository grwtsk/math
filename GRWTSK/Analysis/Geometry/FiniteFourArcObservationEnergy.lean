/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK and Mathlib source retain their upstream licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcCompleteObservation
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Four-contact Parseval identities and complete observation residual

For the actual four-contact source geometry, the independent mode
coordinates have exact squared positive-norm weights:
  vertex norm² = 2 * geometric norm² + 4 * mean² + alt²/4
  Hodge energy = 4 * geometric norm² + alt².

The second equation has no harmonic mean term; it cannot detect a
constant common-mode error. The first equation retains that loss,
and yields a transparent complete-measurement error formula when
all four scalar coordinates are included.

These are finite positive identities, not an unidentified signed
Hermite/Weil form or an infinite Hilbert-space limit.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- Exact positive Parseval decomposition of all four vertex readings. -/
theorem completeObservation_positive_parseval (f : FourCochain) :
    fourDot f f =
      2 * pointDot (contactToSource f) (contactToSource f) +
        4 * (centeredMean f) ^ 2 +
        (1 / 4 : ℝ) * (alternatingReadout f) ^ 2 := by
  simp [fourDot, pointDot, contactToSource_coordinates,
    centeredMean, alternatingReadout, Fin.sum_univ_four] <;> ring

/-- Contact Hodge energy contains exactly the two geometric modes and
the alternating mode, but never the constant mean. -/
theorem completeObservation_hodge_parseval (f : FourCochain) :
    fourDot f (cycleLaplacian f) =
      4 * pointDot (contactToSource f) (contactToSource f) +
        (alternatingReadout f) ^ 2 := by
  rw [cycle_energy_three_squares]
  simp [pointDot, contactToSource_coordinates] <;> ring

/-- Explicit difference of two independent geometric, harmonic and
alternating observation records. -/
def observationDifference
    (a b : CompleteContactObservation) : CompleteContactObservation where
  geometry := a.geometry - b.geometry
  harmonicMean := a.harmonicMean - b.harmonicMean
  alternating := a.alternating - b.alternating

/-- Reconstruction is exactly additive over independently supplied
mode differences; no common-mode or alternating term is dropped. -/
theorem reconstructObservation_sub
    (a b : CompleteContactObservation) :
    reconstructObservation a - reconstructObservation b =
      reconstructObservation (observationDifference a b) := by
  funext i
  fin_cases i <;>
    simp [reconstructObservation, observationDifference,
      Pi.sub_apply] <;> ring

/-- Positive energy identity for the independently supplied complete
observation record. The harmonic and alternating weights are fixed. -/
theorem reconstructObservation_positive_energy
    (a : CompleteContactObservation) :
    fourDot (reconstructObservation a) (reconstructObservation a) =
      2 * pointDot a.geometry a.geometry +
        4 * a.harmonicMean ^ 2 +
        (1 / 4 : ℝ) * a.alternating ^ 2 := by
  simp [fourDot, pointDot, reconstructObservation,
    Fin.sum_univ_four] <;> ring

/-- Exact full reconstruction-error identity for two arbitrary typed
observation records. This includes all four scalar error channels. -/
theorem completeObservation_error_parseval
    (a b : CompleteContactObservation) :
    fourDot (reconstructObservation a - reconstructObservation b)
        (reconstructObservation a - reconstructObservation b) =
      2 * pointDot (a.geometry - b.geometry)
          (a.geometry - b.geometry) +
        4 * (a.harmonicMean - b.harmonicMean) ^ 2 +
        (1 / 4 : ℝ) * (a.alternating - b.alternating) ^ 2 := by
  simp only [reconstructObservation_sub]
  exact reconstructObservation_positive_energy (observationDifference a b)

/-- For an actual contact source f and a supplied observation record,
the complete state residual has the exact three-part squared budget
relative to the true mode observations. -/
theorem completeObservation_source_error
    (f : FourCochain) (observed : CompleteContactObservation) :
    fourDot (reconstructObservation observed - f)
        (reconstructObservation observed - f) =
      2 * pointDot (observed.geometry - contactToSource f)
          (observed.geometry - contactToSource f) +
        4 * (observed.harmonicMean - centeredMean f) ^ 2 +
        (1 / 4 : ℝ) * (observed.alternating - alternatingReadout f) ^ 2 := by
  have h := completeObservation_error_parseval observed (completeObservation f)
  simpa only [reconstruct_completeObservation, completeObservation] using h

/-- Missing mean data cannot be controlled by the positive Hodge
energy alone: a nonzero constant field has zero Hodge energy. -/
theorem nonzero_zero_hodge_energy :
    ∃ f : FourCochain, f ≠ 0 ∧
      fourDot f (cycleLaplacian f) = 0 := by
  refine ⟨(fun _ : Fin 4 => (1 : ℝ)), ?_, ?_⟩
  · intro h
    have hh := congrFun h (0 : Fin 4)
    norm_num at hh
  · rw [cycleLaplacian_constant_zero]
    simp [fourDot]

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
