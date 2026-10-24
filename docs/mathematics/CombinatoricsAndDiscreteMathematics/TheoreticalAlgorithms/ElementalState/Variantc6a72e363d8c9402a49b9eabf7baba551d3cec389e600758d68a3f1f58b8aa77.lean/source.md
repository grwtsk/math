# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementalState.Variantc6a72e363d8c9402a49b9eabf7baba551d3cec389e600758d68a3f1f58b8aa77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5ad8270f33c050c81ed763dc651ddb34e58dfb1` · SHA-256 `9f1eb621e0d130ee26118b36f34b9f094a35144105d31f2e815a0e5c106449d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementalState.Variant44f03036b0eb2b8e298bbdd6e99f916fcb47fa591aa341e3fa54285dbadb1890","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44f03036b0eb2b8e298bbdd6e99f916fcb47fa591aa341e3fa54285dbadb1890","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ElementalState.Variant44f03036b0eb2b8e298bbdd6e99f916fcb47fa591aa341e3fa54285dbadb1890","mathematical_subject":"Computation.DataStructures","original_sha256":"44f03036b0eb2b8e298bbdd6e99f916fcb47fa591aa341e3fa54285dbadb1890","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/ElementalState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.PointUniverse
import Mathematics.Relaxation.State

/-!
# Elemental relaxation state

Relaxation operates over one canonical point universe.  Immutable sources,
project-local identity, negative evidence, and open branches are carried as
separate coordinates so an optimization cannot erase them.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementalState.Variant44f03036b0eb2b8e298bbdd6e99f916fcb47fa591aa341e3fa54285dbadb1890

namespace Mathematics.Relaxation

structure ElementalState where
  relaxation : State
  pointUniverse : Concept.PointUniverse
  immutableSourceAddressIds : List StableId
  projectLocalPointIds : List ElementId
  negativeElementIds : List ElementId
  unknownBranchIds : List StableId
  projectionIds : List StableId
  embeddingObservationIds : List EvidenceId
  stateDigest : Digest

/-- Embedding observations are evidence only and have no identity field. -/
structure EmbeddingObservation where
  observationId : EvidenceId
  leftPointId : ElementId
  rightPointId : ElementId
  encoderDigest : Digest
  metricDigest : Digest
  scoreNumerator : Int
  scoreDenominator : Nat
  deriving DecidableEq, Repr

end Mathematics.Relaxation
```
