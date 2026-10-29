namespace Formal.Geometry.Authority.Digest

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/digest.rs"

def leanLeaf : String := "src/formal/Formal/Geometry/Authority/Digest.lean"

theorem authority_digest_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/digest.rs" := by
  rfl

end Formal.Geometry.Authority.Digest
