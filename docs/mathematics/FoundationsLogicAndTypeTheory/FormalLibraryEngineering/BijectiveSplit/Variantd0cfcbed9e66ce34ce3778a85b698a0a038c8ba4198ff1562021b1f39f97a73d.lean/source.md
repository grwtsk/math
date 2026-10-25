# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BijectiveSplit.Variantd0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b11fc2a3d2f540da8ca96d9d8494223c92afb86` · SHA-256 `d0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Shader.BijectiveSplit

/-!
# Folder.Theorem.Shader.BijectiveSplit

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes the arithmetic split proof mirrored by runtime shader code.
Ontology: proof.shader.bijective_split
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: residual
-/

namespace Folder
namespace Theorem
namespace Shader

theorem reconstruct_split
    (raw step : Nat)
    (hstep : 0 < step) :
    Folder.Shader.reconstruct
        (Folder.Shader.split raw step hstep) = raw :=
  Folder.Shader.reconstruct_split raw step hstep

theorem residual_lt_step
    (S : Folder.Shader.QuantizedSplit) :
    S.residual < S.step :=
  Folder.Shader.residual_lt_step S

end Shader
end Theorem
end Folder
```
