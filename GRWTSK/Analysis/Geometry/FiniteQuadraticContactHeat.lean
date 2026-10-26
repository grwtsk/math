/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Imported Mathlib/GRWTSK work retains original authorship and licenses. -/
import GRWTSK.Analysis.Geometry.FiniteQuadraticContactHodge
import GRWTSK.Algebra.LinearAlgebra.FiniteOneEdgeHeat

set_option autoImplicit false
noncomputable section

/-!
# Bezier contact: exact heat-compatible seam and measurement defects

The one actual de Casteljau contact supplies a harmonic source section.
Independent measurement errors on its left/right endpoint evaluations
produce an *exact* signed coboundary error `errorRight-errorLeft`.
The finite heat operator contracts that mismatch by exp(-2t) and its
positive gradient energy by exp(-4t). This does not identify an
indefinite screw quadratic form or a zeta-zero source.
-/

namespace GRWTSK.Analysis.Geometry.FiniteQuadraticContactGraph

open GRWTSK.Analysis.Geometry.QuadraticBezierContact
open GRWTSK.Algebra.LinearAlgebra.FiniteOneEdgeHodge

universe u v
variable {ι : Type u} {SourceLabel : Type v}

namespace SplitGraph

/-- Exact heat leaves the source-true common contact unchanged. -/
theorem heat_seamValues_fixed
    (G : SplitGraph ι SourceLabel) (coordinate : ι) (t : ℝ) :
    heat t (G.seamValues coordinate) = G.seamValues coordinate :=
  heat_fixed_of_harmonic t (G.seamValues coordinate)
    (G.seamValues_laplacian_zero coordinate)

/-- Two independent scalar measurements at the true source contact.
The errors remain separated; their values need not be equal. -/
def measuredSeam (G : SplitGraph ι SourceLabel)
    (coordinate : ι) (errorLeft errorRight : ℝ) : Cochain0 :=
  fun i =>
    G.seamValues coordinate i +
      if i = 0 then errorLeft else errorRight

theorem measuredSeam_left (G : SplitGraph ι SourceLabel)
    (coordinate : ι) (errorLeft errorRight : ℝ) :
    G.measuredSeam coordinate errorLeft errorRight 0 =
      G.seamValues coordinate 0 + errorLeft := rfl

theorem measuredSeam_right (G : SplitGraph ι SourceLabel)
    (coordinate : ι) (errorLeft errorRight : ℝ) :
    G.measuredSeam coordinate errorLeft errorRight 1 =
      G.seamValues coordinate 1 + errorRight := rfl

/-- The complete contact residual is the *difference* of the two
independent errors; the underlying exact seam contributes zero. -/
theorem measuredSeam_coboundary
    (G : SplitGraph ι SourceLabel) (coordinate : ι)
    (errorLeft errorRight : ℝ) :
    coboundary (G.measuredSeam coordinate errorLeft errorRight) =
      errorRight - errorLeft := by
  rw [coboundary_apply, G.measuredSeam_right, G.measuredSeam_left]
  have hsource : G.seamValues coordinate 1 = G.seamValues coordinate 0 := by
    exact (sub_eq_zero.mp (by
      simpa only [coboundary_apply] using
        G.seamValues_coboundary_zero coordinate))
  rw [hsource]
  ring

/-- The true finite heat equation on the actual contact residual. -/
theorem measuredSeam_heat_coboundary
    (G : SplitGraph ι SourceLabel) (coordinate : ι)
    (errorLeft errorRight t : ℝ) :
    coboundary (heat t (G.measuredSeam coordinate errorLeft errorRight)) =
      Real.exp (-2 * t) * (errorRight - errorLeft) := by
  rw [coboundary_heat, G.measuredSeam_coboundary]

/-- Exact positive gradient-energy decay. The two independent measurement
errors are not represented by a spurious source or spectral term. -/
theorem measuredSeam_heat_energy
    (G : SplitGraph ι SourceLabel) (coordinate : ι)
    (errorLeft errorRight t : ℝ) :
    pairing (heat t (G.measuredSeam coordinate errorLeft errorRight))
        (laplacian (heat t (G.measuredSeam coordinate errorLeft errorRight))) =
      (Real.exp (-2 * t)) ^ 2 *
        (errorRight - errorLeft) ^ 2 := by
  rw [laplacian_energy]
  rw [G.measuredSeam_heat_coboundary]
  rw [coboundary_apply] at *
  ring

/-- Exactly matched observation errors leave the seam harmonic; an
apparently zero residual is not evidence of zero common-mode error. -/
theorem measuredSeam_harmonic_of_equal_errors
    (G : SplitGraph ι SourceLabel) (coordinate : ι)
    (error : ℝ) :
    laplacian (G.measuredSeam coordinate error error) = 0 := by
  apply (harmonic_iff_coboundary_zero _).2
  rw [G.measuredSeam_coboundary]
  ring

end SplitGraph

end GRWTSK.Analysis.Geometry.FiniteQuadraticContactGraph
