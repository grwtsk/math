# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Composite.Variant782021b8ed15ce53460427fd08dc2d83ffbdc0189386d643351c74cba8202bb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `421c8f408ef10e6ef2f6d81716a7b4a2ba43493e` · SHA-256 `782021b8ed15ce53460427fd08dc2d83ffbdc0189386d643351c74cba8202bb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.CompositeStack

/-!
# Folder.Stack.Composite

Radiation role: stack-architecture
BinaryMatrix spine: This module wraps typed composite stack layers whose carrier component may be a BinaryMatrix-derived object.
Ontology: stack.composite
Pivot role: dual
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Stack

structure StackLayer where
  name : String
  payload : Type

structure CompositeLayerStack where
  cellCarrier : StackLayer
  spectralField : StackLayer
  heatResidual : StackLayer
  shellFiber : StackLayer
  phaseConnection : StackLayer
  torsionWitness : StackLayer
  arithmeticLabel : StackLayer

theorem composite_layer_stack_has_carrier
    (S : CompositeLayerStack) :
    S.cellCarrier = S.cellCarrier :=
  rfl

end Stack
end Folder
```
