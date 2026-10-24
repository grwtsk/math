# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.JointFocus.Variant58b3e36c7f8b319383907adb7cba7dabda9069f5d8c8bd17223d1c2e91edc0c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `418c14200847da6eaee8b6a0b38a95fc945106cd` · SHA-256 `78dbe4dab5d6be4c4a50f53c9bbf445855944475a4324351b75e507fbf14d412`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.JointObligationDomain.Variant533920cc2c6c9443ebb7a3a6083ecefd88033060af28eb46d985e1987d03e9fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"533920cc2c6c9443ebb7a3a6083ecefd88033060af28eb46d985e1987d03e9fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.JointObligationDomain.Variant533920cc2c6c9443ebb7a3a6083ecefd88033060af28eb46d985e1987d03e9fb","mathematical_subject":"Computation.DataStructures","original_sha256":"533920cc2c6c9443ebb7a3a6083ecefd88033060af28eb46d985e1987d03e9fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/JointFocus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.SemanticBridge

/-!
# Tagged joint frontier

Arithmetic, semantic, and bridge obligations inhabit permanent summands.
Identical finite-field coordinates therefore remain distinct when their
domain tags differ.  Frequency is presentation metadata only.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.JointObligationDomain.Variant533920cc2c6c9443ebb7a3a6083ecefd88033060af28eb46d985e1987d03e9fb

namespace Mathematics.AbelReynolds

inductive JointObligationDomain
  | sea
  | semantic
  | bridge
  deriving DecidableEq, Repr

structure JointObligation where
  domain : JointObligationDomain
  obligationId : String
  propositionDigest : String
  deriving DecidableEq, Repr

structure JointOriginCoordinate where
  domain : JointObligationDomain
  coordinates : List Nat
  deriving DecidableEq, Repr

theorem equal_coordinates_do_not_erase_domain
    {left right : JointOriginCoordinate}
    (_coordinates : left.coordinates = right.coordinates)
    (domains : left.domain ≠ right.domain) :
    left ≠ right := by
  intro equal
  apply domains
  exact congrArg JointOriginCoordinate.domain equal

structure JointFrontierEntry where
  obligation : JointObligation
  origin : JointOriginCoordinate
  frequency : Nat
  requiredEvidence : String
  deriving DecidableEq, Repr

inductive JointUnknownKind
  | authorityBoundary
  | seaEvidenceBoundary
  | orbitBoundary
  | percolationBoundary
  | transcriptBoundary
  | semanticGraphBoundary
  | chainizationBoundary
  | tensorFactorizationBoundary
  | gaugeBoundary
  | observableBoundary
  | anchorBoundary
  | bridgeBoundary
  | commitBoundary
  deriving DecidableEq, Repr

structure ExactJointCost where
  seaCostDigest : String
  semanticCostDigest : String
  bridgeCostDigest : String
  commitCostDigest : String
  seaCostCertified : seaCostDigest ≠ ""
  semanticCostCertified : semanticCostDigest ≠ ""
  bridgeCostCertified : bridgeCostDigest ≠ ""
  commitCostCertified : commitCostDigest ≠ ""
  deriving Repr

/-- Protected names for quantities that must never collapse by spelling. -/
inductive JointProtectedMeaning
  | arithmeticFrobenius
  | frobeniusMatrixNorm
  | seaSymmetry
  | mpsGauge
  | arithmeticAbelProjector
  | graphAbelFocus
  | seaTally
  | semanticTally
  | noetherianClosure
  | eventClosure
  | arithmeticReuse
  | anchorReuse
  | algebraicFixedness
  | gaugeFixedness
  | observableFixedness
  | arithmeticCompactification
  | semanticClosure
  | gaugeQuotient
  | mappingTorus
  | frontierField
  | seaCoefficientField
  deriving DecidableEq, Repr

end Mathematics.AbelReynolds
```
