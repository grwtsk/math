# Complete source: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.Checks.Positive.ZeroCoordinateObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `876b33be951d9be03e2b7181e85dc89b04e17951` · SHA-256 `1e334f5f22e2d1aa54240aa34e34edb27ca59ea4200b7c56a18e9fa8f974d8fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.ZeroCoordinateObstruction

set_option linter.hashCommand false

namespace GRWTSK.LinearAlgebra.ZeroCoordinateObstruction

#print axioms coordinate_quadratic_eq
#print axioms no_uniform_domination
#print axioms diagonal_scale_ne_positive
#print axioms zero_preserving_map_ne_target

#check coordinate_quadratic_eq
#check no_uniform_domination
#check diagonal_scale_ne_positive
#check zero_preserving_map_ne_target

end GRWTSK.LinearAlgebra.ZeroCoordinateObstruction
```
