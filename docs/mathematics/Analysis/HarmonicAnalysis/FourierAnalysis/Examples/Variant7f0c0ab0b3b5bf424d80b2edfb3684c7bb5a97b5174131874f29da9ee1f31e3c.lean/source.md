# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Examples.Variant7f0c0ab0b3b5bf424d80b2edfb3684c7bb5a97b5174131874f29da9ee1f31e3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `600269bab0b308e29af033cb0762f24d4c6bdd96` · SHA-256 `7f0c0ab0b3b5bf424d80b2edfb3684c7bb5a97b5174131874f29da9ee1f31e3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.KarnaughMap
import Boolean.Cube.WalshFourier
import Boolean.Cube.BooleanNetwork
import Boolean.Cube.AffineFiberTensorNetwork
import Boolean.Cube.TorsionBlindDataHomology
import Boolean.Cube.ToyStripBlend
import Boolean.Tree.ANF
import Boolean.Tree.CNF

namespace Boolean.Cube

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
    Matrix (2 ^ 2) (2 + 1) :=
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

/-- The same truth table rendered as an SOP Boolean tree. -/
def Examples.twoVariableAndSOPTree : Tree (Fin 2) :=
  TruthTable.toTree Examples.twoVariableAnd

/-- CNF obtained from the SOP tree for the `A ∧ B` truth table. -/
def Examples.twoVariableAndCNF : Formula.CNF (Fin 2) :=
  Tree.toCNF Examples.twoVariableAndSOPTree

/-- ANF polynomial obtained from the SOP tree for the `A ∧ B` truth table. -/
def Examples.twoVariableAndANF : Tree.ANF.Polynomial (Fin 2) :=
  Tree.toANF Examples.twoVariableAndSOPTree

/-- CNF evaluation agrees with the SOP tree used by the SOP matrix example. -/
theorem Examples.twoVariableAndCNF_eval
    (ν : Valuation (Fin 2)) :
    Formula.CNF.eval ν Examples.twoVariableAndCNF =
      Tree.eval ν Examples.twoVariableAndSOPTree := by
  simp [Examples.twoVariableAndCNF]

/-- ANF evaluation agrees with the SOP tree used by the SOP matrix example. -/
theorem Examples.twoVariableAndANF_eval
    (ν : Valuation (Fin 2)) :
    Tree.ANF.Polynomial.eval ν Examples.twoVariableAndANF =
      Tree.eval ν Examples.twoVariableAndSOPTree := by
  simp [Examples.twoVariableAndANF]

/--
Executable normal-form bundle for the same finite truth table: SOP matrix, CNF,
and ANF all originate from `twoVariableAnd`.
-/
def Examples.twoVariableAndNormalFormArtifacts :
    SOPMatrix (TruthTable.toSOP Examples.twoVariableAnd).length 2 ×
      Formula.CNF (Fin 2) ×
      Tree.ANF.Polynomial (Fin 2) :=
  ( Examples.twoVariableAndSOPMatrix
  , Examples.twoVariableAndCNF
  , Examples.twoVariableAndANF
  )

/-! ## Affine-fiber tensor examples -/

/-- A simple harmonic mode used by finite affine-fiber examples. -/
def Examples.affineMode (k : Nat) :
    AffineFiberTensorNetwork.SHMode where
  ell := k
  order := ⟨0, Nat.succ_pos (2 * k)⟩

/-- The example mode enumeration is injective because the degree stores `k`. -/
theorem Examples.affineMode_injective {i j : Nat}
    (h : Examples.affineMode i = Examples.affineMode j) :
    i = j :=
  congrArg AffineFiberTensorNetwork.SHMode.ell h

/-- Computable mode enumeration for the finite Omega examples. -/
def Examples.affineModeEnumeration :
    AffineFiberTensorNetwork.ModeEnumeration where
  toMode := Examples.affineMode
  injective := fun h => Examples.affineMode_injective h

