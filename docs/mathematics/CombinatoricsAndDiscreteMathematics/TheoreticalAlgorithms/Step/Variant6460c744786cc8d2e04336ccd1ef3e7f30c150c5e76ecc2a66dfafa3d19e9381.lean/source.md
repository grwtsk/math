# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Step.Variant6460c744786cc8d2e04336ccd1ef3e7f30c150c5e76ecc2a66dfafa3d19e9381

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50a53af45eda8f791b7a49a7b5500011557c91fd` · SHA-256 `9fff96638cdb9ae53c9f0298011c437ab385fe9f3f0f8dc3c2a2c34cd5d1e6cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StepReceipt.Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.StepReceipt.Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19","mathematical_subject":"Computation.DataStructures","original_sha256":"1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/Step.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.Energy

/-! # Deterministic relaxation steps -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StepReceipt.Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19

namespace Mathematics.Relaxation

/-- One observed step with exact before/after digests. -/
structure StepReceipt where
  operatorId : StableId
  beforeDigest : Digest
  afterDigest : Digest
  changedElementIds : List StableId
  preservedConstraintIds : List StableId
  receiptDigest : Digest
  deriving DecidableEq, Repr

/-- Proposal output remains separate from the accepted overlay state. -/
structure StepProposal where
  before : State
  proposedAfter : State
  evidenceIds : List StableId
  authority : String

end Mathematics.Relaxation
```
