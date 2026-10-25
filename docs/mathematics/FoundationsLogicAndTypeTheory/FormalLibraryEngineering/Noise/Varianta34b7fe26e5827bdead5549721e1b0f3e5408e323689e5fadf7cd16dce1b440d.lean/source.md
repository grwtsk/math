# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noise.Varianta34b7fe26e5827bdead5549721e1b0f3e5408e323689e5fadf7cd16dce1b440d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6aaf1e3530374c4001279e785386f228139aaa2b` · SHA-256 `a34b7fe26e5827bdead5549721e1b0f3e5408e323689e5fadf7cd16dce1b440d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.Hypercube

namespace Boolean.Cube

namespace Noise

/-- Coordinate sensitivity count for one coordinate. -/
def coordinateCount {n : Nat}
    (f : Hypercube.Function n)
    (i : Fin n) :
    Nat :=
  Hypercube.influenceCount f i

/-- Directed edge sensitivity count across all coordinates. -/
def edgeCount {n : Nat}
    (f : Hypercube.Function n) :
    Nat :=
  Hypercube.directedBoundaryCount f

/-- The vector of coordinate sensitivity counts. -/
def coordinateVector {n : Nat}
    (f : Hypercube.Function n) :
    Fin n → Nat :=
  Hypercube.influenceVector f

@[simp] theorem coordinateCount_eq_influenceCount {n : Nat}
    (f : Hypercube.Function n)
    (i : Fin n) :
    coordinateCount f i = Hypercube.influenceCount f i := rfl

@[simp] theorem edgeCount_eq_directedBoundaryCount {n : Nat}
    (f : Hypercube.Function n) :
    edgeCount f = Hypercube.directedBoundaryCount f := rfl

@[simp] theorem coordinateVector_eq_influenceVector {n : Nat}
    (f : Hypercube.Function n) :
    coordinateVector f = Hypercube.influenceVector f := rfl

end Noise

end Boolean.Cube
```
