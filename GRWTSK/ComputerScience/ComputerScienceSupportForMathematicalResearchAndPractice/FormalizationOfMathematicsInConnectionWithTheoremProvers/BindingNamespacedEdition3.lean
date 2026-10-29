-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BindingClassification.Variantcaf06f7233901eca6e63762cde3e5faf31704bcf1be925723ad2378408d015c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"caf06f7233901eca6e63762cde3e5faf31704bcf1be925723ad2378408d015c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BindingClassification.Variantcaf06f7233901eca6e63762cde3e5faf31704bcf1be925723ad2378408d015c8","mathematical_subject":"Foundations.Unclassified","original_sha256":"caf06f7233901eca6e63762cde3e5faf31704bcf1be925723ad2378408d015c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/SourceAnalysis/Binding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.SourceAnalysis.Context

/-! # Exact source/compiled alignment records -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BindingClassification.Variantcaf06f7233901eca6e63762cde3e5faf31704bcf1be925723ad2378408d015c8

namespace MathDiscovery.SourceAnalysis

open MathDiscovery

inductive BindingClassification
  | direct
  | generated
  | external
  | sourceOnly
  | ambiguous
  deriving DecidableEq, Repr, Inhabited

structure CommandDeclarationBinding where
  commandId : SourceCommandId
  declarationId : Option ExtractorDeclarationId
  classification : BindingClassification
  evidenceDigest : Digest
  exact : Bool
  deriving DecidableEq, Repr

end MathDiscovery.SourceAnalysis
