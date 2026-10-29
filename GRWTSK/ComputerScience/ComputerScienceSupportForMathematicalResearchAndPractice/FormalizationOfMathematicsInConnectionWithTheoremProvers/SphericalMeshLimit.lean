import Folder.Geometry.SphericalProjection

/-!
# Folder.Geometry.SphericalMeshLimit

Radiation role: research-boundary
BinaryMatrix spine: This module records L-to-infinity mesh convergence contracts.
Ontology: spherical_mesh_refinement
Pivot role: geometry
Zero typology: none
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace Geometry

/-- Finite vertex-sample convergence, not bijection. -/
structure SphericalVertexSampleConvergence where
  sourceMesh : SimplicialMesh
  targetSphere : SphereTarget
  meshRatioBounded : Prop
  fillDistanceTendsToZero : Prop
  separationControlled : Prop

/-- Conditional `L → ∞` spherical limit package. -/
structure SphericalMeshLimitContract where
  meshFamily : Nat → SimplicialMesh
  targetSphere : SphereTarget
  projections : ∀ _L : Nat, SphericalCarrierProjection
  vertexConvergence : ∀ _L : Nat, SphericalVertexSampleConvergence
  limitLabel : String

theorem spherical_vertex_mesh_ratio_bounded_if_supplied
    (C : SphericalVertexSampleConvergence)
    (h : C.meshRatioBounded) :
    C.meshRatioBounded :=
  h

theorem spherical_vertex_fill_distance_tends_to_zero_if_supplied
    (C : SphericalVertexSampleConvergence)
    (h : C.fillDistanceTendsToZero) :
    C.fillDistanceTendsToZero :=
  h

theorem spherical_vertex_separation_controlled_if_supplied
    (C : SphericalVertexSampleConvergence)
    (h : C.separationControlled) :
    C.separationControlled :=
  h

theorem spherical_limit_has_projection_at_level
    (C : SphericalMeshLimitContract)
    (n : Nat) :
    ∃ P : SphericalCarrierProjection, C.projections n = P :=
  ⟨C.projections n, rfl⟩

theorem spherical_limit_has_vertex_convergence_at_level
    (C : SphericalMeshLimitContract)
    (n : Nat) :
    ∃ V : SphericalVertexSampleConvergence,
      C.vertexConvergence n = V :=
  ⟨C.vertexConvergence n, rfl⟩

end Geometry
end Folder
