# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Witness.Variantf25fadb6ae342ce62b3f138c581b5ba2180bfcede19ff73e1bb3a66cbe597ec3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34fe3569eef0cccc12b1e0dae979c3ae9ff00f12` · SHA-256 `f25fadb6ae342ce62b3f138c581b5ba2180bfcede19ff73e1bb3a66cbe597ec3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Stack.Descent

/-!
# Folder.Stack.Witness

Radiation role: stack-architecture
BinaryMatrix spine: This module stores stack witness metadata rather than treating runtime or witness layers as BinaryMatrix proofs.
Ontology: stack.witness
Pivot role: none
Zero typology: none
Contract boundary: witness
Composite stack role: infrastructure
-/

namespace Folder
namespace Stack

structure StackWitness where
  name : String
  claim : Prop
  certified : claim

theorem stack_witness_certified
    (W : StackWitness) :
    W.claim :=
  W.certified

end Stack
end Folder
```
