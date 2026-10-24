# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hypercube.Variantcd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c328834b9d64fba18df6b9e7faf1d5938ca721d` · SHA-256 `cd9a484cc833f789e79a591b73511d9154bcc36e88f3a132bb9edb7e02cc91f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Matrix.Basic
import Surface.Boolean.Cube.ListTools

namespace Surface.Boolean.Cube

universe u

/-- A vertex of the n-dimensional Boolean hypercube `{0,1}^n`. -/
abbrev Hypercube.Point (n : Nat) :=
  Fin n → Bool

/-- A Boolean-valued function on the n-dimensional hypercube. -/
abbrev Hypercube.BooleanFunction (n : Nat) :=
  Hypercube.Point n → Bool

/--
A scalar-valued function on the Boolean hypercube.

When a real-number library is available, instantiate `R` with `Real`.
-/
abbrev Hypercube.ScalarFunction (n : Nat) (R : Type u) :=
  Hypercube.Point n → R

/-- Boolean exclusive-or. -/
def Hypercube.bxor (a b : Bool) : Bool :=
  match a, b with
  | true, false => true
  | false, true => true
  | _, _ => false

/-- Boolean inequality as a Boolean value. -/
def Hypercube.boolDiff (a b : Bool) : Bool :=
  Hypercube.bxor a b

/-- Read bit `bit` of a natural number, least significant bit at offset `0`. -/
def Hypercube.bitAtNat (index bit : Nat) : Bool :=
  decide (((index / (2 ^ bit)) % 2) = 1)

/--
The bit position used for variable `i` in standard truth-table order.

Variable `0` is the most significant coordinate. Thus, for `n = 2`, indices
`0, 1, 2, 3` enumerate points `00, 01, 10, 11`.
-/
def Hypercube.tableBit (n : Nat) (i : Fin n) : Nat :=
  n - 1 - i.val

/-- Convert an index into the corresponding Boolean hypercube vertex. -/
def Hypercube.pointOfIndex (n index : Nat) : Hypercube.Point n :=
  fun i => Hypercube.bitAtNat index (Hypercube.tableBit n i)

/--
All vertices of `{0,1}^n`, enumerated by binary index in standard truth-table
order.
-/
def Hypercube.vertices (n : Nat) : List (Hypercube.Point n) :=
  (List.range (2 ^ n)).map (Hypercube.pointOfIndex n)

/-- Convert a hypercube point into coordinate-list form. -/
def Hypercube.coordinates {n : Nat} (x : Hypercube.Point n) : List Bool :=
  (List.finRange n).map (fun i => x i)

/-- Map `false,true` to signed cube coordinates `-1,+1`. -/
def Hypercube.spinOfBool : Bool → Int
  | false => (-1 : Int)
  | true => 1

/-- Map `false,true` to `0,1`. -/
def Hypercube.intOfBool : Bool → Int
  | false => 0
  | true => 1

/-- Convert a Boolean hypercube vertex into signed coordinates in `{-1,1}^n`. -/
def Hypercube.spinCoordinates {n : Nat} (x : Hypercube.Point n) : List Int :=
  (List.finRange n).map (fun i => Hypercube.spinOfBool (x i))

/-- Convert a Boolean hypercube vertex into `0,1` integer coordinates. -/
def Hypercube.zeroOneCoordinates {n : Nat} (x : Hypercube.Point n) : List Int :=
  (List.finRange n).map (fun i => Hypercube.intOfBool (x i))

/-- Flip one coordinate of a hypercube point. -/
def Hypercube.flip {n : Nat} (x : Hypercube.Point n) (i : Fin n) :
    Hypercube.Point n :=
  fun j =>
    if j = i then
      !(x j)
    else
      x j

@[simp] theorem Hypercube.flip_same {n : Nat} (x : Hypercube.Point n) (i : Fin n) :
    Hypercube.flip x i i = !(x i) := by
  simp [Hypercube.flip]

theorem Hypercube.flip_other {n : Nat}
    (x : Hypercube.Point n) {i j : Fin n} (h : j ≠ i) :
    Hypercube.flip x i j = x j := by
  simp [Hypercube.flip, h]

/-- Test whether two hypercube points are extensionally equal. -/
def Hypercube.pointEq {n : Nat} (x y : Hypercube.Point n) : Bool :=
  ListTools.allTrue
    ((List.finRange n).map
      (fun i => decide (x i = y i)))

/-- Hamming distance between two Boolean hypercube vertices. -/
def Hypercube.hammingDistance {n : Nat}
    (x y : Hypercube.Point n) : Nat :=
  ListTools.countTrue
    ((List.finRange n).map
      (fun i => Hypercube.boolDiff (x i) (y i)))

/-- The undirected adjacency matrix of the n-dimensional Boolean hypercube. -/
def Hypercube.adjacencyMatrix (n : Nat) : BoolMatrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    decide
      (Hypercube.hammingDistance
        (Hypercube.pointOfIndex n i.val)
        (Hypercube.pointOfIndex n j.val) = 1)

/--
A boundary-edge matrix for a Boolean function.

A `1` at `(i,j)` means that the two indexed vertices are adjacent in the cube
and the function changes value across that edge.
-/
def Hypercube.boundaryEdgeMatrix {n : Nat} (f : Hypercube.BooleanFunction n) :
    BoolMatrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    Hypercube.adjacencyMatrix n i j &&
      Hypercube.boolDiff
        (f (Hypercube.pointOfIndex n i.val))
        (f (Hypercube.pointOfIndex n j.val))

/-- Test whether flipping coordinate `i` changes the value of `f` at `x`. -/
def Hypercube.edgeChange {n : Nat}
    (f : Hypercube.BooleanFunction n) (x : Hypercube.Point n) (i : Fin n) :
    Bool :=
  Hypercube.boolDiff (f x) (f (Hypercube.flip x i))

/--
Influence count of coordinate `i`.

This counts directed cube edges from vertices `x` to `flip x i` where the
function output changes. Dividing by `2^n` gives the usual influence.
-/
def Hypercube.influenceCount {n : Nat}
    (f : Hypercube.BooleanFunction n) (i : Fin n) : Nat :=
  ListTools.countTrue
    ((Hypercube.vertices n).map
      (fun x => Hypercube.edgeChange f x i))

/-- Influence count for every coordinate. -/
def Hypercube.influenceVector {n : Nat}
    (f : Hypercube.BooleanFunction n) : Fin n → Nat :=
  fun i => Hypercube.influenceCount f i

/-- Total directed edge-boundary count across all coordinates. -/
def Hypercube.directedBoundaryCount {n : Nat}
    (f : Hypercube.BooleanFunction n) : Nat :=
  ListTools.sumNat
    ((List.finRange n).map
      (fun i => Hypercube.influenceCount f i))

/-- Gray-code bit: `g_i = b_i XOR b_{i+1}`. -/
def Hypercube.grayBit (index bit : Nat) : Bool :=
  Hypercube.bxor
    (Hypercube.bitAtNat index bit)
    (Hypercube.bitAtNat index (bit + 1))

/--
Convert an index into a Gray-code-ordered hypercube point.

The coordinate order is big-endian, matching `pointOfIndex`.
-/
def Hypercube.grayPoint (n index : Nat) : Hypercube.Point n :=
  fun i => Hypercube.grayBit index (Hypercube.tableBit n i)

/-- The Gray-code axis of dimension `bits`. -/
def Hypercube.grayAxis (bits : Nat) : List (Hypercube.Point bits) :=
  (List.range (2 ^ bits)).map (Hypercube.grayPoint bits)

end Surface.Boolean.Cube
```
