# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e74726f69642f4b616b6579614d65646f69644d6f76652e6c65616e.Variant4b433aaa09330e23ae3b27ef4ef9519c22de284e24bb6f6159bc9a5f188c9d69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49cedfb03199eb91b52a4c44d35ce6e67796e7e4` · SHA-256 `83ce13355613cad5c334a781f91daca301bd1a7fda75846d35cc507baf36a823`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KakeyaLeafLatticePoint.Variant3f9effb153315d3a3100e6c229e06f77387bdd1ce4785189b9e90661be1ad3e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f9effb153315d3a3100e6c229e06f77387bdd1ce4785189b9e90661be1ad3e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.KakeyaLeafLatticePoint.Variant3f9effb153315d3a3100e6c229e06f77387bdd1ce4785189b9e90661be1ad3e9","mathematical_subject":"Computation.DataStructures","original_sha256":"3f9effb153315d3a3100e6c229e06f77387bdd1ce4785189b9e90661be1ad3e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit1/Bit0/Bit1/Bit1/Bit1/Bit0/M506970656c696e652f43656e74726f69642f4b616b6579614d65646f69644d6f76652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f417574686f726974794c61646465722e6c65616e


/- source-tree-label: STL1|L|addr=010101110|role=proof_code_atom|slug=pipeline-centroid-kakeyamedoidmove|owner=canonical_owner|core=Pipeline/Centroid/KakeyaMedoidMove.lean|leaf=M506970656c696e652f43656e74726f69642f4b616b6579614d65646f69644d6f76652e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KakeyaLeafLatticePoint.Variant3f9effb153315d3a3100e6c229e06f77387bdd1ce4785189b9e90661be1ad3e9

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
