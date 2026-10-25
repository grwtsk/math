# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SphericalMeshLimit.Variant454f758f038e3a81b1d0eb2917a8986deea5f00075c9f935ef2987ee5902aa73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f588562a4fda6caa5fcbfb4ffbc2617f5b07ee2e` · SHA-256 `454f758f038e3a81b1d0eb2917a8986deea5f00075c9f935ef2987ee5902aa73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
