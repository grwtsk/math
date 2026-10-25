import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.TemporalKG

set_option autoImplicit false

namespace Think.Validation.TemporalInvalidationCorrect

theorem invalidated_exactly_when_invalid_time_present
    (e : Think.RadoProjectedModularHeatflow.MemoryCore.TemporalEdge) :
    e.invalidated = true ↔ e.invalidAt?.isSome = true :=
  Think.RadoProjectedModularHeatflow.MemoryCore.invalidated_iff_has_invalid_time e

end Think.Validation.TemporalInvalidationCorrect
