namespace Formal.Checked.Geometry.Authority.Witness

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/witness.rs"

def leanLeaf : String := "src/formal/Formal/Checked/Geometry/Authority/Witness.lean"

theorem authority_witness_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/witness.rs" := by
  rfl

end Formal.Checked.Geometry.Authority.Witness
