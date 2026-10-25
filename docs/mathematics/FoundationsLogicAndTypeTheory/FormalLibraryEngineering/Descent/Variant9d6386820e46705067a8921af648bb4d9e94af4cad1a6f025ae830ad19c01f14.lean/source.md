# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Descent.Variant9d6386820e46705067a8921af648bb4d9e94af4cad1a6f025ae830ad19c01f14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `baaa330ccfed586becb6d4ac36d32bc744980e59` · SHA-256 `9d6386820e46705067a8921af648bb4d9e94af4cad1a6f025ae830ad19c01f14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Stack.Descent

/-!
# Folder.Theorem.Stack.Descent

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes descent-interface facts for stack data.
Ontology: proof.stack.descent
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Stack

theorem stack_gluing_witness_glued
    (W : Folder.Stack.StackGluingWitness) :
    W.glued :=
  Folder.Stack.stack_gluing_witness_glued W

theorem composite_stack_descent_glues
    (W : Folder.Stack.CompositeStackDescentWitness)
    (h : W.compatibleLocalData) :
    W.GlobalSection :=
  Folder.Stack.composite_stack_descent_glues W h

end Stack
end Theorem
end Folder
```