/-- Alternating example bitstream for Omega-prefix plumbing. -/
def Examples.omegaAlternatingBits :
    AffineFiberTensorNetwork.OmegaBits where
  bit := fun k => decide (k % 2 = 0)

/-- Example Omega boundary using the finite mode enumeration above. -/
def Examples.omegaAlternatingBoundary :
    AffineFiberTensorNetwork.OmegaBoundary where
  bits := Examples.omegaAlternatingBits
  enum := Examples.affineModeEnumeration

/-- Three-term executable Omega prefix. -/
def Examples.omegaAlternatingPrefix3 :
    List AffineFiberTensorNetwork.DyadicHarmonicTerm :=
  AffineFiberTensorNetwork.omegaPrefix Examples.omegaAlternatingBoundary 3

/-- Reading the head Omega term recovers the corresponding bit. -/
theorem Examples.readModeBit?_omegaAlternating_head :
    AffineFiberTensorNetwork.readModeBit?
        (Examples.omegaAlternatingBoundary.enum.toMode 0)
        (AffineFiberTensorNetwork.omegaTerm Examples.omegaAlternatingBoundary 0 :: []) =
      some (Examples.omegaAlternatingBoundary.bits.bit 0) := by
  simpa using
    AffineFiberTensorNetwork.readModeBit?_head_omega
      Examples.omegaAlternatingBoundary 0 []

/-- Zero point in Nat-valued affine 3-space. -/
def Examples.natPointZero :
    AffineFiberTensorNetwork.Point3 Nat :=
  fun _ => 0

/-- Zero direction in Nat-valued direction coordinates. -/
def Examples.natDirectionZero :
    AffineFiberTensorNetwork.Direction Nat :=
  fun _ => 0

/-- Constant-one harmonic basis over Nat. -/
def Examples.natSHBasis :
    AffineFiberTensorNetwork.SHBasis Nat :=
  fun _ _ => 1

/-- Constant-one RGB value over Nat. -/
def Examples.natRGBOne :
    AffineFiberTensorNetwork.RGB Nat :=
  fun _ => 1

/-- A one-term finite angular fiber. -/
def Examples.natAngularFiber :
    AffineFiberTensorNetwork.FiniteAngularFiber Nat where
  terms :=
    [{ mode := Examples.affineMode 0
       coeff := Examples.natRGBOne }]

/-- Identity affine chart at the zero point. -/
def Examples.natAffineChart :
    AffineFiberTensorNetwork.LocalAffineChart Nat where
  center := Examples.natPointZero
  coord := fun x => x

/-- A single unit-weight Gaussian-splat placeholder. -/
def Examples.natGaussianSplat :
    AffineFiberTensorNetwork.GaussianSplat Nat where
  chart := Examples.natAffineChart
  weight := fun _ => 1
  opacity := 1
  fiber := Examples.natAngularFiber

/-- A one-splat scene. -/
def Examples.natGaussianScene :
    AffineFiberTensorNetwork.GaussianScene Nat where
  atoms := [Examples.natGaussianSplat]

/-- Unit visibility and opacity ray kernel. -/
def Examples.natRayKernel :
    AffineFiberTensorNetwork.RayKernel Nat where
  alpha := fun _ _ => 1
  visibility := fun _ _ => 1

/-- Constant zero ray. -/
def Examples.natRay :
    AffineFiberTensorNetwork.Ray Nat where
  origin := Examples.natPointZero
  dir := Examples.natDirectionZero
  pointAt := fun _ => Examples.natPointZero

/-- Executable render of the one-splat Nat-valued scene. -/
def Examples.natRenderRay :
    AffineFiberTensorNetwork.RGB Nat :=
  AffineFiberTensorNetwork.renderRay
    Examples.natSHBasis
    Examples.natRayKernel
    Examples.natGaussianScene
    Examples.natRay

