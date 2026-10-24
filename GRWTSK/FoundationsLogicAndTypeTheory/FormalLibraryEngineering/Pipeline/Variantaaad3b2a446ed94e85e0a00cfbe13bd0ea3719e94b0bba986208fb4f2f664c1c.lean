namespace Formal.Geometry.Authority.Pipeline

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/pipeline.rs"

def leanLeaf : String := "src/formal/Formal/Geometry/Authority/Pipeline.lean"

theorem authority_pipeline_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/pipeline.rs" := by
  rfl

end Formal.Geometry.Authority.Pipeline
