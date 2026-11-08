import Surface.Legacy.BinaryLogicMatrix.CoverageProofs
import Surface.Legacy.BinaryLogicMatrix.Codec
import Surface.Legacy.BinaryLogicMatrix.Representation
import Surface.Legacy.BinaryLogicMatrix.NumberSystems
import Surface.Legacy.BinaryLogicMatrix.PrimeComposite
import Surface.Legacy.BinaryLogicMatrix.Rational
import Surface.Legacy.BinaryLogicMatrix.RealCodes
import Surface.Legacy.BinaryLogicMatrix.ComplexAndOtherSystems
import Surface.Legacy.BinaryLogicMatrix.TheoremAdapter
import Surface.Legacy.BinaryLogicMatrix.ProofSyntax
import Surface.Legacy.BinaryLogicMatrix.ProofAdapter
import Surface.Legacy.BinaryLogicMatrix.Morphism
import Surface.Legacy.BinaryLogicMatrix.MorphismFactorization
import Surface.Legacy.BinaryLogicMatrix.Factorization
import Surface.Legacy.BinaryLogicMatrix.Token
import Surface.Legacy.BinaryLogicMatrix.Similarity
import Surface.Legacy.BinaryLogicMatrix.FiberTensor
import Surface.Legacy.BinaryLogicMatrix.Symmetry
import Surface.Legacy.BinaryLogicMatrix.TorsionSite
import Surface.Legacy.BinaryLogicMatrix.RecursiveExpansion
import Surface.Legacy.BinaryLogicMatrixFlow.Proofs
import Surface.Legacy.BinaryLogicMatrixFlow.Factorization

/-
Local attribution: grwtsk contributors.
Artifact-boundary split of grwtsk/math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec
Source: GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GenerateFixtures.lean
Git blob: b84d57bef917b742fc1eab24aa543cd9d3567f0c
Retained finite matrix fixture and row-major Boolean-to-natural representation.
The Noe driver imports this core; historical fixture/report emission is external.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
Historical provenance comments describe the original source, not verification of these edited bytes.
-/


open Surface
open Surface.Legacy
open Surface.Legacy.BinaryLogicMatrix
open Surface.Legacy.BinaryLogicMatrixFlow
open Surface.Legacy.BinaryLogicMatrixAveragingModel

def bits01 {rows cols : Nat} (M : BinaryLogicMatrix rows cols) : List Nat :=
  M.rowMajorBits.map fun b => if b then 1 else 0

def canonicalRuntimeInitial4 : BinaryLogicMatrix 4 4 :=
  BinaryLogicMatrix.fromBoolList 4 4
    [true, false, true, false,
     false, false, true, true,
     true, true, false, false,
     false, true, false, true]
