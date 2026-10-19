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
