/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib and GRWTSK sources retain their licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcSourceFidelity
import GRWTSK.Analysis.Geometry.FiniteFourArcCohomology
import GRWTSK.Analysis.Geometry.FiniteFourArcTrace
import GRWTSK.Analysis.Geometry.FiniteFourArcReturnMetric
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Finite closed quadratic geometry with a genuine boundary-return edge

One source provides exact geometric seams, consistent labels and
multiplicity, an acyclic first-three-edge descent, and a separately
constructed fourth contact. The geometric return is nonidentity, though
the full-cycle operator is identity. Explicit finite trace and positive
coordinate-metric claims are kept separate from signed arithmetic forms.

No global planar embedding, hyperbolic geodesic, analytic determinant
limit, zeta realization or RH conclusion is derived.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

open GRWTSK.Analysis.Geometry.QuadraticBezierContact
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
open GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace
open GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn

universe u

/-- One genuinely nonconstant source has all four value/first-jet seams
and preserves its declared identity and multiplicity along each edge. -/
theorem labeled_geometric_cycle (Label : Type u) (L : LabeledLoop Label) :
    (∀ i : Fin 4,
      (patch i).eval 1 = (patch (next i)).eval 0) ∧
    (∀ i : Fin 4,
      (patch i).velocity 1 = (patch (next i)).velocity 0) ∧
    (∀ i : Fin 4, (contact i).Positive) ∧
    (∀ i : Fin 4,
      L.arcSourceLabel (next i) = L.arcSourceLabel i) ∧
    (∀ i : Fin 4,
      L.arcMultiplicity (next i) = L.arcMultiplicity i) ∧
    (patch 0).start ≠ (patch 0).finish := by
  exact ⟨endpoint_join, velocity_join, contact_positive,
    L.arcSourceLabel_preserved, L.arcMultiplicity_preserved,
    patch_zero_nonconstant⟩

/-- The first three contacts satisfy the canonical strict-rank DAG
predicate, while the fourth creates an actual geometric closed path. -/
theorem geometric_descent_return_separation :
    Acyclic descentEdge ∧
      ¬ Acyclic contactEdge ∧
      ¬ descentEdge 3 0 ∧
      (patch 3).eval 1 = (patch 0).eval 0 ∧
      (patch 3).velocity 1 = (patch 0).velocity 0 := by
  exact ⟨descentEdge_acyclic, contactEdge_not_acyclic,
    geometric_return_not_descent, final_to_initial,
    final_to_initial_velocity⟩

/-- The independently selected fourth-phase boundary map is nonidentity,
despite identity monodromy after traversing the complete closed geometry. -/
theorem geometric_return_certificate :
    geometricSystem.boundaryReturn ≠
        (LinearMap.id : Plane →ₗ[ℝ] Plane) ∧
      geometricSystem.returnOperator =
        (LinearMap.id : Plane →ₗ[ℝ] Plane) ∧
      geometricSystem.boundaryReturn (vertex 3) = vertex 0 := by
  exact ⟨geometricSystem_boundaryReturn_ne_id,
    geometricSystem_return_operator, geometric_boundary_closes⟩

/-- Both the three-step descent and the actual closing return preserve
the *positive* source-coordinate squared-error pairing exactly. -/
theorem geometric_return_error_certificate (x y : Plane) :
    pointDot (geometricSystem.boundaryReturn (x - y))
      (geometricSystem.boundaryReturn (x - y)) =
        pointDot (x - y) (x - y) ∧
    pointDot (threePhaseDescent (x - y))
      (threePhaseDescent (x - y)) =
        pointDot (x - y) (x - y) := by
  exact ⟨geometricSystem_boundary_return_isometry _ _,
    threePhaseDescent_pointDot _ _⟩

/-- Signed one/two-step trace moments differ from full-cycle identity
trace; no positive-Hodge or arithmetic-spectral inference is allowed. -/
theorem geometric_finite_trace_certificate (n : ℕ) :
    closedWalkMoment quarterComplex 1 = 0 ∧
      closedWalkMoment quarterComplex 2 = (-2 : ℂ) ∧
      closedWalkMoment geometricSystem.complexReturnOperator n = (2 : ℂ) :=
  ⟨onePhase_closedWalkMoment, twoPhase_closedWalkMoment,
    fourPhase_closedWalkMoment n⟩

/-- The full closed contact graph carries a nonexact one-cochain and
cannot be treated as an acyclic telescoping descent alone. -/
theorem geometric_cycle_nonexact :
    ¬ ∃ f : FourCochain,
      edgeDifference f = (fun _ : Fin 4 => (1 : ℝ)) :=
  constant_one_not_edgeDifference

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
