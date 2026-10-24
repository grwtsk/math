# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Witness.Variantd2c65a1b76933ef18efe17973025fb1db1417c42f56eb767118562ce30fcbfb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09f611e50dcb3624847d60e49e473aadba7553ea` · SHA-256 `895844dbc8733a06bfdcbf843fd4e91f3299eec91938761802e7b2b0f8a49fb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CollapseWitness.Variant0c4baa8160826ffa937cdcef18884c6b2975c97edea49336c013fc10f5113503","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c4baa8160826ffa937cdcef18884c6b2975c97edea49336c013fc10f5113503","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CollapseWitness.Variant0c4baa8160826ffa937cdcef18884c6b2975c97edea49336c013fc10f5113503","mathematical_subject":"Computation.DataStructures","original_sha256":"0c4baa8160826ffa937cdcef18884c6b2975c97edea49336c013fc10f5113503","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Element/Witness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Element.Block

/-! # Auditable witnesses for rejected source cuts -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CollapseWitness.Variant0c4baa8160826ffa937cdcef18884c6b2975c97edea49336c013fc10f5113503

namespace Mathematics.Element

open Mathematics

structure CollapseWitness where
  id : CollapseWitnessId
  elementId : SourceElementId
  leftCommands : Array SourceCommandId
  rightCommands : Array SourceCommandId
  reason : CollapseReasonKind
  provider : Option SourceCommandId
  consumer : Option SourceCommandId
  failingDeclaration : Option ExtractorDeclarationId
  baselineDigest : Digest
  candidateDigest : Digest
  diagnostic : String
  replayCommand : String
  witnessDigest : Digest
  reproduced : Bool
  deriving DecidableEq, Repr

def CollapseWitness.Valid (witness : CollapseWitness) : Prop :=
  witness.id.Valid ∧ witness.leftCommands.size > 0 ∧
    witness.rightCommands.size > 0 ∧ witness.diagnostic ≠ "" ∧
    witness.replayCommand ≠ "" ∧ witness.witnessDigest.Valid ∧
    witness.reproduced = true

end Mathematics.Element
```
