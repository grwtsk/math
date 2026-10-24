# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleGraph.Variant3a63e9dee7a81c6af5f20d15e0349894f831defa68ae415736cc8cf722c061d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d180a8cff0f8ec1f1f2e08a0c3b0bf79a39810a` · SHA-256 `3a63e9dee7a81c6af5f20d15e0349894f831defa68ae415736cc8cf722c061d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.AST.Core

namespace Surface

namespace AST

def ModuleGraph := List LeanModuleAst

def moduleGraphContains (graph : ModuleGraph) (moduleName : String) : Prop :=
  graph.any (fun moduleAst => decide (moduleAst.moduleName = moduleName)) = true

theorem empty_module_graph_contains_none (moduleName : String) :
    ¬ moduleGraphContains [] moduleName := by
  intro h
  simp [moduleGraphContains] at h

end AST

end Surface
```
