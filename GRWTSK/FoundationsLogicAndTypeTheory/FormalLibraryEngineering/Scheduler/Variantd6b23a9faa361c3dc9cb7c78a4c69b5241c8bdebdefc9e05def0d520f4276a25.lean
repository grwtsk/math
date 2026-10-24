namespace Formal.Checked.Geometry.Authority.Scheduler

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/scheduler.rs"

def leanLeaf : String := "src/formal/Formal/Checked/Geometry/Authority/Scheduler.lean"

theorem authority_scheduler_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/scheduler.rs" := by
  rfl

end Formal.Checked.Geometry.Authority.Scheduler
