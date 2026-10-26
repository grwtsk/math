/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Imported Mathlib/GRWTSK work retains original authorship and licenses. -/
import GRWTSK.Analysis.Geometry.FiniteQuadraticContactGraph
import GRWTSK.Algebra.LinearAlgebra.FiniteOneEdgeHodge

set_option autoImplicit false
noncomputable section

/-!
# A real quadratic contact gives a harmonic one-edge section

A positive de Casteljau contact provides two *actual* endpoint evaluations
which agree at the shared source point. For each chosen real coordinate the
resulting 0-cochain has zero coboundary and hence zero finite Hodge
Laplacian and energy. Both patches retain the exact same source label and
multiplicity.

This statement is specific to the two-patch/one-contact incidence graph.
It does not establish arbitrary sheaf gluing, a planar drawing, or a
positive spectral gap on the full cochain space.
-/

namespace GRWTSK.Analysis.Geometry.FiniteQuadraticContactGraph

open GRWTSK.Analysis.Geometry.QuadraticBezierContact
open GRWTSK.Algebra.LinearAlgebra.FiniteOneEdgeHodge

universe u v
variable {ι : Type u} {SourceLabel : Type v}

namespace SplitGraph

/-- The two actual one-sided evaluations at the unique directed contact,
in the same coordinate of the common source. -/
def seamValues (G : SplitGraph ι SourceLabel) (coordinate : ι) : Cochain0 :=
  fun i =>
    if i = 0 then (G.patch 0).eval 1 coordinate
    else (G.patch 1).eval 0 coordinate

theorem seamValues_start (G : SplitGraph ι SourceLabel) (coordinate : ι) :
    G.seamValues coordinate 0 = (G.patch 0).eval 1 coordinate := rfl

theorem seamValues_finish (G : SplitGraph ι SourceLabel) (coordinate : ι) :
    G.seamValues coordinate 1 = (G.patch 1).eval 0 coordinate := rfl

/-- The coboundary vanishes because of an actual source-derived Bezier
contact equality, not because of a stored abstract `compatible` field. -/
theorem seamValues_coboundary_zero
    (G : SplitGraph ι SourceLabel) (coordinate : ι) :
    coboundary (G.seamValues coordinate) = 0 := by
  rw [coboundary_apply, G.seamValues_finish, G.seamValues_start]
  exact sub_eq_zero.mpr (congrFun G.seam_matches_patches coordinate).symm

/-- The concrete quadratic contact gives a truly harmonic finite
zero-cochain, in the positive one-edge Hodge theory. -/
theorem seamValues_laplacian_zero
    (G : SplitGraph ι SourceLabel) (coordinate : ι) :
    laplacian (G.seamValues coordinate) = 0 :=
  (harmonic_iff_coboundary_zero (G.seamValues coordinate)).2
    (G.seamValues_coboundary_zero coordinate)

/-- Consequently the actual seam has zero *positive* Hodge energy.
No indefinite Hermite or arithmetic signed-form positivity is inferred. -/
theorem seamValues_energy_zero
    (G : SplitGraph ι SourceLabel) (coordinate : ι) :
    pairing (G.seamValues coordinate)
      (laplacian (G.seamValues coordinate)) = 0 := by
  rw [G.seamValues_laplacian_zero coordinate]
  simp [pairing]

/-- At the seam, the declared common jet is exactly the original first jet,
and both parameter scales are positive, but not generally equal. -/
theorem seam_has_positive_scales
    (G : SplitGraph ι SourceLabel) :
    0 < G.seam.leftScale ∧ 0 < G.seam.rightScale :=
  G.seam_positive

end SplitGraph

end GRWTSK.Analysis.Geometry.FiniteQuadraticContactGraph
