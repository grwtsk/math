# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SphericalProjection.Variant68bfe0552915829c6399f41b029330edf3903fd824c32a15fea914ad96c33a1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `782de7c7829384611d2722e3ec293712122fc550` · SHA-256 `68bfe0552915829c6399f41b029330edf3903fd824c32a15fea914ad96c33a1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
