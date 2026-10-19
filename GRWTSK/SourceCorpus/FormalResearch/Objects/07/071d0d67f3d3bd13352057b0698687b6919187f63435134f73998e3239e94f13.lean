namespace Formal.Geometry.Authority.Spectrum

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/spectrum.rs"

def leanLeaf : String := "src/formal/Formal/Geometry/Authority/Spectrum.lean"

theorem authority_spectrum_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/spectrum.rs" := by
  rfl

end Formal.Geometry.Authority.Spectrum
