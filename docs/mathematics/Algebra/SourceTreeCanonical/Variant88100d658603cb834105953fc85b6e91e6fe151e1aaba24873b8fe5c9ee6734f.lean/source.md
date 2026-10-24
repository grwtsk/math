# Complete source: GRWTSK.Algebra.SourceTreeCanonical.Variant88100d658603cb834105953fc85b6e91e6fe151e1aaba24873b8fe5c9ee6734f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `874a9f7e7cf8904ddd1dfd9f56323abe24561f82` · SHA-256 `88100d658603cb834105953fc85b6e91e6fe151e1aaba24873b8fe5c9ee6734f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
