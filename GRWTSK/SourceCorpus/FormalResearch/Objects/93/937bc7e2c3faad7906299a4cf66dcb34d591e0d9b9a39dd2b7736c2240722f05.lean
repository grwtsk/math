namespace Formal.Checked.Geometry.Authority.Direction

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/direction.rs"

def leanLeaf : String := "src/formal/Formal/Checked/Geometry/Authority/Direction.lean"

theorem authority_direction_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/direction.rs" := by
  rfl

end Formal.Checked.Geometry.Authority.Direction
