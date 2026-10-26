/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib and existing GRWTSK work retain their licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcHodge
import Mathlib

set_option autoImplicit false

/-!
# Sharp positive spectral-gap inequality on four actual contact edges

The positive Hodge form of the closed four-arc graph has a constant
harmonic zero mode. Subtracting its exact mean produces the orthogonal
(nonharmonic) component. A direct finite polynomial identity yields
  E(f) = 2 * Var(f) + (1/2) * alternating(f)^2.
Thus the smallest positive spectral-gap constant is exactly two in
these coordinates. An explicit nonconstant real mode attains the bound.

This result does not assert a strict full-space gap, a Yang-Mills mass
gap, a signed Weil form inequality or zeta spectral identification.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- Harmonic constant coordinate extracted from the actual finite vertex
configuration, with normalization by the exact four-site cardinality. -/
def centeredMean (f : FourCochain) : ℝ :=
  (f 0 + f 1 + f 2 + f 3) / 4

/-- Positive square-length after deleting the constant harmonic mode. -/
def centeredEnergy (f : FourCochain) : ℝ :=
  ∑ i, (f i - centeredMean f) ^ 2

theorem centeredEnergy_nonneg (f : FourCochain) :
    0 ≤ centeredEnergy f := by
  unfold centeredEnergy
  exact Finset.sum_nonneg (fun i _ => sq_nonneg _)

/-- Explicit exact remainder to the four-cycle Poincare gap estimate. -/
theorem cycleLaplacian_energy_split (f : FourCochain) :
    fourDot f (cycleLaplacian f) =
      2 * centeredEnergy f +
        (1 / 2 : ℝ) * (f 0 - f 1 + f 2 - f 3) ^ 2 := by
  rw [cycleLaplacian_energy]
  simp [fourDot, edgeDifference, centeredEnergy,
    centeredMean, Fin.sum_univ_four, next] <;> ring

/-- Coercivity with the sharp positive gap 2 on the nonharmonic component.
The zero-mean projection must be retained; whole-space strict damping
is not a consequence. -/
theorem cycleLaplacian_gap_two (f : FourCochain) :
    2 * centeredEnergy f ≤ fourDot f (cycleLaplacian f) := by
  rw [cycleLaplacian_energy_split]
  nlinarith [sq_nonneg (f 0 - f 1 + f 2 - f 3)]

/-- A nonconstant mode, orthogonal to constants, with eigenvalue two. -/
def gapAttainingMode : FourCochain :=
  fun i => if i = 0 then 1 else if i = 2 then -1 else 0

theorem gapAttainingMode_centeredEnergy :
    centeredEnergy gapAttainingMode = 2 := by
  norm_num [centeredEnergy, centeredMean, gapAttainingMode,
    Fin.sum_univ_four]

theorem gapAttainingMode_laplacianEnergy :
    fourDot gapAttainingMode (cycleLaplacian gapAttainingMode) = 4 := by
  rw [cycleLaplacian_energy_split, gapAttainingMode_centeredEnergy]
  norm_num [gapAttainingMode]

/-- No larger universal real coefficient can replace two in this
precise mean-centered inequality, as witnessed by the concrete mode. -/
theorem cycleLaplacian_gap_two_sharp {γ : ℝ} (hγ : 2 < γ) :
    ¬ ∀ f : FourCochain,
      γ * centeredEnergy f ≤ fourDot f (cycleLaplacian f) := by
  intro h
  have ht := h gapAttainingMode
  rw [gapAttainingMode_centeredEnergy,
    gapAttainingMode_laplacianEnergy] at ht
  nlinarith

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
