/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK and Mathlib results retain their upstream licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcSignedObservation
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Complete positive measurement-to-source residual for four contacts

The source-derived geometric-to-contact map has a left inverse.
Independent errors in all four contact readings produce an *exact*
source error through that inverse, rather than an assumed abstract
reconstruction-budget field.

A finite square-completion identity proves
  ||analysis(e)||² <= (1/2) ||e||²
in the declared positive coordinate pairings. The coefficient is
sharp on the true geometric source image. Mean/alternating observation
channels are retained as separate losses; this is not an indefinite
Hermite/Weil inequality or a complete arithmetic screw reconstruction.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- Exact coordinate formula for analyzing four arbitrary readings.
Only the differences of the two opposite vertex pairs contribute to
the underlying two-dimensional geometric source. -/
theorem contactToSource_coordinates (e : FourCochain) :
    contactToSource e =
      fun j : Fin 2 =>
        if j = 0 then (e 0 - e 2) / 2
        else (e 1 - e 3) / 2 := by
  funext j
  fin_cases j <;>
    norm_num [contactToSource, vertex, xy,
      Fin.sum_univ_four] <;> ring

/-- Exact scalar energy identity decomposing any measurement error into
the two retained geometric modes and the two unrepresented pair sums.
All four original errors remain present. -/
theorem contactToSource_error_pythagorean (e : FourCochain) :
    fourDot e e =
      2 * pointDot (contactToSource e) (contactToSource e) +
        (1 / 2 : ℝ) * ((e 0 + e 2) ^ 2 + (e 1 + e 3) ^ 2) := by
  simp [fourDot, pointDot, contactToSource_coordinates,
    Fin.sum_univ_four] <;> ring

/-- Operator-norm-type bound in the actual positive source and contact
pairings, with constant one half for **squared** source error. -/
theorem contactToSource_error_sq_le (e : FourCochain) :
    pointDot (contactToSource e) (contactToSource e) ≤
      (1 / 2 : ℝ) * fourDot e e := by
  have h := contactToSource_error_pythagorean e
  nlinarith [sq_nonneg (e 0 + e 2), sq_nonneg (e 1 + e 3)]

/-- The source-data recovery error is an exact linear-map residual:
analysis(observation+error) - source = analysis(error). -/
theorem source_reconstruction_residual (p : Plane) (e : FourCochain) :
    contactToSource (sourceToContact p + e) - p =
      contactToSource e := by
  rw [map_add, contactToSource_sourceToContact]
  simp

/-- Genuine quantitative geometric source reconstruction, derived from
the *same* four readings used by the actual source map. -/
theorem source_reconstruction_error_sq_le (p : Plane) (e : FourCochain) :
    pointDot
        (contactToSource (sourceToContact p + e) - p)
        (contactToSource (sourceToContact p + e) - p) ≤
      (1 / 2 : ℝ) * fourDot e e := by
  rw [source_reconstruction_residual]
  exact contactToSource_error_sq_le e

/-- The coefficient one half is attained for each genuine geometric
source perturbation: no smaller universal squared-norm constant is
valid for the actual contact analysis map. -/
theorem contactToSource_error_sq_sharp (p : Plane) :
    pointDot (contactToSource (sourceToContact p))
        (contactToSource (sourceToContact p)) =
      (1 / 2 : ℝ) *
        fourDot (sourceToContact p) (sourceToContact p) := by
  rw [contactToSource_sourceToContact, sourceToContact_pairing]
  ring

/-- The common-mode pair sums have no effect on the source coordinate
analysis, but may be nonzero. Their effect must not be mistaken for
the exact source's zero measurement error. -/
theorem contactToSource_constant_zero (c : ℝ) :
    contactToSource (fun _ : Fin 4 => c) = 0 := by
  rw [contactToSource_coordinates]
  funext j
  fin_cases j <;> simp

/-- A source-faithful finite error packet retains exact residual,
quantitative reconstruction, and the separately signed readout budget. -/
theorem full_contact_error_certificate (p : Plane) (e : FourCochain) :
    contactToSource (sourceToContact p + e) - p = contactToSource e ∧
      pointDot
          (contactToSource (sourceToContact p + e) - p)
          (contactToSource (sourceToContact p + e) - p) ≤
        (1 / 2 : ℝ) * fourDot e e ∧
      (alternatingReadout e) ^ 2 ≤
        fourDot e (cycleLaplacian e) := by
  exact ⟨source_reconstruction_residual p e,
    source_reconstruction_error_sq_le p e,
    alternatingReadout_sq_le_energy e⟩

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
