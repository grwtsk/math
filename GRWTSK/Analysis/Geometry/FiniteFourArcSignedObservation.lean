/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK and Mathlib results retain upstream licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcGeometricSpectralPort
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Signed readout on the genuine four-contact positive Hodge graph

A signed alternating observation is *not* a positive quadratic form.
The finite contact graph energy nonetheless gives an exact arithmetic
sum-of-squares domination of its squared readout, with sharp factor 1.

Crucially the signed alternating readout vanishes on the entire
source-derived two-coordinate geometric eigenmode subspace. It cannot
serve as an injective proxy for that source, despite the injectivity
of the complete contact-coordinate embedding.

This is not the classical signed Hermite/screw or Weil form; any
transport to that object requires a separate exact source identity.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- Selected signed linear combination of all four contact readings. -/
def alternatingReadout (f : FourCochain) : ℝ :=
  f 0 - f 1 + f 2 - f 3

/-- Exact three-channel square decomposition of the complete positive
four-contact graph Hodge energy. No cancellation is assumed or omitted. -/
theorem cycle_energy_three_squares (f : FourCochain) :
    fourDot f (cycleLaplacian f) =
      (f 0 - f 2) ^ 2 +
      (f 1 - f 3) ^ 2 +
      (alternatingReadout f) ^ 2 := by
  rw [cycleLaplacian_energy]
  simp [fourDot, edgeDifference, alternatingReadout,
    Fin.sum_univ_four, next] <;> ring

/-- The squared signed observation is bounded by the positive actual
contact-Hodge energy. The numerical coefficient is exactly one. -/
theorem alternatingReadout_sq_le_energy (f : FourCochain) :
    (alternatingReadout f) ^ 2 ≤ fourDot f (cycleLaplacian f) := by
  rw [cycle_energy_three_squares]
  nlinarith [sq_nonneg (f 0 - f 2), sq_nonneg (f 1 - f 3)]

/-- Complete signed error budget when the *same* contact carrier records
both exact and observed vertex values. -/
theorem alternatingReadout_error_sq_le (exact observed : FourCochain) :
    (alternatingReadout (observed - exact)) ^ 2 ≤
      fourDot (observed - exact)
        (cycleLaplacian (observed - exact)) :=
  alternatingReadout_sq_le_energy (observed - exact)

/-- Alternating edge/vertex mode saturating the coefficient-one bound. -/
def alternatingMode : FourCochain :=
  fun i => if i = 0 ∨ i = 2 then 1 else -1

theorem alternatingMode_readout :
    alternatingReadout alternatingMode = 4 := by
  norm_num [alternatingReadout, alternatingMode]

theorem alternatingMode_energy :
    fourDot alternatingMode (cycleLaplacian alternatingMode) = 16 := by
  rw [cycle_energy_three_squares]
  norm_num [alternatingReadout, alternatingMode]

/-- No smaller universal coefficient than 1 can be used in this
specific signed-readout-square versus contact-energy inequality. -/
theorem alternatingReadout_bound_sharp {c : ℝ} (hc : c < 1) :
    ¬ ∀ f : FourCochain,
      (alternatingReadout f) ^ 2 ≤
        c * fourDot f (cycleLaplacian f) := by
  intro h
  have hh := h alternatingMode
  rw [alternatingMode_readout, alternatingMode_energy] at hh
  nlinarith

/-- A constant common-mode perturbation is completely invisible to this
signed readout; energy control alone must not imply full recovery. -/
theorem alternatingReadout_add_constant (f : FourCochain) (c : ℝ) :
    alternatingReadout (fun i => f i + c) =
      alternatingReadout f := by
  simp [alternatingReadout]
  ring

/-- The entire true two-coordinate geometric source sector is
annihilated by this signed alternating observation. This is a
source-faithful *information-loss obstruction*, not a positivity proof. -/
theorem alternatingReadout_sourceToContact_zero (p : Plane) :
    alternatingReadout (sourceToContact p) = 0 := by
  simp [alternatingReadout, sourceToContact_coordinates]
  ring

/-- A concrete nonzero true geometric source cannot be reconstructed
from the alternating readout, because its value is still zero. -/
theorem exists_nonzero_source_with_zero_signed_readout :
    ∃ p : Plane, p ≠ 0 ∧
      alternatingReadout (sourceToContact p) = 0 := by
  refine ⟨vertex 0, ?_, alternatingReadout_sourceToContact_zero _⟩
  intro hz
  have hh := congrFun hz (0 : Fin 2)
  norm_num [vertex, xy] at hh

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
