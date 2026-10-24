# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Evidence.Variantd7463095d9f8dbb48ca94bbf94f008c8962094de30aa3dfd0a9c2ca678787d61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f8d7875f4ab7f46aa4559951e4744b173eee666` · SHA-256 `0ff23943738e21e56e25df6f0cd73e641af853c22d5344d26f73af498e86326f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NamingEvidence.Varianta6facaa7bcf05c86083fa7cf6a8783878508ff83c5f56c5014570a6488ec8341","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6facaa7bcf05c86083fa7cf6a8783878508ff83c5f56c5014570a6488ec8341","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NamingEvidence.Varianta6facaa7bcf05c86083fa7cf6a8783878508ff83c5f56c5014570a6488ec8341","mathematical_subject":"Computation.DataStructures","original_sha256":"a6facaa7bcf05c86083fa7cf6a8783878508ff83c5f56c5014570a6488ec8341","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Oracle/Naming/Evidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.Naming.Name
import Mathematics.Core.Id

/-! # Exact evidence packets for deterministic naming -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NamingEvidence.Varianta6facaa7bcf05c86083fa7cf6a8783878508ff83c5f56c5014570a6488ec8341

namespace Mathematics.Oracle.Naming

open Mathematics

structure NamingEvidence where
  elementId : SourceElementId
  language : PointLanguage
  declarationNames : Array String
  declarationKinds : Array String
  typeSummaries : Array String
  conceptCoordinates : Array String
  taxonomyCoordinates : Array String
  publicInputs : Array String
  publicOutputs : Array String
  generatedCompanions : Array String
  providerKinds : Array String
  supportIds : Array String
  evidenceDigest : Digest
  deriving DecidableEq, Repr

def NamingEvidence.Supports (evidence : NamingEvidence) (supportId : String) : Prop :=
  supportId ∈ evidence.supportIds

def NamingEvidence.StableFor (evidence : NamingEvidence) (elementId : SourceElementId) : Prop :=
  evidence.elementId = elementId

end Mathematics.Oracle.Naming
```
