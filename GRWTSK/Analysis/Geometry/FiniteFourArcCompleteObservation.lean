/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK and Mathlib source retain their upstream licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcSourceError
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Complete observable decomposition of the finite four-contact carrier

The actual geometric vertex observations recover exactly two of the
four real contact coordinates (the eigenvalue-two sector). Two further
*independent* scalar channels are needed to represent a general
four-contact field: its mean (harmonic zero mode) and alternating
readout (eigenvalue-four mode).

An explicit inverse reconstructs every contact value from these four
scalar coordinates. Separate counterexamples show that dropping the
mean or alternating channel destroys injectivity, even when the
geometric source readings are kept.

These are finite graph observables, not unverified data about the zeta
divisor, canonical signed Hermite form, or global spectral positivity.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- Four scalar observation coordinates, grouped by mathematical role,
not by a copied arbitrary four-number list. -/
structure CompleteContactObservation where
  geometry : Plane
  harmonicMean : ℝ
  alternating : ℝ

/-- Read the original four-contact field using the actual source
projection, constant mode and independently signed alternating mode. -/
def completeObservation (f : FourCochain) : CompleteContactObservation where
  geometry := contactToSource f
  harmonicMean := centeredMean f
  alternating := alternatingReadout f

/-- Exact inverse observation map. The signed alternating coordinate is
independent of the mean and the two geometric source coordinates. -/
def reconstructObservation (o : CompleteContactObservation) : FourCochain :=
  fun i =>
    if i = 0 then o.harmonicMean + o.alternating / 4 + o.geometry 0
    else if i = 1 then o.harmonicMean - o.alternating / 4 + o.geometry 1
    else if i = 2 then o.harmonicMean + o.alternating / 4 - o.geometry 0
    else o.harmonicMean - o.alternating / 4 - o.geometry 1

/-- Reconstruct all four original contact values, with no assumed
positive Gram, source injectivity or spectral approximation field. -/
theorem reconstruct_completeObservation (f : FourCochain) :
    reconstructObservation (completeObservation f) = f := by
  funext i
  fin_cases i <;>
    norm_num [reconstructObservation, completeObservation,
      contactToSource_coordinates, centeredMean,
      alternatingReadout] <;> ring

/-- The total observation record determines every finite cochain, but
the individual geometric or signed components do not. -/
theorem completeObservation_injective :
    Function.Injective completeObservation := by
  intro f g h
  have hr := congrArg reconstructObservation h
  simpa only [reconstruct_completeObservation] using hr

/-- The alternating mode is a genuine nonzero contact field. -/
theorem alternatingMode_ne_zero :
    alternatingMode ≠ (0 : FourCochain) := by
  intro h
  have hh := congrFun h (0 : Fin 4)
  norm_num [alternatingMode] at hh

/-- The alternating field is invisible to the two geometric-coordinate
readouts, even though these readouts faithfully encode their own image. -/
theorem alternatingMode_geometric_zero :
    contactToSource alternatingMode = 0 := by
  rw [contactToSource_coordinates]
  funext j
  fin_cases j <;> norm_num [alternatingMode]

theorem alternatingMode_mean_zero :
    centeredMean alternatingMode = 0 := by
  norm_num [centeredMean, alternatingMode]

/-- Removing the independently alternating channel leaves two distinct
contact states identical even after the harmonic mean is retained. -/
theorem missing_alternating_channel_obstruction :
    ∃ f : FourCochain,
      f ≠ 0 ∧
      contactToSource f = contactToSource (0 : FourCochain) ∧
      centeredMean f = centeredMean (0 : FourCochain) := by
  refine ⟨alternatingMode, alternatingMode_ne_zero, ?_, ?_⟩
  · simpa using alternatingMode_geometric_zero
  · simpa [centeredMean] using alternatingMode_mean_zero

/-- A nonzero harmonic constant field is likewise invisible to both
geometric coordinate readings and the alternating signed channel. -/
theorem missing_harmonic_channel_obstruction :
    ∃ f : FourCochain,
      f ≠ 0 ∧
      contactToSource f = contactToSource (0 : FourCochain) ∧
      alternatingReadout f = alternatingReadout (0 : FourCochain) := by
  refine ⟨(fun _ : Fin 4 => (1 : ℝ)), ?_, ?_, ?_⟩
  · intro h
    have hh := congrFun h (0 : Fin 4)
    norm_num at hh
  · simpa using contactToSource_constant_zero 1
  · norm_num [alternatingReadout]

/-- This is the precise finite information-balance theorem:
geometric, harmonic and alternating coordinates together are complete,
and either missing additional independent scalar channel makes the
reduced observation noninjective. -/
theorem finite_complete_observation_certificate :
    Function.Injective completeObservation ∧
      (∃ f : FourCochain,
        f ≠ 0 ∧
        contactToSource f = contactToSource (0 : FourCochain) ∧
        centeredMean f = centeredMean (0 : FourCochain)) ∧
      (∃ f : FourCochain,
        f ≠ 0 ∧
        contactToSource f = contactToSource (0 : FourCochain) ∧
        alternatingReadout f = alternatingReadout (0 : FourCochain)) := by
  exact ⟨completeObservation_injective,
    missing_alternating_channel_obstruction,
    missing_harmonic_channel_obstruction⟩

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
