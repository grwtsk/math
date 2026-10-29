-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildCheck.Variant15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BuildCheck.Variant15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e","mathematical_subject":"Foundations.Unclassified","original_sha256":"15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/BuildCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Reflection.Patch
import Mathematics.Toolchain.BuildReceipt

/-! # Reflection build and test checks -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildCheck.Variant15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e

namespace Mathematics.Reflection

structure BuildCheck (patch : Patch) where
  receipt : Toolchain.BuildReceipt
  target_capsule_exact :
    receipt.capsuleKey = patch.candidate.targetCapsule
  status_succeeded : receipt.status = .succeeded
  testSuiteDigest : Digest
  styleCheckDigest : Digest
  allRequiredTestsPassed : Bool
  targetConventionsPassed : Bool
  targetRevisionChecked : Bool

theorem BuildCheck.is_success
    {patch : Patch}
    (check : BuildCheck patch) :
    check.receipt.status = .succeeded :=
  check.status_succeeded

end Mathematics.Reflection
