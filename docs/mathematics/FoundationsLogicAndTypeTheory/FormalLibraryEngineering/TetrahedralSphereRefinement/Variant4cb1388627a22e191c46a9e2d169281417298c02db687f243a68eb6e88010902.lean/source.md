# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TetrahedralSphereRefinement.Variant4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93868cf49f35d199469ae58756e2436fd3550acb` · SHA-256 `4cb1388627a22e191c46a9e2d169281417298c02db687f243a68eb6e88010902`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
