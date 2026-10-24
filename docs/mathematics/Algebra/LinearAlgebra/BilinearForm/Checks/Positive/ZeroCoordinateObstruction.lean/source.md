# Complete source: GRWTSK.LinearAlgebra.BilinearForm.Checks.Positive.ZeroCoordinateObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fb7fbc5a93bf1e34cf146bd6e2213b05ce5b144` · SHA-256 `1571aef623f24add84226f10724b2434b6a4dfdd4e17ac0dd738a75ccc3e4304`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.BilinearForm.ZeroCoordinateObstruction

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
