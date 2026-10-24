-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FixedProgramInterpreter.Variant70b74a6ca34dc747dd43195cf0f9ae0240fc8ad67ada909726fc496d05cfc694","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70b74a6ca34dc747dd43195cf0f9ae0240fc8ad67ada909726fc496d05cfc694","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FixedProgramInterpreter.Variant70b74a6ca34dc747dd43195cf0f9ae0240fc8ad67ada909726fc496d05cfc694","mathematical_subject":"Foundations.Unclassified","original_sha256":"70b74a6ca34dc747dd43195cf0f9ae0240fc8ad67ada909726fc496d05cfc694","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/FixedProgramInterpreter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Runtime.FixedProgramInterpreter

/-! Focused kernel-checked examples for the bounded fixed interpreter profile. -/


namespace GRWTSK.Algebra.LinearAlgebra.FixedProgramInterpreter.Variant70b74a6ca34dc747dd43195cf0f9ae0240fc8ad67ada909726fc496d05cfc694

namespace BitMatrix.Tests.FixedProgramInterpreter

open BitMatrix.Runtime.FixedProgramInterpreter

example : validateOperations [.pushTrue, .return] = some 1 := by
  native_decide

example : validateOperations [.return] = none := by
  rfl

example :
    evaluateOperations [.readSelf, .not, .return]
      (fun index => index == 3) 3 = some false := by
  native_decide

example :
    evaluateOperations [.indexBit ⟨0, by simp [programLengthBits]⟩, .return]
      zeroState 5 = some true := by
  native_decide

example
    (decoder : CheckedDecoder)
    (programCode input : State)
    (malformed : decoder.decode programCode = none) :
    interpretChecked decoder programCode input = none ∧
      interpretTotal decoder programCode input = zeroState := by
  exact ⟨
    interpretChecked_of_decode_none decoder programCode input malformed,
    interpretTotal_of_decode_none decoder programCode input malformed⟩

end BitMatrix.Tests.FixedProgramInterpreter
