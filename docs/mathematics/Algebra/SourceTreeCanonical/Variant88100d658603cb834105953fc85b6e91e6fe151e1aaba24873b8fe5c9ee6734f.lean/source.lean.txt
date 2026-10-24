import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.All

set_option autoImplicit false

namespace Think.Validation.SourceTreeCanonical

theorem ideal_pruned_tree_count :
    Think.RadoProjectedModularHeatflow.idealPrunedTree.length = 13 :=
  Think.RadoProjectedModularHeatflow.idealPrunedTree_count

theorem compression_rules_count :
    Think.RadoProjectedModularHeatflow.compressionRules.length = 4 :=
  Think.RadoProjectedModularHeatflow.compressionRules_count

theorem phase_table_contraction_preserves_weight :
    Think.RadoProjectedModularHeatflow.phase37Witness.oldWeight =
      Think.RadoProjectedModularHeatflow.phase37Witness.newWeight :=
  Think.RadoProjectedModularHeatflow.phase37Witness_preservesWeight

end Think.Validation.SourceTreeCanonical
