namespace Formal.Geometry.Authority.Hash

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/hash.rs"

def leanLeaf : String := "src/formal/Formal/Geometry/Authority/Hash.lean"

theorem authority_hash_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/hash.rs" := by
  rfl

end Formal.Geometry.Authority.Hash
