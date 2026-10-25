# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EllipticBitMatrixSymmetryResidueLoci.Variante7169426cce6b8f7cc8e08a528831f0c13e1b9b8cda4ced90aa8777ff5326312

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ccac3b4eb2def4e9472b4740ea5a01b3c6cc14a` · SHA-256 `e7169426cce6b8f7cc8e08a528831f0c13e1b9b8cda4ced90aa8777ff5326312`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.EllipticQuadraticResidueCarrier
import Think.SourceTree.Legacy.Arithmetic.EllipticGroupLaw
import Think.SourceTree.Legacy.Arithmetic.FinitePhaseBitmatrixAlgebra
import Think.SourceTree.Legacy.Arithmetic.ModularSymmetryStack
import Think.SourceTree.Legacy.Arithmetic.EllipticBitMatrixResidueLoci
import Think.SourceTree.Legacy.Compression.Lookup
import Think.SourceTree.Legacy.Compression.Rewrite
import Think.SourceTree.Legacy.Compression.LatticeGroupLoci

set_option autoImplicit false

namespace Think.Arithmetic.EllipticBitMatrixSymmetryResidueLoci

open Think.Arithmetic.EllipticQuadraticResidueCarrier
open Think.Arithmetic.FinitePhaseBitmatrixAlgebra

/-
Finite bridge from elliptic quadratic-residue loci to 2x2 bit-matrix
symmetry buckets. Buckets are rank/identity classifiers only: they are not
Spin(4) or conjugacy-orbit authority.
-/

abbrev BitResidueProjectionMode : Type :=
  Think.Arithmetic.EllipticBitMatrixResidueLoci.BitResidueProjectionMode

namespace BitResidueProjectionMode

def boundaryAdmitted : BitResidueProjectionMode :=
  Think.Arithmetic.EllipticBitMatrixResidueLoci.BitResidueProjectionMode.boundaryAdmitted

def boundaryResidue : BitResidueProjectionMode :=
  Think.Arithmetic.EllipticBitMatrixResidueLoci.BitResidueProjectionMode.boundaryResidue

end BitResidueProjectionMode

def bitResidueProjection :
    BitResidueProjectionMode →
      OneByOneBitMatrixTruthToken →
        Bool :=
  Think.Arithmetic.EllipticBitMatrixResidueLoci.bitResidueProjection

inductive SymmetryResidueClass : Type
  | admittedIdentityWitness
  | admittedInvertibleLocalWitness
  | boundaryNullWitness
  | singularBoundaryResidue
  | nonsquareObstructionResidue
deriving DecidableEq, Repr

def classifySymmetryResidue :
    BitResidueProjectionMode →
      OneByOneBitMatrixTruthToken →
        RankIdentityBucket →
          SymmetryResidueClass
  | _, .falseToken, _ =>
      SymmetryResidueClass.nonsquareObstructionResidue
  | .boundaryResidue, .nullToken, _ =>
      SymmetryResidueClass.singularBoundaryResidue
  | .boundaryAdmitted, .nullToken, _ =>
      SymmetryResidueClass.boundaryNullWitness
  | _, .trueToken, .identity =>
      SymmetryResidueClass.admittedIdentityWitness
  | _, .trueToken, .nonIdentityInvertible =>
      SymmetryResidueClass.admittedInvertibleLocalWitness
  | _, .trueToken, .zero =>
      SymmetryResidueClass.boundaryNullWitness
  | _, .trueToken, .rankOneSingular =>
      SymmetryResidueClass.singularBoundaryResidue

structure EllipticBitMatrixSymmetryResidueLocus {α : Type}
    (s : Think.Compression.Syntax.CompressedString α) where
  slice :
    Think.Compression.Syntax.Slice
      (Think.Compression.Syntax.decode s)
  carrier : EllipticQuadraticResidueCarrier
  x : Nat
  matrix : Mat2F2
  fiberKind : QuadraticResidueFiberKind
  truthToken : OneByOneBitMatrixTruthToken
  projectionMode : BitResidueProjectionMode
  residueBit : Bool
  symmetryBucket : RankIdentityBucket
  phase : Nat × Nat
  symmetryResidueClass : SymmetryResidueClass
  finiteLocalOnly : finiteLocalCarrierAuthority carrier
  spin4OrbitClaim : Bool
  conjugacyOrbitClaim : Bool

def symmetryResidueConsistent {α : Type}
    {s : Think.Compression.Syntax.CompressedString α}
    (locus : EllipticBitMatrixSymmetryResidueLocus s) : Prop :=
  locus.fiberKind =
    quadraticResidueFiberKind locus.carrier.coefficients locus.x ∧
  locus.truthToken =
    reduceFiberOneByOne locus.carrier.coefficients locus.x ∧
  locus.residueBit =
    bitResidueProjection locus.projectionMode locus.truthToken ∧
  locus.symmetryBucket = rankIdentityBucket locus.matrix ∧
  locus.phase = Think.Arithmetic.FinitePhaseBitmatrixAlgebra.phase locus.matrix ∧
  locus.symmetryResidueClass =
    classifySymmetryResidue
      locus.projectionMode
      locus.truthToken
      locus.symmetryBucket ∧
  locus.spin4OrbitClaim = false ∧
  locus.conjugacyOrbitClaim = false

theorem boundaryAdmitted_square_identity_class :
    classifySymmetryResidue
      BitResidueProjectionMode.boundaryAdmitted
      OneByOneBitMatrixTruthToken.trueToken
      RankIdentityBucket.identity =
        SymmetryResidueClass.admittedIdentityWitness := by
  rfl

theorem boundaryAdmitted_square_invertible_class :
    classifySymmetryResidue
      BitResidueProjectionMode.boundaryAdmitted
      OneByOneBitMatrixTruthToken.trueToken
      RankIdentityBucket.nonIdentityInvertible =
        SymmetryResidueClass.admittedInvertibleLocalWitness := by
  rfl

theorem boundaryAdmitted_zero_boundary_class :
    classifySymmetryResidue
      BitResidueProjectionMode.boundaryAdmitted
      OneByOneBitMatrixTruthToken.nullToken
      RankIdentityBucket.zero =
        SymmetryResidueClass.boundaryNullWitness := by
  rfl

theorem boundaryResidue_zero_boundary_routes_to_residue :
    classifySymmetryResidue
      BitResidueProjectionMode.boundaryResidue
      OneByOneBitMatrixTruthToken.nullToken
      RankIdentityBucket.zero =
        SymmetryResidueClass.singularBoundaryResidue := by
  rfl

theorem nonsquare_any_bucket_routes_to_obstruction
    (mode : BitResidueProjectionMode)
    (bucket : RankIdentityBucket) :
    classifySymmetryResidue
      mode
      OneByOneBitMatrixTruthToken.falseToken
      bucket =
        SymmetryResidueClass.nonsquareObstructionResidue := by
  cases mode <;> cases bucket <;> rfl

theorem identity_matrix_bucket_identity :
    rankIdentityBucket identityMatrix = RankIdentityBucket.identity := by
  rfl

theorem zero_matrix_bucket_zero :
    rankIdentityBucket zeroMatrix = RankIdentityBucket.zero := by
  rfl

theorem rank_identity_surface_denies_spin4_orbit_claim :
    rankIdentityBucketSurface.spin4OrbitClaim = false := by
  rfl

theorem rank_identity_surface_denies_conjugacy_orbit_claim :
    rankIdentityBucketSurface.conjugacyOrbitClaim = false := by
  rfl

def sampleCompressedString :
    Think.Compression.Syntax.CompressedString String :=
  Think.Compression.Syntax.encode
    ["E_short", "bit_matrix_residue", "symmetry_bucket"]

def sampleSlice :
    Think.Compression.Syntax.Slice
      (Think.Compression.Syntax.decode sampleCompressedString) :=
  { start := 0
    len := 1
    valid := by
      change
        0 + 1 ≤
          (Think.Compression.Syntax.decode
            (Think.Compression.Syntax.encode
              ["E_short", "bit_matrix_residue", "symmetry_bucket"])).length
      rw [Think.Compression.Syntax.decode_encode_identity]
      decide }

def swapInvertibleMatrix : Mat2F2 :=
  { a := 0, b := 1, c := 1, d := 0 }

theorem swapInvertibleMatrix_bucket :
    rankIdentityBucket swapInvertibleMatrix =
      RankIdentityBucket.nonIdentityInvertible := by
  rfl

def squareIdentitySymmetryResidueLocus :
    EllipticBitMatrixSymmetryResidueLocus sampleCompressedString :=
  { slice := sampleSlice
    carrier := exampleCarrier
    x := 2
    matrix := identityMatrix
    fiberKind := quadraticResidueFiberKind exampleCoefficients 2
    truthToken := reduceFiberOneByOne exampleCoefficients 2
    projectionMode := BitResidueProjectionMode.boundaryAdmitted
    residueBit :=
      bitResidueProjection
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 2)
    symmetryBucket := rankIdentityBucket identityMatrix
    phase := Think.Arithmetic.FinitePhaseBitmatrixAlgebra.phase identityMatrix
    symmetryResidueClass :=
      classifySymmetryResidue
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 2)
        (rankIdentityBucket identityMatrix)
    finiteLocalOnly := exampleCarrier_finiteLocalAuthority
    spin4OrbitClaim := false
    conjugacyOrbitClaim := false }

def squareInvertibleSymmetryResidueLocus :
    EllipticBitMatrixSymmetryResidueLocus sampleCompressedString :=
  { slice := sampleSlice
    carrier := exampleCarrier
    x := 2
    matrix := swapInvertibleMatrix
    fiberKind := quadraticResidueFiberKind exampleCoefficients 2
    truthToken := reduceFiberOneByOne exampleCoefficients 2
    projectionMode := BitResidueProjectionMode.boundaryAdmitted
    residueBit :=
      bitResidueProjection
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 2)
    symmetryBucket := rankIdentityBucket swapInvertibleMatrix
    phase :=
      Think.Arithmetic.FinitePhaseBitmatrixAlgebra.phase
        swapInvertibleMatrix
    symmetryResidueClass :=
      classifySymmetryResidue
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 2)
        (rankIdentityBucket swapInvertibleMatrix)
    finiteLocalOnly := exampleCarrier_finiteLocalAuthority
    spin4OrbitClaim := false
    conjugacyOrbitClaim := false }

def zeroBoundaryAdmittedSymmetryResidueLocus :
    EllipticBitMatrixSymmetryResidueLocus sampleCompressedString :=
  { slice := sampleSlice
    carrier := exampleCarrier
    x := 6
    matrix := zeroMatrix
    fiberKind := quadraticResidueFiberKind exampleCoefficients 6
    truthToken := reduceFiberOneByOne exampleCoefficients 6
    projectionMode := BitResidueProjectionMode.boundaryAdmitted
    residueBit :=
      bitResidueProjection
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 6)
    symmetryBucket := rankIdentityBucket zeroMatrix
    phase := Think.Arithmetic.FinitePhaseBitmatrixAlgebra.phase zeroMatrix
    symmetryResidueClass :=
      classifySymmetryResidue
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 6)
        (rankIdentityBucket zeroMatrix)
    finiteLocalOnly := exampleCarrier_finiteLocalAuthority
    spin4OrbitClaim := false
    conjugacyOrbitClaim := false }

def zeroBoundaryResidueSymmetryResidueLocus :
    EllipticBitMatrixSymmetryResidueLocus sampleCompressedString :=
  { slice := sampleSlice
    carrier := exampleCarrier
    x := 6
    matrix := zeroMatrix
    fiberKind := quadraticResidueFiberKind exampleCoefficients 6
    truthToken := reduceFiberOneByOne exampleCoefficients 6
    projectionMode := BitResidueProjectionMode.boundaryResidue
    residueBit :=
      bitResidueProjection
        BitResidueProjectionMode.boundaryResidue
        (reduceFiberOneByOne exampleCoefficients 6)
    symmetryBucket := rankIdentityBucket zeroMatrix
    phase := Think.Arithmetic.FinitePhaseBitmatrixAlgebra.phase zeroMatrix
    symmetryResidueClass :=
      classifySymmetryResidue
        BitResidueProjectionMode.boundaryResidue
        (reduceFiberOneByOne exampleCoefficients 6)
        (rankIdentityBucket zeroMatrix)
    finiteLocalOnly := exampleCarrier_finiteLocalAuthority
    spin4OrbitClaim := false
    conjugacyOrbitClaim := false }

def nonsquareSymmetryResidueLocus :
    EllipticBitMatrixSymmetryResidueLocus sampleCompressedString :=
  { slice := sampleSlice
    carrier := exampleCarrier
    x := 1
    matrix := zeroMatrix
    fiberKind := quadraticResidueFiberKind exampleCoefficients 1
    truthToken := reduceFiberOneByOne exampleCoefficients 1
    projectionMode := BitResidueProjectionMode.boundaryAdmitted
    residueBit :=
      bitResidueProjection
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 1)
    symmetryBucket := rankIdentityBucket zeroMatrix
    phase := Think.Arithmetic.FinitePhaseBitmatrixAlgebra.phase zeroMatrix
    symmetryResidueClass :=
      classifySymmetryResidue
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 1)
        (rankIdentityBucket zeroMatrix)
    finiteLocalOnly := exampleCarrier_finiteLocalAuthority
    spin4OrbitClaim := false
    conjugacyOrbitClaim := false }

theorem squareIdentitySymmetryResidueLocus_consistent :
    symmetryResidueConsistent squareIdentitySymmetryResidueLocus := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem squareInvertibleSymmetryResidueLocus_consistent :
    symmetryResidueConsistent squareInvertibleSymmetryResidueLocus := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem zeroBoundaryAdmittedSymmetryResidueLocus_consistent :
    symmetryResidueConsistent zeroBoundaryAdmittedSymmetryResidueLocus := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem zeroBoundaryResidueSymmetryResidueLocus_consistent :
    symmetryResidueConsistent zeroBoundaryResidueSymmetryResidueLocus := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem nonsquareSymmetryResidueLocus_consistent :
    symmetryResidueConsistent nonsquareSymmetryResidueLocus := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem example_square_symmetry_residue_projects_one :
    squareIdentitySymmetryResidueLocus.residueBit = true := by
  rfl

theorem example_zero_symmetry_residue_boundaryAdmitted_projects_one :
    zeroBoundaryAdmittedSymmetryResidueLocus.residueBit = true := by
  rfl

theorem example_zero_symmetry_residue_boundaryResidue_projects_zero :
    zeroBoundaryResidueSymmetryResidueLocus.residueBit = false := by
  rfl

theorem example_nonsquare_symmetry_residue_projects_zero :
    nonsquareSymmetryResidueLocus.residueBit = false := by
  rfl

theorem symmetry_residue_locus_finite_local_only :
    finiteLocalCarrierAuthority squareIdentitySymmetryResidueLocus.carrier := by
  exact squareIdentitySymmetryResidueLocus.finiteLocalOnly

theorem symmetry_residue_locus_does_not_settle_modularity :
    squareIdentitySymmetryResidueLocus.carrier.doesNotSettleModularity =
      true := by
  rfl

theorem symmetry_residue_locus_does_not_settle_BSD :
    squareIdentitySymmetryResidueLocus.carrier.doesNotSettleBSD = true := by
  rfl

theorem symmetry_residue_locus_does_not_complete_HasseWeil :
    squareIdentitySymmetryResidueLocus.carrier.doesNotCompleteHasseWeilLFunction =
      true := by
  rfl

end Think.Arithmetic.EllipticBitMatrixSymmetryResidueLoci
```
