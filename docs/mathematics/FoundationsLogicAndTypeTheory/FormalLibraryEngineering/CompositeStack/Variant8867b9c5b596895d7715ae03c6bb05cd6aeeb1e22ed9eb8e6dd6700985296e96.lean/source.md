# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompositeStack.Variant8867b9c5b596895d7715ae03c6bb05cd6aeeb1e22ed9eb8e6dd6700985296e96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01fb38a4e4e9e97b53a6729820c4c190a9a1f9cf` · SHA-256 `8867b9c5b596895d7715ae03c6bb05cd6aeeb1e22ed9eb8e6dd6700985296e96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.CompositeStack

/-!
# Folder.Theorem.Core.CompositeStack

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes composite-stack pivot facts for downstream finite carriers.
Ontology: proof.core.composite_stack
Pivot role: dual
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Core

theorem default_stack_pivots
    (S : Folder.Core.CompositeStack)
    (h : S.pivots = Folder.Core.defaultDualPivot) :
    S.hasArithmeticPivot ∧ S.hasSpectralPivot :=
  Folder.Core.default_stack_pivots S h

end Core
end Theorem
end Folder
```
