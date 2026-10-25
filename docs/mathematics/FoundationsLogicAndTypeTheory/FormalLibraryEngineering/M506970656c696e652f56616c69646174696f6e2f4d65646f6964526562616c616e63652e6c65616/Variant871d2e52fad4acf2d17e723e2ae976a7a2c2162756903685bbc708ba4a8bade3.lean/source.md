# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f56616c69646174696f6e2f4d65646f6964526562616c616e63652e6c65616.Variant871d2e52fad4acf2d17e723e2ae976a7a2c2162756903685bbc708ba4a8bade3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e836ce5104fae26aa7189982e4e93c0f776e2509` · SHA-256 `871d2e52fad4acf2d17e723e2ae976a7a2c2162756903685bbc708ba4a8bade3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.M506970656c696e652f43656e74726f69642f4b616b6579614d65646f69644d6f76652e6c65616e


/- source-tree-label: STL1|L|addr=01101010|role=proof_code_atom|slug=pipeline-validation-medoidrebalance|owner=canonical_owner|core=Pipeline/Validation/MedoidRebalance.lean|leaf=M506970656c696e652f56616c69646174696f6e2f4d65646f6964526562616c616e63652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.MedoidRebalance

open Think.Pipeline.Centroid.KakeyaMedoidMove

inductive MedoidMoveVerdict where
  | acceptMoveChecked
  | acceptMoveWithResidue
  | rejectMoveNoDistanceImprovement
  | rejectMoveNoResidueReduction
  | rejectMoveAuthorityUnchecked
  | rejectMoveOverlap
  | rejectMoveLineageDrift
  | returnToParent
  | fixedPointResidue
deriving DecidableEq, Repr

structure MedoidMoveValidator where
  proposedMedoidIsLeaf : Bool
  proposedMedoidHasLatticePoint : Bool
  preservesSourceLineage : Bool
  preservesNonClaims : Bool
  preservesNoOverlap : Bool
  reducesResidueOrDistance : Bool
  checkedAuthority : Bool
deriving DecidableEq, Repr

def accepts (v : MedoidMoveValidator) : Bool :=
  v.proposedMedoidIsLeaf &&
    v.proposedMedoidHasLatticePoint &&
    v.preservesSourceLineage &&
    v.preservesNonClaims &&
    v.preservesNoOverlap &&
    v.reducesResidueOrDistance &&
    v.checkedAuthority

theorem unchecked_authority_refuses
    (v : MedoidMoveValidator)
    (h : v.checkedAuthority = false) :
    accepts v = false := by
  unfold accepts
  rw [h]
  simp

structure PipelineSourceRebalance where
  activeMedoid : String
  recomputedMedoid : String
  recomputedCentroid : Bool
  recomputedLeafLattice : Bool
  checkedAuthorityStatus : Bool
  fixedPointResidueExplicit : Bool
deriving DecidableEq, Repr

def stable (r : PipelineSourceRebalance) : Prop :=
  r.activeMedoid = r.recomputedMedoid

theorem fixed_point_not_impossibility
    (activeMedoid recomputedMedoid : String) :
    ({ activeMedoid := activeMedoid,
       recomputedMedoid := recomputedMedoid,
       recomputedCentroid := true,
       recomputedLeafLattice := true,
       checkedAuthorityStatus := true,
       fixedPointResidueExplicit := true } : PipelineSourceRebalance).fixedPointResidueExplicit = true := by
  rfl

end Think.Pipeline.Validation.MedoidRebalance
```
