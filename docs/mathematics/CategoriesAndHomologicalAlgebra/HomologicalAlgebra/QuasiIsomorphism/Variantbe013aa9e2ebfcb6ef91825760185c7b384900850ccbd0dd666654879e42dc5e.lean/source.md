# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.QuasiIsomorphism.Variantbe013aa9e2ebfcb6ef91825760185c7b384900850ccbd0dd666654879e42dc5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea5ef1206157f056097b39e649feea6fdc508b39` · SHA-256 `be013aa9e2ebfcb6ef91825760185c7b384900850ccbd0dd666654879e42dc5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Homology.Betti

namespace Surface

structure QuasiIsomorphismDescriptor where
  chainMap : ChainMapDescriptor
  inducesHomologyIso : Prop

theorem quasiIsomorphism_requires_homology_certificate
    (Q : QuasiIsomorphismDescriptor) :
    Q.inducesHomologyIso -> Q.inducesHomologyIso := by
  intro h
  exact h

end Surface
```
