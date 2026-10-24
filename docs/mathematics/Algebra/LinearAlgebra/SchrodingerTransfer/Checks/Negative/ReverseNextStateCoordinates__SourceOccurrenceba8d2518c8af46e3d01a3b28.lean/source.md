# Complete source: GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.Negative.ReverseNextStateCoordinates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b79efd93d22a2cec5ab957d6e42395c4759d010` · SHA-256 `dddb1769e2cbf5203990393eaa3ac77e73a4a6947268b61e9f45862e0e4a2f8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example {R : Type*} [CommRing R] (E V previous current next : R) : next + previous + V * current = E * current ↔ rawState current next = (schrodingerTransfer E V).mulVec (rawState current previous) := schrodinger_recurrence_iff_transfer E V previous current next
```
