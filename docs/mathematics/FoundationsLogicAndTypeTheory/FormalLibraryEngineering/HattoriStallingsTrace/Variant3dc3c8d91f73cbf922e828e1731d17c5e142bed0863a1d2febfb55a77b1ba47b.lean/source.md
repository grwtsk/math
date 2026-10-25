# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HattoriStallingsTrace.Variant3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59e0cfc16c0d0f23661f122fcbb0845f3d65b5d2` · SHA-256 `3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.CategoricalTrace

/-!
# Folder.CrystallineTensor.HattoriStallingsTrace

Radiation role: research-boundary
BinaryMatrix spine: This module records Hattori-Stallings trace slots, not a BinaryMatrix trace theorem.
Ontology: crystalline.hattori_stallings_trace
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure HattoriStallingsTraceContract where
  RingLike : Type _
  ModuleLike : Type _
  EndomorphismLike : Type _
  traceValue : EndomorphismLike → Type _
  traceDefined : Prop
  traceDefined_certified : traceDefined
  MoritaInvariant? : Prop
  sourceLabel : String

theorem hattori_stallings_trace_defined
    (T : HattoriStallingsTraceContract) :
    T.traceDefined :=
  T.traceDefined_certified

end CrystallineTensor
end Folder
```
