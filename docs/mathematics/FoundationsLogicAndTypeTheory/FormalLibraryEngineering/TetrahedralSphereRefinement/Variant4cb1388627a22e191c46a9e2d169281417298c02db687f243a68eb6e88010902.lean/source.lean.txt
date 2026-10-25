/-!
# Folder.Geometry.TetrahedralSphereRefinement

Radiation role: research-boundary
BinaryMatrix spine: This module records finite mesh refinements, not BinaryMatrix data.
Ontology: spherical_mesh_refinement
Pivot role: geometry
Zero typology: none
Contract boundary: proposed-definition
Composite stack role: canonical-path
-/

namespace Folder
namespace Geometry

/-- Abstract triangular or tetrahedral refinement level. -/
structure RefinementLevel where
  L : Nat

/-- Abstract finite simplicial mesh. -/
structure SimplicialMesh where
  level : RefinementLevel
  dimension : Nat
  meshLabel : String

def regularTetrahedronBaseVertexCount : Nat :=
  4

/--
Abstract vertex-count template using a refinement factor. This is bookkeeping,
not an arithmetic theorem from mesh cardinality.
-/
def abstractRefinedVertexCount
    (baseCount refinementFactor : Nat)
    (level : RefinementLevel) : Nat :=
  baseCount * refinementFactor ^ level.L

theorem regular_tetrahedron_base_vertex_count_eq :
    regularTetrahedronBaseVertexCount = 4 :=
  rfl

theorem simplicial_mesh_has_level
    (M : SimplicialMesh) :
    ∃ L : RefinementLevel, M.level = L :=
  ⟨M.level, rfl⟩

end Geometry
end Folder
