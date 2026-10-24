-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationChange.Variant278f39fb6caa2f35859919b55ecdf93789f885b423bec2d1d4320a91a6414a6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"278f39fb6caa2f35859919b55ecdf93789f885b423bec2d1d4320a91a6414a6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeclarationChange.Variant278f39fb6caa2f35859919b55ecdf93789f885b423bec2d1d4320a91a6414a6a","mathematical_subject":"Computation.DataStructures","original_sha256":"278f39fb6caa2f35859919b55ecdf93789f885b423bec2d1d4320a91a6414a6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/Diff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Core

/-!
# Environment-diff classifications
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationChange.Variant278f39fb6caa2f35859919b55ecdf93789f885b423bec2d1d4320a91a6414a6a

namespace Mathematics.Extractor

inductive DeclarationChange
  | added
  | removed
  | renamed
  | movedModule
  | typeChanged
  | valueChanged
  | proofChanged
  | dependencyChanged
  | trustClosureChanged
  | visibilityChanged
  | attributeChanged
  | documentationChanged
  | sourceOnlyChanged
  | unchanged
  deriving DecidableEq, Repr, Inhabited

structure DeclarationDiff where
  before : Option DeclarationId
  after : Option DeclarationId
  beforeName : Option Lean.Name
  afterName : Option Lean.Name
  changes : Array DeclarationChange
  statementIdentityStable : Bool
  implementationIdentityStable : Bool
  deriving DecidableEq, Repr, Inhabited

end Mathematics.Extractor
