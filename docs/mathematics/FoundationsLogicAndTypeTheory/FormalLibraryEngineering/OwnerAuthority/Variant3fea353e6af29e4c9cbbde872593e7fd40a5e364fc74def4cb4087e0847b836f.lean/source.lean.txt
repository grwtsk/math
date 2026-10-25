-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OwnerAuthority.Variantfe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OwnerAuthority.Variantfe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52","mathematical_subject":"Foundations.Unclassified","original_sha256":"fe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/OwnerAuthority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Owner authority

This module is deliberately not imported by the graph-access core.  Owner
commit authority is supplied only by the external state owner.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OwnerAuthority.Variantfe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52

namespace Mathematics.GraphAccess.Owner

inductive OwnerAuthority
  | commit
deriving DecidableEq, Repr

end Mathematics.GraphAccess.Owner
