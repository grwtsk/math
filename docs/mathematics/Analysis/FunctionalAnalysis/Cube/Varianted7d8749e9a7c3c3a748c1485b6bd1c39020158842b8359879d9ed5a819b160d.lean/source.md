# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Cube.Varianted7d8749e9a7c3c3a748c1485b6bd1c39020158842b8359879d9ed5a819b160d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2045322aeed0698780a0d07c7fe61f2ad022055b` · SHA-256 `ed7d8749e9a7c3c3a748c1485b6bd1c39020158842b8359879d9ed5a819b160d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Cube.ListTools
import Surface.Boolean.Cube.Hypercube
import Surface.Boolean.Cube.TruthTable
import Surface.Boolean.Cube.KarnaughMap
import Surface.Boolean.Cube.Fourier
import Surface.Boolean.Cube.WalshFourier
import Surface.Boolean.Cube.BooleanNetwork
import Surface.Boolean.Cube.EdgeRelaxation
import Surface.Boolean.Cube.ToyStripBlend
import Surface.Boolean.Cube.Examples

/-!
# Boolean cube analysis

Formalized: finite cube utilities, truth tables, Karnaugh maps, finite Fourier
and Walsh transforms, Boolean-network matrices, and edge-relaxation data.

Certificate-gated: analytic spectral interpretations and toy strip blend
comparisons.

Not claimed: finite cube data do not prove zeta-zero or Connes trace formula
statements.
-/
```
