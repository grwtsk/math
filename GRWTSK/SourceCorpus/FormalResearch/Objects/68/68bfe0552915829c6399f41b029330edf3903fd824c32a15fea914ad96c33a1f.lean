import Folder.Geometry.TetrahedralSphereRefinement

/-!
# Folder.Geometry.SphericalProjection

Radiation role: research-boundary
BinaryMatrix spine: This module distinguishes carrier projection from vertex bijection.
Ontology: spherical_mesh_refinement
Pivot role: geometry
Zero typology: none
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace Geometry

/-- Abstract sphere target. -/
structure SphereTarget where
  dimension : Nat
  targetLabel : String

/--
Projection from a full polyhedral carrier to the sphere.

This may be contractually bijective/homeomorphic on the carrier, not on the
finite vertex set.
-/
structure SphericalCarrierProjection where
  sourceMesh : SimplicialMesh
  targetSphere : SphereTarget
  projectionLabel : String
  carrierBijectiveContract : Prop

theorem spherical_carrier_projection_contract_if_supplied
    (P : SphericalCarrierProjection)
    (h : P.carrierBijectiveContract) :
    P.carrierBijectiveContract :=
  h

end Geometry
end Folder
