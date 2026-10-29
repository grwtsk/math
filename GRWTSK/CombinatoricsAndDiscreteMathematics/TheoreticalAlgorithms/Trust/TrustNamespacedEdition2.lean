-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TrustAssumption.Variant31ad64e42b7ca7741004f05a5ca8967c4970b8992139498be67803cd703cc696","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31ad64e42b7ca7741004f05a5ca8967c4970b8992139498be67803cd703cc696","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TrustAssumption.Variant31ad64e42b7ca7741004f05a5ca8967c4970b8992139498be67803cd703cc696","mathematical_subject":"Computation.DataStructures","original_sha256":"31ad64e42b7ca7741004f05a5ca8967c4970b8992139498be67803cd703cc696","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/Trust.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Dependency

/-!
# Explicit trust and axiom closure
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TrustAssumption.Variant31ad64e42b7ca7741004f05a5ca8967c4970b8992139498be67803cd703cc696

namespace Mathematics.Extractor

open Mathematics

structure TrustAssumption where
  declaration : Lean.Name
  kind : TrustAssumptionKind
  authority : ExtractionAuthority
  deriving DecidableEq, Repr, Inhabited

structure TrustClosure where
  closureId : TrustClosureId
  declarationId : DeclarationId
  declaration : Lean.Name
  assumptions : Array TrustAssumption
  unsafeDependencies : Array Lean.Name
  partialDependencies : Array Lean.Name
  unresolvedDependencies : Array Lean.Name
  closureDigest : Digest
  deriving DecidableEq, Repr, Inhabited

namespace TrustClosure

/-- A closure with no unresolved dependencies is exact relative to its policy. -/
def Resolved (closure : TrustClosure) : Prop :=
  closure.unresolvedDependencies.isEmpty = true

end TrustClosure

end Mathematics.Extractor
