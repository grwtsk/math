# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e74726f69642f4b616b6579614d65646f69644d6f76652e6c65616e.Variant3f9effb153315d3a3100e6c229e06f77387bdd1ce4785189b9e90661be1ad3e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f03c355c127a72d64b3d6dda905b414454b011d8` · SHA-256 `3f9effb153315d3a3100e6c229e06f77387bdd1ce4785189b9e90661be1ad3e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f417574686f726974794c61646465722e6c65616e


/- source-tree-label: STL1|L|addr=010101110|role=proof_code_atom|slug=pipeline-centroid-kakeyamedoidmove|owner=canonical_owner|core=Pipeline/Centroid/KakeyaMedoidMove.lean|leaf=M506970656c696e652f43656e74726f69642f4b616b6579614d65646f69644d6f76652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Centroid.KakeyaMedoidMove

structure KakeyaLeafLatticePoint where
  x : Int
  y : Int
  z : Int
deriving DecidableEq, Repr

structure KakeyaEmlLeaf where
  leafId : String
  sourcePath : String
  latticePoint : KakeyaLeafLatticePoint
  admissible : Bool
  residueValue : Nat
  proofStatus : String
  canonicalDigest : String
deriving DecidableEq, Repr

structure PipelineCentroid where
  x : Int
  y : Int
  z : Int
  checkedFromCurrentLeafLattice : Bool
deriving DecidableEq, Repr

structure KakeyaMedoid where
  leaf : KakeyaEmlLeaf
  weightedDistanceScore : Nat
  centroidDistance : Nat
deriving DecidableEq, Repr

structure RefereeMedoidMove where
  currentMedoid : String
  proposedMedoid : String
  authorityPhase : String
  validationStatus : String
  refereeIsAuthority : Bool
deriving DecidableEq, Repr

def medoidIsActualLeaf (m : KakeyaMedoid) (leaves : List KakeyaEmlLeaf) : Prop :=
  m.leaf ∈ leaves

def refereeMoveNotAuthority (m : RefereeMedoidMove) : Prop :=
  m.refereeIsAuthority = false

theorem referee_move_not_authority_exact
    (currentMedoid proposedMedoid authorityPhase validationStatus : String) :
    refereeMoveNotAuthority
      { currentMedoid := currentMedoid,
        proposedMedoid := proposedMedoid,
        authorityPhase := authorityPhase,
        validationStatus := validationStatus,
        refereeIsAuthority := false } := by
  rfl

theorem centroid_checked_flag_exact (x y z : Int) :
    ({ x := x, y := y, z := z, checkedFromCurrentLeafLattice := true } : PipelineCentroid).checkedFromCurrentLeafLattice = true := by
  rfl

end Think.Pipeline.Centroid.KakeyaMedoidMove
```
