import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Prune

set_option autoImplicit false

namespace Think.Validation.PruneSound

theorem phase37_prune_preserves_weight :
    Think.RadoProjectedModularHeatflow.phase37Prune.weightPreserved :=
  Think.RadoProjectedModularHeatflow.phase37Prune_preservesWeight

end Think.Validation.PruneSound
