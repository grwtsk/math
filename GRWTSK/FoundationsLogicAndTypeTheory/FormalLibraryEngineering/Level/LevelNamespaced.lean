-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Level.Varianta36b464a5ba028f74c39667a4b0f93ac2365f04a3f74ac3b3db01f261217e34d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a36b464a5ba028f74c39667a4b0f93ac2365f04a3f74ac3b3db01f261217e34d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Level.Varianta36b464a5ba028f74c39667a4b0f93ac2365f04a3f74ac3b3db01f261217e34d","mathematical_subject":"Foundations.Unclassified","original_sha256":"a36b464a5ba028f74c39667a4b0f93ac2365f04a3f74ac3b3db01f261217e34d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/Level.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-! # Relaxation granularity -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Level.Varianta36b464a5ba028f74c39667a4b0f93ac2365f04a3f74ac3b3db01f261217e34d

namespace Mathematics.Relaxation

inductive Level
  | declaration
  | file
  | module
  | project
  | bridge
  | federation
  deriving DecidableEq, Repr

end Mathematics.Relaxation
