# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variant7d9be6d676f477f1f9ee286c744e4ba26f8ed0a0955a7af48f146b2db9f86f7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1aeec01b96ce14165fc85f4a511d51b7864e315` · SHA-256 `7de5f8bdd698e89d6b39a5b2bcecf9aa029119ab18e68a9ef69abac67e9c40d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GraphAccessUnknownKind.Variant029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GraphAccessUnknownKind.Variant029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68","mathematical_subject":"Computation.DataStructures","original_sha256":"029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Core/Receipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Core.Objective

/-!
# Conservative graph-access receipts

The nineteen unknown kinds are retained as typed data.  A receipt cannot
acquire commitment authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GraphAccessUnknownKind.Variant029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68

namespace Mathematics.GraphAccess

inductive GraphAccessUnknownKind
  | graphFiniteness
  | neighborCompleteness
  | edgeAdmissibility
  | edgeCost
  | negativeCostDetection
  | heuristicAdmissibility
  | heuristicConsistency
  | portLabelCompleteness
  | universalSequenceClass
  | actionAlphabetCompleteness
  | discrepancyBound
  | invariantLaw
  | recamanActionMap
  | plateauDetection
  | completionDecision
  | primitiveObstruction
  | projectiveCompatibility
  | cylinderStageIndependence
  | resourceCompletion
deriving DecidableEq, Repr

inductive AccessDisposition
  | path
  | frontier
  | coverage
  | sample
  | proposal
  | obstruction
  | unknown
  | rejected
  | operationalFailure
deriving DecidableEq, Repr

inductive AccessExactness
  | exact
  | bounded
  | asymptotic
  | heuristic
  | unknown
deriving DecidableEq, Repr

structure GraphAccessReceipt where
  schemaVersion : String := "noeoueeue.graph-access-receipt.v1"
  requestRef : String
  selectedMode : TraversalMode
  graphCutRef : String
  disposition : AccessDisposition
  visitedStateRef : String
  frontierRef : String
  pathRef : Option String
  certificateRef : Option String
  obstructionRef : Option String
  exactness : AccessExactness
  residualRef : Option String
  unknowns : List GraphAccessUnknownKind
  replayStateRef : String
  cognitiveLoadRef : String
  reconstructionRef : String
  authoritativeEffect : Bool := false
  authoritativeEffect_exact : authoritativeEffect = false
deriving Repr

theorem receipt_unknowns_remain_explicit
    (receipt : GraphAccessReceipt) :
    ∃ unknowns, receipt.unknowns = unknowns :=
  ⟨receipt.unknowns, rfl⟩

end Mathematics.GraphAccess
```
