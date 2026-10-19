namespace Formal.Geometry.Authority.Band

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/band.rs"

def leanLeaf : String := "src/formal/Formal/Geometry/Authority/Band.lean"

theorem authority_band_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/band.rs" := by
  rfl

end Formal.Geometry.Authority.Band
