# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Workflow.Variantfbc59ae36b9791f874fe5c0fdec3fdc1d914cc841fdf9967b682b8c30c9b98ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20a46c2c3a4a1f87fe902b39aef108a4c0ad99d8` · SHA-256 `fbc59ae36b9791f874fe5c0fdec3fdc1d914cc841fdf9967b682b8c30c9b98ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.TemporalKG

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure WorkflowStepRecord where
  stepVertex : MemoryVertex
  observation : String
  action : String
  summary : String
  stepIsWorkflow : stepVertex.kind = MemoryKind.workflowStep

structure WorkflowCompiler where
  currentTrajectory : List WorkflowStepRecord
  compiledPattern : String
  similarWorkflowKeys : List String
  nextStepSuggestion : Option String

def WorkflowCompiler.hasSuggestion (c : WorkflowCompiler) : Bool :=
  c.nextStepSuggestion.isSome

end Think.RadoProjectedModularHeatflow.MemoryCore
```
