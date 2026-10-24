# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainMap.Variant29539e447ffebb1bf3b9f6478add709b085650c00b64757a6b029c1d946d0cef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f816e17350fe820555eca18a24ac7b2c844408cc` · SHA-256 `29539e447ffebb1bf3b9f6478add709b085650c00b64757a6b029c1d946d0cef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Homology.ChainComplex

namespace Surface

structure ChainMapDescriptor where
  source : ChainComplex
  target : ChainComplex
  commutesWithBoundary : Prop

theorem chainMap_requires_boundary_commutation
    (f : ChainMapDescriptor) :
    f.commutesWithBoundary -> f.commutesWithBoundary := by
  intro h
  exact h

end Surface
```