/-- The one-splat render has value one in every RGB channel. -/
theorem Examples.natRenderRay_apply
    (c : AffineFiberTensorNetwork.ColorChannel) :
    Examples.natRenderRay c = 1 := by
  simp [Examples.natRenderRay, Examples.natSHBasis, Examples.natRayKernel,
    Examples.natGaussianScene, Examples.natGaussianSplat, Examples.natAngularFiber,
    Examples.natRGBOne, AffineFiberTensorNetwork.renderRay,
    AffineFiberTensorNetwork.atomRayContribution,
    AffineFiberTensorNetwork.GaussianSplat.color,
    AffineFiberTensorNetwork.FiniteAngularFiber.eval,
    AffineFiberTensorNetwork.sumRGB, AffineFiberTensorNetwork.rgbAdd,
    AffineFiberTensorNetwork.rgbScale, AffineFiberTensorNetwork.rgbZero]

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
    Matrix (2 ^ 3) (2 ^ 3) :=
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
    Matrix (2 ^ 2) (2 ^ 2) :=
  BooleanNetwork.transitionMatrix Examples.swapNetwork2

/-- Dependency diagram for the two-bit swap network. -/
def Examples.swapNetwork2Dependencies :
    Matrix 2 2 :=
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

/-! ## Torsion-blind observation examples -/

/-- A topological profile with zero integral homology in every degree. -/
def Examples.torsionBlindZeroProfile :
    TorsionBlindDataHomology.IntegralHomologyProfile where
  group := fun _ => TorsionBlindDataHomology.IntegralHomology.zero

/-- A formal rational torsion label with one `2`-primary cyclic factor. -/
def Examples.mordellWeilTorsionZ2 :
    TorsionBlindDataHomology.MordellWeilTorsion where
  factors := [{ prime := 2, exponent := 1 }]

/-- A formal rational torsion label with one `3`-primary cyclic factor. -/
def Examples.mordellWeilTorsionZ3 :
    TorsionBlindDataHomology.MordellWeilTorsion where
  factors := [{ prime := 3, exponent := 1 }]

/-- The two formal rational torsion labels differ. -/
theorem Examples.mordellWeilTorsionZ2_ne_Z3 :
    Examples.mordellWeilTorsionZ2 ≠ Examples.mordellWeilTorsionZ3 := by
  decide

/-- Left arithmetic model in a field-observation collision. -/
def Examples.torsionBlindCollisionLeft :
    TorsionBlindDataHomology.EllipticArithmeticModel where
  topologicalProfile := Examples.torsionBlindZeroProfile
  rationalTorsion := Examples.mordellWeilTorsionZ2

/-- Right arithmetic model in a field-observation collision. -/
def Examples.torsionBlindCollisionRight :
    TorsionBlindDataHomology.EllipticArithmeticModel where
  topologicalProfile := Examples.torsionBlindZeroProfile
  rationalTorsion := Examples.mordellWeilTorsionZ3

/--
Concrete collision certificate: the field-coefficient TDA observation is shared,
while the rational torsion labels are different.
-/
def Examples.torsionBlindArithmeticCollision :
    TorsionBlindDataHomology.ArithmeticCollision where
  left := Examples.torsionBlindCollisionLeft
  right := Examples.torsionBlindCollisionRight
  sameObservation := rfl
  distinctArithmeticTorsion := Examples.mordellWeilTorsionZ2_ne_Z3

/-- The example collision refutes any field-only recovery algorithm on both sides. -/
theorem Examples.torsionBlindCollision_refutes_fieldOnlyRecovery
    (A : TorsionBlindDataHomology.FieldOnlyArithmeticAlgorithm) :
    ¬ (TorsionBlindDataHomology.CorrectArithmeticRecovery A
          Examples.torsionBlindArithmeticCollision.left ∧
        TorsionBlindDataHomology.CorrectArithmeticRecovery A
          Examples.torsionBlindArithmeticCollision.right) :=
  TorsionBlindDataHomology.no_field_only_recovery_from_collision
    Examples.torsionBlindArithmeticCollision
    A

end Boolean.Cube
```
