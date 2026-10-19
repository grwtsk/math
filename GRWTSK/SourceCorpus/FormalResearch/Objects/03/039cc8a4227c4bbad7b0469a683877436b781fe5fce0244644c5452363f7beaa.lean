namespace Formal.Geometry.Authority.Row

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/row.rs"

def leanLeaf : String := "src/formal/Formal/Geometry/Authority/Row.lean"

theorem authority_row_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/row.rs" := by
  rfl

end Formal.Geometry.Authority.Row
