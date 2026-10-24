# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variantdccdc8742750c47bc5dac765e23dba9e354189347fbaee36970459f349d0ab12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0a106bbb743b11f6183ae7dd619f6787f0a48d6` · SHA-256 `dccdc8742750c47bc5dac765e23dba9e354189347fbaee36970459f349d0ab12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Homology.ChainMap

namespace Surface

structure HomologyDescriptor where
  complex : ChainComplex
  degree : Nat
  computedByCertificate : Prop

theorem homology_descriptor_requires_chain_complex
    (H : HomologyDescriptor) :
    H.complex.boundarySquaredZero -> H.complex.boundarySquaredZero := by
  intro h
  exact h

end Surface
```
