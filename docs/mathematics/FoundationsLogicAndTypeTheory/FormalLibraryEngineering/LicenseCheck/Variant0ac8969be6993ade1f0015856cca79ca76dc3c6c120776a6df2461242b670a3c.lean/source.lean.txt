-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LicenseCheck.Variant5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LicenseCheck.Variant5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042","mathematical_subject":"Foundations.Unclassified","original_sha256":"5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/LicenseCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.License
import Mathematics.Reflection.Patch

/-! # Reflection license compatibility -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LicenseCheck.Variant5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042

namespace Mathematics.Reflection

structure LicenseCheck (patch : Patch) where
  sourceLicense : Ecosystem.LicenseRecord
  destinationLicense : Ecosystem.LicenseRecord
  compatible : Bool
  attributionPreserved : Bool
  checkDigest : Digest

def LicenseCheck.Passes {patch : Patch} (check : LicenseCheck patch) : Prop :=
  check.compatible = true ∧
    check.attributionPreserved = true ∧
    check.sourceLicense.LegallyAdmissible

end Mathematics.Reflection
