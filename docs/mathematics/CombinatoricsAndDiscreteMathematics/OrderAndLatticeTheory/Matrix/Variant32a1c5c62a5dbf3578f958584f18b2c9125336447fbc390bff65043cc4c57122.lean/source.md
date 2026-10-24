# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Matrix.Variant32a1c5c62a5dbf3578f958584f18b2c9125336447fbc390bff65043cc4c57122

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3be283f518b84b20bba17442c9d5e4faa3933eea` · SHA-256 `32a1c5c62a5dbf3578f958584f18b2c9125336447fbc390bff65043cc4c57122`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Matrix.Basic
import Surface.Boolean.Matrix.Operations
import Surface.Boolean.Matrix.Binary
import Surface.Boolean.Matrix.Warshall
import Surface.Boolean.Matrix.Lattice

/-!
# Boolean matrices

Formalized: Boolean matrix objects, Boolean matrix operations, Warshall
closure, and lattice operations.

Certificate-gated: all flow, spectral, trace, and BSD interpretations are
handled by their own root modules.

Not claimed: a Boolean matrix alone is not a flow certificate, spectral theorem,
or BSD datum.
-/
```
