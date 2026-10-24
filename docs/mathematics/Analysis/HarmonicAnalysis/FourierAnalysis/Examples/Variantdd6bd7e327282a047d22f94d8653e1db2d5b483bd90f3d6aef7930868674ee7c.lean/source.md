# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Examples.Variantdd6bd7e327282a047d22f94d8653e1db2d5b483bd90f3d6aef7930868674ee7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94f32497c777de3733913e69bd5cbb829c73d6ac` · SHA-256 `dd6bd7e327282a047d22f94d8653e1db2d5b483bd90f3d6aef7930868674ee7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Cube.KarnaughMap
import Surface.Boolean.Cube.WalshFourier
import Surface.Boolean.Cube.BooleanNetwork
import Surface.Boolean.Cube.ToyStripBlend

namespace Surface.Boolean.Cube

/-- First coordinate of the two-dimensional hypercube. -/
def Examples.bit0Of2 : Fin 2 :=
  ⟨0, Nat.zero_lt_succ 1⟩

/-- Second coordinate of the two-dimensional hypercube. -/
def Examples.bit1Of2 : Fin 2 :=
  ⟨1, Nat.succ_lt_succ (Nat.zero_lt_succ 0)⟩

/-- Example truth table: `A ∧ B`. -/
def Examples.twoVariableAnd : TruthTable 2 :=
  fun x => x Examples.bit0Of2 && x Examples.bit1Of2

/-- Step 1: exhaustive truth-table rows for `A ∧ B`. -/
def Examples.twoVariableAndRows :
    List (Hypercube.Point 2 × Bool) :=
  TruthTable.rows Examples.twoVariableAnd

/-- Step 2: truth-table matrix for `A ∧ B`. -/
def Examples.twoVariableAndTruthMatrix :
    BoolMatrix (2 ^ 2) (2 + 1) :=
  TruthTable.toMatrix Examples.twoVariableAnd

/-- Step 3: Gray-code row axis for a one-row-bit K-map. -/
def Examples.twoVariableAndKMapRows :
    List (Hypercube.Point 1) :=
  KarnaughMap.rowAxis 1

/-- Step 4: Gray-code column axis for a one-column-bit K-map. -/
def Examples.twoVariableAndKMapCols :
    List (Hypercube.Point 1) :=
  KarnaughMap.colAxis 1

/-- Step 5: Karnaugh map for `A ∧ B`. -/
def Examples.twoVariableAndKMap :
    KarnaughMap.KMap 1 1 :=
  KarnaughMap.fromTruthTable Examples.twoVariableAnd

/-- Canonical SOP extracted from the truth table of `A ∧ B`. -/
def Examples.twoVariableAndSOP :
    SumOfProducts (Fin 2) :=
  TruthTable.toSOP Examples.twoVariableAnd

/-- PLA-style SOP matrix extracted from the truth table of `A ∧ B`. -/
def Examples.twoVariableAndSOPMatrix :
    SOPMatrix (TruthTable.toSOP Examples.twoVariableAnd).length 2 :=
  TruthTable.toSOPMatrix Examples.twoVariableAnd

/-- Example 3-cube vertex: binary state `101`. -/
def Examples.cube3Vertex101 : Hypercube.Point 3 :=
  fun i =>
    match i.val with
    | 0 => true
    | 1 => false
    | _ => true

/-- The same 3-cube vertex as a coordinate list: `[1,0,1]`. -/
def Examples.cube3Vertex101Coordinates : List Bool :=
  Hypercube.coordinates Examples.cube3Vertex101

/-- The same 3-cube vertex in signed coordinates: `[1,-1,1]`. -/
def Examples.cube3Vertex101SignedCoordinates : List Int :=
  Hypercube.spinCoordinates Examples.cube3Vertex101

/-- The same 3-cube vertex in `0,1` integer coordinates: `[1,0,1]`. -/
def Examples.cube3Vertex101ZeroOneCoordinates : List Int :=
  Hypercube.zeroOneCoordinates Examples.cube3Vertex101

/-- The 3-dimensional hypercube adjacency matrix. -/
def Examples.cube3Adjacency :
    BoolMatrix (2 ^ 3) (2 ^ 3) :=
  Hypercube.adjacencyMatrix 3

/-- Example Boolean network: swap the two coordinates. -/
def Examples.swapNetwork2 : BooleanNetwork.Network 2 where
  step := fun x =>
    fun i =>
      if i = Examples.bit0Of2 then
        x Examples.bit1Of2
      else
        x Examples.bit0Of2

/-- State transition graph for the two-bit swap network. -/
def Examples.swapNetwork2Transitions :
    BoolMatrix (2 ^ 2) (2 ^ 2) :=
  BooleanNetwork.transitionMatrix Examples.swapNetwork2

/-- Dependency diagram for the two-bit swap network. -/
def Examples.swapNetwork2Dependencies :
    BoolMatrix 2 2 :=
  BooleanNetwork.dependencyMatrix Examples.swapNetwork2

/-- Fourier spectrum numerators for the signed-output version of `A ∧ B`. -/
def Examples.twoVariableAndSignedFourierNumerators :
    List Int :=
  (Fourier.subsets 2).map
    (fun S =>
      Fourier.coefficientNumerator
        (Fourier.signedOutput Examples.twoVariableAnd)
        S)

/-- Fourier spectrum numerators for the `0,1`-output version of `A ∧ B`. -/
def Examples.twoVariableAndZeroOneFourierNumerators :
    List Int :=
  (Fourier.subsets 2).map
    (fun S =>
      Fourier.coefficientNumerator
        (Fourier.zeroOneOutput Examples.twoVariableAnd)
        S)

end Surface.Boolean.Cube
```
