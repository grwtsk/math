-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variant3d36130c9664f063c8fc053252896ea2efabe264c55cd85ff497c4ebb1ad7794","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d36130c9664f063c8fc053252896ea2efabe264c55cd85ff497c4ebb1ad7794","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.F.Variant3d36130c9664f063c8fc053252896ea2efabe264c55cd85ff497c4ebb1ad7794","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3d36130c9664f063c8fc053252896ea2efabe264c55cd85ff497c4ebb1ad7794","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/register_label_attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Test.Internal.DummyLabelAttr
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variant3d36130c9664f063c8fc053252896ea2efabe264c55cd85ff497c4ebb1ad7794

set_option linter.missingDocs false

open Std.Tactic.LabelAttr

def f := 0

/-- info: #[] -/ #guard_msgs in #eval labelled `dummy_label_attr

attribute [dummy_label_attr] f

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr

section

attribute [-dummy_label_attr] f

/-- info: #[] -/ #guard_msgs in #eval labelled `dummy_label_attr

end

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr

-- Adding the label again is a no-op
attribute [dummy_label_attr] f

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr
